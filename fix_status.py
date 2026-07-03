import re
fn = r'D:\t4\decoded\smali\m\a$a.smali'
with open(fn) as f: content = f.read()

clean = """.method private updateStatus()V
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
    sget v8, Lm/a;->confirmSum1:F
    div-float/2addr v8, v4
    sget v4, Lm/a;->confirmTarget:I
    sget v9, Lm/a;->confirmHalf:I
    sub-int/2addr v4, v9
    sget v9, Lm/a;->confirmSum2:F
    div-float v9, v9, v4
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
.end method"""

old = re.search(r'\.method private updateStatus\(\)V.*?\.end method', content, re.DOTALL)
if old:
    content = content[:old.start()] + clean + content[old.end():]
    with open(fn, 'w') as f: f.write(content)
    print('Replaced OK')
else:
    print('ERROR: old updateStatus not found')
