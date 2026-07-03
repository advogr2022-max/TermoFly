#!/usr/bin/env python3
"""Replace the test blip with 3 varying blips."""
path = r"D:\t4\decoded\smali\display\vmap\features\RingPainter.smali"
with open(path, 'r', encoding='utf-8') as f:
    data = f.read()

old_start = '    # === TEST: rotating blip ==='
old_end = '    # === END TEST ==='

# Find the test section
start_idx = data.find(old_start)
end_idx = data.find(old_end, start_idx)
if start_idx < 0 or end_idx < 0:
    print(f"ERROR: test section not found. start={start_idx}, end={end_idx}")
    # Show what's after drawBlips
    idx = data.find('.method public static drawBlips')
    if idx > 0:
        print(data[idx:idx+200])
else:
    end_idx += len(old_end)  # include the end marker
    
    new_code = '''    # === TEST: 3 blips of varying size/distance ===
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v12
    const-wide/16 v10, 0x64
    div-long v4, v12, v10
    long-to-int v0, v4
    # v0 = time/100 (changes every 100ms)
    int-to-float v2, v0
    const/high16 v3, 0x43b40000
    div-float v2, v2, v3
    const/high16 v3, 0x43b40000
    mul-float v2, v2, v3
    # v2 = angle_deg in [0,360)
    
    # Three blips with offset angles
    # Blip 1: angle+0 deg, dist=0.4, r=30 (big)
    const/high16 v3, 0x3f4ccccd
    move v8, v2
    float-to-double v6, v8
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D
    move-result-wide v6
    double-to-float v9, v6
    float-to-double v6, v2
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D
    move-result-wide v6
    double-to-float v8, v6
    sget v6, Ldisplay/vmap/features/RingPainter;->ringCenterX:I
    int-to-float v6, v6
    sget v7, Ldisplay/vmap/features/RingPainter;->ringR:I
    int-to-float v7, v7
    const/high16 v1, 0x3ecccccd
    mul-float v7, v7, v1
    mul-float v7, v7, v9
    add-float v9, v6, v7
    sget v6, Ldisplay/vmap/features/RingPainter;->ringCenterY:I
    int-to-float v6, v6
    sget v7, Ldisplay/vmap/features/RingPainter;->ringR:I
    int-to-float v7, v7
    mul-float v7, v7, v1
    mul-float v7, v7, v8
    sub-float v8, v6, v7
    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;
    const v1, 0xffffc107
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    const/16 v1, 0xc0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
    const/high16 v10, 0x41f00000
    invoke-virtual {p0, v9, v8, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    
    # Blip 2: angle+120 deg, dist=0.6, r=20 (medium)
    const/high16 v3, 0x3f19999a
    const/high16 v1, 0x42f00000
    add-float v2, v2, v1
    :tloop2
    const/high16 v1, 0x43b40000
    cmpg-float v5, v2, v1
    if-ltz v5, :tdraw2
    sub-float v2, v2, v1
    goto :tloop2
    :tdraw2
    float-to-double v6, v2
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D
    move-result-wide v6
    double-to-float v9, v6
    float-to-double v6, v2
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D
    move-result-wide v6
    double-to-float v8, v6
    sget v6, Ldisplay/vmap/features/RingPainter;->ringCenterX:I
    int-to-float v6, v6
    sget v7, Ldisplay/vmap/features/RingPainter;->ringR:I
    int-to-float v7, v7
    mul-float v7, v7, v3
    mul-float v7, v7, v9
    add-float v9, v6, v7
    sget v6, Ldisplay/vmap/features/RingPainter;->ringCenterY:I
    int-to-float v6, v6
    sget v7, Ldisplay/vmap/features/RingPainter;->ringR:I
    int-to-float v7, v7
    mul-float v7, v7, v3
    mul-float v7, v7, v8
    sub-float v8, v6, v7
    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;
    const v1, 0xffffc107
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    const/16 v1, 0x90
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
    const/high16 v10, 0x41a00000
    invoke-virtual {p0, v9, v8, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    
    # Blip 3: angle+240 deg, dist=0.8, r=10 (small)
    const/high16 v3, 0x3f4ccccd
    const/high16 v1, 0x42f00000
    add-float v2, v2, v1
    :tloop3
    const/high16 v1, 0x43b40000
    cmpg-float v5, v2, v1
    if-ltz v5, :tdraw3
    sub-float v2, v2, v1
    goto :tloop3
    :tdraw3
    float-to-double v6, v2
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D
    move-result-wide v6
    double-to-float v9, v6
    float-to-double v6, v2
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D
    move-result-wide v6
    double-to-float v8, v6
    sget v6, Ldisplay/vmap/features/RingPainter;->ringCenterX:I
    int-to-float v6, v6
    sget v7, Ldisplay/vmap/features/RingPainter;->ringR:I
    int-to-float v7, v7
    mul-float v7, v7, v3
    mul-float v7, v7, v9
    add-float v9, v6, v7
    sget v6, Ldisplay/vmap/features/RingPainter;->ringCenterY:I
    int-to-float v6, v6
    sget v7, Ldisplay/vmap/features/RingPainter;->ringR:I
    int-to-float v7, v7
    mul-float v7, v7, v3
    mul-float v7, v7, v8
    sub-float v8, v6, v7
    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;
    const v1, 0xffffc107
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    const/16 v1, 0x60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
    const/high16 v10, 0x41200000
    invoke-virtual {p0, v9, v8, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    # === END TEST ==='''

    data = data[:start_idx] + new_code + data[end_idx:]
    
    with open(path, 'w', encoding='utf-8') as f:
        f.write(data)
    print('TEST BLIPS REPLACED')
