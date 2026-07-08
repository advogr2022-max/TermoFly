.class public Lcom/xcglobe/xclog/TermoFlyLogger;
.super Ljava/lang/Object;
.source "TermoFlyLogger.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;
    }
.end annotation


# static fields
.field private static final FLUSH_INTERVAL_MS:J = 0x1388L

.field private static final LOG_DIR:Ljava/lang/String; = "/sdcard/xcglobe/igc/logs"

.field private static final TAG:Ljava/lang/String; = "TF_LOG"

.field private static instance:Lcom/xcglobe/xclog/TermoFlyLogger;


# instance fields
.field private accelX:F

.field private accelY:F

.field private accelZ:F

.field private baseFileName:Ljava/lang/String;

.field private cachedAltitude:F

.field private cachedPressure:F

.field private cachedVario:F

.field private csvWriter:Ljava/io/BufferedWriter;

.field private volatile currentVoicePhrase:Ljava/lang/String;

.field private elapsedStartMs:J

.field private final flushRunner:Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;

.field private gyroX:F

.field private gyroY:F

.field private gyroZ:F

.field private hasFirstAccel:Z

.field private ioHandler:Landroid/os/Handler;

.field private ioThread:Landroid/os/HandlerThread;

.field private isLogging:Z

.field private final lock:Ljava/lang/Object;

.field private magX:F

.field private magY:F

.field private magZ:F

.field private pendingBaseName:Ljava/lang/String;

.field private sampleCounter:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorsRegistered:Z

.field private tempCsvFile:Ljava/io/File;

