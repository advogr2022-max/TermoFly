.class public Lm/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/a$a;
    }
.end annotation


# static fields (original)
.field public static a:J = 0x0L

.field private static b:Z = false

.field private static c:Z

.field private static d:Lm/a$a;

.field private static final e:Lg/a;

.field public static accelLpX:F = 0f
.field public static accelLpY:F = 0f
.field public static smoothEnergy:F = 0f

# Accel separate listener and state (independent from baro)
.field private static f:Lm/a$a;

.field private static g:Z = false

.field public static accelEventCount:I = 0

.field public static accelRegStartMs:J = 0L

# SignalProcessor scalar state
.field public static rmsIdx:I = 0
.field public static rmsFill:I = 0
.field public static rmsX:F = 0f
.field public static rmsY:F = 0f
.field public static meanX:F = 0f
.field public static meanY:F = 0f
.field public static turbLevel:F = 0f
.field public static turbDir:F = 0f
.field public static noiseFloor:F = 0.002f
.field public static calibCount:I = 0

# Zero-crossing detector
.field public static prevBpX:F = 0f
.field public static prevBpY:F = 0f
.field public static zcCount:I = 0
.field public static zcTimer:J = 0L
.field public static dominantFreq:F = 1.0f

# ThermalDetector state
.field public static detStatus:I = 0
.field public static aboveThresh:I = 0
.field public static dirReady:Z = false
.field public static confirmCount:I = 0
.field public static confirmStart:F = 0f
.field public static confirmTarget:I = 50
.field public static confirmHalf:I = 25
.field public static confirmSum1:F = 0f
.field public static confirmSum2:F = 0f
.field public static consecReject:I = 0
.field public static blipConfirmed:Z = false
.field public static hasBlip:Z = false
.field public static lastAngle:F = 0f
.field public static smoothDist:F = 60f
.field public static snrFiltered:F = 0f


# direct methods
.method static constructor <clinit>()V
    .locals 3

    # original g/a init
    new-instance v0, Lg/a;

    const/16 v1, 0x3e8

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Lg/a;-><init>(IF)V

    sput-object v0, Lm/a;->e:Lg/a;

    # reset detection
    invoke-static {}, Lm/a;->h()V

    # init ZC timer
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lm/a;->zcTimer:J

    return-void
.end method

.method public static a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lm/a;->c:Z

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lm/a;->b:Z

    return p0
.end method

