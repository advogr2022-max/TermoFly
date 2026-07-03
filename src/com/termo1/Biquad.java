package com.termo1;

/** Butterworth biquad filter section with persistent state. */
public class Biquad {
    public static final float HP_B0 = 0.9780f, HP_B1 = -1.9560f, HP_B2 = 0.9780f;
    public static final float HP_A1 = -1.9555f, HP_A2 = 0.9565f;
    public static final float LP_B0 = 0.02007f, LP_B1 = 0.04014f, LP_B2 = 0.02007f;
    public static final float LP_A1 = -1.5613f, LP_A2 = 0.6415f;

    // State arrays: [x1, x2, y1, y2]
    public static float[] hpX = new float[4];
    public static float[] lpX = new float[4];
    public static float[] hpY = new float[4];
    public static float[] lpY = new float[4];

    public static float hpSection(float x, float[] s) {
        float y = HP_B0 * x + HP_B1 * s[0] + HP_B2 * s[1]
                - HP_A1 * s[2] - HP_A2 * s[3];
        if (y > 100f) y = 100f;
        if (y < -100f) y = -100f;
        s[1] = s[0]; s[0] = x;
        s[3] = s[2]; s[2] = y;
        return y;
    }

    public static float lpSection(float x, float[] s) {
        float y = LP_B0 * x + LP_B1 * s[0] + LP_B2 * s[1]
                - LP_A1 * s[2] - LP_A2 * s[3];
        if (y > 100f) y = 100f;
        if (y < -100f) y = -100f;
        s[1] = s[0]; s[0] = x;
        s[3] = s[2]; s[2] = y;
        return y;
    }

    public static float filterX(float ax) {
        float hp = hpSection(ax, hpX);
        return lpSection(hp, lpX);
    }

    public static float filterY(float ay) {
        float hp = hpSection(ay, hpY);
        return lpSection(hp, lpY);
    }

    public static void reset() {
        for (int i = 0; i < 4; i++) {
            hpX[i] = lpX[i] = hpY[i] = lpY[i] = 0f;
        }
    }
}
