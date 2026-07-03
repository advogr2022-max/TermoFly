.class Lm/a$a;
.super Ljava/lang/Object;
.implements Landroid/hardware/SensorEventListener;

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.method constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    move-object v0, p1
    iget-object v1, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I
    move-result v1
    const/4 v2, 0x6
    if-eq v1, v2, :baro
    const/16 v2, 0xa
    if-eq v1, v2, :accel
    return-void
    :baro
    invoke-direct {p0, v0}, Lm/a$a;->processBaro(Landroid/hardware/SensorEvent;)V
    return-void
    :accel
    invoke-direct {p0, v0}, Lm/a$a;->processAccel(Landroid/hardware/SensorEvent;)V
    return-void
.end method

.method private processBaro(Landroid/hardware/SensorEvent;)V
    .locals 10
    invoke-static {}, Lc/a;->a()Z
    move-result v7
    if-eqz v7, :bp
    return-void
    :bp
    const/4 v7, 0x1
    invoke-static {v7}, Lm/a;->a(Z)Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    sput-wide v2, Lm/a;->a:J
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F
    const/4 v4, 0x0
    aget v5, v1, v4
    const/4 v6, 0x0
    cmpl-float v4, v5, v6
    if-eqz v4, :alt
    const v6, 0x447d5000
    invoke-static {v6, v5}, Landroid/hardware/SensorManager;->getAltitude(FF)F
    move-result v5
    :alt
    invoke-static {}, Lm/a;->g()Lg/a;
    move-result-object v8
    sget-wide v2, Lm/a;->a:J
    invoke-virtual {v8, v5, v2, v3}, Lg/a;->a(FJ)F
    move-result v5
    invoke-static {}, Lm/a;->g()Lg/a;
    move-result-object v8
    iget v6, v8, Lg/a;->c:F
    sget-object v8, Lm/g;->A:Lm/e;
    invoke-virtual {v8, v5}, Lm/e;->a(F)F
    move-result v5
    sget-wide v2, Lm/a;->a:J
    invoke-static {v5, v6, v2, v3}, Lm/g;->a(FFJ)V
    return-void
.end method