.method public static b()V
    .locals 7

    sget-boolean v0, Lcom/xcglobe/xclog/l;->R:Z

    if-eqz v0, :cond_0

    sget-object v0, Lm/a;->e:Lg/a;

    const/16 v1, 0x3e8

    const v2, 0x3dcccccd    # 0.1f

    :goto_0
    invoke-virtual {v0, v1, v2}, Lg/a;->a(IF)V

    goto :goto_1

    :cond_0
    sget-object v0, Lm/a;->e:Lg/a;

    const/16 v1, 0x1f4

    const v2, 0x3d4ccccd    # 0.05f

    goto :goto_0

    :goto_1
    # === Fix #2: blipDebug override — force register even WITHOUT flight mode/barometer ===
    sget-boolean v0, Lcom/xcglobe/xclog/l;->blipDebug:Z
    if-eqz v0, :try_register

    # Normal path: если use_barometer (l.I) выключен → release и выход
    sget-boolean v0, Lcom/xcglobe/xclog/l;->I:Z

    if-nez v0, :try_register
    invoke-static {}, Lm/a;->e()V

    goto :goto_2

    :try_register
    # === Fix #7: early return if ALREADY running (инверсия if-nez → if-eqz) ===
    sget-boolean v0, Lm/a;->b:Z

    if-eqz v0, :check_sensors
    return-void

    :check_sensors
    sget-boolean v0, Lm/a;->c:Z

    if-eqz v0, :cond_2

    :continue_reg
    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    move-object v5, v0

    # Try PRESSURE sensor (type 6) — может отсутствовать (LDPlayer)
    # Если есть — создаём listener и регистрируем
    const/4 v1, 0x6

    invoke-virtual {v5, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :try_accel_sensor

    # Есть pressure sensor → создаём listener
    new-instance v2, Lm/a$a;

    invoke-direct {v2}, Lm/a$a;-><init>()V

    sput-object v2, Lm/a;->d:Lm/a$a;

    # Register PRESSURE (SENSOR_DELAY_NORMAL = 3)
    sget-object v2, Lm/a;->d:Lm/a$a;

    const/4 v3, 0x3

    invoke-virtual {v5, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    if-nez v4, :accel_reg

    # Pressure NOT registered → cleanup listener
    const/4 v0, 0x0

    sput-object v0, Lm/a;->d:Lm/a$a;

    :accel_reg
    # Mark pressure as started (even if no pressure, for b:Z flag)
    const/4 v0, 0x1

    sput-boolean v0, Lm/a;->b:Z

    :try_accel_sensor
    # Register for LINEAR_ACCELERATION (type 10) — используем тот же listener
    # Если listener не создан (нет baro), создаём его сейчас
    sget-object v2, Lm/a;->d:Lm/a$a;

    if-nez v2, :create_accel_listener

    new-instance v2, Lm/a$a;

    invoke-direct {v2}, Lm/a$a;-><init>()V

    sput-object v2, Lm/a;->d:Lm/a$a;

    :create_accel_listener
    # Try TYPE_LINEAR_ACCELERATION (type 10), fallback to TYPE_ACCELEROMETER (type 1)
    const/16 v1, 0xa

    invoke-virtual {v5, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :do_register_accel

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :no_accel_sensor

    :do_register_accel
    sget-object v2, Lm/a;->d:Lm/a$a;

    const/4 v3, 0x1                # SENSOR_DELAY_GAME

    invoke-virtual {v5, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :no_accel_sensor
    goto :cond_2

    :cond_2
    :goto_2
    return-void
.end method

.method public static bAccel()V
    .locals 5

    # Если акселерометр уже запущен → выходим
    sget-boolean v0, Lm/a;->g:Z

    if-nez v0, :acc_already

    # Если listener уже есть → выходим
    sget-object v0, Lm/a;->f:Lm/a$a;

    if-nez v0, :acc_already

    # Получаем SensorManager
    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    # Try LINEAR_ACCELERATION first (type 10)
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :have_accel

    # Fallback to TYPE_ACCELEROMETER (type 1)
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :have_accel

    # Нет акселерометра — выходим
    return-void

    :have_accel
    # Создаём listener
    new-instance v2, Lm/a$a;

    invoke-direct {v2}, Lm/a$a;-><init>()V

    sput-object v2, Lm/a;->f:Lm/a$a;

    # Register with SENSOR_DELAY_GAME (1)
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    if-nez v4, :acc_ok

    # Register failed — cleanup
    const/4 v0, 0x0

    sput-object v0, Lm/a;->f:Lm/a$a;

    return-void

    :acc_ok
    const/4 v0, 0x1

    sput-boolean v0, Lm/a;->g:Z

    # Set registration timestamp
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lm/a;->accelRegStartMs:J

    # Reset algorithm state
    invoke-static {}, Lm/a;->h()V

    :acc_already
    return-void
.end method

# === Fix #6: startThermalOnly — регистрация акселерометра независимо от use_barometer ===
.method public static startThermalOnly()V
    .locals 2

    sget-boolean v0, Lcom/xcglobe/xclog/l;->blipEnabled:Z
    if-nez v0, :do_register

    sget-boolean v0, Lcom/xcglobe/xclog/l;->blipDebug:Z
    if-eqz v0, :do_register
    return-void

    :do_register
    invoke-static {}, Lm/a;->bAccel()V
    return-void
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lm/a;->d:Lm/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lm/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lm/a;->d:Lm/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()V
    .locals 2

    sget-object v0, Lm/a;->d:Lm/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sget-object v1, Lm/a;->d:Lm/a$a;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lm/a;->d:Lm/a$a;

    const/4 v0, 0x0

    sput-boolean v0, Lm/a;->b:Z

    return-void
.end method

.method public static eAccel()V
    .locals 2

    sget-object v0, Lm/a;->f:Lm/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sget-object v1, Lm/a;->f:Lm/a$a;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lm/a;->f:Lm/a$a;

    sput-boolean v0, Lm/a;->g:Z

    sput v0, Lm/a;->accelEventCount:I

    return-void
.end method

.method public static f()V
    .locals 0

    invoke-static {}, Lm/a;->e()V

    invoke-static {}, Lm/a;->b()V

    return-void
.end method

.method static synthetic g()Lg/a;
    .locals 1

    sget-object v0, Lm/a;->e:Lg/a;

    return-object v0
.end method

.method public static h()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lm/a;->detStatus:I

    sput v0, Lm/a;->aboveThresh:I

    sput-boolean v0, Lm/a;->dirReady:Z

    sput v0, Lm/a;->confirmCount:I

    sput v0, Lm/a;->confirmStart:F

    sput v0, Lm/a;->confirmSum1:F

    sput v0, Lm/a;->confirmSum2:F

    sput v0, Lm/a;->consecReject:I

    sput-boolean v0, Lm/a;->blipConfirmed:Z

    sput-boolean v0, Lm/a;->hasBlip:Z

    sput v0, Lm/a;->lastAngle:F

    const/high16 v1, 0x42700000    # 60f

    sput v1, Lm/a;->smoothDist:F

    sput v0, Lm/a;->snrFiltered:F

    sput v0, Lm/a;->accelLpX:F

    sput v0, Lm/a;->accelLpY:F

    sput v0, Lm/a;->smoothEnergy:F

    sput v0, Lm/a;->rmsIdx:I

    sput v0, Lm/a;->rmsFill:I

    sput v0, Lm/a;->calibCount:I

    const v1, 0x3b03126f    # 0.002f

    sput v1, Lm/a;->noiseFloor:F

    sput v0, Lm/a;->prevBpX:F

    sput v0, Lm/a;->prevBpY:F

    sput v0, Lm/a;->zcCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lm/a;->zcTimer:J

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lm/a;->dominantFreq:F

    sput v0, Lm/a;->confirmTarget:I

    const/16 v0, 0x19

    sput v0, Lm/a;->confirmHalf:I

    return-void
.end method
