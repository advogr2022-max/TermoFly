.class public Ldisplay/vmap/features/RingPainter;
.super Ljava/lang/Object;


# static fields
.field private static arcRectangle:Landroid/graphics/RectF;

.field public static bmpGoal:Landroid/graphics/Bitmap;

.field private static bmpWindsock:Landroid/graphics/Bitmap;

.field private static boldLetterWidthHalf:I

.field private static borderOffset:I

.field private static paintBold:Landroid/graphics/Paint;

.field private static paintCircles:Landroid/graphics/Paint;

.field private static ringBorder:F

.field private static ringCenterX:I

.field private static ringCenterY:I

.field private static ringDiameter:I

.field private static ringR:I

.field private static textSize:F

.field private static windsockRadius:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ldisplay/vmap/ViewVmp;)V
    .locals 5

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v0, v0, 0x8

    sput v0, Ldisplay/vmap/features/RingPainter;->borderOffset:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ldisplay/vmap/features/RingPainter;->paintBold:Landroid/graphics/Paint;

    iget-object p0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-static {p0}, Ldisplay/vmap/features/RingPainter;->setPosition(Lvmaps/core/VmpWorld;)I

    sget-object p0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object p0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->m:I

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Ldisplay/vmap/features/RingPainter;->paintBold:Landroid/graphics/Paint;

    sget v1, Ldisplay/vmap/features/RingPainter;->textSize:F

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p0, Ldisplay/vmap/features/RingPainter;->paintBold:Landroid/graphics/Paint;

    const-string v1, "N"

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    float-to-int p0, p0

    add-int/2addr p0, v0

    sput p0, Ldisplay/vmap/features/RingPainter;->boldLetterWidthHalf:I

    sget p0, Ldisplay/vmap/features/RingPainter;->ringCenterX:I

    sget v0, Ldisplay/vmap/features/RingPainter;->ringCenterY:I

    sget v1, Ldisplay/vmap/features/RingPainter;->ringDiameter:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Ldisplay/vmap/features/RingPainter;->textSize:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Ldisplay/vmap/features/RingPainter;->ringR:I

    new-instance v1, Landroid/graphics/RectF;

    sget v2, Ldisplay/vmap/features/RingPainter;->ringR:I

    sub-int v2, p0, v2

    int-to-float v2, v2

    sget v3, Ldisplay/vmap/features/RingPainter;->ringR:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    sget v4, Ldisplay/vmap/features/RingPainter;->ringR:I

    add-int/2addr p0, v4

    int-to-float p0, p0

    sget v4, Ldisplay/vmap/features/RingPainter;->ringR:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, p0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v1, Ldisplay/vmap/features/RingPainter;->arcRectangle:Landroid/graphics/RectF;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06004c

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Ldisplay/vmap/features/RingPainter;->bmpWindsock:Landroid/graphics/Bitmap;

    sget-object p0, Ldisplay/vmap/features/RingPainter;->bmpWindsock:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sput p0, Ldisplay/vmap/features/RingPainter;->windsockRadius:I

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060015

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Ldisplay/vmap/features/RingPainter;->bmpGoal:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static drawGoal(Landroid/graphics/Canvas;)V
    .locals 8

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    if-eqz v0, :cond_0

    invoke-static {}, Ldisplay/vmap/features/PoiPainter;->isGoalVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Ldisplay/vmap/features/RingPainter;->ringCenterX:I

    int-to-float v0, v0

    sget v1, Ldisplay/vmap/features/RingPainter;->ringCenterY:I

    int-to-float v1, v1

    sget v2, Ldisplay/vmap/features/RingPainter;->ringDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Ldisplay/vmap/features/RingPainter;->textSize:F

    sub-float/2addr v2, v3

    sget-object v3, Ldisplay/vmap/features/RingPainter;->bmpGoal:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Ltypes/f;->c:I

    sget v5, Lm/g;->m:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v2, v2, v4

    sget-object v4, Ldisplay/vmap/features/RingPainter;->bmpGoal:Landroid/graphics/Bitmap;

    sub-float/2addr v6, v3

    add-float/2addr v0, v6

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static drawRing(Landroid/graphics/Canvas;)V
    .locals 9

    sget v0, Ldisplay/vmap/features/RingPainter;->ringCenterX:I

    int-to-float v6, v0

    sget v0, Ldisplay/vmap/features/RingPainter;->ringCenterY:I

    int-to-float v7, v0

    sget v0, Ldisplay/vmap/features/RingPainter;->ringR:I

    int-to-float v8, v0

    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Ldisplay/vmap/features/RingPainter;->ringBorder:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Ldisplay/vmap/features/RingPainter;->arcRectangle:Landroid/graphics/RectF;

    sget-object v5, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    const/high16 v2, -0x3cf90000    # -135.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Ldisplay/vmap/features/RingPainter;->arcRectangle:Landroid/graphics/RectF;

    sget-object v5, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    const/high16 v2, -0x3c9f0000    # -225.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sget-object v1, Ldisplay/vmap/features/RingPainter;->arcRectangle:Landroid/graphics/RectF;

    sget-object v5, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    const/high16 v2, -0x3dcc0000    # -45.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Ldisplay/vmap/features/RingPainter;->arcRectangle:Landroid/graphics/RectF;

    sget-object v5, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    const/high16 v2, 0x42340000    # 45.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintBold:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Ldisplay/vmap/features/RingPainter;->textSize:F

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p0, v1, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    const-string v1, "E"

    sget v2, Ldisplay/vmap/features/RingPainter;->boldLetterWidthHalf:I

    int-to-float v2, v2

    sub-float v2, v6, v2

    sub-float v3, v7, v8

    sget v4, Ldisplay/vmap/features/RingPainter;->textSize:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    int-to-float v0, v0

    sub-float/2addr v4, v0

    sget-object v8, Ldisplay/vmap/features/RingPainter;->paintBold:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p0, v1, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    const-string v1, "W"

    sget v2, Ldisplay/vmap/features/RingPainter;->boldLetterWidthHalf:I

    int-to-float v2, v2

    sub-float v2, v6, v2

    sget v4, Ldisplay/vmap/features/RingPainter;->textSize:F

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    sub-float/2addr v4, v0

    sget-object v8, Ldisplay/vmap/features/RingPainter;->paintBold:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, v1, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    sget-object v1, Ldisplay/vmap/features/RingPainter;->paintBold:Landroid/graphics/Paint;

    sget v2, Lcom/xcglobe/xclog/l;->q:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const-string v1, "S"

    sget v2, Ldisplay/vmap/features/RingPainter;->boldLetterWidthHalf:I

    int-to-float v2, v2

    sub-float v2, v6, v2

    sget v4, Ldisplay/vmap/features/RingPainter;->textSize:F

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    sub-float/2addr v4, v0

    sget-object v7, Ldisplay/vmap/features/RingPainter;->paintBold:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    const-string v1, "N"

    sget v2, Ldisplay/vmap/features/RingPainter;->boldLetterWidthHalf:I

    int-to-float v2, v2

    sub-float/2addr v6, v2

    sget v2, Ldisplay/vmap/features/RingPainter;->textSize:F

    div-float/2addr v2, v5

    add-float/2addr v3, v2

    sub-float/2addr v3, v0

    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintBold:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v6, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {p0}, Ldisplay/vmap/features/RingPainter;->drawBlips(Landroid/graphics/Canvas;)V

    # === DEBUG INFOBOX (Tradar debug data — int display, fixed pos) ===
    sget-boolean v0, Lcom/xcglobe/xclog/l;->blipDebug:Z
    if-nez v0, :dbg_end

    # Paint: reuse paintCircles, small text, bright green
    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;
    sget v1, Ldisplay/vmap/features/RingPainter;->textSize:F
    const/high16 v2, 0x3f000000        # 0.5
    mul-float v1, v1, v2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V
    const v1, -16711936                # bright green
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
    sget-object v1, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    # Fixed position: top-left corner
    const/high16 v5, 0x41a00000        # 20.0f x
    const/high16 v6, 0x41c80000        # 25.0f y line1

    # ===== LINE 1: ±amp*100  freq*100Гц  SNR  NF*10000 =====
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "±"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # amp = sqrt(smoothEnergy) * 9.81 * 100
    sget v2, Lm/a;->smoothEnergy:F
    float-to-double v2, v2
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v2
    double-to-float v2, v2
    const v7, 0x411ccccc               # 9.81f
    mul-float v2, v2, v7
    const/high16 v7, 0x42c80000        # 100.0f
    mul-float v2, v2, v7
    float-to-int v2, v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # freq * 100
    sget v2, Lm/a;->dominantFreq:F
    const/high16 v7, 0x42c80000        # 100.0f
    mul-float v2, v2, v7
    float-to-int v2, v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Гц "
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SNR"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lm/a;->snrFiltered:F
    const/high16 v7, 0x3f000000        # 0.5
    add-float v2, v2, v7
    float-to-int v2, v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NF"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lm/a;->noiseFloor:F
    const v7, 0x461c4000               # 10000.0f
    mul-float v2, v2, v7
    float-to-int v2, v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p0, v0, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    # ===== LINE 2: angle STAT(status) =====
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lm/a;->turbDir:F
    float-to-int v2, v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "° "
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "STAT:"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lm/a;->detStatus:I
    const/4 v3, 0x1
    if-eq v2, v3, :dbg_lbl1
    const-string v2, "SUSP(1)"
    goto :dbg_lbl0
    :dbg_lbl1
        const/4 v3, 0x2
        if-eq v2, v3, :dbg_lbl2
        const-string v2, "THERM(2)"
        goto :dbg_lbl0
    :dbg_lbl2
        const/4 v3, 0x3
        if-eq v2, v3, :dbg_lbl3
        const-string v2, "INSID(3)"
        goto :dbg_lbl0
    :dbg_lbl3
        const-string v2, "SEARCH(0)"
    :dbg_lbl0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x42340000        # 45.0f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p0, v0, v5, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :dbg_end
    return-void
