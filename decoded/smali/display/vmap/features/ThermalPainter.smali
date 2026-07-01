.class public Ldisplay/vmap/features/ThermalPainter;
.super Ljava/lang/Object;


# static fields
.field public static optCirclinkgPath:Z

.field public static optQuadHelpers:Z

.field static paintCircles:Landroid/graphics/Paint;

.field private static path:Landroid/graphics/Path;

.field private static pp:[F

.field static radiusPx:F

.field private static terWorld:Lvmaps/core/VmpWorld;

.field private static trackPaint:Landroid/graphics/Paint;

.field private static xy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ldisplay/vmap/features/ThermalPainter;->xy:[I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Ldisplay/vmap/features/ThermalPainter;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ldisplay/vmap/features/ThermalPainter;->trackPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    sput-boolean v0, Ldisplay/vmap/features/ThermalPainter;->optCirclinkgPath:Z

    sput-boolean v0, Ldisplay/vmap/features/ThermalPainter;->optQuadHelpers:Z

    const/4 v0, 0x0

    sput-object v0, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    return-void

    nop

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

.method public static create(Ldisplay/vmap/ViewVmp;)V
    .locals 2

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Lvmaps/core/VmpWorld;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvmaps/core/VmpWorld;-><init>(Z)V

    sput-object v0, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    iget-object p0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-static {p0}, Ldisplay/vmap/features/ThermalPainter;->setWorld(Lvmaps/core/VmpWorld;)V

    sget-object p0, Ldisplay/vmap/features/ThermalPainter;->trackPaint:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->aD:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p0, Ldisplay/vmap/features/ThermalPainter;->trackPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p0, Ldisplay/vmap/features/ThermalPainter;->trackPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p0, Ldisplay/vmap/features/ThermalPainter;->trackPaint:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Ldisplay/vmap/features/ThermalPainter;->trackPaint:Landroid/graphics/Paint;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object p0, Ldisplay/vmap/features/ThermalPainter;->trackPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object p0, Ldisplay/vmap/features/ThermalPainter;->trackPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/CornerPathEffect;

    sget v1, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    iget v2, v0, Ltypes/GpsVal;->a:F

    iget v0, v0, Ltypes/GpsVal;->b:F

    invoke-virtual {v1, v2, v0}, Lvmaps/core/VmpWorld;->a(FF)V

    invoke-static {}, Ldisplay/vmap/features/ThermalPainter;->zoomCorrection()V

    sget-object v0, Lm/g;->C:Lm/h;

    iget v0, v0, Lm/h;->i:F

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    invoke-virtual {v1}, Lvmaps/core/VmpWorld;->d()F

    move-result v1

    mul-float v0, v0, v1

    sput v0, Ldisplay/vmap/features/ThermalPainter;->radiusPx:F

    invoke-static {p0}, Ldisplay/vmap/features/ThermalPainter;->showTrackPath(Landroid/graphics/Canvas;)V

    sget-boolean v0, Lcom/xcglobe/xclog/l;->aj:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ldisplay/vmap/features/ThermalPainter;->showVarioHelpers(Landroid/graphics/Canvas;)V

    :cond_0
    sget-boolean v0, Ldisplay/vmap/features/ThermalPainter;->optCirclinkgPath:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ldisplay/vmap/features/ThermalPainter;->shovCirclingPath(Landroid/graphics/Canvas;)V

    :cond_1
    sget-boolean v0, Ldisplay/vmap/features/ThermalPainter;->optQuadHelpers:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Ldisplay/vmap/features/ThermalPainter;->showQuadHelpers(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-static {p0}, Ldisplay/vmap/features/ThermalPainter;->showThermal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static drawThermal3d(Landroid/graphics/Canvas;FF)V
    .locals 10

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->aB:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v0, Ldisplay/vmap/features/ThermalPainter;->radiusPx:F

    sget-object v1, Lm/g;->C:Lm/h;

    iget-object v1, v1, Lm/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lm/g;->C:Lm/h;

    iget-object v2, v2, Lm/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/h$a;

    sget-object v2, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    iget v4, v1, Lm/h$a;->a:F

    iget v1, v1, Lm/h$a;->b:F

    sget-object v5, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    invoke-virtual {v2, v4, v1, v5}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    aget v1, v1, v3

    float-to-int v1, v1

    sget-object v2, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v2, v2

    const/4 v4, 0x7

    const/16 v5, 0xfa

    int-to-float v1, v1

    sub-float/2addr v1, p1

    int-to-float v6, v4

    div-float/2addr v1, v6

    int-to-float v2, v2

    sub-float/2addr v2, p2

    div-float/2addr v2, v6

    sget v7, Ldisplay/vmap/features/ThermalPainter;->radiusPx:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    div-float/2addr v7, v6

    move v5, p2

    move v6, v0

    const/16 v8, 0xfa

    move v0, p1

    :goto_1
    if-ge v3, v4, :cond_1

    add-float/2addr v0, v1

    add-float/2addr v5, v2

    sub-float/2addr v6, v7

    add-int/lit8 v8, v8, -0x1f

    sget-object v9, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v9, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v5, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->aD:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v0, Ldisplay/vmap/features/ThermalPainter;->radiusPx:F

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static getIdealKmPerWidthForThermalMode()F
    .locals 4

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    invoke-virtual {v0}, Lvmaps/core/VmpWorld;->c()F

    move-result v0

    sget-object v1, Lm/g;->C:Lm/h;

    iget v1, v1, Lm/h;->i:F

    sget-object v2, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    invoke-virtual {v2}, Lvmaps/core/VmpWorld;->d()F

    move-result v2

    mul-float v1, v1, v2

    sget-boolean v2, Lcom/xcglobe/xclog/l;->aA:Z

    if-eqz v2, :cond_0

    sget-object v2, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    iget v2, v2, Lvmaps/core/VmpWorld;->f:F

    goto :goto_0

    :cond_0
    sget-object v2, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    iget v2, v2, Lvmaps/core/VmpWorld;->g:F

    :goto_0
    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public static setWorld(Lvmaps/core/VmpWorld;)V
    .locals 1

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    invoke-virtual {v0, p0}, Lvmaps/core/VmpWorld;->a(Lvmaps/core/VmpWorld;)V

    invoke-static {}, Ldisplay/vmap/features/ThermalPainter;->getIdealKmPerWidthForThermalMode()F

    move-result p0

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    invoke-virtual {v0, p0}, Lvmaps/core/VmpWorld;->a(F)V

    return-void
.end method

.method private static shovCirclingPath(Landroid/graphics/Canvas;)V
    .locals 4

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->aD:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    sget-object v1, Lm/g;->C:Lm/h;

    iget v1, v1, Lm/h;->f:F

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    sget-object v1, Lm/g;->C:Lm/h;

    iget v1, v1, Lm/h;->g:F

    const/4 v3, 0x1

    aput v1, v0, v3

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    invoke-virtual {v0, v1}, Lvmaps/core/VmpWorld;->b([F)V

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    aget v0, v0, v2

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    aget v1, v1, v3

    sget v2, Ldisplay/vmap/features/ThermalPainter;->radiusPx:F

    sget-object v3, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static showCore(Landroid/graphics/Canvas;)V
    .locals 4

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->aD:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    sget-object v1, Lm/g;->C:Lm/h;

    iget v1, v1, Lm/h;->j:F

    sget-object v2, Lm/g;->C:Lm/h;

    iget v2, v2, Lm/h;->k:F

    sget-object v3, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    invoke-virtual {v0, v1, v2, v3}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget v2, Ldisplay/vmap/features/ThermalPainter;->radiusPx:F

    sget-object v3, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static showQuadHelpers(Landroid/graphics/Canvas;)V
    .locals 9

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget v0, Ldisplay/vmap/features/ThermalPainter;->radiusPx:F

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    sget v1, Ldisplay/vmap/features/ThermalPainter;->radiusPx:F

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    sget-object v2, Lm/g;->C:Lm/h;

    iget v2, v2, Lm/h;->c:F

    sget-object v3, Lm/g;->C:Lm/h;

    iget v3, v3, Lm/h;->d:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    sget-object v5, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    sget-object v6, Lm/g;->C:Lm/h;

    iget-object v6, v6, Lm/h;->n:[F

    aget v6, v6, v4

    sget-object v7, Lm/g;->C:Lm/h;

    iget-object v7, v7, Lm/h;->o:[F

    aget v7, v7, v4

    sget-object v8, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    invoke-virtual {v5, v6, v7, v8}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v5, Lm/g;->C:Lm/h;

    iget-object v5, v5, Lm/h;->p:[F

    aget v5, v5, v4

    mul-float v5, v5, v2

    sget-object v6, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_0

    const v7, -0xffff01

    goto :goto_1

    :cond_0
    const/high16 v7, -0x10000

    :goto_1
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v6, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    const/16 v7, 0x7f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v6, v5, v0

    if-lez v6, :cond_1

    move v5, v0

    :cond_1
    sget-object v6, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    aget v6, v6, v3

    sget-object v7, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    add-float/2addr v5, v1

    sget-object v8, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    invoke-virtual {p0, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private static showThermal(Landroid/graphics/Canvas;)V
    .locals 4

    sget-object v0, Lm/g;->C:Lm/h;

    iget-object v0, v0, Lm/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lm/g;->C:Lm/h;

    invoke-virtual {v0}, Lm/h;->c()Lm/h$a;

    move-result-object v0

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    iget v2, v0, Lm/h$a;->a:F

    iget v0, v0, Lm/h$a;->b:F

    sget-object v3, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    invoke-virtual {v1, v2, v0, v3}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {p0, v0, v1}, Ldisplay/vmap/features/ThermalPainter;->drawThermal3d(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ldisplay/vmap/features/ThermalPainter;->showCore(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private static showTrackPath(Landroid/graphics/Canvas;)V
    .locals 8

    sget-object v0, Lm/g;->h:Le/a;

    invoke-virtual {v0}, Le/a;->b()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lm/g;->C:Lm/h;

    iget v2, v2, Lm/h;->b:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    const/16 v2, 0xa

    :cond_1
    sget-object v3, Ldisplay/vmap/features/ThermalPainter;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    move v3, v2

    move v2, v0

    :goto_0
    if-lez v2, :cond_4

    sget-object v4, Lm/g;->h:Le/a;

    invoke-virtual {v4, v2}, Le/a;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltypes/GpsVal;

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_2

    goto :goto_2

    :cond_2
    sget-object v5, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    iget v6, v4, Ltypes/GpsVal;->a:F

    iget v4, v4, Ltypes/GpsVal;->b:F

    sget-object v7, Ldisplay/vmap/features/ThermalPainter;->xy:[I

    invoke-virtual {v5, v6, v4, v7}, Lvmaps/core/VmpWorld;->a(FF[I)V

    sget-object v4, Ldisplay/vmap/features/ThermalPainter;->xy:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    sget-object v5, Ldisplay/vmap/features/ThermalPainter;->xy:[I

    aget v5, v5, v1

    int-to-float v5, v5

    if-ne v2, v0, :cond_3

    sget-object v6, Ldisplay/vmap/features/ThermalPainter;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_3
    sget-object v6, Ldisplay/vmap/features/ThermalPainter;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->path:Landroid/graphics/Path;

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->trackPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static showVarioHelpers(Landroid/graphics/Canvas;)V
    .locals 10

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v0, Lm/g;->C:Lm/h;

    iget v0, v0, Lm/h;->b:I

    sget-object v1, Lm/g;->C:Lm/h;

    iget v1, v1, Lm/h;->d:F

    sget-object v2, Lm/g;->C:Lm/h;

    iget v2, v2, Lm/h;->e:F

    sget v3, Ldisplay/vmap/features/ThermalPainter;->radiusPx:F

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    sget v4, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    sget v3, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    :cond_0
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-gez v5, :cond_1

    const/4 v2, 0x0

    :cond_1
    cmpl-float v5, v1, v2

    if-lez v5, :cond_4

    sget-object v5, Lm/g;->C:Lm/h;

    invoke-virtual {v5}, Lm/h;->d()V

    :cond_2
    sget-object v5, Lm/g;->C:Lm/h;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lm/h;->a(I)Lm/h$b;

    move-result-object v5

    if-eqz v5, :cond_4

    iget v7, v5, Lm/h$b;->d:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_3

    sget-object v7, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    iget v8, v5, Lm/h$b;->a:F

    const/4 v9, 0x0

    aput v8, v7, v9

    sget-object v7, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    iget v8, v5, Lm/h$b;->b:F

    aput v8, v7, v6

    sget-object v7, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    sget-object v8, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    invoke-virtual {v7, v8}, Lvmaps/core/VmpWorld;->b([F)V

    iget v5, v5, Lm/h$b;->d:F

    sub-float/2addr v5, v2

    mul-float v5, v5, v3

    div-float/2addr v5, v1

    sget-object v7, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    aget v7, v7, v9

    sget-object v8, Ldisplay/vmap/features/ThermalPainter;->pp:[F

    aget v6, v8, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget-object v8, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    invoke-virtual {p0, v7, v6, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    :cond_4
    sget-object p0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p0, Ldisplay/vmap/features/ThermalPainter;->paintCircles:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private static zoomCorrection()V
    .locals 3

    sget-object v0, Lm/g;->C:Lm/h;

    iget v0, v0, Lm/h;->i:F

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    invoke-virtual {v1}, Lvmaps/core/VmpWorld;->d()F

    move-result v1

    mul-float v0, v0, v1

    sget-boolean v1, Lcom/xcglobe/xclog/l;->aA:Z

    if-eqz v1, :cond_0

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    iget v1, v1, Lvmaps/core/VmpWorld;->f:F

    goto :goto_0

    :cond_0
    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    iget v1, v1, Lvmaps/core/VmpWorld;->g:F

    :goto_0
    const/high16 v2, 0x40a00000    # 5.0f

    div-float v2, v1, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_1

    const/high16 v2, 0x41400000    # 12.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    invoke-static {}, Ldisplay/vmap/features/ThermalPainter;->getIdealKmPerWidthForThermalMode()F

    move-result v0

    sget-object v1, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    sget-object v2, Ldisplay/vmap/features/ThermalPainter;->terWorld:Lvmaps/core/VmpWorld;

    invoke-virtual {v2}, Lvmaps/core/VmpWorld;->c()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lvmaps/core/VmpWorld;->a(F)V

    :cond_2
    return-void
.end method
