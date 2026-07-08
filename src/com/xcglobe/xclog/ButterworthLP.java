package com.xcglobe.xclog;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class ButterworthLP {

    // Returns {b0, b1, b2, a1, a2} for LP filter with formula:
    // y = b0*x + b1*x1 + b2*x2 - a1*y1 - a2*y2
    public static float[] computeLP(float fc, float fs) {
        double w = Math.tan(Math.PI * fc / fs);
        double s2 = Math.sqrt(2.0);
        double w2 = w * w;
        double K = 1.0 / (1.0 + s2 * w + w2);
        float b0 = (float) (K * w2);
        float b1 = (float) (2.0 * K * w2);
        float a1 = (float) (2.0 * (w2 - 1.0) * K);
        float a2 = (float) ((1.0 - s2 * w + w2) * K);
        if (a1 < -1.99f) a1 = -1.99f;
        if (a2 > 0.99f) a2 = 0.99f;
        return new float[]{b0, b1, b0, a1, a2};
    }

    // Returns {fc, b0, b1, b2, a1, a2} from SharedPreferences
    public static float[] getLpCoeffsFromPrefs(Context ctx, float fs) {
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(ctx);
        String s = prefs.getString("lp_cutoff", "2.5");
        float fc = 2.5f;
        if (s != null && !s.isEmpty()) {
            try {
                fc = Float.parseFloat(s);
            } catch (NumberFormatException e) {
                fc = 2.5f;
            }
        }
        if (fc < 2.0f) fc = 2.0f;
        if (fc > 25.0f) fc = 25.0f;
        float[] c = computeLP(fc, fs);
        return new float[]{fc, c[0], c[1], c[2], c[3], c[4]};
    }
}