.end method

.method public static drawBlips(Landroid/graphics/Canvas;)V
    .locals 14

    sget-boolean v0, Lcom/xcglobe/xclog/l;->blipEnabled:Z

    if-nez v0, :skip

    sget v0, Lcom/xcglobe/xclog/l;->blipAngle:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :skip

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/xcglobe/xclog/l;->blipTime:J

    sub-long v2, v2, v4             # v2:v3 = age

    sget-wide v4, Lcom/xcglobe/xclog/l;->blipLifeMs:J

    cmp-long v6, v2, v4

    if-gez v6, :alive              # age >= lifeMs? → expired

    sput v1, Lcom/xcglobe/xclog/l;->blipAngle:F

    goto :skip

    :alive
    # Save age to v6:v7 for brightness later (before v2 reused)
    move-wide v6, v2                # v6:v7 = age (preserved)

    # relativeAngle = blipAngle - heading
    sget v1, Lm/g;->m:I

    int-to-float v1, v1

    sub-float v0, v0, v1

    const v1, 0x3c8efa35            # π/180

    mul-float/2addr v0, v1          # v0 = angle_rad

    # distFactor = clamp(distance*0.01 - 0.15, 0.3, 0.9)
    sget v1, Lcom/xcglobe/xclog/l;->blipDistance:F

    const v2, 0x3c23d70a     # 0.01

    mul-float v1, v1, v2

    const v2, 0x3e19999a            # 0.15

    sub-float/2addr v1, v2

    const v2, 0x3e99999a     # 0.3

    cmpg-float v3, v1, v2
    if-ltz v3, :df_min     # distFactor < 0.3 → clamp
    goto :df_min_skip
    :df_min
    move v1, v2            # clamp to 0.3
    :df_min_skip
    const v2, 0x3f666666     # 0.9

    cmpg-float v3, v1, v2

    if-lez v3, :df_max_skip          # v1 <= 0.9 → skip clamp
    move v1, v2                      # v1 > 0.9 → clamp down to 0.9
    :df_max_skip
    # sin(angle_rad), cos(angle_rad)
    move v8, v0                     # save angle_rad in v8

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v9, v12         # v9 = sin

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v8, v12         # v8 = cos

    # px = cx + ringR * distFactor * sin
    sget v10, Ldisplay/vmap/features/RingPainter;->ringCenterX:I

    int-to-float v10, v10

    sget v11, Ldisplay/vmap/features/RingPainter;->ringR:I

    int-to-float v11, v11

    mul-float/2addr v11, v1

    mul-float v11, v11, v9

    add-float v9, v10, v11          # v9 = px

    # py = cy - ringR * distFactor * cos
    sget v10, Ldisplay/vmap/features/RingPainter;->ringCenterY:I

    int-to-float v10, v10

    sget v11, Ldisplay/vmap/features/RingPainter;->ringR:I

    int-to-float v11, v11

    mul-float/2addr v11, v1

    mul-float v11, v11, v8

    sub-float v8, v10, v11          # v8 = py

    # radius = max(4f, strength * 1.5f)
    sget v10, Lcom/xcglobe/xclog/l;->blipStrength:F

    const/high16 v11, 0x3fc00000    # 1.5

    mul-float v10, v10, v11

    const/high16 v11, 0x40800000    # 4.0

    cmpg-float v12, v10, v11         # v10=radius, v11=4.0
    if-ltz v12, :r_min               # radius < 4 → clamp
    goto :r_min_skip
    :r_min
    move v10, v11                    # radius = 4
    :r_min_skip
    # Alpha: clamp(220 - age/lifeMs*200, 20, 220)
    # v6:v7 = age (long, preserved from above)
    long-to-float v11, v6           # v11 = age_float

    sget-wide v12, Lcom/xcglobe/xclog/l;->blipLifeMs:J

    long-to-float v12, v12

    div-float v11, v11, v12         # t = age / lifeMs

    const/high16 v12, 0x435c0000    # 220.0

    const/high16 v13, 0x43c80000    # 400.0

    mul-float v13, v11, v13         # age/lifeMs * 400

    sub-float v12, v12, v13         # 220 - t*400

    const/high16 v13, 0x41a00000    # 20.0

    cmpg-float v0, v12, v13           # v12=alpha, v13=20.0
    if-ltz v0, :a_min_ok             # alpha < 20 → clamp
    goto :a_min_skip
    :a_min_ok
    move v12, v13                    # alpha = 20
    :a_min_skip
    const/high16 v0, 0x435c0000     # 220.0

    cmpg-float v1, v12, v0

    if-lez v1, :a_max_ok_skip       # alpha <= 220 → skip clamp
    move v12, v0                     # alpha > 220 → clamp down to 220
    :a_max_ok_skip
    float-to-int v12, v12

    # Paint янтарный (255, 193, 7) с alpha
    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    const v1, 0xffffc107             # ARGB(255, 255, 193, 7) — янтарный

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    invoke-virtual {p0, v9, v8, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :skip
    return-void
.end method

.method public static drawSock(Landroid/graphics/Canvas;)V
    .locals 8

    sget v0, Ldisplay/vmap/features/RingPainter;->ringCenterX:I

    int-to-float v0, v0

    sget v1, Ldisplay/vmap/features/RingPainter;->ringCenterY:I

    int-to-float v1, v1

    sget v2, Ldisplay/vmap/features/RingPainter;->ringDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Ldisplay/vmap/features/RingPainter;->textSize:F

    sub-float/2addr v2, v3

    sget-object v3, Lm/g;->W:Lh/a;

    iget v3, v3, Lh/a;->i:I

    add-int/lit16 v3, v3, 0xb4

    sget v4, Lm/g;->m:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    sget-object v3, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    sget v4, Lcom/xcglobe/xclog/l;->r:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    add-float v3, v0, v5

    sub-float v4, v1, v2

    sget v6, Ldisplay/vmap/features/RingPainter;->windsockRadius:I

    int-to-float v6, v6

    sget-object v7, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, v4, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v3, Ldisplay/vmap/features/RingPainter;->paintCircles:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Ldisplay/vmap/features/RingPainter;->bmpWindsock:Landroid/graphics/Bitmap;

    sget v4, Ldisplay/vmap/features/RingPainter;->windsockRadius:I

    int-to-float v4, v4

    sub-float/2addr v5, v4

    add-float/2addr v0, v5

    sget v4, Ldisplay/vmap/features/RingPainter;->windsockRadius:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static getCenter()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Ldisplay/vmap/features/RingPainter;->ringCenterX:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Ldisplay/vmap/features/RingPainter;->ringCenterY:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public static getRadius()I
    .locals 1

    sget v0, Ldisplay/vmap/features/RingPainter;->ringDiameter:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static setPosition(Lvmaps/core/VmpWorld;)I
    .locals 3

    iget v0, p0, Lvmaps/core/VmpWorld;->f:F

    float-to-int v0, v0

    iget v1, p0, Lvmaps/core/VmpWorld;->g:F

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget v1, Ldisplay/vmap/features/RingPainter;->borderOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Ldisplay/vmap/features/RingPainter;->ringBorder:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Ldisplay/vmap/features/RingPainter;->ringDiameter:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lvmaps/core/VmpWorld;->b([I)V

    const/4 p0, 0x0

    aget p0, v1, p0

    sput p0, Ldisplay/vmap/features/RingPainter;->ringCenterX:I

    const/4 p0, 0x1

    aget p0, v1, p0

    sput p0, Ldisplay/vmap/features/RingPainter;->ringCenterY:I

    sget p0, Ldisplay/vmap/features/RingPainter;->ringCenterY:I

    mul-int/lit8 p0, p0, 0x2

    sget v0, Ldisplay/vmap/features/RingPainter;->ringDiameter:I

    if-le v0, p0, :cond_0

    sput p0, Ldisplay/vmap/features/RingPainter;->ringDiameter:I

    :cond_0
    const p0, 0x3fa66666    # 1.3f

    sget v0, Lcom/xcglobe/xclog/l;->e:I

    int-to-float v0, v0

    mul-float v0, v0, p0

    sput v0, Ldisplay/vmap/features/RingPainter;->textSize:F

    sget p0, Ldisplay/vmap/features/RingPainter;->textSize:F

    sget v0, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    sget p0, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit8 p0, p0, 0x14

    int-to-float p0, p0

    sput p0, Ldisplay/vmap/features/RingPainter;->textSize:F

    :cond_1
    sget p0, Ldisplay/vmap/features/RingPainter;->textSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    sput p0, Ldisplay/vmap/features/RingPainter;->ringBorder:F

    sget p0, Ldisplay/vmap/features/RingPainter;->ringDiameter:I

    return p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
