.class public Lcom/xcglobe/xclog/TtsManager;
.super Ljava/lang/Object;
.source "TtsManager.java"

.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final VOICE_DEBOUNCE_MS:J = 0x1f40L

.field private static instance:Lcom/xcglobe/xclog/TtsManager;


# instance fields
.field private enabled:Z

.field private lastPhrase:Ljava/lang/String;

.field private lastSpeakMs:J

.field private tts:Landroid/speech/tts/TextToSpeech;

.field private ttsReady:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xcglobe/xclog/TtsManager;->lastPhrase:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xcglobe/xclog/TtsManager;->enabled:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/xcglobe/xclog/TtsManager;
    .locals 2

    const-class v0, Lcom/xcglobe/xclog/TtsManager;
    monitor-enter v0

    sget-object v1, Lcom/xcglobe/xclog/TtsManager;->instance:Lcom/xcglobe/xclog/TtsManager;

    if-eqz v1, :cond_0
    monitor-exit v0
    return-object v1

    :cond_0
    new-instance v1, Lcom/xcglobe/xclog/TtsManager;

    invoke-direct {v1}, Lcom/xcglobe/xclog/TtsManager;-><init>()V

    sput-object v1, Lcom/xcglobe/xclog/TtsManager;->instance:Lcom/xcglobe/xclog/TtsManager;

    monitor-exit v0
    return-object v1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/xcglobe/xclog/TtsManager;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0
    return-void

    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/TtsManager;->tts:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public isReady()Z
    .locals 1
    iget-boolean v0, p0, Lcom/xcglobe/xclog/TtsManager;->ttsReady:Z
    return v0
.end method

.method public onInit(I)V
    .locals 3

    if-eqz p1, :cond_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xcglobe/xclog/TtsManager;->tts:Landroid/speech/tts/TextToSpeech;

    const-string v1, "ru"

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xcglobe/xclog/TtsManager;->ttsReady:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    iput-boolean p1, p0, Lcom/xcglobe/xclog/TtsManager;->enabled:Z
    return-void
.end method

.method public isEnabled()Z
    .locals 1
    iget-boolean v0, p0, Lcom/xcglobe/xclog/TtsManager;->enabled:Z
    return v0
.end method

.method public speak(Ljava/lang/String;)V
    .locals 8

    iget-boolean v0, p0, Lcom/xcglobe/xclog/TtsManager;->ttsReady:Z
    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/xcglobe/xclog/TtsManager;->enabled:Z
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-eqz v0, :cond_0
    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v0

    iget-wide v2, p0, Lcom/xcglobe/xclog/TtsManager;->lastSpeakMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f40

    cmp-long v2, v2, v4

    if-gez v2, :cond_1
    iget-object v2, p0, Lcom/xcglobe/xclog/TtsManager;->lastPhrase:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :cond_1
    return-void

    :cond_1
    iput-object p1, p0, Lcom/xcglobe/xclog/TtsManager;->lastPhrase:Ljava/lang/String;

    iput-wide v0, p0, Lcom/xcglobe/xclog/TtsManager;->lastSpeakMs:J

    iget-object v0, p0, Lcom/xcglobe/xclog/TtsManager;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const-string v2, "VOICE"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/xcglobe/xclog/TtsManager;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/xcglobe/xclog/TtsManager;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xcglobe/xclog/TtsManager;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xcglobe/xclog/TtsManager;->ttsReady:Z

    :cond_0
    return-void
.end method
