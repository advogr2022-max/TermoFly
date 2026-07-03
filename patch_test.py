#!/usr/bin/env python3
"""Replace test blips with single rotating blip, 7s cycle, 6s fade."""
path = r"D:\t4\decoded\smali\display\vmap\features\RingPainter.smali"
with open(path, 'r', encoding='utf-8') as f:
    data = f.read()

# Find the test section
start = data.find('# === TEST: 3 blips')
end = data.find('# === END TEST ===', start)
if start < 0 or end < 0:
    print(f"ERROR: test section not found. start={start}, end={end}")
else:
    end = end + len('# === END TEST ===')
    
    new_code = '''    # === TEST: single blip, 7s cycle, 6s fade ===
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v12
    const-wide/16 v10, 0x1f40
    div-long v4, v12, v10
    # cycle index (every 8s = 0x1f40 = 8000, but we use 7s show + need 1s gap)
    # Actually: 7s wait + 6s fade = 13s cycle = 0x32c8
    const-wide/16 v10, 0x32c8
    # modulo: now - (now/cycle)*cycle
    div-long v2, v12, v10
    mul-long v2, v2, v10
    sub-long v2, v12, v2
    long-to-int v0, v2
    # v0 = position in 13s cycle (0-12999ms)
    const/16 v1, 0x1b58
    if-lt v0, v1, :t_done
    # age = position - 7000 (0-5999ms)
    sub-int v0, v0, v1
    int-to-float v9, v0
    const/high16 v11, 0x44bb8000
    div-float v9, v9, v11
    # v9 = t = age/6000.0 in [0, 1)
    const/high16 v1, 0x437f0000
    mul-float v9, v9, v1
    # v9 = alpha_raw = t*255 in [0, 255)
    const/high16 v1, 0x43b40000
    div-float v9, v9, v1
    const/high16 v1, 0x43b40000
    mul-float v9, v9, v1
    # v9 = normalized alpha (just t*255 handled simply)
    # Let's compute: alpha = 255 - age/6000*255
    int-to-float v0, v0
    const/high16 v7, 0x44bb8000
    div-float v0, v0, v7
    const/high16 v7, 0x437f0000
    mul-float v0, v0, v7
    # v0 = age_fade = age/6000*255
    sub-float v0, v7, v0
    float-to-int v1, v0
    # v1 = alpha = 255 - age/6000*255
    
    # Cycle type: (now/13000) % 3
    const-wide/16 v10, 0x32c8
    div-long v2, v12, v10
    long-to-int v2, v2
    const/4 v3, 0x3
    rem-int v2, v2, v3
    # v2 = 0, 1, 2 (big, medium, small)
    
    # Select size and distance based on cycle
    if-eqz v2, :t_big
    const/4 v3, 0x1
    if-eq v2, v3, :t_med
    # small: dist=0.8, r=20
    const/high16 v4, 0x3f4ccccd
    const/high16 v10, 0x41a00000
    goto :t_draw
    :t_med
    # medium: dist=0.6, r=30
    const/high16 v4, 0x3f19999a
    const/high16 v10, 0x41f00000
    goto :t_draw
    :t_big
    # big: dist=0.4, r=40
    const/high16 v4, 0x3ecccccd
    const/high16 v10, 0x42200000
    :t_draw
    
    # Angle rotates with time
    const-wide/16 v10, 0x32c8
    div-long v2, v12, v10
    long-to-int v2, v2
    int-to-float v2, v2
    const/high16 v3, 0x41f00000
    mul-float v2, v2, v3
    # v2 = angle_deg = cycle * 30 (moves 30 deg per cycle)
    
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
    mul-float v7, v7, v4
    mul-float v7, v7, v9
    add-float v9, v6, v7
    sget v6, Ldisplay/vmap/features/RingPainter;->ringCenterY:I
    int-to-float v6, v6
    sget v7, Ldisplay/vmap/features/RingPainter;->ringR:I
    int-to-float v7, v7
    mul-float v7, v7, v4
    mul-float v7, v7, v8
    sub-float v8, v6, v7
    
    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;
    const v2, 0xffffc107
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
    invoke-virtual {p0, v9, v8, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :t_done
    # === END TEST ==='''

    data = data[:start] + new_code + data[end:]
    
    with open(path, 'w', encoding='utf-8') as f:
        f.write(data)
    print('TEST BLIPS UPDATED')