.method private processAccel(Landroid/hardware/SensorEvent;)V
    .locals 14

    sget v7, Lm/a;->accelEventCount:I
    add-int/lit8 v7, v7, 0x1
    sput v7, Lm/a;->accelEventCount:I

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F
    const/4 v1, 0x0
    aget v1, v0, v1
    const/4 v2, 0x1
    aget v2, v0, v2

    # ========= HP 0.25Hz X =========
    sget v3, Lm/a;->bq_hx1:F
    sget v4, Lm/a;->bq_hx2:F
    sget v5, Lm/a;->bq_hy1:F
    sget v6, Lm/a;->bq_hy2:F

    const v10, 0x3f7a5e35
    mul-float v10, v10, v1
    const v11, 0xbffa5e35
    mul-float v11, v11, v3
    add-float v10, v10, v11
    const v11, 0x3f7a5e35
    mul-float v11, v11, v4
    add-float v10, v10, v11
    const v11, 0xbffa4dd3
    mul-float v11, v11, v5
    sub-float v10, v10, v11
    const v11, 0x3f74dd2f
    mul-float v11, v11, v6
    sub-float v10, v10, v11

    const/high16 v11, 0x42c80000
    cmpg-float v7, v10, v11
    if-ltz v7, :hx_1
    move v10, v11
    :hx_1
    const/high16 v11, -0x3d380000
    cmpg-float v7, v10, v11
    if-gez v7, :hx_2
    move v10, v11
    :hx_2

    sput v3, Lm/a;->bq_hx2:F
    sput v1, Lm/a;->bq_hx1:F
    sput v5, Lm/a;->bq_hy2:F
    sput v10, Lm/a;->bq_hy1:F
    move v8, v10

    # ========= LP 2.5Hz X =========
    sget v3, Lm/a;->bq_lx1:F
    sget v4, Lm/a;->bq_lx2:F
    sget v5, Lm/a;->bq_ly1:F
    sget v6, Lm/a;->bq_ly2:F

    const v10, 0x3ca469d7
    mul-float v10, v10, v8
    const v11, 0x3d2469d7
    mul-float v11, v11, v3
    add-float v10, v10, v11
    const v11, 0x3ca469d7
    mul-float v11, v11, v4
    add-float v10, v10, v11
    const v11, 0xbfc7d8ae
    mul-float v11, v11, v5
    sub-float v10, v10, v11
    const v11, 0x3f243958
    mul-float v11, v11, v6
    sub-float v10, v10, v11

    const/high16 v11, 0x42c80000
    cmpg-float v7, v10, v11
    if-ltz v7, :lx_1
    move v10, v11
    :lx_1
    const/high16 v11, -0x3d380000
    cmpg-float v7, v10, v11
    if-gez v7, :lx_2
    move v10, v11
    :lx_2

    sput v3, Lm/a;->bq_lx2:F
    sput v8, Lm/a;->bq_lx1:F
    sput v5, Lm/a;->bq_ly2:F
    sput v10, Lm/a;->bq_ly1:F
    move v12, v10

    # ========= HP 0.25Hz Y =========
    sget v3, Lm/a;->bq_hx1y:F
    sget v4, Lm/a;->bq_hx2y:F
    sget v5, Lm/a;->bq_hy1y:F
    sget v6, Lm/a;->bq_hy2y:F

    const v10, 0x3f7a5e35
    mul-float v10, v10, v2
    const v11, 0xbffa5e35
    mul-float v11, v11, v3
    add-float v10, v10, v11
    const v11, 0x3f7a5e35
    mul-float v11, v11, v4
    add-float v10, v10, v11
    const v11, 0xbffa4dd3
    mul-float v11, v11, v5
    sub-float v10, v10, v11
    const v11, 0x3f74dd2f
    mul-float v11, v11, v6
    sub-float v10, v10, v11

    const/high16 v11, 0x42c80000
    cmpg-float v7, v10, v11
    if-ltz v7, :hy_1
    move v10, v11
    :hy_1
    const/high16 v11, -0x3d380000
    cmpg-float v7, v10, v11
    if-gez v7, :hy_2
    move v10, v11
    :hy_2

    sput v3, Lm/a;->bq_hx2y:F
    sput v2, Lm/a;->bq_hx1y:F
    sput v5, Lm/a;->bq_hy2y:F
    sput v10, Lm/a;->bq_hy1y:F
    move v9, v10

    # ========= LP 2.5Hz Y =========
    sget v3, Lm/a;->bq_lx1y:F
    sget v4, Lm/a;->bq_lx2y:F
    sget v5, Lm/a;->bq_ly1y:F
    sget v6, Lm/a;->bq_ly2y:F

    const v10, 0x3ca469d7
    mul-float v10, v10, v9
    const v11, 0x3d2469d7
    mul-float v11, v11, v3
    add-float v10, v10, v11
    const v11, 0x3ca469d7
    mul-float v11, v11, v4
    add-float v10, v10, v11
    const v11, 0xbfc7d8ae
    mul-float v11, v11, v5
    sub-float v10, v10, v11
    const v11, 0x3f243958
    mul-float v11, v11, v6
    sub-float v10, v10, v11

    const/high16 v11, 0x42c80000
    cmpg-float v7, v10, v11
    if-ltz v7, :ly_1
    move v10, v11
    :ly_1
    const/high16 v11, -0x3d380000
    cmpg-float v7, v10, v11
    if-gez v7, :ly_2
    move v10, v11
    :ly_2

    sput v3, Lm/a;->bq_lx2y:F
    sput v9, Lm/a;->bq_lx1y:F
    sput v5, Lm/a;->bq_ly2y:F
    sput v10, Lm/a;->bq_ly1y:F
    move v13, v10

    # === ZC pos->neg ===
    sget v3, Lm/a;->prevBpX:F
    const/4 v6, 0x0
    cmpg-float v7, v3, v6
    if-gez v7, :zc_pn
    goto :zc_np
    :zc_pn
    cmpg-float v7, v12, v6
    if-ltz v7, :zc_i1
    goto :zc_np
    :zc_i1
    sget v7, Lm/a;->zcCount:I
    add-int/lit8 v7, v7, 0x1
    sput v7, Lm/a;->zcCount:I
    :zc_np
    cmpg-float v7, v3, v6
    if-ltz v7, :zc_st
    cmpg-float v7, v12, v6
    if-ltz v7, :zc_st
    sget v7, Lm/a;->zcCount:I
    add-int/lit8 v7, v7, 0x1
    sput v7, Lm/a;->zcCount:I
    :zc_st
    sput v12, Lm/a;->prevBpX:F
    sput v13, Lm/a;->prevBpY:F
    invoke-direct {p0}, Lm/a$a;->updateFreq()V
    invoke-direct {p0, v12, v13}, Lm/a$a;->updateEnergy(FF)V
    invoke-direct {p0}, Lm/a$a;->updateStatus()V
    return-void
