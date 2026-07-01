.class public Ldisplay/vmap/features/ZoomIconPainter;
.super Ljava/lang/Object;


# static fields
.field public static final KM_PER_WIDTH_MAX:F = 5320.0f

.field public static final KM_PER_WIDTH_MIN:F = 0.1f

.field private static SCALE_TIMEOUT_MS:J = 0x0L

.field private static height:I = 0x0

.field public static paintOutline:Landroid/graphics/Paint; = null

.field private static paintScaleFill:Landroid/graphics/Paint; = null

.field private static pathScale:Landroid/graphics/Path; = null

.field private static pathZoomMinus:Landroid/graphics/Path; = null

.field private static pathZoomPlus:Landroid/graphics/Path; = null

.field private static scaleHideTime:J = 0x0L

.field private static scaleTextSize:I = 0x0

.field private static scaleTextY:I = 0x0

.field private static scaleVisible:Z = false

.field private static width:I

.field private static world:Lvmaps/core/VmpWorld;

.field private static zoomIconMarginX:I

.field private static zoomIconMarginY:I

.field public static zoomIconSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomPlus:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomMinus:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Ldisplay/vmap/features/ZoomIconPainter;->pathScale:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ldisplay/vmap/features/ZoomIconPainter;->paintScaleFill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ldisplay/vmap/features/ZoomIconPainter;->paintOutline:Landroid/graphics/Paint;

    const-wide/16 v0, 0x5dc

    sput-wide v0, Ldisplay/vmap/features/ZoomIconPainter;->SCALE_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ldisplay/vmap/ViewVmp;)V
    .locals 0

    iget-object p0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sput-object p0, Ldisplay/vmap/features/ZoomIconPainter;->world:Lvmaps/core/VmpWorld;

    sget-object p0, Ldisplay/vmap/features/ZoomIconPainter;->world:Lvmaps/core/VmpWorld;

    iget p0, p0, Lvmaps/core/VmpWorld;->f:F

    float-to-int p0, p0

    sput p0, Ldisplay/vmap/features/ZoomIconPainter;->width:I

    sget-object p0, Ldisplay/vmap/features/ZoomIconPainter;->world:Lvmaps/core/VmpWorld;

    iget p0, p0, Lvmaps/core/VmpWorld;->g:F

    float-to-int p0, p0

    sput p0, Ldisplay/vmap/features/ZoomIconPainter;->height:I

    const/4 p0, 0x1

    invoke-static {p0}, Ldisplay/vmap/features/ZoomIconPainter;->initZoomIcons(Z)V

    return-void
.end method

