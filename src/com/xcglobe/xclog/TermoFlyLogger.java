package com.xcglobe.xclog;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/**
 * TermoFlyLogger — companion sensor logger for IGC flights.
 * Logs raw sensor data (accel, gyro, mag) plus blip algorithm results.
 * Syncs with IGC via wallStartMs → utcMs in each row.
 */
public class TermoFlyLogger implements SensorEventListener {

    private static final String TAG = "TF_LOG";
    private static final long FLUSH_INTERVAL_MS = 5000L;
    private static final String LOG_DIR = "/sdcard/xcglobe/igc/logs";

    private static TermoFlyLogger instance;

    private boolean isLogging;
    private boolean sensorsRegistered;
    private final Object lock = new Object();

    private BufferedWriter csvWriter;
    private File tempCsvFile;
    private String baseFileName;

    private long elapsedStartMs;
    private long wallStartMs;
    private int sampleCounter;

    private HandlerThread ioThread;
    private Handler ioHandler;
    private SensorManager sensorManager;

    private boolean hasFirstAccel;

    private float accelX, accelY, accelZ;
    private float gyroX, gyroY, gyroZ;
    private float magX, magY, magZ;

    private float cachedPressure, cachedAltitude, cachedVario;

    // Voice prompt phrase (set from smali voice code, cleared after one CSV row)
    private volatile String currentVoicePhrase = "";

    // Base filename set from IGC recording (null = auto-generate)
    private String pendingBaseName;

    private final FlushRunner flushRunner = new FlushRunner();

    public static synchronized TermoFlyLogger getInstance() {
        if (instance == null) instance = new TermoFlyLogger();
        return instance;
    }

    private TermoFlyLogger() {
        ioThread = new HandlerThread("tf-log-io");
        ioThread.start();
        ioHandler = new Handler(ioThread.getLooper());
    }

    public void init(Context context) {
        sensorManager = (SensorManager) context.getSystemService(Context.SENSOR_SERVICE);
        Log.i(TAG, "Logger initialized");
        cleanupStaleLogs();
    }

    /** Zip any .tmp files left from a previous crash */
    private void cleanupStaleLogs() {
        File logDir = new File(LOG_DIR);
        if (!logDir.exists()) return;
        File[] tmpFiles = logDir.listFiles((d, name) -> name.endsWith(".tmp"));
        if (tmpFiles == null) return;
        for (File tmp : tmpFiles) {
            String name = tmp.getName();
            if (name.endsWith(".tmp")) {
                String baseName = name.substring(0, name.length() - 4);
                try {
                    byte[] csvBytes = readFileBytes(tmp);
                    if (csvBytes == null || csvBytes.length < 10) {
                        tmp.delete();
                        continue;
                    }
                    File zipFile = new File(logDir, baseName + ".zip");
                    java.util.zip.ZipOutputStream zos =
                        new java.util.zip.ZipOutputStream(new FileOutputStream(zipFile));
                    zos.setLevel(9);
                    java.util.zip.ZipEntry entry = new java.util.zip.ZipEntry(baseName + ".csv");
                    entry.setSize(csvBytes.length);
                    zos.putNextEntry(entry);
                    zos.write(csvBytes);
                    zos.closeEntry();
                    zos.close();
                    tmp.delete();
                    Log.i(TAG, "Recovered stale log: " + zipFile.getAbsolutePath()
                        + " (" + (csvBytes.length / 1024) + "KB)");
                } catch (IOException e) {
                    Log.e(TAG, "Stale log recovery failed for " + name, e);
                }
            }
        }
    }

    public void setVoicePhrase(String phrase) { currentVoicePhrase = phrase; }

    public void setBaseFileName(String name) {
        if (name != null && name.endsWith(".igc"))
            name = name.substring(0, name.length() - 4);
        pendingBaseName = name;
    }

    public void updateBaro(float pressure, float altitude, float vario) {
        cachedPressure = pressure;
        cachedAltitude = altitude;
        cachedVario = vario;
    }

