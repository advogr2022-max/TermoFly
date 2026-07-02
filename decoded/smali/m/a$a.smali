.class Lm/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    move-object v1, p1                # save SensorEvent to local register

    iget-object v0, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :baro_handler        # type == 6 → barometer

    const/16 v2, 0xa

    if-eq v0, v2, :accel_handler       # type == 10 → accelerometer

    return-void

    # BAROMETER (type 6) — original FlyMe pressure handler
    :baro_handler

    invoke-static {}, Lc/a;->a()Z

    move-result v1

    if-nez v1, :baro_skip               # if GpsPlayer IS active → skip (original: if-nez)

    return-void

    :baro_skip
    const/4 v1, 0x1

    invoke-static {v1}, Lm/a;->a(Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lm/a;->a:J

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :alt

    const v3, 0x447d5000    # 1013.25f

    invoke-static {v3, v2}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result v2

    :alt
    invoke-static {}, Lm/a;->g()Lg/a;

    move-result-object v3

    sget-wide v4, Lm/a;->a:J

    invoke-virtual {v3, v2, v4, v5}, Lg/a;->a(FJ)F

    move-result v2

    invoke-static {}, Lm/a;->g()Lg/a;

    move-result-object v3

    iget v3, v3, Lg/a;->c:F

    sget-object v4, Lm/g;->A:Lm/e;

    invoke-virtual {v4, v2}, Lm/e;->a(F)F

    move-result v2

    sget-wide v4, Lm/a;->a:J

    invoke-static {v2, v3, v4, v5}, Lm/g;->a(FFJ)V

    return-void

    # ================================================================
    # ACCELEROMETER LINEAR (type 10) — Tradar thermal blip detection
    # ================================================================
    :accel_handler

    iget-object v0, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v1, v0, v1                     # ax (g)

    const/4 v2, 0x1

    aget v2, v0, v2                     # ay (g)

    # ========================================
    # DC-blocker (1-pole highpass)
    # bp = raw - lp ; lp = lp*0.99 + raw*0.01
    # ========================================
    sget v3, Lm/a;->accelLpX:F

    sub-float v4, v1, v3                # bpX

    const v5, 0x3f7d70a4                # 0.99
    mul-float v3, v3, v5
    const v5, 0x3c23d70a                # 0.01
    mul-float v6, v1, v5
    add-float v3, v3, v6
    sput v3, Lm/a;->accelLpX:F

    sget v3, Lm/a;->accelLpY:F

    sub-float v5, v2, v3                # bpY

    const v6, 0x3f7d70a4
    mul-float v3, v3, v6
    const v6, 0x3c23d70a
    mul-float v7, v2, v6
    add-float v3, v3, v7
    sput v3, Lm/a;->accelLpY:F

    # ========================================
    # Zero-crossing detection (X channel)
    # ========================================
    sget v3, Lm/a;->prevBpX:F

    cmpg-float v6, v4, v6               # 0.0 (we use v6=0 from earlier but it's now overwritten)
    # Hmm, v6 was overwritten. Let me use a clean zero
    const/4 v6, 0x0
    cmpg-float v7, v3, v6               # prevBpX < 0 ?
    # Actually zero-crossing in Tradar:
    # if prevBpX >= 0 && bpOutX < 0 → zc++
    # Check prevBpX >= 0
    cmpg-float v7, v3, v6               # prevBpX < 0? (v7 < 0 if prevBpX < 0)
    if-ltz v7, :zc_x                    # prevBpX >= 0 → check bpX < 0
    goto :zc_y_update

    :zc_x
    cmpg-float v7, v4, v6               # bpX < 0?
    if-ltz v7, :zc_inc                  # bpX < 0 → zc++
    goto :zc_y_update

    :zc_inc
    sget v7, Lm/a;->zcCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lm/a;->zcCount:I

    :zc_y_update
    sput v4, Lm/a;->prevBpX:F

    sput v5, Lm/a;->prevBpY:F

    # ========================================
    # Update dominant frequency (every 1s)
    # ========================================
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-wide v8, Lm/a;->zcTimer:J

    sub-long v10, v6, v8

    const-wide/16 v12, 0x3e8            # 1000ms

    cmp-long v14, v10, v12

    if-gez v14, :freq_update

    # dt = (now - zcTimer) / 1000
    long-to-float v14, v10

    const/high16 v15, 0x447a0000        # 1000.0

    div-float v14, v14, v15

    sget v15, Lm/a;->zcCount:I

    int-to-float v15, v15

    div-float v14, v15, v14            # freq

    # Clamp [0.25, 2.5]
    const v15, 0x3e800000              # 0.25

    cmpg-float v4, v14, v15

    if-ltz v4, :fmin_ok

    move v14, v15

    :fmin_ok
    const v15, 0x40200000       # 2.5

    cmpg-float v4, v14, v15

    if-ltz v4, :fmax_ok

    move v14, v15

    :fmax_ok
    sget v15, Lm/a;->zcCount:I

    if-lez v15, :skip_freq0

    sput v14, Lm/a;->dominantFreq:F

    :skip_freq0
    const/4 v14, 0x0

    sput v14, Lm/a;->zcCount:I

    sput-wide v6, Lm/a;->zcTimer:J

    :freq_update

    # ========================================
    # Energy: squared + EMA (alpha=0.2)
    # ========================================
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float v6, v6, v7                # rawEnergy

    sget v7, Lm/a;->smoothEnergy:F

    const v8, 0x3f4ccccd                # 0.8

    mul-float v7, v7, v8

    const v8, 0x3e4ccccd                # 0.2

    mul-float v9, v6, v8

    add-float v7, v7, v9

    sput v7, Lm/a;->smoothEnergy:F      # smoothEnergy

    # ========================================
    # Noise floor calibration (100 samples)
    # ========================================
    sget v8, Lm/a;->calibCount:I

    const/16 v9, 0x64

    if-lt v8, v9, :calib_done

    float-to-double v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v10, v0

    sget v11, Lm/a;->noiseFloor:F

    add-int/lit8 v8, v8, 0x1

    int-to-float v12, v8

    sub-float v13, v10, v11

    div-float/2addr v13, v12

    add-float v11, v11, v13

    sput v11, Lm/a;->noiseFloor:F

    sput v8, Lm/a;->calibCount:I

    return-void

    :calib_done

    # ========================================
    # Continuous noise tracking
    # ========================================
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float v10, v10, v11

    sget v11, Lm/a;->noiseFloor:F

    const/high16 v12, 0x40200000        # 2.5

    mul-float v12, v11, v12

    cmpg-float v13, v10, v12

    if-gez v13, :track_skip

    # noiseFloor += (absBp - noiseFloor) * 0.0005
    const v12, 0x3a83126f              # 0.0005

    sub-float v13, v10, v11

    mul-float v13, v13, v12

    add-float v11, v11, v13

    const v12, 0x38d1b717              # 0.0001

    cmpg-float v13, v11, v12

    if-ltz v13, :nf_min_ok

    move v11, v12

    :nf_min_ok
    sput v11, Lm/a;->noiseFloor:F

    :track_skip

    # ========================================
    # SNR filter: exit if snr < 3
    # snr = smoothEnergy / noiseFloor
    # ========================================
    sget v10, Lm/a;->noiseFloor:F

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    if-eqz v12, :nf_nonzero

    const v10, 0x3b03126f        # 0.002 default

    :nf_nonzero
    div-float v11, v7, v10              # v11 = snr

    sput v11, Lm/a;->snrFiltered:F

    const/high16 v12, 0x40400000        # 3.0

    cmpg-float v13, v11, v12

    if-gtz v13, :snr_ok                # snr > 3 → ok, skip reset

    # SNR too low — reset
    const/4 v0, 0x0

    sput v0, Lm/a;->detStatus:I

    sput v0, Lm/a;->aboveThresh:I

    sput-boolean v0, Lm/a;->dirReady:Z

    const/high16 v0, -0x40800000        # -1.0

    sput v0, Lcom/xcglobe/xclog/l;->blipAngle:F

    sput v0, Lcom/xcglobe/xclog/l;->blipStatus:I

    return-void

    :snr_ok

    # ========================================
    # Status determination
    # suspect = max(0.015, nf*3)
    # thermal = max(0.020, nf*5)
    # inside  = max(0.080, nf*10)
    # ========================================
    sget v10, Lm/a;->noiseFloor:F

    const v12, 0x3c75c28f               # 0.015 (TH_SUSPECT)

    const/high16 v13, 0x40400000        # 3.0

    mul-float v13, v10, v13

    cmpg-float v14, v12, v13

    if-ltz v14, :sus_ok                # 0.015 >= nf*3 → keep 0.015

    move v12, v13

    :sus_ok
    const v14, 0x3ca3d70a               # 0.020 (TH_THERMAL)

    const v15, 0x40a00000        # 5.0

    mul-float v15, v10, v15

    cmpg-float v4, v14, v15

    if-ltz v4, :th_ok

    move v14, v15

    :th_ok
    const v15, 0x3da3d70a               # 0.080 (TH_INSIDE)

    const v9, 0x41200000        # 10.0

    mul-float v9, v10, v9

    cmpg-float v4, v15, v9

    if-ltz v4, :in_ok

    move v15, v9

    :in_ok

    # energy > insideThresh → INSIDE
    cmpg-float v4, v7, v15

    if-ltz v4, :not_inside            # energy >= inside → not inside

    const/4 v0, 0x3

    sput v0, Lm/a;->detStatus:I

    goto :status_set

    :not_inside
    # energy > thermalThresh → THERMAL
    cmpg-float v15, v7, v14

    if-ltz v15, :not_thermal

    const/4 v0, 0x2

    sput v0, Lm/a;->detStatus:I

    goto :status_set

    :not_thermal
    # energy > suspectThresh → SUSPECT
    cmpg-float v14, v7, v12

    if-ltz v14, :not_suspect

    const/4 v0, 0x1

    sput v0, Lm/a;->detStatus:I

    goto :status_set

    :not_suspect
    # SEARCH — below all thresholds
    const/4 v0, 0x0

    sput v0, Lm/a;->detStatus:I

    sput v0, Lm/a;->aboveThresh:I

    sput-boolean v0, Lm/a;->dirReady:Z

    const/high16 v0, -0x40800000

    sput v0, Lcom/xcglobe/xclog/l;->blipAngle:F

    sput v0, Lcom/xcglobe/xclog/l;->blipStatus:I

    return-void

    :status_set

    # ========================================
    # Direction stabilization (25 consecutive above-threshold)
    # ========================================
    sget v0, Lm/a;->aboveThresh:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lm/a;->aboveThresh:I

    sget-boolean v0, Lm/a;->dirReady:Z

    if-eqz v0, :dir_ready

    sget v0, Lm/a;->aboveThresh:I

    const/16 v1, 0x19                   # 25

    if-lt v0, v1, :dir_now_ready

    goto :dir_not_ready

    :dir_now_ready
    const/4 v0, 0x1

    sput-boolean v0, Lm/a;->dirReady:Z

    :dir_not_ready
    :dir_ready

    sget-boolean v0, Lm/a;->dirReady:Z

    if-eqz v0, :render_allowed

    return-void

    :render_allowed

    # ========================================
    # Angle: atan2(bpY, bpX)
    # ========================================
    float-to-double v0, v5              # bpY

    float-to-double v2, v4              # bpX

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L   # 57.29578

    mul-double v0, v0, v2

    double-to-float v6, v0              # v6 = angle in degrees

    # Normalize 0..360
    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-ltz v7, :norm_ok

    const/high16 v7, 0x43b40000         # 360.0

    add-float/2addr v6, v7

    :norm_ok
    const/high16 v7, 0x43b40000

    cmpg-float v7, v6, v7

    if-ltz v7, :norm_ok2

    sub-float/2addr v6, v7

    :norm_ok2
    sput v6, Lm/a;->turbDir:F

    # ========================================
    # Angle change reset (Tradar ANGLE_DIFF_RESET 45°)
    # ========================================
    sget v7, Lm/a;->confirmCount:I

    const/4 v8, 0x5

    if-le v7, v8, :angle_reset_check

    goto :skip_angle_reset

    :angle_reset_check
    sget-boolean v7, Lm/a;->hasBlip:Z

    if-eqz v7, :skip_angle_reset

    sget v7, Lm/a;->lastAngle:F

    sub-float v8, v6, v7

    cmpg-float v9, v8, v9               # 0
    # Check: |diff| > 180 → diff = 360 - |diff|
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x43340000         # 180.0

    cmpg-float v10, v8, v9

    if-ltz v10, :angle_diff_ok

    const/high16 v10, 0x43b40000        # 360.0

    sub-float v8, v10, v8

    :angle_diff_ok
    const/high16 v9, 0x42340000         # 45.0

    cmpg-float v10, v8, v9

    if-ltz v10, :skip_angle_reset       # diff < 45 → ok

    # Diff > 45° → reset
    const/4 v8, 0x0

    sput-boolean v8, Lm/a;->blipConfirmed:Z

    sput v8, Lm/a;->confirmCount:I

    :skip_angle_reset

    # ========================================
    # 2-period verification
    # ========================================
    sget v7, Lm/a;->confirmCount:I

    if-eqz v7, :confirm_start

    # First sample
    const/4 v7, 0x0

    sput v7, Lm/a;->confirmSum1:F

    sput v7, Lm/a;->confirmSum2:F

    # Adaptive target: 2 periods × 50Hz
    sget v7, Lm/a;->dominantFreq:F

    const v8, 0x3e800000                # 0.25

    cmpg-float v9, v7, v8

    if-ltz v9, :fmin_ok2

    move v7, v8

    :fmin_ok2
    const/high16 v8, 0x3f800000        # 1.0

    div-float v7, v8, v7               # period seconds

    const/high16 v8, 0x42c80000        # 100.0 (2 periods × 50)

    mul-float v7, v7, v8

    float-to-int v7, v7

    const/16 v8, 0x19                  # clamp min 25

    if-ge v7, v8, :tgt_min_ok

    move v7, v8

    :tgt_min_ok
    const/16 v8, 0xfa                  # clamp max 250

    if-gt v7, v8, :tgt_max_ok

    move v7, v8

    :tgt_max_ok
    sput v7, Lm/a;->confirmTarget:I

    div-int/lit8 v7, v7, 0x2

    sput v7, Lm/a;->confirmHalf:I

    :confirm_start

    sget v7, Lm/a;->confirmCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lm/a;->confirmCount:I

    # Accumulate
    sget v7, Lm/a;->confirmHalf:I

    sget v8, Lm/a;->confirmCount:I

    if-gt v8, v7, :accum_first

    # First half
    sget v9, Lm/a;->confirmSum1:F

    add-float/2addr v9, v6

    sput v9, Lm/a;->confirmSum1:F

    goto :accum_done

    :accum_first
    # Second half
    sget v9, Lm/a;->confirmSum2:F

    add-float/2addr v9, v6

    sput v9, Lm/a;->confirmSum2:F

    :accum_done

    # Reached target? → verify
    sget v7, Lm/a;->confirmTarget:I

    sget v8, Lm/a;->confirmCount:I

    if-lt v8, v7, :verify_ready

    goto :skip_verify

    :verify_ready

    # avgFirst = sum1 / half
    sget v7, Lm/a;->confirmHalf:I

    sget v8, Lm/a;->confirmSum1:F

    div-float/2addr v8, v7

    # avgSecond = sum2 / (target - half)
    sget v7, Lm/a;->confirmTarget:I

    sget v9, Lm/a;->confirmHalf:I

    sub-int/2addr v7, v9

    sget v9, Lm/a;->confirmSum2:F

    div-float v9, v9, v7

    # avgSecond >= avgFirst * 1.2 → CONFIRMED
    const v7, 0x3f99999a                # 1.2

    mul-float v7, v8, v7

    cmpg-float v10, v9, v7

    if-ltz v10, :is_confirmed

    goto :check_reject

    :is_confirmed
    const/4 v7, 0x1

    sput-boolean v7, Lm/a;->blipConfirmed:Z

    sput-boolean v7, Lm/a;->hasBlip:Z

    sput v6, Lm/a;->lastAngle:F

    const/4 v7, 0x0

    sput v7, Lm/a;->consecReject:I

    sput v7, Lm/a;->confirmCount:I

    goto :skip_verify

    :check_reject
    # avgSecond <= avgFirst * 0.8 → REJECTED
    const v7, 0x3f4ccccd                # 0.8

    mul-float v8, v8, v7

    cmpg-float v7, v9, v8

    if-ltz v7, :is_rejected

    goto :undecided

    :is_rejected
    sget v7, Lm/a;->consecReject:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lm/a;->consecReject:I

    # Reset
    const/4 v7, 0x0

    sput v7, Lm/a;->confirmCount:I

    sput-boolean v7, Lm/a;->dirReady:Z

    sput v7, Lm/a;->aboveThresh:I

    const/high16 v7, -0x40800000

    sput v7, Lcom/xcglobe/xclog/l;->blipAngle:F

    sput v6, Lcom/xcglobe/xclog/l;->blipStatus:I

    return-void

    :undecided
    const/4 v7, 0x0

    sput v7, Lm/a;->confirmCount:I

    return-void

    :skip_verify

    # ========================================
    # Trial render (even unconfirmed, past mid-window)
    # ========================================
    sget-boolean v7, Lm/a;->blipConfirmed:Z

    if-eqz v7, :draw

    sget v7, Lm/a;->confirmCount:I

    sget v8, Lm/a;->confirmHalf:I

    if-gt v7, v8, :draw

    goto :skip_output

    :draw

    # ========================================
    # Strength: 1 + 7 * tanh(snr / 15)
    # ========================================
    sget v7, Lm/a;->snrFiltered:F

    const/high16 v8, 0x41700000         # 15.0

    div-float v7, v7, v8

    float-to-double v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v0

    double-to-float v7, v0

    const/high16 v8, 0x40e00000         # 7.0

    mul-float v7, v7, v8

    const/high16 v8, 0x3f800000         # 1.0

    add-float v7, v7, v8

    sput v7, Lcom/xcglobe/xclog/l;->blipStrength:F

    # ========================================
    # Distance: 150 * sqrt(0.05 / max(rmsMs2, 0.01))
    # rmsMs2 = sqrt(smoothEnergy) * 9.81
    # ========================================
    sget v8, Lm/a;->smoothEnergy:F

    float-to-double v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v9, v0

    const v10, 0x411ccccc        # 9.81

    mul-float v9, v9, v10

    const v10, 0x3c23d70a        # 0.01

    cmpg-float v11, v9, v10

    if-ltz v11, :rms_min_ok

    move v9, v10

    :rms_min_ok
    const v11, 0x3d4ccccd               # 0.05

    div-float v9, v11, v9

    float-to-double v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v9, v0

    const/high16 v10, 0x43160000         # 150.0

    mul-float v9, v9, v10

    # Clamp [10, 150]
    const/high16 v10, 0x41200000

    cmpg-float v11, v9, v10

    if-ltz v11, :min_ok

    move v9, v10

    :min_ok
    const/high16 v10, 0x43160000

    cmpg-float v11, v9, v10

    if-ltz v11, :max_ok

    move v9, v10

    :max_ok

    # EMA alpha=0.08
    sget v10, Lm/a;->smoothDist:F

    const v11, 0x3da3d70a               # 0.08

    sub-float v12, v9, v10

    mul-float v12, v12, v11

    add-float v10, v10, v12

    # Clamp again
    const/high16 v11, 0x41200000

    cmpg-float v12, v10, v11

    if-ltz v12, :smin_ok

    move v10, v11

    :smin_ok
    const/high16 v11, 0x43160000

    cmpg-float v12, v10, v11

    if-ltz v12, :smax_ok

    move v10, v11

    :smax_ok
    sput v10, Lcom/xcglobe/xclog/l;->blipDistance:F

    # ========================================
    # LifeMs: INSIDE=15s, strong(strength>3)=12s, else=8s
    # ========================================
    sget v10, Lm/a;->detStatus:I

    const/4 v11, 0x3

    if-ne v10, v11, :life_15s

    sget v10, Lcom/xcglobe/xclog/l;->blipStrength:F

    const/high16 v11, 0x40400000         # 3.0

    cmpg-float v12, v10, v11

    if-ltz v12, :life_12s

    const-wide/16 v0, 0x1f40             # 8000ms

    sput-wide v0, Lcom/xcglobe/xclog/l;->blipLifeMs:J

    goto :life_done

    :life_12s
    const-wide/16 v0, 0x2ee0             # 12000ms

    sput-wide v0, Lcom/xcglobe/xclog/l;->blipLifeMs:J

    goto :life_done

    :life_15s
    const-wide/16 v0, 0x3a98             # 15000ms

    sput-wide v0, Lcom/xcglobe/xclog/l;->blipLifeMs:J

    :life_done

    # ========================================
    # Write output
    # ========================================
    sput v6, Lcom/xcglobe/xclog/l;->blipAngle:F

    sget v0, Lm/a;->detStatus:I

    sput v0, Lcom/xcglobe/xclog/l;->blipStatus:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xcglobe/xclog/l;->blipTime:J

    :skip_output
    return-void
.end method
