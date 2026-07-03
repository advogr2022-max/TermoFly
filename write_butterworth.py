import sys
fn = r'D:\t4\decoded\smali\m\a$a.smali'
with open(fn) as f: c = f.read()
sa = c.find('.method private processAccel')
ea = c.find('.end method', sa)

# Butterworth with one instruction per line
bp = '''.method private processAccel(Landroid/hardware/SensorEvent;)V
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
.end method'''

c = c[:sa] + bp + c[c.find('.end method', sa) + len('.end method'):]
with open(fn, 'w') as f: f.write(c)
print('Wrote Butterworth processAccel')
