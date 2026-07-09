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

.field private cachedLatE7:I

.field private cachedLonE7:I

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

.field private hasFirstPosition:Z

.field private ioHandler:Landroid/os/Handler;

.field private ioThread:Landroid/os/HandlerThread;

.field private isLogging:Z

.field private final lock:Ljava/lang/Object;

.field private magX:F

.field private magY:F

.field private magZ:F

.field private pendingBaseName:Ljava/lang/String;

.field private sampleCounter:I

.field private sensorHandler:Landroid/os/Handler;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorsRegistered:Z

.field private tempCsvFile:Ljava/io/File;

.field private wallStartMs:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->lock:Ljava/lang/Object;

    .line 69
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedLatE7:I

    .line 70
    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedLonE7:I

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->currentVoicePhrase:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;-><init>(Lcom/xcglobe/xclog/TermoFlyLogger;Lcom/xcglobe/xclog/TermoFlyLogger$1;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->flushRunner:Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "tf-log-io"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioThread:Landroid/os/HandlerThread;

    .line 87
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/xcglobe/xclog/TermoFlyLogger;)Ljava/lang/Object;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xcglobe/xclog/TermoFlyLogger;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xcglobe/xclog/TermoFlyLogger;)Ljava/io/BufferedWriter;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xcglobe/xclog/TermoFlyLogger;)Landroid/os/Handler;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cleanupStaleLogs()V
    .registers 16

    .line 100
    const-string v0, "TF_LOG"

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/xcglobe/igc/logs"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 102
    :cond_10
    new-instance v2, Lcom/xcglobe/xclog/TermoFlyLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/xcglobe/xclog/TermoFlyLogger$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 103
    if-nez v2, :cond_1c

    return-void

    .line 104
    :cond_1c
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1f
    if-ge v5, v3, :cond_e6

    aget-object v6, v2, v5

    .line 105
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 106
    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 107
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 109
    :try_start_39
    invoke-static {v6}, Lcom/xcglobe/xclog/TermoFlyLogger;->readFileBytes(Ljava/io/File;)[B

    move-result-object v9

    .line 110
    if-eqz v9, :cond_c7

    array-length v10, v9

    const/16 v11, 0xa

    if-ge v10, v11, :cond_46

    goto/16 :goto_c7

    .line 114
    :cond_46
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".zip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    new-instance v11, Ljava/util/zip/ZipOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 117
    const/16 v12, 0x9

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 118
    new-instance v12, Ljava/util/zip/ZipEntry;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ".csv"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 119
    array-length v8, v9

    int-to-long v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 120
    invoke-virtual {v11, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 121
    invoke-virtual {v11, v9}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 122
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 123
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 124
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Recovered stale log: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v9

    div-int/lit16 v8, v8, 0x400

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "KB)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    goto :goto_e2

    .line 111
    :cond_c7
    :goto_c7
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_ca} :catch_cb

    .line 112
    goto :goto_e2

    .line 127
    :catch_cb
    move-exception v6

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stale log recovery failed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :cond_e2
    :goto_e2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1f

    .line 132
    :cond_e6
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/xcglobe/xclog/TermoFlyLogger;
    .registers 2

    const-class v0, Lcom/xcglobe/xclog/TermoFlyLogger;

    monitor-enter v0

    .line 81
    :try_start_3
    sget-object v1, Lcom/xcglobe/xclog/TermoFlyLogger;->instance:Lcom/xcglobe/xclog/TermoFlyLogger;

    if-nez v1, :cond_e

    new-instance v1, Lcom/xcglobe/xclog/TermoFlyLogger;

    invoke-direct {v1}, Lcom/xcglobe/xclog/TermoFlyLogger;-><init>()V

    sput-object v1, Lcom/xcglobe/xclog/TermoFlyLogger;->instance:Lcom/xcglobe/xclog/TermoFlyLogger;

    .line 82
    :cond_e
    sget-object v1, Lcom/xcglobe/xclog/TermoFlyLogger;->instance:Lcom/xcglobe/xclog/TermoFlyLogger;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 80
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$cleanupStaleLogs$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 102
    const-string p0, ".tmp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static readFileBytes(Ljava/io/File;)[B
    .registers 6

    .line 397
    const/4 v0, 0x0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_35

    .line 399
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v2, v1, [B

    .line 400
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_2c

    .line 402
    const/4 p0, 0x0

    .line 403
    :goto_17
    if-lez v1, :cond_28

    .line 404
    :try_start_19
    invoke-virtual {v3, v2, p0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_23

    .line 405
    if-gez v4, :cond_20

    goto :goto_28

    .line 406
    :cond_20
    add-int/2addr p0, v4

    .line 407
    sub-int/2addr v1, v4

    .line 408
    goto :goto_17

    .line 409
    :catchall_23
    move-exception p0

    :try_start_24
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw p0

    :cond_28
    :goto_28
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2b} :catch_2c

    .line 410
    return-object v2

    .line 411
    :catch_2c
    move-exception p0

    .line 412
    const-string v1, "TF_LOG"

    const-string v2, "Read temp error"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    return-object v0

    .line 397
    :cond_35
    :goto_35
    return-object v0
.end method

.method private registerSensors()V
    .registers 8

    .line 303
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_7b

    iget-boolean v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorsRegistered:Z

    if-eqz v1, :cond_a

    goto/16 :goto_7b

    .line 305
    :cond_a
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 306
    const/16 v2, 0x4e20

    if-eqz v0, :cond_1a

    .line 307
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0, v0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 309
    :cond_1a
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 310
    if-eqz v3, :cond_2a

    .line 311
    iget-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0, v3, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 313
    :cond_2a
    iget-object v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 314
    if-eqz v2, :cond_3d

    .line 315
    iget-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    const v5, 0x9c40

    iget-object v6, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0, v2, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 317
    :cond_3d
    iput-boolean v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorsRegistered:Z

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sensors reg (bg thread): accel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v0, :cond_4f

    move v0, v1

    goto :goto_50

    :cond_4f
    move v0, v5

    :goto_50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " gyro="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v3, :cond_5e

    move v3, v1

    goto :goto_5f

    :cond_5e
    move v3, v5

    :goto_5f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mag="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v2, :cond_6c

    goto :goto_6d

    :cond_6c
    move v1, v5

    :goto_6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TF_LOG"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 303
    :cond_7b
    :goto_7b
    return-void
.end method

.method private unregisterSensors()V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_15

    iget-boolean v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorsRegistered:Z

    if-eqz v1, :cond_15

    .line 324
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorsRegistered:Z

    .line 326
    const-string v0, "TF_LOG"

    const-string v1, "Sensors unreg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_15
    return-void
.end method

.method private zipAndClean()V
    .registers 9

    .line 357
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->tempCsvFile:Ljava/io/File;

    .line 359
    iget-object v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->baseFileName:Ljava/lang/String;

    .line 360
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_fe

    const/4 v4, 0x0

    if-eqz v3, :cond_1f

    .line 361
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_fe

    .line 363
    goto :goto_1d

    .line 361
    :catch_15
    move-exception v3

    .line 362
    :try_start_16
    const-string v5, "TF_LOG"

    const-string v6, "Close error"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    :goto_1d
    iput-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    .line 366
    :cond_1f
    iput-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->tempCsvFile:Ljava/io/File;

    .line 367
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_fe

    .line 368
    if-eqz v1, :cond_fd

    if-nez v2, :cond_28

    goto/16 :goto_fd

    .line 370
    :cond_28
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/xcglobe/igc/logs"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 372
    :cond_38
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

    .line 375
    :try_start_50
    invoke-static {v1}, Lcom/xcglobe/xclog/TermoFlyLogger;->readFileBytes(Ljava/io/File;)[B

    move-result-object v0
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_54} :catch_e1
    .catchall {:try_start_50 .. :try_end_54} :catchall_df

    .line 376
    if-nez v0, :cond_60

    .line 392
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 376
    :cond_5f
    return-void

    .line 378
    :cond_60
    :try_start_60
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 379
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 380
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

    .line 381
    array-length v2, v0

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 382
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 383
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 384
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 385
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 387
    const-string v2, "TF_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZIP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v0, v0

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "KB -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "KB)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_d8} :catch_e1
    .catchall {:try_start_60 .. :try_end_d8} :catchall_df

    .line 392
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f2

    goto :goto_ef

    :catchall_df
    move-exception v0

    goto :goto_f3

    .line 389
    :catch_e1
    move-exception v0

    .line 390
    :try_start_e2
    const-string v2, "TF_LOG"

    const-string v3, "ZIP failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e9
    .catchall {:try_start_e2 .. :try_end_e9} :catchall_df

    .line 392
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f2

    :goto_ef
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 394
    :cond_f2
    return-void

    .line 392
    :goto_f3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_fc

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 393
    :cond_fc
    throw v0

    .line 368
    :cond_fd
    :goto_fd
    return-void

    .line 367
    :catchall_fe
    move-exception v1

    :try_start_ff
    monitor-exit v0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    throw v1
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 418
    invoke-virtual {p0}, Lcom/xcglobe/xclog/TermoFlyLogger;->stopLogging()V

    .line 419
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_21

    .line 420
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 421
    :try_start_a
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_11} :catch_12

    .line 423
    goto :goto_1a

    .line 421
    :catch_12
    move-exception v0

    .line 422
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 424
    :goto_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioThread:Landroid/os/HandlerThread;

    .line 425
    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioHandler:Landroid/os/Handler;

    .line 426
    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorHandler:Landroid/os/Handler;

    .line 428
    :cond_21
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 93
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sensorManager:Landroid/hardware/SensorManager;

    .line 94
    const-string p1, "TF_LOG"

    const-string v0, "Logger initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/xcglobe/xclog/TermoFlyLogger;->cleanupStaleLogs()V

    .line 96
    return-void