.end method
.method private updateFreq()V
    .locals 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v6
    sget-wide v8, Lm/a;->zcTimer:J
    sub-long v10, v6, v8
    const-wide/16 v12, 0x3e8
    cmp-long v2, v10, v12
    if-gez v2, :fq_upd
    return-void
    :fq_upd
    long-to-float v4, v10
    const/high16 v5, 0x447a0000
    div-float v4, v4, v5
    sget v5, Lm/a;->zcCount:I
    int-to-float v5, v5
    div-float v4, v5, v4
    const v5, 0x3e800000
    cmpg-float v2, v4, v5
    if-ltz v2, :fm1
    move v4, v5
    :fm1
    const v5, 0x40200000
    cmpg-float v2, v4, v5
    if-ltz v2, :fm2
    move v4, v5
    :fm2
    sput v4, Lm/a;->dominantFreq:F
    const/4 v4, 0x0
    sput v4, Lm/a;->zcCount:I
    sput-wide v6, Lm/a;->zcTimer:J
    return-void
.end method

.method private updateEnergy(FF)V
    .locals 12
    mul-float v6, p1, p1
    mul-float v7, p2, p2
    add-float v6, v6, v7
    sget v7, Lm/a;->smoothEnergy:F
    const v8, 0x3f4ccccd
    mul-float v7, v7, v8
    const v8, 0x3e4ccccd
    mul-float v9, v6, v8
    add-float v7, v7, v9
    sput v7, Lm/a;->smoothEnergy:F
    sget v2, Lm/a;->calibCount:I
    const/16 v3, 0x64
    if-lt v2, v3, :cb_done
    float-to-double v0, v7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v0
    double-to-float v10, v0
    sget v11, Lm/a;->noiseFloor:F
    add-int/lit8 v2, v2, 0x1
    int-to-float v12, v2
    sub-float v13, v10, v11
    div-float/2addr v13, v12
    add-float v11, v11, v13
    sput v11, Lm/a;->noiseFloor:F
    sput v2, Lm/a;->calibCount:I
    return-void
    :cb_done
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F
    move-result v10
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F
    move-result v11
    add-float v10, v10, v11
    sget v11, Lm/a;->noiseFloor:F
    const/high16 v12, 0x40200000
    mul-float v12, v11, v12
    cmpg-float v2, v10, v12
    if-gez v2, :tk_sk
    const v12, 0x3a83126f
    sub-float v13, v10, v11
    mul-float v13, v13, v12
    add-float v11, v11, v13
    const v12, 0x38d1b717
    cmpg-float v2, v11, v12
    if-ltz v2, :nf1
    move v11, v12
    :nf1
    sput v11, Lm/a;->noiseFloor:F
    const/high16 v13, 0x3f000000
    cmpg-float v2, v11, v13
    if-ltz v2, :nf2
    move v11, v13
    :nf2
    sput v11, Lm/a;->noiseFloor:F
    :tk_sk
    sget v10, Lm/a;->noiseFloor:F
    const/4 v11, 0x0
    cmpl-float v12, v10, v11
    if-eqz v12, :nf_nz
    const v10, 0x3b03126f
    :nf_nz
    div-float v11, v7, v10
    const/high16 v12, 0x7f800000
    cmpg-float v2, v11, v12
    if-ltz v2, :snr_fin
    const/4 v11, 0x0
    :snr_fin
    sput v11, Lm/a;->snrFiltered:F
    const/high16 v12, 0x40400000
    cmpg-float v2, v11, v12
    if-gtz v2, :snr_ok
    const/4 v2, 0x0
    sput v2, Lm/a;->detStatus:I
    sput v2, Lm/a;->aboveThresh:I
    sput-boolean v2, Lm/a;->dirReady:Z
    const/high16 v2, -0x40800000
    sput v2, Lcom/xcglobe/xclog/l;->blipAngle:F
    sput v2, Lcom/xcglobe/xclog/l;->blipStatus:I
    return-void
    :snr_ok
    return-void
