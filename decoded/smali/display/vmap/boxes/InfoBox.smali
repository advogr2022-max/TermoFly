.class public abstract Ldisplay/vmap/boxes/InfoBox;
.super Ljava/lang/Object;


# static fields
.field public static MARGIN_BOTTOM:I = 0x0

.field public static MARGIN_LEFT:I = 0x0

.field public static MARGIN_TOP:I = 0x0

.field public static STATE_NONE:I = 0x0

.field public static STATE_PRESSED:I = 0x1

.field static alwaysDrawRect:Z = false

.field public static paintBack:Landroid/graphics/Paint;

.field public static paintText:Landroid/graphics/Paint;

.field public static timeMs:J

.field protected static world:Lvmaps/core/VmpWorld;


# instance fields
.field public aspectRatio:F

.field protected caption:Ljava/lang/String;

.field protected captionHeight:I

.field protected captionVisible:Z

.field captionY:I

.field public customPosition:Z

.field public customWidth:Z

.field docked:Z

.field isBottommost:Z

.field isRightmost:Z

.field protected maxTextWidth:F

.field protected measuredText:F

.field parentSet:Ldisplay/vmap/boxes/BoxSet;

.field private prevMeasuredText:F

.field private prevTextLength:I

.field protected rec:Landroid/graphics/Rect;

.field protected showCaption:Z

.field public sizeFactor:F

.field protected state:I

.field protected text:Ljava/lang/String;

.field textIsDecimal:Z

.field protected textLength:I

.field protected textSize:F

.field textX:I

.field textY:I

.field public unitSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Ldisplay/vmap/boxes/InfoBox;->aspectRatio:F

    const/4 v0, 0x3

    iput v0, p0, Ldisplay/vmap/boxes/InfoBox;->textLength:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldisplay/vmap/boxes/InfoBox;->textIsDecimal:Z

    iput-boolean v0, p0, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    iput-boolean v0, p0, Ldisplay/vmap/boxes/InfoBox;->customWidth:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ldisplay/vmap/boxes/InfoBox;->sizeFactor:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ldisplay/vmap/boxes/InfoBox;->showCaption:Z

    iput-boolean v1, p0, Ldisplay/vmap/boxes/InfoBox;->captionVisible:Z

    const/4 v1, 0x0

    iput v1, p0, Ldisplay/vmap/boxes/InfoBox;->prevMeasuredText:F

    iput v0, p0, Ldisplay/vmap/boxes/InfoBox;->state:I

    const/4 v1, 0x0

    iput-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->parentSet:Ldisplay/vmap/boxes/BoxSet;

    iput-boolean v0, p0, Ldisplay/vmap/boxes/InfoBox;->docked:Z

    iput-boolean v0, p0, Ldisplay/vmap/boxes/InfoBox;->isRightmost:Z

    iput-boolean v0, p0, Ldisplay/vmap/boxes/InfoBox;->isBottommost:Z

    return-void
.end method