.end method

.method public isLogging()Z
    .registers 2

    .line 430
    iget-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 352
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 332
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 333
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 334
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_6c

    :pswitch_e
    goto :goto_6b

    .line 343
    :pswitch_f
    aget v0, p1, v2

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroX:F

    aget v0, p1, v3

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroY:F

    aget p1, p1, v1

    iput p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroZ:F

    .line 344
    goto :goto_6b

    .line 346
    :pswitch_1c
    aget v0, p1, v2

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->magX:F

    aget v0, p1, v3

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->magY:F

    aget p1, p1, v1

    iput p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->magZ:F

    goto :goto_6b

    .line 336
    :pswitch_29
    aget v0, p1, v2

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->accelX:F

    aget v0, p1, v3

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->accelY:F

    aget v0, p1, v1

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->accelZ:F

    .line 337
    iget-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->hasFirstAccel:Z

    if-nez v0, :cond_6b

    .line 338
    iput-boolean v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->hasFirstAccel:Z

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First accel: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TF_LOG"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_6b
    :goto_6b
    return-void

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_1c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public recordBpSample(FFFFFFIFFFI)V
    .registers 21

    .line 163
    move-object v1, p0

    iget-boolean v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    if-nez v0, :cond_6

    return-void

    .line 164
    :cond_6
    iget v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->sampleCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->sampleCounter:I

    .line 165
    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    return-void

    .line 167
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 168
    iget-wide v4, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->elapsedStartMs:J

    sub-long/2addr v2, v4

    .line 169
    iget-wide v4, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->wallStartMs:J

    add-long/2addr v4, v2

    .line 171
    iget-object v6, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 172
    :try_start_1e
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    if-nez v0, :cond_24

    monitor-exit v6
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1f3

    return-void

    .line 174
    :cond_24
    :try_start_24
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 175
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 178
    iget v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedLatE7:I

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_72

    iget v4, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedLonE7:I

    if-eq v4, v3, :cond_72

    .line 179
    iget-object v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    int-to-double v4, v0

    const-wide v7, 0x416312d000000000L    # 1.0E7

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 180
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedLonE7:I

    int-to-double v3, v3

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_7c

    .line 182
    :cond_72
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 185
    :goto_7c
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->accelX:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 186
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->accelY:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 187
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->accelZ:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 188
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroX:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 189
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroY:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 190
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->gyroZ:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 191
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->magX:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 192
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->magY:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 193
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->magZ:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 194
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedPressure:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 195
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedAltitude:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 196
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    iget v3, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedVario:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 197
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 198
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 199
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 200
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 201
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 202
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static {p6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 203
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 204
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 205
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 206
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 207
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 208
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->currentVoicePhrase:Ljava/lang/String;

    .line 209
    const-string v2, ""

    iput-object v2, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->currentVoicePhrase:Ljava/lang/String;

    .line 210
    iget-object v2, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 211
    iget-object v0, v1, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_1e8} :catch_1e9
    .catchall {:try_start_24 .. :try_end_1e8} :catchall_1f3

    .line 214
    goto :goto_1f1

    .line 212
    :catch_1e9
    move-exception v0

    .line 213
    :try_start_1ea
    const-string v2, "TF_LOG"

    const-string v3, "Write failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :goto_1f1
    monitor-exit v6

    .line 216
    return-void

    .line 215
    :catchall_1f3
    move-exception v0

    monitor-exit v6
    :try_end_1f5
    .catchall {:try_start_1ea .. :try_end_1f5} :catchall_1f3

    throw v0
