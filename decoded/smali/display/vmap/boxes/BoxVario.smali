.class public Ldisplay/vmap/boxes/BoxVario;
.super Ldisplay/vmap/boxes/InfoBox;


# instance fields
.field paintTextOutline:Landroid/graphics/Paint;

.field value:F

.field varioIsInteger:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxVario;->paintTextOutline:Landroid/graphics/Paint;

    invoke-static {}, Ltypes/q;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Ldisplay/vmap/boxes/BoxVario;->textIsDecimal:Z

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxVario;->paintTextOutline:Landroid/graphics/Paint;

    sget-object v1, Ldisplay/vmap/boxes/BoxVario;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxVario;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxVario;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxVario;->textY:I

    int-to-float v2, v2

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxVario;->paintTextOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxVario;->paintText:Landroid/graphics/Paint;

    sget v1, Lm/g;->i:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    sget v1, Lcom/xcglobe/xclog/l;->l:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/xcglobe/xclog/l;->m:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxVario;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxVario;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxVario;->textY:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxVario;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object p1, Ldisplay/vmap/boxes/BoxVario;->paintText:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c014d

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltypes/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 6

    sget v0, Lm/g;->i:F

    invoke-static {v0}, Ltypes/q;->c(F)F

    move-result v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxVario;->value:F

    sget-wide v0, Lm/g;->U:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/xcglobe/xclog/l;->i:J

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxVario;->varioIsInteger:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ldisplay/vmap/boxes/BoxVario;->value:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    iget v1, p0, Ldisplay/vmap/boxes/BoxVario;->value:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "0"

    return-object v0
.end method

.method protected onPosition()V
    .locals 3

    invoke-static {}, Ltypes/q;->b()Z

    move-result v0

    iput-boolean v0, p0, Ldisplay/vmap/boxes/BoxVario;->varioIsInteger:Z

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxVario;->paintTextOutline:Landroid/graphics/Paint;

    sget-object v1, Ldisplay/vmap/boxes/BoxVario;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxVario;->paintTextOutline:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxVario;->paintTextOutline:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxVario;->paintTextOutline:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