.method static createArrowPath(F)Landroid/graphics/Path;
    .locals 7

    const/high16 v0, 0x40a00000    # 5.0f

    div-float v1, p0, v0

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v2, v2, v1

    mul-float v0, v0, v1

    float-to-int p0, p0

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    neg-int v4, p0

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v2, v1

    add-float v5, v4, v0

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v6

    add-float/2addr v4, v0

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float p0, p0

    invoke-virtual {v3, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    neg-float v0, v1

    invoke-virtual {v3, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    neg-float p0, v2

    invoke-virtual {v3, p0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3
.end method

.method public static initStatic(Lvmaps/core/VmpWorld;)V
    .locals 3

    sput-object p0, Ldisplay/vmap/boxes/InfoBox;->world:Lvmaps/core/VmpWorld;

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    sput-object p0, Ldisplay/vmap/boxes/InfoBox;->paintBack:Landroid/graphics/Paint;

    sget-object p0, Ldisplay/vmap/boxes/InfoBox;->paintBack:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->q:I

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Ldisplay/vmap/boxes/InfoBox;->paintBack:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    sput-object p0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    sget-object p0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget-object p0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget p0, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    sput p0, Ldisplay/vmap/boxes/InfoBox;->MARGIN_LEFT:I

    sget p0, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x4

    sput p0, Ldisplay/vmap/boxes/InfoBox;->MARGIN_TOP:I

    sget p0, Ldisplay/vmap/boxes/InfoBox;->MARGIN_TOP:I

    mul-int/lit8 p0, p0, 0x2

    sput p0, Ldisplay/vmap/boxes/InfoBox;->MARGIN_BOTTOM:I

    return-void
.end method


# virtual methods
.method public createPointerPath(F)Landroid/graphics/Path;
    .locals 7

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x41900000    # 18.0f

    mul-float v1, v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    const-wide v2, 0x3fd41b2f769cf0e0L    # 0.3141592653589793

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v1

    neg-float v3, p1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    neg-float v5, v2

    sub-float v6, v1, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x40800000    # 4.0f

    mul-float p1, p1, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr p1, v5

    sub-float/2addr v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/InfoBox;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/InfoBox;->textY:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method drawFrame(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->parentSet:Ldisplay/vmap/boxes/BoxSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->parentSet:Ldisplay/vmap/boxes/BoxSet;

    iget-boolean v0, v0, Ldisplay/vmap/boxes/BoxSet;->takeChildSize:Z

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {}, Lcom/xcglobe/xclog/g;->b()Landroid/graphics/Paint;

    move-result-object v0

    iget-boolean v1, p0, Ldisplay/vmap/boxes/InfoBox;->docked:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Ldisplay/vmap/boxes/InfoBox;->alwaysDrawRect:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    div-int/lit8 v7, v1, 0x2

    iget-boolean v1, p0, Ldisplay/vmap/boxes/InfoBox;->isBottommost:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v7

    int-to-float v2, v1

    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v7

    int-to-float v3, v1

    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v7

    int-to-float v4, v1

    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v7

    int-to-float v5, v1

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-boolean v1, p0, Ldisplay/vmap/boxes/InfoBox;->isRightmost:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v7

    int-to-float v2, v1

    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v7

    int-to-float v3, v1

    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v7

    int-to-float v4, v1

    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v7

    int-to-float v5, v1

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected abstract getCaption()Ljava/lang/String;
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Ldisplay/vmap/boxes/InfoBox;->state:I

    return v0
.end method

.method protected abstract getText()Ljava/lang/String;
.end method

.method public getVisibleBox()Ldisplay/vmap/boxes/InfoBox;
    .locals 0

    return-object p0
.end method

.method public hasCustomPosition()Z
    .locals 1

    iget-boolean v0, p0, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    return v0
.end method

.method public initPosition(II)V
    .locals 3

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    add-int/2addr v0, p1

    add-int/2addr v1, p2

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sget p2, Ldisplay/vmap/boxes/InfoBox;->MARGIN_BOTTOM:I

    sub-int/2addr p1, p2

    iput p1, p0, Ldisplay/vmap/boxes/InfoBox;->textY:I

    iget-object p1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sget p2, Ldisplay/vmap/boxes/InfoBox;->MARGIN_LEFT:I

    add-int/2addr p1, p2

    iput p1, p0, Ldisplay/vmap/boxes/InfoBox;->textX:I

    iget-object p1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sget p2, Lcom/xcglobe/xclog/l;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Ldisplay/vmap/boxes/InfoBox;->captionY:I

    invoke-virtual {p0}, Ldisplay/vmap/boxes/InfoBox;->getCaption()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldisplay/vmap/boxes/InfoBox;->caption:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Ldisplay/vmap/boxes/InfoBox;->prevTextLength:I

    return-void
.end method

.method public initSize(F)V
    .locals 4

    iput p1, p0, Ldisplay/vmap/boxes/InfoBox;->unitSize:F

    iget v0, p0, Ldisplay/vmap/boxes/InfoBox;->sizeFactor:F

    mul-float p1, p1, v0

    iget v0, p0, Ldisplay/vmap/boxes/InfoBox;->aspectRatio:F

    mul-float v0, v0, p1

    float-to-int v0, v0

    float-to-int p1, p1

    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v0, p1}, Ldisplay/vmap/boxes/InfoBox;->intCaptionVisibility(II)V

    iget-boolean v1, p0, Ldisplay/vmap/boxes/InfoBox;->captionVisible:Z

    const v2, 0x3f99999a    # 1.2f

    if-eqz v1, :cond_0

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    sub-int/2addr p1, v1

    :cond_0
    sget v1, Ldisplay/vmap/boxes/InfoBox;->MARGIN_TOP:I

    sget v3, Ldisplay/vmap/boxes/InfoBox;->MARGIN_BOTTOM:I

    add-int/2addr v1, v3

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float p1, p1, v2

    sget-object v1, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    iput p1, p0, Ldisplay/vmap/boxes/InfoBox;->textSize:F

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget v1, Ldisplay/vmap/boxes/InfoBox;->MARGIN_LEFT:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/InfoBox;->maxTextWidth:F

    iget-boolean v0, p0, Ldisplay/vmap/boxes/InfoBox;->textIsDecimal:Z

    if-eqz v0, :cond_1

    const-string v0, "88.8"

    goto :goto_0

    :cond_1
    const-string v0, "8888"

    :goto_0
    sget-object v1, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iget v1, p0, Ldisplay/vmap/boxes/InfoBox;->textLength:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p0, Ldisplay/vmap/boxes/InfoBox;->maxTextWidth:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget v1, p0, Ldisplay/vmap/boxes/InfoBox;->maxTextWidth:F

    div-float/2addr v1, v0

    mul-float p1, p1, v1

    iput p1, p0, Ldisplay/vmap/boxes/InfoBox;->textSize:F

    :cond_2
    return-void
.end method

.method intCaptionVisibility(II)V
    .locals 4

    iget-boolean v0, p0, Ldisplay/vmap/boxes/InfoBox;->showCaption:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ldisplay/vmap/boxes/InfoBox;->getCaption()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    sget v2, Lcom/xcglobe/xclog/l;->d:I

    mul-int v0, v0, v2

    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v2

    float-to-int v0, v0

    goto :goto_1

    :cond_1
    sget v2, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v2, v2

    sget v3, Lcom/xcglobe/xclog/l;->p:I

    invoke-static {v2, v3}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    sget v2, Lcom/xcglobe/xclog/l;->d:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :goto_1
    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Ldisplay/vmap/boxes/InfoBox;->captionVisible:Z

    sget p1, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 p1, p1, 0x4

    if-ge p2, p1, :cond_3

    iput-boolean v1, p0, Ldisplay/vmap/boxes/InfoBox;->captionVisible:Z

    :cond_3
    iget-boolean p1, p0, Ldisplay/vmap/boxes/InfoBox;->captionVisible:Z

    if-eqz p1, :cond_4

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    :cond_4
    iput v1, p0, Ldisplay/vmap/boxes/InfoBox;->captionHeight:I

    goto :goto_3

    :cond_5
    iput-boolean v1, p0, Ldisplay/vmap/boxes/InfoBox;->captionVisible:Z

    :goto_3
    return-void
.end method

.method public isInside(II)Z
    .locals 1

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method protected isTimeRotatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFinalized(Ldisplay/vmap/boxes/LayoutManager;)V
    .locals 0

    return-void
.end method

.method public onLayoutStart()V
    .locals 0

    return-void
.end method

.method public onLongClick()V
    .locals 0

    return-void
.end method

.method public onModeChanged(ZZ)V
    .locals 0

    return-void
.end method

.method protected onPosition()V
    .locals 0

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Ldisplay/vmap/boxes/InfoBox;->state:I

    return-void
.end method

.method public update(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->parentSet:Ldisplay/vmap/boxes/BoxSet;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Ldisplay/vmap/boxes/InfoBox;->paintBack:Landroid/graphics/Paint;

    iget v1, p0, Ldisplay/vmap/boxes/InfoBox;->state:I

    sget v2, Ldisplay/vmap/boxes/InfoBox;->STATE_PRESSED:I

    if-ne v1, v2, :cond_1

    sget v1, Lcom/xcglobe/xclog/l;->l:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/xcglobe/xclog/l;->q:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    sget-object v1, Ldisplay/vmap/boxes/InfoBox;->paintBack:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    iget-boolean v0, p0, Ldisplay/vmap/boxes/InfoBox;->captionVisible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->caption:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->caption:Ljava/lang/String;

    iget-object v1, p0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v2, Ldisplay/vmap/boxes/InfoBox;->MARGIN_LEFT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/InfoBox;->captionY:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_3
    sget-object v0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    iget v1, p0, Ldisplay/vmap/boxes/InfoBox;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Ldisplay/vmap/boxes/InfoBox;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->text:Ljava/lang/String;

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->text:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldisplay/vmap/boxes/InfoBox;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Ldisplay/vmap/boxes/InfoBox;->textLength:I

    if-le v0, v1, :cond_5

    iget v1, p0, Ldisplay/vmap/boxes/InfoBox;->prevTextLength:I

    if-eq v0, v1, :cond_4

    sget-object v1, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    iget-object v2, p0, Ldisplay/vmap/boxes/InfoBox;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Ldisplay/vmap/boxes/InfoBox;->prevMeasuredText:F

    iput v1, p0, Ldisplay/vmap/boxes/InfoBox;->measuredText:F

    :cond_4
    iput v0, p0, Ldisplay/vmap/boxes/InfoBox;->prevTextLength:I

    iget v0, p0, Ldisplay/vmap/boxes/InfoBox;->prevMeasuredText:F

    iget v1, p0, Ldisplay/vmap/boxes/InfoBox;->maxTextWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Ldisplay/vmap/boxes/InfoBox;->maxTextWidth:F

    iget v1, p0, Ldisplay/vmap/boxes/InfoBox;->prevMeasuredText:F

    div-float/2addr v0, v1

    sget-object v1, Ldisplay/vmap/boxes/InfoBox;->paintText:Landroid/graphics/Paint;

    iget v2, p0, Ldisplay/vmap/boxes/InfoBox;->textSize:F

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v1, p0, Ldisplay/vmap/boxes/InfoBox;->prevMeasuredText:F

    mul-float v1, v1, v0

    iput v1, p0, Ldisplay/vmap/boxes/InfoBox;->measuredText:F

    :cond_5
    invoke-virtual {p0, p1}, Ldisplay/vmap/boxes/InfoBox;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Ldisplay/vmap/boxes/InfoBox;->drawFrame(Landroid/graphics/Canvas;)V

    return-void
.end method
