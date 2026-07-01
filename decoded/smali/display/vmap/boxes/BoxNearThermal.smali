.class public Ldisplay/vmap/boxes/BoxNearThermal;
.super Ldisplay/vmap/boxes/InfoBox;


# instance fields
.field direction:I

.field distance:F

.field pathPointer:Landroid/graphics/Path;

.field poiAge:I

.field pointerX:I

.field pointerY:I

.field prevLat:F

.field prevLng:F

.field radius:I

.field thermal:Ltypes/PoiPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->prevLat:F

    iput v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->prevLng:F

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->poiAge:I

    iput v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->textLength:I

    const v0, 0x3fd9999a    # 1.7f

    iput v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->aspectRatio:F

    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->pointerX:I

    int-to-float v0, v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->pointerY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    sget-object p2, Ldisplay/vmap/boxes/BoxNearThermal;->paintText:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->m:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Ldisplay/vmap/boxes/BoxNearThermal;->pathPointer:Landroid/graphics/Path;

    sget-object v0, Ldisplay/vmap/boxes/BoxNearThermal;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-object p1, Ldisplay/vmap/boxes/BoxNearThermal;->paintText:Landroid/graphics/Paint;

    sget p2, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private findNearest()V
    .locals 11

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->poiAge:I

    sget v2, Lcom/xcglobe/xclog/h;->c:I

    if-ne v1, v2, :cond_0

    sget-object v1, Ldisplay/vmap/boxes/BoxNearThermal;->world:Lvmaps/core/VmpWorld;

    iget-object v1, v1, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v2, v0, Ltypes/GpsVal;->a:F

    iget v3, v0, Ltypes/GpsVal;->b:F

    iget v4, p0, Ldisplay/vmap/boxes/BoxNearThermal;->prevLat:F

    iget v5, p0, Ldisplay/vmap/boxes/BoxNearThermal;->prevLng:F

    invoke-virtual {v1, v2, v3, v4, v5}, Ltypes/d;->a(FFFF)F

    move-result v1

    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    return-void

    :cond_0
    sget v1, Lcom/xcglobe/xclog/h;->c:I

    iput v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->poiAge:I

    :cond_1
    iget v1, v0, Ltypes/GpsVal;->a:F

    iput v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->prevLat:F

    iget v1, v0, Ltypes/GpsVal;->b:F

    iput v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->prevLng:F

    const v1, 0x47c34f80    # 99999.0f

    sget-object v2, Lcom/xcglobe/xclog/l;->ar:Lcom/xcglobe/xclog/h;

    iget-object v2, v2, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    array-length v3, v2

    const/4 v4, 0x0

    iput-object v4, p0, Ldisplay/vmap/boxes/BoxNearThermal;->thermal:Ltypes/PoiPoint;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    iget-char v6, v5, Ltypes/PoiPoint;->m:C

    const/16 v7, 0x74

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    sget-object v6, Ldisplay/vmap/boxes/BoxNearThermal;->world:Lvmaps/core/VmpWorld;

    iget-object v6, v6, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v7, v0, Ltypes/GpsVal;->a:F

    iget v8, v0, Ltypes/GpsVal;->b:F

    iget v9, v5, Ltypes/PoiPoint;->i:F

    iget v10, v5, Ltypes/PoiPoint;->j:F

    invoke-virtual {v6, v7, v8, v9, v10}, Ltypes/d;->a(FFFF)F

    move-result v6

    cmpg-float v7, v6, v1

    if-gez v7, :cond_3

    iput-object v5, p0, Ldisplay/vmap/boxes/BoxNearThermal;->thermal:Ltypes/PoiPoint;

    move v1, v6

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Ldisplay/vmap/boxes/BoxNearThermal;->thermal:Ltypes/PoiPoint;

    if-eqz v2, :cond_5

    iput v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->distance:F

    iget v1, v0, Ltypes/GpsVal;->a:F

    iget v0, v0, Ltypes/GpsVal;->b:F

    iget-object v2, p0, Ldisplay/vmap/boxes/BoxNearThermal;->thermal:Ltypes/PoiPoint;

    iget v2, v2, Ltypes/PoiPoint;->i:F

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxNearThermal;->thermal:Ltypes/PoiPoint;

    iget v3, v3, Ltypes/PoiPoint;->j:F

    invoke-static {v1, v0, v2, v3}, Ltypes/i;->a(FFFF)I

    move-result v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->direction:I

    :cond_5
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxNearThermal;->textY:I

    iget v3, p0, Ldisplay/vmap/boxes/BoxNearThermal;->radius:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxNearThermal;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->direction:I

    sget v1, Lm/g;->m:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ldisplay/vmap/boxes/BoxNearThermal;->drawPointer(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c00e1

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltypes/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxNearThermal;->findNearest()V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->thermal:Ltypes/PoiPoint;

    if-eqz v0, :cond_1

    iget v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->distance:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    iget v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->distance:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->distance:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected onPosition()V
    .locals 2

    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->captionVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->captionHeight:I

    :goto_0
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Ldisplay/vmap/boxes/BoxNearThermal;->MARGIN_TOP:I

    sub-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->radius:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :goto_1
    iget v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->radius:I

    int-to-float v0, v0

    invoke-static {v0}, Ldisplay/vmap/boxes/BoxNearThermal;->createArrowPath(F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->pathPointer:Landroid/graphics/Path;

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->radius:I

    add-int/2addr v0, v1

    sget v1, Ldisplay/vmap/boxes/BoxNearThermal;->MARGIN_LEFT:I

    add-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->pointerX:I

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->radius:I

    sub-int/2addr v0, v1

    sget v1, Ldisplay/vmap/boxes/BoxNearThermal;->MARGIN_BOTTOM:I

    sub-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->pointerY:I

    iget v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->pointerX:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->radius:I

    add-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->textX:I

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxNearThermal;->textX:I

    sub-int/2addr v0, v1

    sget v1, Ldisplay/vmap/boxes/BoxNearThermal;->MARGIN_LEFT:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxNearThermal;->maxTextWidth:F

    return-void
.end method