.end method

.method public setBaseFileName(Ljava/lang/String;)V
    .registers 4

    .line 137
    if-eqz p1, :cond_15

    const-string v0, ".igc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_15
    iput-object p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->pendingBaseName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setVoicePhrase(Ljava/lang/String;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->currentVoicePhrase:Ljava/lang/String;

    return-void
.end method

.method public startLogging()V
    .registers 8

    .line 219
    iget-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    if-eqz v0, :cond_5

    return-void

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->pendingBaseName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 222
    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->baseFileName:Ljava/lang/String;

    .line 223
    iput-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->pendingBaseName:Ljava/lang/String;

    goto :goto_2c

    .line 226
    :cond_f
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "\'tf_\'yyyy-MM-dd-HH-mm"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 227
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 228
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->baseFileName:Ljava/lang/String;

    .line 231
    :goto_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->elapsedStartMs:J

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->wallStartMs:J

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->sampleCounter:I

    .line 235
    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->hasFirstAccel:Z

    .line 236
    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->hasFirstPosition:Z

    .line 237
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedLatE7:I

    .line 238
    iput v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedLonE7:I

    .line 240
    iget-object v2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 242
    :try_start_4b
    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/xcglobe/igc/logs"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 245
    :cond_5b
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->baseFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->tempCsvFile:Ljava/io/File;

    .line 246
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

    .line 252
    const-string v4, "elapsedMs,utcMs,lat,lon,"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const-string v4, "accelX,accelY,accelZ,gyroX,gyroY,gyroZ,"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const-string v4, "magX,magY,magZ,pressure,altitude,vario,"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const-string v4, "bpX,bpY,smoothEnergy,noiseFloor,snr,"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const-string v4, "dominantFreq,detStatus,"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    const-string v4, "blipAngle,blipStrength,blipDist,blipStatus,voicePhrase\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->flushRunner:Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    const-string v3, "TF_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STARTED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->tempCsvFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_dd} :catch_e0
    .catchall {:try_start_4b .. :try_end_dd} :catchall_de

    .line 266
    goto :goto_ee

    .line 267
    :catchall_de
    move-exception v0

    goto :goto_f3

    .line 261
    :catch_e0
    move-exception v3

    .line 262
    :try_start_e1
    const-string v4, "TF_LOG"

    const-string v5, "Failed to start logging"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    .line 264
    iput-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->tempCsvFile:Ljava/io/File;

    .line 265
    iput-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->csvWriter:Ljava/io/BufferedWriter;

    .line 267
    :goto_ee
    monitor-exit v2
    :try_end_ef
    .catchall {:try_start_e1 .. :try_end_ef} :catchall_de

    .line 269
    invoke-direct {p0}, Lcom/xcglobe/xclog/TermoFlyLogger;->registerSensors()V

    .line 270
    return-void

    .line 267
    :goto_f3
    :try_start_f3
    monitor-exit v2
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_de

    throw v0
