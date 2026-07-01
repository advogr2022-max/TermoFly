.class public Ldisplay/vmap/features/TrackPainter;
.super Ljava/lang/Object;


# static fields
.field private static cornerEffect:Landroid/graphics/CornerPathEffect;

.field private static fastMovedPoints:I

.field private static lastCenterLat:F

.field private static lastCenterLng:F

.field private static lastX:I

.field private static lastY:I

.field private static nextAllowedTimeMs:J

.field private static ofsX:I

.field private static ofsY:I

.field private static path:Landroid/graphics/Path;

.field private static pathSize:I

.field private static pathWidth:I

.field private static points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltypes/GpsVal;",
            ">;"
        }
    .end annotation
.end field

.field private static trackPaint:Landroid/graphics/Paint;

.field private static world:Lvmaps/core/VmpWorld;

.field private static worldOfs:[I

.field private static xy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Ldisplay/vmap/features/TrackPainter;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Ldisplay/vmap/features/TrackPainter;->worldOfs:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ldisplay/vmap/features/TrackPainter;->xy:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ldisplay/vmap/ViewVmp;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldisplay/vmap/ViewVmp;",
            "Ljava/util/ArrayList<",
            "Ltypes/GpsVal;",
            ">;I)V"
        }
    .end annotation

    iget-object p0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sput-object p0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    sput-object p1, Ldisplay/vmap/features/TrackPainter;->points:Ljava/util/ArrayList;

    sget p0, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit16 p0, p0, 0x1d6

    const/4 p1, 0x1

    add-int/2addr p0, p1

    sget-object p2, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    mul-int/lit8 p0, p0, 0x2

    sput p0, Ldisplay/vmap/features/TrackPainter;->pathWidth:I

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    sget p1, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object p0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    new-instance p0, Landroid/graphics/CornerPathEffect;

    sget p1, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit8 p1, p1, 0x1e

    int-to-float p1, p1

    invoke-direct {p0, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    sput-object p0, Ldisplay/vmap/features/TrackPainter;->cornerEffect:Landroid/graphics/CornerPathEffect;

    sget-object p0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    sget-object p1, Ldisplay/vmap/features/TrackPainter;->cornerEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-static {}, Ldisplay/vmap/features/TrackPainter;->recreate()V

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    sget v0, Ldisplay/vmap/features/TrackPainter;->ofsX:I

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Ldisplay/vmap/features/TrackPainter;->ofsY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p1, :cond_0

    sget-object p1, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    sget v0, Ldisplay/vmap/features/TrackPainter;->pathWidth:I

    add-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Ldisplay/vmap/features/TrackPainter;->path:Landroid/graphics/Path;

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object p1, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    sget v0, Ldisplay/vmap/features/TrackPainter;->pathWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    sget-object p1, Ldisplay/vmap/features/TrackPainter;->path:Landroid/graphics/Path;

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static drawEndPoint(Landroid/graphics/Canvas;FF)V
    .locals 10

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v0, v0

    sget v1, Lcom/xcglobe/xclog/l;->o:I

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Ldisplay/vmap/features/TrackPainter;->pathWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v1, v1, 0x3

    sget v2, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v1, v1

    sub-float v8, p1, v1

    int-to-float v2, v2

    sub-float v9, p2, v2

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, v8

    move v6, v9

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v1, p1

    move v3, v8

    move v4, v9

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v3, v1

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public static drawEndPoints(Landroid/graphics/Canvas;)V
    .locals 6

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    sget v0, Ldisplay/vmap/features/TrackPainter;->ofsX:I

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Ldisplay/vmap/features/TrackPainter;->ofsY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->points:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltypes/GpsVal;

    sget-object v2, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget v3, v0, Ltypes/GpsVal;->a:F

    iget v0, v0, Ltypes/GpsVal;->b:F

    sget-object v4, Ldisplay/vmap/features/TrackPainter;->xy:[I

    invoke-virtual {v2, v3, v0, v4}, Lvmaps/core/VmpWorld;->a(FF[I)V

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v0, v0, v1

    int-to-float v0, v0

    sget-object v2, Ldisplay/vmap/features/TrackPainter;->xy:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-static {p0, v0, v2}, Ldisplay/vmap/features/TrackPainter;->drawEndPoint(Landroid/graphics/Canvas;FF)V

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->points:Ljava/util/ArrayList;

    sget-object v2, Ldisplay/vmap/features/TrackPainter;->points:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltypes/GpsVal;

    sget-object v2, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget v4, v0, Ltypes/GpsVal;->a:F

    iget v0, v0, Ltypes/GpsVal;->b:F

    sget-object v5, Ldisplay/vmap/features/TrackPainter;->xy:[I

    invoke-virtual {v2, v4, v0, v5}, Lvmaps/core/VmpWorld;->a(FF[I)V

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v0, v0, v1

    int-to-float v0, v0

    sget-object v1, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-static {p0, v0, v1}, Ldisplay/vmap/features/TrackPainter;->drawEndPoint(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public static moveTo(Ltypes/GpsVal;)V
    .locals 8

    sget v0, Ldisplay/vmap/features/TrackPainter;->pathSize:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    sget v0, Ldisplay/vmap/features/TrackPainter;->fastMovedPoints:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    sget v1, Ldisplay/vmap/features/TrackPainter;->lastCenterLat:F

    sget v2, Ldisplay/vmap/features/TrackPainter;->lastCenterLng:F

    sget-object v3, Ldisplay/vmap/features/TrackPainter;->xy:[I

    invoke-virtual {v0, v1, v2, v3}, Lvmaps/core/VmpWorld;->a(FF[I)V

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->worldOfs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v2, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v2, v2, v1

    sub-int/2addr v0, v2

    sput v0, Ldisplay/vmap/features/TrackPainter;->ofsX:I

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->worldOfs:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    sget-object v3, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v3, v3, v2

    sub-int/2addr v0, v3

    sput v0, Ldisplay/vmap/features/TrackPainter;->ofsY:I

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget v3, p0, Ltypes/GpsVal;->a:F

    iget v4, p0, Ltypes/GpsVal;->b:F

    sget-object v5, Ldisplay/vmap/features/TrackPainter;->xy:[I

    invoke-virtual {v0, v3, v4, v5}, Lvmaps/core/VmpWorld;->a(FF[I)V

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v0, v0, v1

    sget v1, Ldisplay/vmap/features/TrackPainter;->ofsX:I

    add-int/2addr v0, v1

    sget-object v1, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v1, v1, v2

    sget v3, Ldisplay/vmap/features/TrackPainter;->ofsY:I

    add-int/2addr v1, v3

    sget v3, Ldisplay/vmap/features/TrackPainter;->lastX:I

    if-ne v0, v3, :cond_1

    sget v3, Ldisplay/vmap/features/TrackPainter;->lastY:I

    if-eq v1, v3, :cond_3

    :cond_1
    iget-wide v3, p0, Ltypes/GpsVal;->d:J

    sget-wide v5, Ldisplay/vmap/features/TrackPainter;->nextAllowedTimeMs:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    sget-object p0, Ldisplay/vmap/features/TrackPainter;->path:Landroid/graphics/Path;

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Path;->setLastPoint(FF)V

    goto :goto_0

    :cond_2
    sget-object v3, Ldisplay/vmap/features/TrackPainter;->path:Landroid/graphics/Path;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-wide v3, p0, Ltypes/GpsVal;->d:J

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    sput-wide v3, Ldisplay/vmap/features/TrackPainter;->nextAllowedTimeMs:J

    sget p0, Ldisplay/vmap/features/TrackPainter;->fastMovedPoints:I

    add-int/2addr p0, v2

    sput p0, Ldisplay/vmap/features/TrackPainter;->fastMovedPoints:I

    sget p0, Ldisplay/vmap/features/TrackPainter;->pathSize:I

    add-int/2addr p0, v2

    sput p0, Ldisplay/vmap/features/TrackPainter;->pathSize:I

    :goto_0
    sput v0, Ldisplay/vmap/features/TrackPainter;->lastX:I

    sput v1, Ldisplay/vmap/features/TrackPainter;->lastY:I

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-static {}, Ldisplay/vmap/features/TrackPainter;->recreate()V

    return-void
.end method

.method public static recreate()V
    .locals 13

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v0}, Lvmaps/core/VmpWorld;->c()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-static {}, Ldisplay/vmap/features/TrackPainter;->recreateFine()V

    return-void

    :cond_1
    const/4 v0, 0x0

    sput v0, Ldisplay/vmap/features/TrackPainter;->pathSize:I

    sget-object v1, Ldisplay/vmap/features/TrackPainter;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    const-wide/16 v1, 0x0

    sput-wide v1, Ldisplay/vmap/features/TrackPainter;->nextAllowedTimeMs:J

    sput v0, Ldisplay/vmap/features/TrackPainter;->fastMovedPoints:I

    sput v0, Ldisplay/vmap/features/TrackPainter;->ofsY:I

    sput v0, Ldisplay/vmap/features/TrackPainter;->ofsX:I

    sget-object v1, Ldisplay/vmap/features/TrackPainter;->points:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    return-void

    :cond_2
    sget-object v1, Ldisplay/vmap/features/TrackPainter;->points:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    return-void

    :cond_3
    sget-object v2, Ldisplay/vmap/features/TrackPainter;->points:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltypes/GpsVal;

    sget-object v3, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget v4, v2, Ltypes/GpsVal;->a:F

    iget v2, v2, Ltypes/GpsVal;->b:F

    sget-object v5, Ldisplay/vmap/features/TrackPainter;->xy:[I

    invoke-virtual {v3, v4, v2, v5}, Lvmaps/core/VmpWorld;->a(FF[I)V

    sget-object v2, Ldisplay/vmap/features/TrackPainter;->path:Landroid/graphics/Path;

    sget-object v3, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v3, v3, v0

    int-to-float v3, v3

    sget-object v4, Ldisplay/vmap/features/TrackPainter;->xy:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object v2, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v2, v2, v0

    sget-object v3, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v3, v3, v0

    sget v4, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v4, v4, 0x4

    sget-object v6, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget v6, v6, Lvmaps/core/VmpWorld;->f:F

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x4

    sget-object v7, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget v7, v7, Lvmaps/core/VmpWorld;->g:F

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x4

    move v8, v3

    move v3, v2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_7

    sget-object v9, Ldisplay/vmap/features/TrackPainter;->points:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltypes/GpsVal;

    sget-object v10, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget v11, v9, Ltypes/GpsVal;->a:F

    iget v9, v9, Ltypes/GpsVal;->b:F

    sget-object v12, Ldisplay/vmap/features/TrackPainter;->xy:[I

    invoke-virtual {v10, v11, v9, v12}, Lvmaps/core/VmpWorld;->a(FF[I)V

    add-int/lit8 v9, v1, -0x1

    if-eq v2, v9, :cond_4

    sget-object v9, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v9, v9, v0

    sub-int v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v4, :cond_4

    sget-object v9, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v9, v9, v5

    sub-int v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v4, :cond_6

    :cond_4
    sget-object v3, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v3, v3, v0

    sget-object v8, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v8, v8, v5

    sget-object v9, Ldisplay/vmap/features/TrackPainter;->path:Landroid/graphics/Path;

    int-to-float v10, v3

    int-to-float v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    sget v9, Ldisplay/vmap/features/TrackPainter;->pathSize:I

    add-int/2addr v9, v5

    sput v9, Ldisplay/vmap/features/TrackPainter;->pathSize:I

    neg-int v9, v6

    if-le v3, v9, :cond_5

    if-ge v3, v6, :cond_5

    neg-int v9, v7

    if-le v8, v9, :cond_5

    if-lt v8, v7, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x5

    :cond_6
    add-int/2addr v2, v5

    goto :goto_0

    :cond_7
    sput v3, Ldisplay/vmap/features/TrackPainter;->lastX:I

    sput v8, Ldisplay/vmap/features/TrackPainter;->lastY:I

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v0, v0, Ltypes/d;->b:F

    sput v0, Ldisplay/vmap/features/TrackPainter;->lastCenterLat:F

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v0, v0, Ltypes/d;->c:F

    sput v0, Ldisplay/vmap/features/TrackPainter;->lastCenterLng:F

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    sget-object v1, Ldisplay/vmap/features/TrackPainter;->worldOfs:[I

    invoke-virtual {v0, v1}, Lvmaps/core/VmpWorld;->a([I)V

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v0}, Lvmaps/core/VmpWorld;->c()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_2

    :cond_8
    sget-object v0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    sget-object v1, Ldisplay/vmap/features/TrackPainter;->cornerEffect:Landroid/graphics/CornerPathEffect;

    goto :goto_1

    :goto_2
    return-void
.end method

.method public static recreateFine()V
    .locals 18

    const/4 v0, 0x0

    sput v0, Ldisplay/vmap/features/TrackPainter;->pathSize:I

    sget-object v1, Ldisplay/vmap/features/TrackPainter;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    const-wide/16 v1, 0x0

    sput-wide v1, Ldisplay/vmap/features/TrackPainter;->nextAllowedTimeMs:J

    sput v0, Ldisplay/vmap/features/TrackPainter;->fastMovedPoints:I

    sput v0, Ldisplay/vmap/features/TrackPainter;->ofsY:I

    sput v0, Ldisplay/vmap/features/TrackPainter;->ofsX:I

    sget-object v3, Lm/g;->h:Le/a;

    invoke-virtual {v3}, Le/a;->b()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    return-void

    :cond_0
    sget-object v4, Lm/g;->h:Le/a;

    invoke-virtual {v4}, Le/a;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltypes/j;

    iget-wide v4, v4, Ltypes/j;->d:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v4, v6

    sget v6, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v6, v6, 0x4

    const/4 v7, 0x2

    move-wide v9, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x1

    :goto_0
    if-ge v7, v3, :cond_6

    sget-object v12, Lm/g;->h:Le/a;

    invoke-virtual {v12, v7}, Le/a;->a(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltypes/GpsVal;

    iget-wide v13, v12, Ltypes/GpsVal;->d:J

    cmp-long v15, v13, v4

    if-gez v15, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v13, v12, Ltypes/GpsVal;->d:J

    sub-long/2addr v13, v9

    const-wide/16 v15, 0x3e8

    cmp-long v17, v13, v15

    if-gez v17, :cond_2

    goto :goto_1

    :cond_2
    sget-object v13, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget v14, v12, Ltypes/GpsVal;->a:F

    iget v15, v12, Ltypes/GpsVal;->b:F

    sget-object v8, Ldisplay/vmap/features/TrackPainter;->xy:[I

    invoke-virtual {v13, v14, v15, v8}, Lvmaps/core/VmpWorld;->a(FF[I)V

    if-eqz v11, :cond_3

    sget-object v1, Ldisplay/vmap/features/TrackPainter;->path:Landroid/graphics/Path;

    sget-object v2, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v2, v2, v0

    int-to-float v2, v2

    sget-object v8, Ldisplay/vmap/features/TrackPainter;->xy:[I

    const/4 v13, 0x1

    aget v8, v8, v13

    int-to-float v8, v8

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object v1, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v1, v1, v0

    sget-object v2, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v2, v2, v13

    iget-wide v8, v12, Ltypes/GpsVal;->d:J

    move-wide v9, v8

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    const/4 v13, 0x1

    if-eq v7, v3, :cond_5

    sget-object v8, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v8, v8, v0

    sub-int v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v6, :cond_5

    sget-object v8, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v8, v8, v13

    sub-int v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v6, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v1, Ldisplay/vmap/features/TrackPainter;->xy:[I

    aget v1, v1, v0

    sget-object v2, Ldisplay/vmap/features/TrackPainter;->xy:[I

    const/4 v8, 0x1

    aget v2, v2, v8

    sget-object v9, Ldisplay/vmap/features/TrackPainter;->path:Landroid/graphics/Path;

    int-to-float v10, v1

    int-to-float v13, v2

    invoke-virtual {v9, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    sget v9, Ldisplay/vmap/features/TrackPainter;->pathSize:I

    add-int/2addr v9, v8

    sput v9, Ldisplay/vmap/features/TrackPainter;->pathSize:I

    iget-wide v9, v12, Ltypes/GpsVal;->d:J

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    sput v1, Ldisplay/vmap/features/TrackPainter;->lastX:I

    sput v2, Ldisplay/vmap/features/TrackPainter;->lastY:I

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v0, v0, Ltypes/d;->b:F

    sput v0, Ldisplay/vmap/features/TrackPainter;->lastCenterLat:F

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v0, v0, Ltypes/d;->c:F

    sput v0, Ldisplay/vmap/features/TrackPainter;->lastCenterLng:F

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    sget-object v1, Ldisplay/vmap/features/TrackPainter;->worldOfs:[I

    invoke-virtual {v0, v1}, Lvmaps/core/VmpWorld;->a([I)V

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v0}, Lvmaps/core/VmpWorld;->c()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    sget-object v0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_5

    :cond_7
    sget-object v0, Ldisplay/vmap/features/TrackPainter;->trackPaint:Landroid/graphics/Paint;

    sget-object v1, Ldisplay/vmap/features/TrackPainter;->cornerEffect:Landroid/graphics/CornerPathEffect;

    goto :goto_4

    :goto_5
    return-void
.end method