    public void recordBpSample(float bpX, float bpY,
                               float smoothEnergy, float noiseFloor, float snrFiltered,
                               float dominantFreq, int detStatus,
                               float blipAngle, float blipStrength, float blipDist,
                               int blipStatus) {
        if (!isLogging) return;
        sampleCounter++;
        if (sampleCounter % 2 != 0) return; // decimate to 25Hz

        long now = SystemClock.elapsedRealtime();
        long dtMs = now - elapsedStartMs;
        long utcMs = wallStartMs + dtMs;

        synchronized (lock) {
            if (csvWriter == null) return;
            try {
                csvWriter.write(String.valueOf(dtMs)); csvWriter.write(',');
                csvWriter.write(String.valueOf(utcMs)); csvWriter.write(',');
                csvWriter.write(String.valueOf(accelX)); csvWriter.write(',');
                csvWriter.write(String.valueOf(accelY)); csvWriter.write(',');
                csvWriter.write(String.valueOf(accelZ)); csvWriter.write(',');
                csvWriter.write(String.valueOf(gyroX)); csvWriter.write(',');
                csvWriter.write(String.valueOf(gyroY)); csvWriter.write(',');
                csvWriter.write(String.valueOf(gyroZ)); csvWriter.write(',');
                csvWriter.write(String.valueOf(magX)); csvWriter.write(',');
                csvWriter.write(String.valueOf(magY)); csvWriter.write(',');
                csvWriter.write(String.valueOf(magZ)); csvWriter.write(',');
                csvWriter.write(String.valueOf(cachedPressure)); csvWriter.write(',');
                csvWriter.write(String.valueOf(cachedAltitude)); csvWriter.write(',');
                csvWriter.write(String.valueOf(cachedVario)); csvWriter.write(',');
                csvWriter.write(String.valueOf(bpX)); csvWriter.write(',');
                csvWriter.write(String.valueOf(bpY)); csvWriter.write(',');
                csvWriter.write(String.valueOf(smoothEnergy)); csvWriter.write(',');
                csvWriter.write(String.valueOf(noiseFloor)); csvWriter.write(',');
                csvWriter.write(String.valueOf(snrFiltered)); csvWriter.write(',');
                csvWriter.write(String.valueOf(dominantFreq)); csvWriter.write(',');
                csvWriter.write(String.valueOf(detStatus)); csvWriter.write(',');
                csvWriter.write(String.valueOf(blipAngle)); csvWriter.write(',');
                csvWriter.write(String.valueOf(blipStrength)); csvWriter.write(',');
                csvWriter.write(String.valueOf(blipDist)); csvWriter.write(',');
                csvWriter.write(String.valueOf(blipStatus)); csvWriter.write(',');
                String vp = currentVoicePhrase;
                currentVoicePhrase = "";
                csvWriter.write(vp);
                csvWriter.write('\n');
            } catch (IOException e) {
                Log.e(TAG, "Write failed", e);
            }
        }
    }

    public void startLogging() {
        if (isLogging) return;

        if (pendingBaseName != null) {
            baseFileName = pendingBaseName;
            pendingBaseName = null;
        } else {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US);
            baseFileName = "tf_log_" + sdf.format(new Date());
        }

        isLogging = true;
        elapsedStartMs = SystemClock.elapsedRealtime();
        wallStartMs = System.currentTimeMillis();
        sampleCounter = 0;
        hasFirstAccel = false;

        synchronized (lock) {
            try {
                File logDir = new File(LOG_DIR);
                if (!logDir.exists()) logDir.mkdirs();

                tempCsvFile = new File(logDir, baseFileName + ".tmp");
                csvWriter = new BufferedWriter(
                    new OutputStreamWriter(new FileOutputStream(tempCsvFile), StandardCharsets.UTF_8),
                    8192
                );

                csvWriter.write("dtMs,utcMs,accelX,accelY,accelZ,gyroX,gyroY,gyroZ,");
                csvWriter.write("magX,magY,magZ,pressure,altitude,vario,");
                csvWriter.write("bpX,bpY,smoothEnergy,noiseFloor,snr,");
                csvWriter.write("dominantFreq,detStatus,");
                csvWriter.write("blipAngle,blipStrength,blipDist,blipStatus,voicePhrase\n");

                ioHandler.postDelayed(flushRunner, FLUSH_INTERVAL_MS);
                Log.i(TAG, "STARTED: " + tempCsvFile.getAbsolutePath());
            } catch (IOException e) {
                Log.e(TAG, "Failed to start logging", e);
                isLogging = false;
                tempCsvFile = null;
                csvWriter = null;
            }
        }