.end method

.method public startWithIgc(Ljava/lang/String;)V
    .registers 2

    .line 277
    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/TermoFlyLogger;->setBaseFileName(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/xcglobe/xclog/TermoFlyLogger;->startLogging()V

    .line 279
    return-void
.end method

.method public stopLogging()V
    .registers 3

    .line 282
    iget-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    if-nez v0, :cond_5

    return-void

    .line 283
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->isLogging:Z

    .line 284
    invoke-direct {p0}, Lcom/xcglobe/xclog/TermoFlyLogger;->unregisterSensors()V

    .line 285
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->ioHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->flushRunner:Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    invoke-direct {p0}, Lcom/xcglobe/xclog/TermoFlyLogger;->zipAndClean()V

    .line 287
    const-string v0, "TF_LOG"

    const-string v1, "STOPPED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public updateBaro(FFF)V
    .registers 4

    .line 143
    iput p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedPressure:F

    .line 144
    iput p2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedAltitude:F

    .line 145
    iput p3, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedVario:F

    .line 146
    return-void
.end method

.method public updatePosition(II)V
    .registers 8

    .line 150
    iput p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedLatE7:I

    .line 151
    iput p2, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->cachedLonE7:I

    .line 152
    iget-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->hasFirstPosition:Z

    if-nez v0, :cond_36

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger;->hasFirstPosition:Z

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "First position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-double v1, p1

    const-wide v3, 0x416312d000000000L    # 1.0E7

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-double v0, p2

    div-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TF_LOG"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_36
    return-void
.end method
