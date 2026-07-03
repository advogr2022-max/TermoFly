#!/usr/bin/env python3
"""Fix register conflicts in test blip code."""
path = r"D:\t4\decoded\smali\display\vmap\features\RingPainter.smali"
with open(path, 'r', encoding='utf-8') as f:
    data = f.read()

start = data.find('# === TEST: single blip')
end = data.find('# === END TEST ===', start) + len('# === END TEST ===')

new = '''    # === TEST: single blip, 7s cycle, 6s fade ===
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    # cycle_len = 13000ms
    const-wide/16 v4, 0x32c8
    div-long v6, v2, v4
    mul-long v6, v6, v4
    sub-long v6, v2, v6
    long-to-int v0, v6
    # v0 = position in 13s cycle (0-12999ms)
    const/16 v1, 0x1b58
    if-lt v0, v1, :t_done
    sub-int v0, v0, v1
    # v0 = age = position - 7000 (0-5999ms)
    int-to-float v8, v0
    const v9, 0x45bb8000
    div-float v8, v8, v9
    # v8 = t = age/6000
    const/high16 v9, 0x437f0000
    sub-float v8, v9, v8
    float-to-int v1, v8
    # v1 = alpha = 255 - age/6000*255
    if-le v1, v1, :t_cycle
    :t_cycle
    const-wide/16 v4, 0x32c8
    div-long v6, v2, v4
    long-to-int v6, v6
    const/4 v7, 0x3
    rem-int v6, v6, v7
    # v6 = 0, 1, 2 (big=40, medium=30, small=20)
    new-instance v7, Ljava/lang/StringBuilder
    if-eqz v6, :t_big
    const/4 v7, 0x1
    if-eq v6, v7, :t_med
    # small: dist=0.8, r=20
    const v4, 0x3f4ccccd
    const/high16 v10, 0x41a00000
    goto :t_draw
    :t_med
    # medium: dist=0.6, r=30
    const v4, 0x3f19999a
    const/high16 v10, 0x41f00000
    goto :t_draw
    :t_big
    # big: dist=0.4, r=40
    const v4, 0x3ecccccd
    const/high16 v10, 0x42200000
    :t_draw
    const-wide/16 v4, 0x32c8
    div-long v6, v2, v4
    long-to-int v6, v6
    int-to-float v6, v6
    const/high16 v7, 0x41f00000
    mul-float v6, v6, v7
    # v6 = angle_deg = cycle * 30
    float-to-double v2, v6
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D
    move-result-wide v2
    double-to-float v8, v2
    float-to-double v2, v6
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D
    move-result-wide v2
    double-to-float v6, v2
    sget v2, Ldisplay/vmap/features/RingPainter;->ringCenterX:I
    int-to-float v2, v2
    sget v3, Ldisplay/vmap/features/RingPainter;->ringR:I
    int-to-float v3, v3
    mul-float v3, v3, v4
    mul-float v3, v3, v8
    add-float v8, v2, v3
    sget v2, Ldisplay/vmap/features/RingPainter;->ringCenterY:I
    int-to-float v2, v2
    sget v3, Ldisplay/vmap/features/RingPainter;->ringR:I
    int-to-float v3, v3
    mul-float v3, v3, v4
    mul-float v3, v3, v6
    sub-float v6, v2, v3
    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;
    const v2, 0xffffc107
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
    invoke-virtual {p0, v8, v6, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :t_done
    # === END TEST ==='''

data = data[:start] + new + data[end:]

with open(path, 'w', encoding='utf-8') as f:
    f.write(data)

# Check const/high16 issues
import re
for m in re.finditer(r'const/high16 v\d+, 0x[0-9a-fA-F]+', new):
    hv = int(m.group().split('0x')[1], 16)
    lo = hv & 0xFFFF
    if lo != 0:
        print(f'BAD const/high16: {m.group()}')
print('REGISTER CONFLICTS FIXED')
"
