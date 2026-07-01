.class public Ldisplay/vmap/boxes/BoxWind;
.super Ldisplay/vmap/boxes/InfoBox;


# instance fields
.field northY:I

.field pathPointer:Landroid/graphics/Path;

.field pointerX:I

.field pointerY:I

.field radius:I

.field private recPointer:Landroid/graphics/RectF;

.field showN:Z

.field value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxWind;->recPointer:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxWind;->textLength:I

    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;I)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Ldisplay/vmap/boxes/BoxWind;->pointerX:I

    int-to-float v0, v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxWind;->pointerY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxWind;->recPointer:Landroid/graphics/RectF;

    invoke-static {}, Lcom/xcglobe/xclog/g;->c()Landroid/graphics/Paint;

    move-result-object v7

    const/high16 v4, -0x3d6a0000    # -75.0f

    const/high16 v5, 0x43a50000    # 330.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxWind;->showN:Z

    if-eqz v0, :cond_0

    const-string v0, "N"

    sget v1, Lcom/xcglobe/xclog/l;->d:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxWind;->northY:I

    int-to-float v2, v2

    sget v3, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v3, v3

    sget v4, Lcom/xcglobe/xclog/l;->j:I

    invoke-static {v3, v4}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object p2, p0, Ldisplay/vmap/boxes/BoxWind;->pathPointer:Landroid/graphics/Path;

    const/4 v0, 0x0

    sget v1, Lcom/xcglobe/xclog/l;->j:I

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Ldisplay/vmap/boxes/BoxWind;->textX:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxWind;->textY:I

    iget-object v2, p0, Ldisplay/vmap/boxes/BoxWind;->text:Ljava/lang/String;

    int-to-float v0, v0

    int-to-float v1, v1

    sget-object v3, Ldisplay/vmap/boxes/BoxWind;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v0, Lm/g;->W:Lh/a;

    iget v0, v0, Lh/a;->i:I

    invoke-direct {p0, p1, v0}, Ldisplay/vmap/boxes/BoxWind;->drawPointer(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c015d

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltypes/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 2

    sget-object v0, Lm/g;->W:Lh/a;

    iget v0, v0, Lh/a;->h:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ltypes/q;->b(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxWind;->value:I

    iget v0, p0, Ldisplay/vmap/boxes/BoxWind;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPosition()V
    .locals 6

    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxWind;->captionVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxWind;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget v1, Ldisplay/vmap/boxes/BoxWind;->MARGIN_BOTTOM:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    iget v4, p0, Ldisplay/vmap/boxes/BoxWind;->captionHeight:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v4

    double-to-int v0, v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxWind;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget v1, Ldisplay/vmap/boxes/BoxWind;->MARGIN_BOTTOM:I

    sub-int/2addr v0, v1

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxWind;->recPointer:Landroid/graphics/RectF;

    iget v1, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    int-to-float v3, v3

    iget v4, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    int-to-float v0, v0

    const v1, 0x3fa66666    # 1.3f

    sget v2, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Ldisplay/vmap/boxes/BoxWind;->showN:Z

    iget v0, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    int-to-float v0, v0

    iget-boolean v1, p0, Ldisplay/vmap/boxes/BoxWind;->showN:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f000000    # 0.5f

    sget v2, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    :cond_2
    invoke-virtual {p0, v0}, Ldisplay/vmap/boxes/BoxWind;->createPointerPath(F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxWind;->pathPointer:Landroid/graphics/Path;

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxWind;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    add-int/2addr v0, v1

    sget v1, Ldisplay/vmap/boxes/BoxWind;->MARGIN_LEFT:I

    add-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxWind;->pointerX:I

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxWind;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    sub-int/2addr v0, v1

    sget v1, Ldisplay/vmap/boxes/BoxWind;->MARGIN_BOTTOM:I

    sub-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxWind;->pointerY:I

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxWind;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget v1, Ldisplay/vmap/boxes/BoxWind;->MARGIN_LEFT:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxWind;->textX:I

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxWind;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxWind;->textX:I

    sub-int/2addr v0, v1

    sget v1, Ldisplay/vmap/boxes/BoxWind;->MARGIN_LEFT:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxWind;->maxTextWidth:F

    iget v0, p0, Ldisplay/vmap/boxes/BoxWind;->textY:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxWind;->textY:I

    iget v0, p0, Ldisplay/vmap/boxes/BoxWind;->textSize:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxWind;->textSize:F

    iget v0, p0, Ldisplay/vmap/boxes/BoxWind;->radius:I

    neg-int v0, v0

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxWind;->northY:I

    return-void
.end method
