import re
fn = r'D:\t4\decoded\smali\m\a$a.smali'
with open(fn) as f: content = f.read()

# Minimal updateStatus - just status thresholds (no angle, no confirmation, no render)
stub = """.method private updateStatus()V
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
    return-void
.end method"""

old = re.search(r'\.method private updateStatus\(\)V.*?\.end method', content, re.DOTALL)
if old:
    content = content[:old.start()] + stub + content[old.end():]
    with open(fn, 'w') as f: f.write(content)
    print('Replaced with minimal updateStatus')
