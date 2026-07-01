.class public Ldisplay/vmap/boxes/BoxGlideToGoal;
.super Ldisplay/vmap/boxes/InfoBox;


# static fields
.field private static final UNKNOWN:Ljava/lang/String; = "\u221e"


# instance fields
.field private clickSelect:Ljava/lang/String;

.field private glideToGoal:F

.field private goalElev:I

.field smallDigitWidth:I

.field smallTextSize:F

.field textY1:I

.field textY2:I

.field private visibleGoal:Ltypes/PoiPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->visibleGoal:Ltypes/PoiPoint;

    const v0, 0x7f0c0052

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->clickSelect:Ljava/lang/String;

    return-void
.end method

.method private calcState()V
    .locals 3

    sget v0, Lm/g;->s:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->goalElev:I

    sub-int/2addr v0, v1

    sget v1, Ltypes/f;->b:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->glideToGoal:F

    return-void
.end method

.method private changedGoal()V
    .locals 5

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    if-eqz v0, :cond_1

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iget-short v0, v0, Ltypes/PoiPoint;->k:S

    if-nez v0, :cond_0

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v0, v0, Ltypes/PoiPoint;->i:F

    sget-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v1, v1, Ltypes/PoiPoint;->j:F

    invoke-static {v0, v1}, Lvmaps/d;->b(FF)I

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    sget-object v1, Lcom/xcglobe/xclog/App;->c:Landroid/os/Handler;

    new-instance v2, Ldisplay/vmap/boxes/-$$Lambda$BoxGlideToGoal$UUUoiNyzOYQ9Kf5W_OI7W2NGMQs;

    invoke-direct {v2, p0}, Ldisplay/vmap/boxes/-$$Lambda$BoxGlideToGoal$UUUoiNyzOYQ9Kf5W_OI7W2NGMQs;-><init>(Ldisplay/vmap/boxes/BoxGlideToGoal;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iput v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->goalElev:I

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->visibleGoal:Ltypes/PoiPoint;

    return-void
.end method

.method public static synthetic lambda$changedGoal$1(Ldisplay/vmap/boxes/BoxGlideToGoal;)V
    .locals 2

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v0, v0, Ltypes/PoiPoint;->i:F

    sget-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v1, v1, Ltypes/PoiPoint;->j:F

    invoke-static {v0, v1}, Lvmaps/d;->b(FF)I

    move-result v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->goalElev:I

    return-void
.end method

.method static synthetic lambda$onClick$0(Ltypes/PoiPoint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ltypes/f;->a(Ltypes/PoiPoint;Z)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 4

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->visibleGoal:Ltypes/PoiPoint;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxGlideToGoal;->changedGoal()V

    :cond_0
    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    if-nez v0, :cond_1

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->clickSelect:Ljava/lang/String;

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/xcglobe/xclog/l;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textY:I

    :goto_0
    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxGlideToGoal;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    sget-object v0, Ldisplay/vmap/boxes/BoxGlideToGoal;->paintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxGlideToGoal;->paintText:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textY1:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxGlideToGoal;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxGlideToGoal;->paintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxGlideToGoal;->paintText:Landroid/graphics/Paint;

    sget v1, Ltypes/f;->f:I

    if-lez v1, :cond_2

    sget v1, Lcom/xcglobe/xclog/l;->m:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/xcglobe/xclog/l;->j:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textY1:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxGlideToGoal;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxGlideToGoal;->paintText:Landroid/graphics/Paint;

    iget v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->smallTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Ldisplay/vmap/boxes/BoxGlideToGoal;->paintText:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    sget v2, Ltypes/f;->b:F

    invoke-static {v2}, Ltypes/q;->a(F)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lm/g;->s:I

    iget v3, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->goalElev:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ltypes/q;->e(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Ltypes/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textY2:I

    goto/16 :goto_0
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0c008f

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 3

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    if-nez v0, :cond_0

    const v0, 0x7f0c0052

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxGlideToGoal;->calcState()V

    iget v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->glideToGoal:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const-string v0, "\u221e"

    return-object v0

    :cond_1
    iget v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->glideToGoal:F

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->glideToGoal:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    iget v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->glideToGoal:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()Z
    .locals 5

    invoke-static {}, Lcom/xcglobe/xclog/App;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v1

    sget-object v2, Ltypes/f;->a:Ltypes/PoiPoint;

    sget-object v3, Ldisplay/vmap/boxes/-$$Lambda$BoxGlideToGoal$ZkOhAni4CcZ6aKCbszrq_25390I;->INSTANCE:Ldisplay/vmap/boxes/-$$Lambda$BoxGlideToGoal$ZkOhAni4CcZ6aKCbszrq_25390I;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lf/b/b;->a(Landroid/app/Activity;Ltypes/GpsVal;Ltypes/PoiPoint;ZLf/b/b$a;)V

    return v4
.end method

.method protected onPosition()V
    .locals 6

    iget v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textSize:F

    const v1, 0x3f266666    # 0.65f

    mul-float v0, v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textSize:F

    iget v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textSize:F

    const v1, 0x3eb33333    # 0.35f

    mul-float v0, v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->smallTextSize:F

    iget v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->smallTextSize:F

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->smallTextSize:F

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget v1, Ldisplay/vmap/boxes/BoxGlideToGoal;->MARGIN_TOP:I

    sub-int/2addr v0, v1

    sget v1, Ldisplay/vmap/boxes/BoxGlideToGoal;->MARGIN_BOTTOM:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->smallTextSize:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iget-boolean v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->captionVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->captionHeight:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textSize:F

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-boolean v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->captionVisible:Z

    if-eqz v1, :cond_2

    iget v2, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->captionHeight:I

    :cond_2
    add-int/2addr v0, v2

    int-to-double v0, v0

    iget v2, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textSize:F

    float-to-double v2, v2

    const-wide v4, 0x3fec7ae147ae147bL    # 0.89

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    sget v2, Ldisplay/vmap/boxes/BoxGlideToGoal;->MARGIN_TOP:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textY1:I

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sget v1, Ldisplay/vmap/boxes/BoxGlideToGoal;->MARGIN_TOP:I

    sub-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->textY2:I

    sget-object v0, Ldisplay/vmap/boxes/BoxGlideToGoal;->paintText:Landroid/graphics/Paint;

    iget v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->smallTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Ldisplay/vmap/boxes/BoxGlideToGoal;->paintText:Landroid/graphics/Paint;

    const-string v1, "9999"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->smallDigitWidth:I

    iget v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->maxTextWidth:F

    iget v1, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->smallDigitWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGlideToGoal;->maxTextWidth:F

    return-void
.end method
