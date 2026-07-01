.class public Ldisplay/vmap/boxes/BoxGoal;
.super Ldisplay/vmap/boxes/InfoBox;


# instance fields
.field private clickSelect:Ljava/lang/String;

.field dist:I

.field private pathPointer:Landroid/graphics/Path;

.field private radius:I

.field private visibleGoal:Ltypes/PoiPoint;

.field xBmp:I

.field xBmpText:I

.field xPointer:I

.field yBmp:I

.field yPointer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->visibleGoal:Ltypes/PoiPoint;

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Ldisplay/vmap/boxes/BoxGoal;->aspectRatio:F

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxGoal;->textLength:I

    const v0, 0x7f0c0052

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->clickSelect:Ljava/lang/String;

    return-void
.end method

.method private calculateBitmapPosition()V
    .locals 2

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/xcglobe/xclog/l;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGoal;->xBmp:I

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxGoal;->rec:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget-object v1, Ldisplay/vmap/features/RingPainter;->bmpGoal:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGoal;->yBmp:I

    iget v0, p0, Ldisplay/vmap/boxes/BoxGoal;->xBmp:I

    sget-object v1, Ldisplay/vmap/features/RingPainter;->bmpGoal:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGoal;->xBmpText:I

    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Ldisplay/vmap/boxes/BoxGoal;->xPointer:I

    int-to-float v0, v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxGoal;->yPointer:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    sget-object p2, Ldisplay/vmap/boxes/BoxGoal;->paintText:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->o:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Ldisplay/vmap/boxes/BoxGoal;->pathPointer:Landroid/graphics/Path;

    sget-object v0, Ldisplay/vmap/boxes/BoxGoal;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-object p1, Ldisplay/vmap/boxes/BoxGoal;->paintText:Landroid/graphics/Paint;

    sget p2, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 4

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxGoal;->visibleGoal:Ltypes/PoiPoint;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ldisplay/vmap/boxes/BoxGoal;->getCaption()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->caption:Ljava/lang/String;

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxGoal;->rec:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ldisplay/vmap/boxes/BoxGoal;->intCaptionVisibility(II)V

    :cond_0
    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    if-nez v0, :cond_3

    sget-object v0, Ldisplay/vmap/features/RingPainter;->bmpGoal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v0, p0, Ldisplay/vmap/boxes/BoxGoal;->xBmp:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxGoal;->calculateBitmapPosition()V

    :cond_1
    sget-object v0, Ldisplay/vmap/features/RingPainter;->bmpGoal:Landroid/graphics/Bitmap;

    iget v1, p0, Ldisplay/vmap/boxes/BoxGoal;->xBmp:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxGoal;->yBmp:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxGoal;->paintText:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxGoal;->xBmpText:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxGoal;->textY:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxGoal;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    sget v0, Ltypes/f;->c:I

    sget v1, Lm/g;->m:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ldisplay/vmap/boxes/BoxGoal;->drawPointer(Landroid/graphics/Canvas;I)V

    sget-object v0, Ldisplay/vmap/boxes/BoxGoal;->paintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxGoal;->paintText:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxGoal;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxGoal;->textY:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxGoal;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxGoal;->paintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxGoal;->paintText:Landroid/graphics/Paint;

    sget v1, Ltypes/f;->f:I

    if-lez v1, :cond_4

    sget v1, Lcom/xcglobe/xclog/l;->m:I

    goto :goto_0

    :cond_4
    sget v1, Lcom/xcglobe/xclog/l;->j:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxGoal;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxGoal;->textY:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxGoal;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 4

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->visibleGoal:Ltypes/PoiPoint;

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    if-eqz v0, :cond_1

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iget-object v0, v0, Ltypes/PoiPoint;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0098

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 3

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    sget v1, Ltypes/f;->b:F

    invoke-static {v1}, Ltypes/q;->a(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->clickSelect:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public onClick()Z
    .locals 5

    invoke-static {}, Lcom/xcglobe/xclog/App;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v1

    sget-object v2, Ltypes/f;->a:Ltypes/PoiPoint;

    new-instance v3, Ldisplay/vmap/boxes/BoxGoal$1;

    invoke-direct {v3, p0}, Ldisplay/vmap/boxes/BoxGoal$1;-><init>(Ldisplay/vmap/boxes/BoxGoal;)V

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lf/b/b;->a(Landroid/app/Activity;Ltypes/GpsVal;Ltypes/PoiPoint;ZLf/b/b$a;)V

    return v4
.end method

.method protected onPosition()V
    .locals 2

    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxGoal;->captionVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxGoal;->captionHeight:I

    :goto_0
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Ldisplay/vmap/boxes/BoxGoal;->MARGIN_TOP:I

    sub-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGoal;->radius:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :goto_1
    iget v0, p0, Ldisplay/vmap/boxes/BoxGoal;->radius:I

    int-to-float v0, v0

    invoke-static {v0}, Ldisplay/vmap/boxes/BoxGoal;->createArrowPath(F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->pathPointer:Landroid/graphics/Path;

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxGoal;->radius:I

    add-int/2addr v0, v1

    sget v1, Ldisplay/vmap/boxes/BoxGoal;->MARGIN_LEFT:I

    add-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGoal;->xPointer:I

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxGoal;->radius:I

    sub-int/2addr v0, v1

    sget v1, Ldisplay/vmap/boxes/BoxGoal;->MARGIN_BOTTOM:I

    sub-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGoal;->yPointer:I

    iget v0, p0, Ldisplay/vmap/boxes/BoxGoal;->xPointer:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxGoal;->radius:I

    add-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxGoal;->textX:I

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGoal;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxGoal;->radius:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Ldisplay/vmap/boxes/BoxGoal;->MARGIN_LEFT:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxGoal;->maxTextWidth:F

    return-void
.end method