.field private wallStartMs:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcsvWriter(Lcom/xcglobe/xclog/TermoFlyLogger;)Ljava/io/BufferedWriter;
    .locals 0

    iget-object p0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetioHandler(Lcom/xcglobe/xclog/TermoFlyLogger;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisLogging(Lcom/xcglobe/xclog/TermoFlyLogger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlock(Lcom/xcglobe/xclog/TermoFlyLogger;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->lock:Ljava/lang/Object;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->currentVoicePhrase:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;-><init>(Lcom/xcglobe/xclog/TermoFlyLogger;Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner-IA;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->flushRunner:Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "tf-log-io"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioThread:Landroid/os/HandlerThread;

    .line 78
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/xcglobe/xclog/TermoFlyLogger;
    .locals 2

    const-class v0, Lcom/xcglobe/xclog/TermoFlyLogger;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/xcglobe/xclog/TermoFlyLogger;->instance:Lcom/xcglobe/xclog/TermoFlyLogger;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xcglobe/xclog/TermoFlyLogger;

    invoke-direct {v1}, Lcom/xcglobe/xclog/TermoFlyLogger;-><init>()V

    sput-object v1, Lcom/xcglobe/xclog/TermoFlyLogger;->instance:Lcom/xcglobe/xclog/TermoFlyLogger;

    .line 73
    :cond_0
    sget-object v1, Lcom/xcglobe/xclog/TermoFlyLogger;->instance:Lcom/xcglobe/xclog/TermoFlyLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static readFileBytes(Ljava/io/File;)[B
    .locals 5

    .line 306
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 308
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v2, v1, [B

    .line 309
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const/4 p0, 0x0

    .line 312
    :goto_0
    if-lez v1, :cond_2

    .line 313
    :try_start_1
    invoke-virtual {v3, v2, p0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    if-gez v4, :cond_1

    goto :goto_1

    .line 315
    :cond_1
    add-int/2addr p0, v4

    .line 316
    sub-int/2addr v1, v4

    .line 317
    goto :goto_0

    .line 318
    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 319
    return-object v2

    .line 320
    :catch_0
    move-exception p0

    .line 321
    const-string v1, "TF_LOG"

    const-string v2, "Read temp error"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    return-object v0

    .line 306
    :cond_3
    :goto_2
    return-object v0
.end method

.method private registerSensors()V
    .locals 6

    .line 217
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorsRegistered:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 219
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 220
    const/16 v2, 0x4e20

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 223
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, p0, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 226
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    const v5, 0x9c40

    invoke-virtual {v4, p0, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 228
    :cond_3
    iput-boolean v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorsRegistered:Z

    .line 229
    const/4 v4, 0x0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_0
    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensors reg: accel="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " gyro="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TF_LOG"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 217
    :cond_7
    :goto_3
    return-void
.end method

.method private unregisterSensors()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorsRegistered:Z

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorsRegistered:Z

    .line 237
    const-string v0, "TF_LOG"

    const-string v1, "Sensors unreg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    return-void
.end method

.method private zipAndClean()V
    .locals 9

    .line 266
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->tempCsvFile:Ljava/io/File;

    .line 268
    iget-object v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->baseFileName:Ljava/lang/String;

    .line 269
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 270
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    goto :goto_0

    .line 270
    :catch_0
    move-exception v3

    .line 271
    :try_start_2
    const-string v5, "TF_LOG"

    const-string v6, "Close error"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :goto_0
    iput-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    .line 275
    :cond_0
    iput-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->tempCsvFile:Ljava/io/File;

    .line 276
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    if-eqz v1, :cond_7

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 279
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/xcglobe/igc/logs"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 281
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    :try_start_3
    invoke-static {v1}, Lcom/xcglobe/xclog/TermoFlyLogger;->readFileBytes(Ljava/io/File;)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    if-nez v0, :cond_4

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 285
    :cond_3
    return-void

    .line 287
    :cond_4
    :try_start_4
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 288
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 289
    new-instance v5, Ljava/util/zip/ZipEntry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".csv"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 290
    array-length v2, v0

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 291
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 292
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 293
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 294
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 296
    const-string v2, "TF_LOG"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    array-length v0, v0

    div-int/lit16 v0, v0, 0x400

    .line 297
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZIP: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "KB -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "KB)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 298
    :catch_1
    move-exception v0

    .line 299
    :try_start_5
    const-string v2, "TF_LOG"

    const-string v3, "ZIP failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 303
    :cond_5
    return-void

    .line 301
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 302
    :cond_6
    throw v0

    .line 277
    :cond_7
    :goto_3
    return-void

    .line 276
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 327
    invoke-virtual {p0}, Lcom/xcglobe/xclog/TermoFlyLogger;->stopLogging()V

    .line 328
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 333
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioThread:Landroid/os/HandlerThread;

    .line 334
    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioHandler:Landroid/os/Handler;

    .line 336
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 83
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    .line 84
    const-string p1, "TF_LOG"

    const-string v0, "Logger initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public isLogging()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 261
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 242
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 243
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 244
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 253
    :pswitch_1
    aget v0, p1, v2

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroX:F

    aget v0, p1, v3

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroY:F

    aget p1, p1, v1

    iput p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroZ:F

    .line 254
    goto :goto_0

    .line 256
    :pswitch_2
    aget v0, p1, v2

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->magX:F

    aget v0, p1, v3

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->magY:F

    aget p1, p1, v1

    iput p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->magZ:F

    goto :goto_0

    .line 246
    :pswitch_3
    aget v0, p1, v2

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->accelX:F

    aget v2, p1, v3

    iput v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->accelY:F

    aget p1, p1, v1

    iput p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->accelZ:F

    .line 247
    iget-boolean v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->hasFirstAccel:Z

    if-nez v1, :cond_0

    .line 248
    iput-boolean v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->hasFirstAccel:Z

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First accel: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TF_LOG"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public recordBpSample(FFFFFFIFFFI)V
    .locals 7

    .line 102
    move-object v1, p0

    iget-boolean v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->sampleCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->sampleCounter:I

    .line 104
    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    return-void

    .line 106
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 107
    iget-wide v4, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->elapsedStartMs:J

    sub-long/2addr v2, v4

    .line 108
    iget-wide v4, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->wallStartMs:J

    add-long/2addr v4, v2

    .line 110
    iget-object v6, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 111
    :try_start_0
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    if-nez v0, :cond_2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 113
    :cond_2
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 114
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 115
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->accelX:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 116
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->accelY:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 117
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->accelZ:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 118
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroX:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 119
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroY:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 120
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroZ:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 121
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->magX:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 122
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->magY:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 123
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->magZ:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 124
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedPressure:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 125
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedAltitude:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 126
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedVario:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 127
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 128
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 129
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 130
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 131
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 132
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 133
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 134
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 135
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 136
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 137
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 138
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->currentVoicePhrase:Ljava/lang/String;

    .line 139
    const-string v2, ""

    iput-object v2, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->currentVoicePhrase:Ljava/lang/String;

    .line 140
    iget-object v2, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 141
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    :try_start_2
    const-string v2, "TF_LOG"

    const-string v3, "Write failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :goto_0
    monitor-exit v6

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setBaseFileName(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :return_void

    const-string v0, ".igc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :store

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :store
    iput-object p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->pendingBaseName:Ljava/lang/String;

    :return_void
    return-void
.end method

.method public setVoicePhrase(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->currentVoicePhrase:Ljava/lang/String;

    return-void
.end method

.method public startLogging()V
    .locals 7

    .line 149
    iget-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->pendingBaseName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 152
    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->baseFileName:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->pendingBaseName:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 156
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tf_log_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->baseFileName:Ljava/lang/String;

    .line 159
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->elapsedStartMs:J

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->wallStartMs:J

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sampleCounter:I

    .line 163
    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->hasFirstAccel:Z

    .line 165
    iget-object v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/xcglobe/igc/logs"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 170
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->baseFileName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->tempCsvFile:Ljava/io/File;

    .line 171
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->tempCsvFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    .line 176
    const-string v4, "dtMs,utcMs,accelX,accelY,accelZ,gyroX,gyroY,gyroZ,"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const-string v4, "magX,magY,magZ,pressure,altitude,vario,"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const-string v4, "bpX,bpY,smoothEnergy,noiseFloor,snr,"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const-string v4, "dominantFreq,detStatus,"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const-string v4, "blipAngle,blipStrength,blipDist,blipStatus,voicePhrase\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->flushRunner:Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    const-string v3, "TF_LOG"

    iget-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->tempCsvFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    goto :goto_1

    .line 190
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 184
    :catch_0
    move-exception v3

    .line 185
    :try_start_1
    const-string v4, "TF_LOG"

    const-string v5, "Failed to start logging"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    .line 187
    iput-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->tempCsvFile:Ljava/io/File;

    .line 188
    iput-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    .line 190
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-direct {p0}, Lcom/xcglobe/xclog/TermoFlyLogger;->registerSensors()V

    .line 193
    return-void

    .line 190
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stopLogging()V
    .locals 2

    .line 196
    iget-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    .line 198
    invoke-direct {p0}, Lcom/xcglobe/xclog/TermoFlyLogger;->unregisterSensors()V

    .line 199
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->flushRunner:Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    invoke-direct {p0}, Lcom/xcglobe/xclog/TermoFlyLogger;->zipAndClean()V

    .line 201
    const-string v0, "TF_LOG"

    const-string v1, "STOPPED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public updateBaro(FFF)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedPressure:F

    .line 93
    iput p2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedAltitude:F

    .line 94
    iput p3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedVario:F

    .line 95
    return-void
.end method