.end method

.method private updateStatus()V
    .locals 16
    sget v7, Lm/a;->snrFiltered:F
    const/high16 v8, 0x40400000
    cmpg-float v2, v7, v8
    if-gtz v2, :st_ct
    return-void
    :st_ct
    sget v10, Lm/a;->noiseFloor:F
    const v12, 0x3c75c28f
    const/high16 v13, 0x40400000
    mul-float v13, v10, v13
    cmpg-float v2, v12, v13
    if-ltz v2, :ss1
    move v12, v13
    :ss1
    const v14, 0x3ca3d70a
    const v15, 0x40a00000
    mul-float v15, v10, v15
    cmpg-float v2, v14, v15
    if-ltz v2, :st1
    move v14, v15
    :st1
    const v15, 0x3da3d70a
    const v9, 0x41200000
    mul-float v9, v10, v9
    cmpg-float v2, v15, v9
    if-ltz v2, :si1
    move v15, v9
    :si1
    sget v7, Lm/a;->smoothEnergy:F
    cmpg-float v2, v7, v15
    if-ltz v2, :ni1
    const/4 v4, 0x3
    sput v4, Lm/a;->detStatus:I
    goto :st_s
    :ni1
    cmpg-float v2, v7, v14
    if-ltz v2, :nt1
    const/4 v4, 0x2
    sput v4, Lm/a;->detStatus:I
    goto :st_s
    :nt1
    cmpg-float v2, v7, v12
    if-ltz v2, :ns1
    const/4 v4, 0x1
    sput v4, Lm/a;->detStatus:I
    goto :st_s
    :ns1
    const/4 v4, 0x0
    sput v4, Lm/a;->detStatus:I
    sput v4, Lm/a;->aboveThresh:I
    sput-boolean v4, Lm/a;->dirReady:Z
    const/high16 v8, -0x40800000
    sput v8, Lcom/xcglobe/xclog/l;->blipAngle:F
    sput v4, Lcom/xcglobe/xclog/l;->blipStatus:I
    return-void
    :st_s
    sget v4, Lm/a;->aboveThresh:I
    add-int/lit8 v4, v4, 0x1
    sput v4, Lm/a;->aboveThresh:I
    sget-boolean v4, Lm/a;->dirReady:Z
    if-eqz v4, :dd1
    sget v4, Lm/a;->aboveThresh:I
    const/16 v3, 0x19
    if-lt v4, v3, :dn1
    goto :dnt
    :dn1
    const/4 v4, 0x1
    sput-boolean v4, Lm/a;->dirReady:Z
    :dnt
    :dd1
    sget-boolean v4, Lm/a;->dirReady:Z
    if-eqz v4, :rdr
    return-void
    :rdr
    sget v5, Lm/a;->prevBpY:F
    sget v8, Lm/a;->prevBpX:F
    float-to-double v0, v5
    float-to-double v2, v8
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D
    move-result-wide v0
    const-wide v10, 0x404ca5dc1a63c1f8L
    mul-double v0, v0, v10
    double-to-float v6, v0
    const/high16 v8, 0x43b40000
    const/high16 v9, 0x0
    cmpg-float v9, v6, v9
    if-ltz v9, :nn2
    add-float/2addr v6, v8
    :nn2
    cmpg-float v9, v6, v8
    if-ltz v9, :nn3
    sub-float/2addr v6, v8
    :nn3
    sput v6, Lm/a;->turbDir:F
    sget v4, Lm/a;->confirmCount:I
    const/4 v3, 0x5
    if-le v4, v3, :ac1
    goto :sar
    :ac1
    sget-boolean v4, Lm/a;->hasBlip:Z
    if-eqz v4, :sar
    sget v12, Lm/a;->lastAngle:F
    sub-float v8, v6, v12
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F
    move-result v8
    const/high16 v9, 0x43340000
    cmpg-float v4, v8, v9
    if-ltz v4, :ad1
    const/high16 v12, 0x43b40000
    sub-float v8, v12, v8
    :ad1
    const/high16 v9, 0x42340000
    cmpg-float v4, v8, v9
    if-ltz v4, :sar
    const/4 v8, 0x0
    sput-boolean v8, Lm/a;->blipConfirmed:Z
    sput v8, Lm/a;->confirmCount:I
    :sar
    sget v4, Lm/a;->confirmCount:I
    if-eqz v4, :cs1
    const/high16 v7, 0x0
    sput v7, Lm/a;->confirmSum1:F
    sput v7, Lm/a;->confirmSum2:F
    sget v7, Lm/a;->dominantFreq:F
    const v8, 0x3e800000
    cmpg-float v9, v7, v8
    if-ltz v9, :fm3
    move v7, v8
    :fm3
    const/high16 v8, 0x3f800000
    div-float v7, v8, v7
    const/high16 v8, 0x42c80000
    mul-float v7, v7, v8
    float-to-int v2, v7
    const/16 v3, 0x19
    if-ge v2, v3, :tm1
    move v2, v3
    :tm1
    const/16 v3, 0xfa
    if-gt v2, v3, :tm2
    move v2, v3
    :tm2
    sput v2, Lm/a;->confirmTarget:I
    div-int/lit8 v2, v2, 0x2
    sput v2, Lm/a;->confirmHalf:I
    :cs1
    sget v4, Lm/a;->confirmCount:I
    add-int/lit8 v4, v4, 0x1
    sput v4, Lm/a;->confirmCount:I
    sget v4, Lm/a;->confirmHalf:I
    sget v2, Lm/a;->confirmCount:I
    if-gt v2, v4, :ac2
    sget v9, Lm/a;->confirmSum1:F
    add-float/2addr v9, v6
    sput v9, Lm/a;->confirmSum1:F
    goto :acd
    :ac2
    sget v9, Lm/a;->confirmSum2:F
    add-float/2addr v9, v6
    sput v9, Lm/a;->confirmSum2:F
    :acd
    sget v4, Lm/a;->confirmTarget:I
    sget v2, Lm/a;->confirmCount:I
    if-lt v2, v4, :vr1
    goto :sv1
    :vr1
    sget v4, Lm/a;->confirmHalf:I
    int-to-float v13, v4
    sget v8, Lm/a;->confirmSum1:F
    div-float/2addr v8, v13
    sget v4, Lm/a;->confirmTarget:I
    sget v13, Lm/a;->confirmHalf:I
    sub-int/2addr v4, v13
    int-to-float v13, v4
    sget v9, Lm/a;->confirmSum2:F
    div-float v9, v9, v13
    const v7, 0x3f99999a
    mul-float v7, v8, v7
    cmpg-float v10, v9, v7
    if-ltz v10, :ic1
    goto :cr1
    :ic1
    const/4 v4, 0x1
    sput-boolean v4, Lm/a;->blipConfirmed:Z
    sput-boolean v4, Lm/a;->hasBlip:Z
    sput v6, Lm/a;->lastAngle:F
    const/4 v4, 0x0
    sput v4, Lm/a;->consecReject:I
    sput v4, Lm/a;->confirmCount:I
    goto :sv1
    :cr1
    const v7, 0x3f4ccccd
    mul-float v8, v8, v7
    cmpg-float v7, v9, v8
    if-ltz v7, :ir1
    goto :ud1
    :ir1
    sget v4, Lm/a;->consecReject:I
    add-int/lit8 v4, v4, 0x1
    sput v4, Lm/a;->consecReject:I
    const/4 v3, 0x0
    sput v3, Lm/a;->confirmCount:I
    sput-boolean v3, Lm/a;->dirReady:Z
    sput v3, Lm/a;->aboveThresh:I
    sput v3, Lm/a;->detStatus:I
    const/high16 v8, -0x40800000
    sput v8, Lcom/xcglobe/xclog/l;->blipAngle:F
    sput v3, Lcom/xcglobe/xclog/l;->blipStatus:I
    return-void
    :ud1
    const/4 v4, 0x0
    sput v4, Lm/a;->confirmCount:I
    return-void
    :sv1
    sget-boolean v4, Lm/a;->blipConfirmed:Z
    if-eqz v4, :dw1
    sget v4, Lm/a;->confirmCount:I
    sget v2, Lm/a;->confirmHalf:I
    if-gt v4, v2, :dw1
    goto :so1
    :dw1
    sget v7, Lm/a;->snrFiltered:F
    const/high16 v8, 0x41700000
    div-float v7, v7, v8
    float-to-double v0, v7
    invoke-static {v0, v1}, Ljava/lang/Math;->tanh(D)D
    move-result-wide v0
    double-to-float v7, v0
    const/high16 v8, 0x40e00000
    mul-float v7, v7, v8
    const/high16 v8, 0x3f800000
    add-float v7, v7, v8
    sput v7, Lcom/xcglobe/xclog/l;->blipStrength:F
    sget v8, Lm/a;->smoothEnergy:F
    float-to-double v0, v8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v0
    double-to-float v9, v0
    const v10, 0x411ccccc
    mul-float v9, v9, v10
    const v10, 0x3c23d70a
    cmpg-float v11, v9, v10
    if-ltz v11, :rm1
    move v9, v10
    :rm1
    const v11, 0x3d4ccccd
    div-float v9, v11, v9
    float-to-double v0, v9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v0
    double-to-float v9, v0
    const/high16 v10, 0x43160000
    mul-float v9, v9, v10
    const/high16 v10, 0x41200000
    cmpg-float v11, v9, v10
    if-ltz v11, :mn1
    move v9, v10
    :mn1
    const/high16 v10, 0x43160000
    cmpg-float v11, v9, v10
    if-ltz v11, :mx1
    move v9, v10
    :mx1
    sget v10, Lm/a;->smoothDist:F
    const v11, 0x3da3d70a
    sub-float v12, v9, v10
    mul-float v12, v12, v11
    add-float v10, v10, v12
    const/high16 v11, 0x41200000
    cmpg-float v12, v10, v11
    if-ltz v12, :smn1
    move v10, v11
    :smn1
    const/high16 v11, 0x43160000
    cmpg-float v12, v10, v11
    if-ltz v12, :smx1
    move v10, v11
    :smx1
    sput v10, Lcom/xcglobe/xclog/l;->blipDistance:F
    sget v10, Lm/a;->detStatus:I
    const/4 v11, 0x3
    if-ne v10, v11, :lf15
    sget v10, Lcom/xcglobe/xclog/l;->blipStrength:F
    const/high16 v11, 0x40400000
    cmpg-float v12, v10, v11
    if-ltz v12, :lf12
    const-wide/16 v0, 0x1f40
    sput-wide v0, Lcom/xcglobe/xclog/l;->blipLifeMs:J
    goto :ld1
    :lf12
    const-wide/16 v0, 0x2ee0
    sput-wide v0, Lcom/xcglobe/xclog/l;->blipLifeMs:J
    goto :ld1
    :lf15
    const-wide/16 v0, 0x3a98
    sput-wide v0, Lcom/xcglobe/xclog/l;->blipLifeMs:J
    :ld1
    sput v6, Lcom/xcglobe/xclog/l;->blipAngle:F
    sget v4, Lm/a;->detStatus:I
    sput v4, Lcom/xcglobe/xclog/l;->blipStatus:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    sput-wide v0, Lcom/xcglobe/xclog/l;->blipTime:J
    :so1
    return-void
.end method
