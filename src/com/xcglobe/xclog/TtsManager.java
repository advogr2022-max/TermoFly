package com.xcglobe.xclog;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.speech.tts.TextToSpeech;
import java.util.Locale;

public class TtsManager implements TextToSpeech.OnInitListener {

    private static final long VOICE_DEBOUNCE_MS = 8000;
    private static TtsManager instance;
    private TextToSpeech tts;
    private boolean ttsReady;
    private String lastPhrase = "";
    private long lastSpeakMs;
    private boolean enabled = true;

    public static synchronized TtsManager getInstance() {
        if (instance == null) instance = new TtsManager();
        return instance;
    }

    public boolean isReady() { return ttsReady; }

    public void init(Context context) {
        if (tts != null) return;
        tts = new TextToSpeech(context, this);
    }

    @Override
    public void onInit(int status) {
        if (status == TextToSpeech.SUCCESS) {
            tts.setLanguage(Locale.forLanguageTag("ru"));
            ttsReady = true;
        }
    }

    public void speak(String text) {
        if (!ttsReady || !enabled || text == null || text.isEmpty()) return;
        long now = SystemClock.uptimeMillis();
        if (now - lastSpeakMs < VOICE_DEBOUNCE_MS && text.equals(lastPhrase)) return;
        lastPhrase = text;
        lastSpeakMs = now;
        if (Build.VERSION.SDK_INT >= 21) {
            tts.speak(text, TextToSpeech.QUEUE_FLUSH, null, "VOICE");
        } else {
            tts.speak(text, TextToSpeech.QUEUE_FLUSH, null);
        }
    }

    public void setEnabled(boolean v) { this.enabled = v; }
    public boolean isEnabled() { return enabled; }

    public void shutdown() {
        if (tts != null) {
            tts.stop();
            tts.shutdown();
            tts = null;
            ttsReady = false;
        }
    }
}