.method private static createZoomPaths(ZII)V
    .locals 13

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconMarginX:I

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconMarginY:I

    sget-object v0, Ldisplay/vmap/features/ZoomIconPainter;->paintScaleFill:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Ldisplay/vmap/features/ZoomIconPainter;->paintScaleFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Ldisplay/vmap/features/ZoomIconPainter;->paintScaleFill:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sput-boolean p0, Ldisplay/vmap/features/ZoomIconPainter;->scaleVisible:Z

    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sget v2, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconMarginY:I

    sget v3, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconSize:I

    div-int/lit8 v3, v3, 0x3

    sget v4, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconMarginY:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    sget v6, Ldisplay/vmap/features/ZoomIconPainter;->width:I

    sget v7, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconMarginX:I

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    sget v7, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconMarginX:I

    if-eqz p0, :cond_0

    mul-int/lit8 p0, v5, 0x2

    add-int p1, v7, p0

    add-int p0, v7, v6

    mul-int/lit8 p2, v5, 0x5

    sub-int p2, p0, p2

    sub-int p0, v4, v5

    div-int/lit8 v2, v5, 0x2

    sub-int v2, p0, v2

    move v3, v5

    :cond_0
    sget-object p0, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomMinus:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    sget-object p0, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomMinus:Landroid/graphics/Path;

    const/4 v5, 0x0

    aget v9, v1, v5

    mul-int v9, v9, v3

    add-int/2addr v9, p1

    int-to-float v9, v9

    const/4 v10, 0x1

    aget v11, v1, v10

    mul-int v11, v11, v3

    add-int/2addr v11, v2

    int-to-float v11, v11

    invoke-virtual {p0, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p0, 0x2

    :goto_0
    array-length v9, v1

    if-ge p0, v9, :cond_1

    sget-object v9, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomMinus:Landroid/graphics/Path;

    aget v11, v1, p0

    mul-int v11, v11, v3

    add-int/2addr v11, p1

    int-to-float v11, v11

    add-int/lit8 v12, p0, 0x1

    aget v12, v1, v12

    mul-int v12, v12, v3

    add-int/2addr v12, v2

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    sget-object p0, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomPlus:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    sget-object p0, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomPlus:Landroid/graphics/Path;

    aget p1, v0, v5

    mul-int p1, p1, v3

    add-int/2addr p1, p2

    int-to-float p1, p1

    aget v1, v0, v10

    mul-int v1, v1, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p0, 0x2

    :goto_1
    array-length p1, v0

    if-ge p0, p1, :cond_2

    sget-object p1, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomPlus:Landroid/graphics/Path;

    aget v1, v0, p0

    mul-int v1, v1, v3

    add-int/2addr v1, p2

    int-to-float v1, v1

    add-int/lit8 v9, p0, 0x1

    aget v9, v0, v9

    mul-int v9, v9, v3

    add-int/2addr v9, v2

    int-to-float v9, v9

    invoke-virtual {p1, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_2
    sget p0, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconSize:I

    div-int/lit8 p0, p0, 0x3

    const/16 p1, 0x16

    new-array p1, p1, [I

    fill-array-data p1, :array_2

    mul-int/lit8 p2, p0, 0x8

    div-int/lit8 p2, p2, 0x6

    sget-object v0, Ldisplay/vmap/features/ZoomIconPainter;->pathScale:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    sget-object v0, Ldisplay/vmap/features/ZoomIconPainter;->pathScale:Landroid/graphics/Path;

    aget v1, p1, v5

    mul-int v1, v1, p0

    add-int/2addr v1, v7

    int-to-float v1, v1

    aget v2, p1, v10

    mul-int v2, v2, p2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x2

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget v1, p1, v0

    int-to-float v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    add-int v2, v7, v6

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    sub-float/2addr v1, v3

    int-to-float v3, p0

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    goto :goto_3

    :cond_3
    int-to-float v2, v7

    int-to-float v3, p0

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    :goto_3
    sget-object v1, Ldisplay/vmap/features/ZoomIconPainter;->pathScale:Landroid/graphics/Path;

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    mul-int v3, v3, p2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_4
    mul-int/lit8 p2, p2, 0x2

    sput p2, Ldisplay/vmap/features/ZoomIconPainter;->scaleTextSize:I

    add-int/2addr v4, p0

    sput v4, Ldisplay/vmap/features/ZoomIconPainter;->scaleTextY:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x2
        0x0
        0x2
        0x1
        0x3
        0x1
        0x3
        0x2
        0x2
        0x2
        0x2
        0x3
        0x1
        0x3
        0x1
        0x2
        0x0
        0x2
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x3
        0x1
        0x3
        0x2
        0x0
        0x2
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x2
        -0x2
        0x2
        -0x1
        0x62
        -0x1
        0x62
        -0x2
        0x64
        0x0
        0x62
        0x2
        0x62
        0x1
        0x2
        0x1
        0x2
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public static draw(Landroid/graphics/Canvas;)V
    .locals 5

    sget-wide v0, Ldisplay/vmap/features/ZoomIconPainter;->scaleHideTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {p0}, Ldisplay/vmap/features/ZoomIconPainter;->drawScale(Landroid/graphics/Canvas;)V

    :cond_0
    sget-object v0, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomMinus:Landroid/graphics/Path;

    sget-object v1, Ldisplay/vmap/features/ZoomIconPainter;->paintScaleFill:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomPlus:Landroid/graphics/Path;

    sget-object v1, Ldisplay/vmap/features/ZoomIconPainter;->paintScaleFill:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/xcglobe/xclog/g;->b()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Ldisplay/vmap/features/ZoomIconPainter;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v1}, Lvmaps/core/VmpWorld;->c()F

    move-result v1

    const v2, 0x45a64000    # 5320.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    sget-object v2, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomMinus:Landroid/graphics/Path;

    invoke-virtual {p0, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    sget-object v1, Ldisplay/vmap/features/ZoomIconPainter;->pathZoomPlus:Landroid/graphics/Path;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private static drawScale(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ldisplay/vmap/features/ZoomIconPainter;->scaleHideTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ldisplay/vmap/features/ZoomIconPainter;->initZoomIcons(Z)V

    return-void

    :cond_0
    sget-boolean v0, Ldisplay/vmap/features/ZoomIconPainter;->scaleVisible:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ldisplay/vmap/features/ZoomIconPainter;->initZoomIcons(Z)V

    :cond_1
    sget-object v0, Ldisplay/vmap/features/ZoomIconPainter;->pathScale:Landroid/graphics/Path;

    sget-object v1, Ldisplay/vmap/features/ZoomIconPainter;->paintScaleFill:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/features/ZoomIconPainter;->pathScale:Landroid/graphics/Path;

    invoke-static {}, Lcom/xcglobe/xclog/g;->b()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget v0, Ldisplay/vmap/features/ZoomIconPainter;->scaleTextSize:I

    int-to-float v0, v0

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Ldisplay/vmap/features/ZoomIconPainter;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v1}, Lvmaps/core/VmpWorld;->c()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    invoke-static {v1}, Ltypes/q;->a(F)F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Ldisplay/vmap/features/ZoomIconPainter;->width:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sget v3, Ldisplay/vmap/features/ZoomIconPainter;->scaleTextY:I

    int-to-float v3, v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    int-to-float v1, v2

    invoke-static {v1}, Ltypes/q;->a(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v4

    double-to-int v1, v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xa

    goto :goto_1

    :cond_3
    const/16 v2, 0x1e

    if-le v1, v2, :cond_4

    add-int/lit8 v1, v1, 0x2

    div-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x5

    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_2
    invoke-static {}, Lm/f;->d()Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/xcglobe/xclog/App;->c:Landroid/os/Handler;

    sget-object v0, Ldisplay/vmap/features/-$$Lambda$ZoomIconPainter$o5JUd1wBVGoWjPV_8Mx6Wc3JSMs;->INSTANCE:Ldisplay/vmap/features/-$$Lambda$ZoomIconPainter$o5JUd1wBVGoWjPV_8Mx6Wc3JSMs;

    sget-wide v1, Ldisplay/vmap/features/ZoomIconPainter;->SCALE_TIMEOUT_MS:J

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public static initZoomIcons(Z)V
    .locals 3

    sget v0, Ldisplay/vmap/features/ZoomIconPainter;->width:I

    sget v1, Ldisplay/vmap/features/ZoomIconPainter;->height:I

    if-ge v0, v1, :cond_0

    sget v0, Ldisplay/vmap/features/ZoomIconPainter;->width:I

    goto :goto_0

    :cond_0
    sget v0, Ldisplay/vmap/features/ZoomIconPainter;->height:I

    :goto_0
    div-int/lit8 v0, v0, 0x8

    sput v0, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconSize:I

    sget v0, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconMarginX:I

    sget v1, Ldisplay/vmap/features/ZoomIconPainter;->width:I

    sget v2, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconSize:I

    sub-int/2addr v1, v2

    sget v2, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconMarginX:I

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Ldisplay/vmap/features/ZoomIconPainter;->createZoomPaths(ZII)V

    if-eqz p0, :cond_1

    invoke-static {}, Ldisplay/vmap/features/ZoomIconPainter;->setScaleVisible()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$drawScale$0()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    return-void
.end method

.method private static setScaleVisible()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ldisplay/vmap/features/ZoomIconPainter;->SCALE_TIMEOUT_MS:J

    add-long/2addr v0, v2

    sput-wide v0, Ldisplay/vmap/features/ZoomIconPainter;->scaleHideTime:J

    sget-wide v0, Ldisplay/vmap/features/ZoomIconPainter;->SCALE_TIMEOUT_MS:J

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    const/16 v2, 0xb

    invoke-static {v2, v0, v1}, Lcom/xcglobe/xclog/ActivityMain;->a(IJ)V

    return-void
.end method
