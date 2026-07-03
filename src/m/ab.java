package m;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.SystemClock;

/**
 * Clean accelerometer listener for Tradar thermal detection.
 * Compiled to .class then .dex — no register type conflicts.
 */
public class ab implements SensorEventListener {

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {}

    @Override
    public void onSensorChanged(SensorEvent event) {
        if (event.sensor.getType() != 10) return;

        // Increment counter
        m.a.accelEventCount++;

        float ax = event.values[0];
        float ay = event.values[1];

        // DC-blocker X
        float bpX = ax - m.a.accelLpX;
        m.a.accelLpX = m.a.accelLpX * 0.99f + ax * 0.01f;

        // DC-blocker Y
        float bpY = ay - m.a.accelLpY;
        m.a.accelLpY = m.a.accelLpY * 0.99f + ay * 0.01f;

        // Zero-crossing X
        if (m.a.prevBpX >= 0 && bpX < 0) {
            m.a.zcCount++;
        }
        m.a.prevBpX = bpX;
        m.a.prevBpY = bpY;

        // Frequency update (every 1s)
        long now = SystemClock.elapsedRealtime();
        long dt = now - m.a.zcTimer;
        if (dt >= 1000) {
            float freq = m.a.zcCount / (dt / 1000.0f);
            if (freq < 0.25f) freq = 0.25f;
            if (freq > 2.5f) freq = 2.5f;
            if (m.a.zcCount > 0) m.a.dominantFreq = freq;
            m.a.zcCount = 0;
            m.a.zcTimer = now;
        }

        // Energy
        float rawEnergy = bpX * bpX + bpY * bpY;
        m.a.smoothEnergy = m.a.smoothEnergy * 0.8f + rawEnergy * 0.2f;

        // Noise calibration (first 100 samples)
        if (m.a.calibCount < 100) {
            float rms = (float) Math.sqrt(m.a.smoothEnergy);
            m.a.noiseFloor += (rms - m.a.noiseFloor) / (m.a.calibCount + 1);
            m.a.calibCount++;
            return;
        }

        // Continuous noise tracking
        float absSum = Math.abs(bpX) + Math.abs(bpY);
        if (absSum < m.a.noiseFloor * 2.5f) {
            m.a.noiseFloor += (absSum - m.a.noiseFloor) * 0.0005f;
            if (m.a.noiseFloor < 0.0001f) m.a.noiseFloor = 0.0001f;
            if (m.a.noiseFloor > 0.5f) m.a.noiseFloor = 0.5f;
        }

        // SNR
        float snr = m.a.smoothEnergy / Math.max(m.a.noiseFloor, 0.002f);
        if (Float.isInfinite(snr) || Float.isNaN(snr)) snr = 0;
        m.a.snrFiltered = snr;

        if (snr <= 3.0f) {
            m.a.detStatus = 0;
            m.a.aboveThresh = 0;
            m.a.dirReady = false;
            com.xcglobe.xclog.l.blipAngle = -1.0f;
            com.xcglobe.xclog.l.blipStatus = 0;
            return;
        }

        // Status
        float nf = m.a.noiseFloor;
        float thSuspect = Math.max(0.015f, nf * 3.0f);
        float thThermal = Math.max(0.020f, nf * 5.0f);
        float thInside = Math.max(0.080f, nf * 10.0f);

        float energy = m.a.smoothEnergy;
        if (energy >= thInside) {
            m.a.detStatus = 3;
        } else if (energy >= thThermal) {
            m.a.detStatus = 2;
        } else if (energy >= thSuspect) {
            m.a.detStatus = 1;
        } else {
            m.a.detStatus = 0;
            m.a.aboveThresh = 0;
            m.a.dirReady = false;
            com.xcglobe.xclog.l.blipAngle = -1.0f;
            com.xcglobe.xclog.l.blipStatus = 0;
            return;
        }

        // Direction stabilization
        m.a.aboveThresh++;
        if (m.a.aboveThresh >= 25) {
            m.a.dirReady = true;
        }
        if (!m.a.dirReady) return;

        // Angle
        float angleDeg = (float) Math.toDegrees(Math.atan2(bpY, bpX));
        if (angleDeg < 0) angleDeg += 360;
        if (angleDeg >= 360) angleDeg -= 360;
        m.a.turbDir = angleDeg;

        // Angle reset (45° change)
        if (m.a.confirmCount <= 5 && !m.a.hasBlip) {
            float diff = Math.abs(angleDeg - m.a.lastAngle);
            if (diff > 180) diff = 360 - diff;
            if (diff > 45) {
                m.a.blipConfirmed = false;
                m.a.confirmCount = 0;
            }
        }

        // 2-period verification
        if (m.a.confirmCount == 0) {
            m.a.confirmSum1 = 0;
            m.a.confirmSum2 = 0;
            float period = Math.max(m.a.dominantFreq, 0.25f);
            int target = (int)(100.0f / period);
            if (target < 25) target = 25;
            if (target > 250) target = 250;
            m.a.confirmTarget = target;
            m.a.confirmHalf = target / 2;
        }

        m.a.confirmCount++;

        if (m.a.confirmCount <= m.a.confirmHalf) {
            m.a.confirmSum1 += angleDeg;
        } else {
            m.a.confirmSum2 += angleDeg;
        }

        if (m.a.confirmCount >= m.a.confirmTarget) {
            float avg1 = m.a.confirmSum1 / m.a.confirmHalf;
            float avg2 = m.a.confirmSum2 / (m.a.confirmTarget - m.a.confirmHalf);

            if (avg2 >= avg1 * 1.2f) {
                m.a.blipConfirmed = true;
                m.a.hasBlip = true;
                m.a.lastAngle = angleDeg;
                m.a.consecReject = 0;
                m.a.confirmCount = 0;
            } else if (avg2 <= avg1 * 0.8f) {
                m.a.consecReject++;
                m.a.confirmCount = 0;
                m.a.dirReady = false;
                m.a.aboveThresh = 0;
                m.a.detStatus = 0;
                com.xcglobe.xclog.l.blipAngle = -1.0f;
                com.xcglobe.xclog.l.blipStatus = 0;
                return;
            } else {
                m.a.confirmCount = 0;
                return;
            }
        }

        // Output (trial render)
        boolean shouldRender = m.a.blipConfirmed || (m.a.confirmCount <= m.a.confirmHalf);
        if (!shouldRender) return;

        float strength = 1.0f + 7.0f * (float) Math.tanh(snr / 15.0f);
        com.xcglobe.xclog.l.blipStrength = strength;

        float rmsAccel = (float) Math.sqrt(m.a.smoothEnergy) * 9.81f;
        if (rmsAccel < 0.01f) rmsAccel = 0.01f;
        float dist = (float) Math.sqrt(0.05f / rmsAccel) * 150.0f;
        if (dist < 10.0f) dist = 10.0f;
        if (dist > 150.0f) dist = 150.0f;
        m.a.smoothDist += (dist - m.a.smoothDist) * 0.08f;
        if (m.a.smoothDist < 10.0f) m.a.smoothDist = 10.0f;
        if (m.a.smoothDist > 150.0f) m.a.smoothDist = 150.0f;
        com.xcglobe.xclog.l.blipDistance = m.a.smoothDist;

        if (m.a.detStatus == 3 && strength > 3.0f) {
            com.xcglobe.xclog.l.blipLifeMs = 8000;
        } else if (m.a.detStatus == 3) {
            com.xcglobe.xclog.l.blipLifeMs = 12000;
        } else {
            com.xcglobe.xclog.l.blipLifeMs = 15000;
        }

        com.xcglobe.xclog.l.blipAngle = angleDeg;
        com.xcglobe.xclog.l.blipStatus = m.a.detStatus;
        com.xcglobe.xclog.l.blipTime = System.currentTimeMillis();
    }
}
