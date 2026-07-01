.class public Ldisplay/vmap/boxes/BoxAirspaceInfo;
.super Ldisplay/vmap/boxes/InfoBox;


# instance fields
.field air:La/b;

.field dist:I

.field smallDigitWidth:I

.field smallTextSize:F

.field textY1:I

.field textY2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->aspectRatio:F

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textLength:I

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textY1:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxAirspaceInfo;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->air:La/b;

    if-eqz v0, :cond_1

    sget-object v0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->paintText:Landroid/graphics/Paint;

    iget v1, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->smallTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->paintText:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->air:La/b;

    iget-boolean v1, v1, La/b;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "AGL "

    goto :goto_0

    :cond_0
    const-string v1, "MSL "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltypes/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->measuredText:F

    add-float/2addr v1, v2

    iget v2, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->smallDigitWidth:I

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textY1:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxAirspaceInfo;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->paintText:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->air:La/b;

    iget-object v0, v0, La/b;->a:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textY2:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxAirspaceInfo;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    sget-object p1, Ldisplay/vmap/boxes/BoxAirspaceInfo;->paintText:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0c0037

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v1

    sget-object v2, Lvmaps/a;->b:Ltypes/a;

    iget v3, v1, Ltypes/GpsVal;->a:F

    iget v1, v1, Ltypes/GpsVal;->b:F

    invoke-virtual {v2, v3, v1, v0}, Ltypes/a;->a(FF[B)B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Lvmaps/a;->b:Ltypes/a;

    iget-object v1, v1, Ltypes/a;->a:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b;

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->air:La/b;

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->air:La/b;

    iget v0, v0, La/b;->d:I

    invoke-static {v0}, Ltypes/q;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "-"

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected onPosition()V
    .locals 6

    iget v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textSize:F

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textSize:F

    iget v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textSize:F

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->smallTextSize:F

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->captionHeight:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textSize:F

    float-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    sget v2, Ldisplay/vmap/boxes/BoxAirspaceInfo;->MARGIN_TOP:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textY1:I

    iget v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textY1:I

    int-to-float v0, v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->smallTextSize:F

    add-float/2addr v0, v1

    sget v1, Ldisplay/vmap/boxes/BoxAirspaceInfo;->MARGIN_TOP:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->textY2:I

    sget-object v0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->paintText:Landroid/graphics/Paint;

    iget v1, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->smallTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->paintText:Landroid/graphics/Paint;

    const-string v1, "9999"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->smallDigitWidth:I

    iget v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->maxTextWidth:F

    iget v1, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->smallDigitWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxAirspaceInfo;->maxTextWidth:F

    return-void
.end method