        registerSensors();
    }

    public void stopLogging() {
        if (!isLogging) return;
        isLogging = false;
        unregisterSensors();
        ioHandler.removeCallbacks(flushRunner);
        zipAndClean();
        Log.i(TAG, "STOPPED");
    }

    private class FlushRunner implements Runnable {
        public void run() {
            synchronized (lock) {
                if (!isLogging || csvWriter == null) return;
                try { csvWriter.flush(); } catch (IOException e) {
                    Log.e(TAG, "Flush failed", e);
                }
            }
            ioHandler.postDelayed(this, FLUSH_INTERVAL_MS);
        }
    }

    private void registerSensors() {
        if (sensorManager == null || sensorsRegistered) return;

        Sensor accel = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
        if (accel != null) sensorManager.registerListener(this, accel, 20000);

        Sensor gyro = sensorManager.getDefaultSensor(Sensor.TYPE_GYROSCOPE);
        if (gyro != null) sensorManager.registerListener(this, gyro, 20000);

        Sensor mag = sensorManager.getDefaultSensor(Sensor.TYPE_MAGNETIC_FIELD);
        if (mag != null) sensorManager.registerListener(this, mag, 40000);

        sensorsRegistered = true;
        Log.i(TAG, "Sensors reg: accel=" + (accel != null)
            + " gyro=" + (gyro != null) + " mag=" + (mag != null));
    }

    private void unregisterSensors() {
        if (sensorManager != null && sensorsRegistered) {
            sensorManager.unregisterListener(this);
            sensorsRegistered = false;
            Log.i(TAG, "Sensors unreg");
        }
    }

    public void onSensorChanged(SensorEvent event) {
        int type = event.sensor.getType();
        float[] v = event.values;
        switch (type) {
            case Sensor.TYPE_ACCELEROMETER:
                accelX = v[0]; accelY = v[1]; accelZ = v[2];
                if (!hasFirstAccel) {
                    hasFirstAccel = true;
                    Log.i(TAG, "First accel: " + v[0] + ", " + v[1] + ", " + v[2]);
                }
                break;
            case Sensor.TYPE_GYROSCOPE:
                gyroX = v[0]; gyroY = v[1]; gyroZ = v[2];
                break;
            case Sensor.TYPE_MAGNETIC_FIELD:
                magX = v[0]; magY = v[1]; magZ = v[2];
                break;
        }
    }

    public void onAccuracyChanged(Sensor sensor, int accuracy) {}

    private void zipAndClean() {
        final File tempFile;
        final String fName;
        synchronized (lock) {
            tempFile = this.tempCsvFile;
            fName = this.baseFileName;
            if (csvWriter != null) {
                try { csvWriter.flush(); csvWriter.close(); } catch (IOException e) {
                    Log.e(TAG, "Close error", e);
                }
                csvWriter = null;
            }
            this.tempCsvFile = null;
        }
        if (tempFile == null || fName == null) return;

        File logDir = new File(LOG_DIR);
        if (!logDir.exists()) logDir.mkdirs();
        File zipFile = new File(logDir, fName + ".zip");

        try {
            byte[] csvBytes = readFileBytes(tempFile);
            if (csvBytes == null) return;

            ZipOutputStream zos = new ZipOutputStream(new FileOutputStream(zipFile));
            zos.setLevel(9);
            ZipEntry entry = new ZipEntry(fName + ".csv");
            entry.setSize(csvBytes.length);
            zos.putNextEntry(entry);
            zos.write(csvBytes);
            zos.closeEntry();
            zos.close();

            Log.i(TAG, "ZIP: " + zipFile.getAbsolutePath()
                + " (" + (csvBytes.length/1024) + "KB -> " + (zipFile.length()/1024) + "KB)");
        } catch (IOException e) {
            Log.e(TAG, "ZIP failed", e);
        } finally {
            if (tempFile.exists()) tempFile.delete();
        }
    }

    private static byte[] readFileBytes(File file) {
        if (file == null || !file.exists()) return null;
        try {
            byte[] data = new byte[(int) file.length()];
            FileInputStream fis = new FileInputStream(file);
            try {
                int offset = 0, remaining = data.length;
                while (remaining > 0) {
                    int read = fis.read(data, offset, remaining);
                    if (read < 0) break;
                    offset += read;
                    remaining -= read;
                }
            } finally { fis.close(); }
            return data;
        } catch (IOException e) {
            Log.e(TAG, "Read temp error", e);
            return null;
        }
    }

    public void destroy() {
        stopLogging();
        if (ioThread != null) {
            ioThread.quitSafely();
            try { ioThread.join(1000); } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            ioThread = null;
            ioHandler = null;
        }
    }

    public boolean isLogging() { return isLogging; }
}
