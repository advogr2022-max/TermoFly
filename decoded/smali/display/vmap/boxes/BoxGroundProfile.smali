.class public Ldisplay/vmap/boxes/BoxGroundProfile;
.super Ldisplay/vmap/boxes/InfoBox;


# static fields
.field static final ELEV_STEP_HALF:S = 0x32s

.field public static behindPix:I = 0x0

.field private static defaultCustomPosition:Z = false

.field static disabled:Z = false

.field public static recHeightOnCustomPosition:I


# instance fields
.field aPath:Landroid/graphics/Path;

.field clipRec:Landroid/graphics/Rect;

.field gPath:Landroid/graphics/Path;

.field gliderRec:Landroid/graphics/Rect;

.field height:I

.field maxAlt:I

.field minAlt:I

.field paintDashed:Landroid/graphics/Paint;

.field paintGround:Landroid/graphics/Paint;

.field paintGroundStroke:Landroid/graphics/Paint;

.field private point2PixDistance:F

.field private point2kmDist:F

.field private predictAir:[S

.field private predictAirSize:I

.field private predictGround:[S

.field private predictGroundMax:I

.field private predictGroundMin:I

.field private predictGroundSize:I

.field prevDirection:I

.field prevKmPerWidth:I

.field prevLat:F

.field prevLng:F

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->gliderRec:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->clipRec:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->gPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->aPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    iput-object v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    const/4 v1, 0x1

    iput-boolean v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->customWidth:Z

    invoke-static {}, Ldisplay/vmap/ViewVmp;->isRotating()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ldisplay/vmap/ViewVmp;->isThermailing()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Ldisplay/vmap/boxes/BoxGroundProfile;->defaultCustomPosition:Z

    iput-boolean v2, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->customPosition:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->customPosition:Z

    :goto_0
    sget v2, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit16 v2, v2, 0x1d6

    add-int/2addr v2, v1

    new-instance v3, Landroid/graphics/CornerPathEffect;

    sget v4, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit8 v4, v4, 0x32

    int-to-float v4, v4

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGround:Landroid/graphics/Paint;

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGround:Landroid/graphics/Paint;

    sget v5, Lcom/xcglobe/xclog/l;->v:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGround:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGround:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGround:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGround:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGround:Landroid/graphics/Paint;

    const/16 v5, 0xbe

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGroundStroke:Landroid/graphics/Paint;

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGroundStroke:Landroid/graphics/Paint;

    sget v5, Lcom/xcglobe/xclog/l;->s:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGroundStroke:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGroundStroke:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGroundStroke:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGroundStroke:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGroundStroke:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGroundStroke:Landroid/graphics/Paint;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintDashed:Landroid/graphics/Paint;

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintDashed:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget v3, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit8 v3, v3, 0x30

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintDashed:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v7, v6, [F

    int-to-float v8, v3

    aput v8, v7, v0

    div-int/2addr v3, v6

    int-to-float v0, v3

    aput v0, v7, v1

    invoke-direct {v5, v7, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintDashed:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintDashed:Landroid/graphics/Paint;

    mul-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintDashed:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    sput v0, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    sget-object v0, Ldisplay/vmap/boxes/BoxGroundProfile;->world:Lvmaps/core/VmpWorld;

    invoke-static {v0}, Ldisplay/vmap/features/RingPainter;->setPosition(Lvmaps/core/VmpWorld;)I

    move-result v0

    div-int/2addr v0, v6

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->customPosition:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    iget v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    sput v0, Ldisplay/vmap/boxes/BoxGroundProfile;->recHeightOnCustomPosition:I

    :cond_1
    return-void
.end method

.method private createPredict(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v1

    iget v2, v1, Ltypes/GpsVal;->a:F

    iget v1, v1, Ltypes/GpsVal;->b:F

    sget-object v3, Ldisplay/vmap/boxes/BoxGroundProfile;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v3}, Lvmaps/core/VmpWorld;->c()F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGroundSize:I

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x2

    if-le v4, v6, :cond_0

    iget v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevDirection:I

    sget v7, Lm/g;->m:I

    if-ne v4, v7, :cond_0

    iget v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevKmPerWidth:I

    if-ne v3, v4, :cond_0

    sget-object v4, Ldisplay/vmap/boxes/BoxGroundProfile;->world:Lvmaps/core/VmpWorld;

    iget-object v4, v4, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v7, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevLat:F

    iget v8, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevLng:F

    invoke-virtual {v4, v2, v1, v7, v8}, Ltypes/d;->a(FFFF)F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    return-void

    :cond_0
    iput v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevKmPerWidth:I

    iput v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevLat:F

    iput v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevLng:F

    iget v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevKmPerWidth:I

    int-to-float v3, v3

    invoke-static {v3}, Lvmaps/d;->a(F)V

    sget v3, Lm/g;->m:I

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sget v3, Lm/g;->m:I

    int-to-float v5, v3

    :goto_0
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v5, v3

    if-nez v3, :cond_2

    const v5, 0x4334199a    # 180.1f

    :cond_2
    float-to-double v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    sget v5, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->point2PixDistance:F

    iget v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->point2PixDistance:F

    float-to-double v4, v4

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v9

    double-to-float v3, v4

    iget v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->point2PixDistance:F

    float-to-double v4, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v7

    double-to-float v4, v4

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    sget-object v7, Ldisplay/vmap/boxes/BoxGroundProfile;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v7, v3, v4, v5}, Lvmaps/core/VmpWorld;->a(FF[F)V

    const/4 v3, 0x0

    aget v4, v5, v3

    add-float/2addr v4, v1

    const/4 v7, 0x1

    aget v5, v5, v7

    add-float/2addr v5, v2

    sub-float v7, v2, v5

    sub-float v8, v1, v4

    sget-object v9, Ldisplay/vmap/boxes/BoxGroundProfile;->world:Lvmaps/core/VmpWorld;

    iget-object v9, v9, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    invoke-virtual {v9, v2, v1, v5, v4}, Ltypes/d;->a(FFFF)F

    move-result v4

    iput v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->point2kmDist:F

    div-float/2addr v7, v8

    iget v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->point2PixDistance:F

    div-float/2addr v8, v4

    mul-float v4, v7, v1

    sub-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v6, [B

    fill-array-data v5, :array_1

    sget v6, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    neg-int v6, v6

    iget v9, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    add-int/2addr v9, v6

    const/4 v3, -0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_1
    if-ge v6, v9, :cond_d

    int-to-float v10, v6

    move/from16 v16, v9

    mul-float v9, v10, v4

    float-to-int v9, v9

    sget v17, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    add-int v9, v9, v17

    mul-float v10, v10, v8

    sub-float v10, v1, v10

    mul-float v17, v7, v10

    add-float v4, v17, v2

    move/from16 v18, v1

    invoke-static {v4, v10}, Lvmaps/d;->b(FF)I

    move-result v1

    int-to-short v1, v1

    move/from16 v19, v2

    sget-object v2, Lvmaps/a;->b:Ltypes/a;

    invoke-virtual {v2, v4, v10, v5}, Ltypes/a;->a(FF[B)B

    move-result v2

    if-eq v2, v3, :cond_5

    if-nez v14, :cond_5

    if-lez v6, :cond_3

    add-int/lit8 v14, v14, 0x1

    :cond_3
    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    iget-object v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictAir:[S

    add-int/lit8 v10, v13, 0x1

    int-to-short v4, v9

    aput-short v4, v3, v13

    iget-object v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictAir:[S

    add-int/lit8 v13, v10, 0x1

    int-to-short v4, v2

    aput-short v4, v3, v10

    :cond_4
    move v3, v2

    :cond_5
    if-eqz v1, :cond_c

    if-nez v11, :cond_6

    iget-object v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v4, v11, 0x1

    const/16 v10, -0xa

    aput-short v10, v2, v11

    iget-object v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v11, v4, 0x1

    aput-short v1, v2, v4

    :cond_6
    if-le v1, v12, :cond_7

    sub-int v2, v9, v15

    const/4 v4, 0x4

    if-le v2, v4, :cond_9

    iget-object v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v10, v11, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v15, v2

    int-to-short v2, v15

    aput-short v2, v4, v11

    iget-object v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v4, v10, 0x1

    add-int/lit8 v12, v12, 0x32

    int-to-short v11, v12

    aput-short v11, v2, v10

    iget-object v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v10, v4, 0x1

    int-to-short v11, v9

    aput-short v11, v2, v4

    iget-object v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v4, v10, 0x1

    aput-short v1, v2, v10

    move v11, v4

    goto :goto_2

    :cond_7
    if-ge v1, v12, :cond_9

    sub-int v2, v9, v15

    const/16 v4, 0x28

    if-le v2, v4, :cond_8

    iget-object v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v10, v11, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v15, v2

    int-to-short v2, v15

    aput-short v2, v4, v11

    iget-object v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v4, v12, 0x32

    int-to-short v4, v4

    aput-short v4, v2, v10

    :cond_8
    iget-object v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v4, v11, 0x1

    add-int/lit8 v10, v9, -0x1

    int-to-short v10, v10

    aput-short v10, v2, v11

    iget-object v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v11, v4, 0x1

    aput-short v12, v2, v4

    :goto_2
    move v15, v9

    :cond_9
    iget v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGroundMin:I

    if-ge v1, v2, :cond_a

    iput v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGroundMin:I

    :cond_a
    iget v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGroundMax:I

    if-le v1, v2, :cond_b

    iput v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGroundMax:I

    :cond_b
    move v12, v1

    :cond_c
    add-int/lit8 v6, v6, 0x1

    move/from16 v9, v16

    move/from16 v1, v18

    move/from16 v2, v19

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :cond_d
    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v2, v11, 0x1

    iget v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    add-int/lit8 v3, v3, 0xa

    int-to-short v3, v3

    aput-short v3, v1, v11

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v3, v2, 0x1

    aput-short v12, v1, v2

    iput v13, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictAirSize:I

    iput v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGroundSize:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private drawPredict(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGroundSize:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    iget v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGroundMin:I

    iput v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->minAlt:I

    iget v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGroundMax:I

    iput v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->maxAlt:I

    sget v3, Lm/g;->s:I

    add-int/lit16 v3, v3, 0x190

    iget v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->maxAlt:I

    if-le v3, v4, :cond_1

    sget v3, Lm/g;->s:I

    add-int/lit16 v3, v3, 0x190

    iput v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->maxAlt:I

    :cond_1
    sget v3, Lm/g;->s:I

    iget v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->minAlt:I

    if-ge v3, v4, :cond_2

    sget v3, Lm/g;->s:I

    iput v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->minAlt:I

    :cond_2
    iget v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->minAlt:I

    add-int/lit8 v3, v3, -0x64

    iput v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->minAlt:I

    iget v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->maxAlt:I

    add-int/lit8 v3, v3, 0x64

    iput v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->maxAlt:I

    iget v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    sget v4, Ldisplay/vmap/boxes/BoxGroundProfile;->MARGIN_TOP:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->maxAlt:I

    iget v5, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->minAlt:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    add-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    move v10, v3

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :goto_0
    iget-object v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->gPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    iget v11, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->minAlt:I

    iget v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    iget-object v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    const/4 v12, 0x1

    aget-short v4, v4, v12

    sub-int/2addr v4, v11

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    sget v13, Ldisplay/vmap/boxes/BoxGroundProfile;->MARGIN_TOP:I

    add-int/2addr v4, v13

    sub-int/2addr v3, v4

    iget-object v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->gPath:Landroid/graphics/Path;

    int-to-float v13, v8

    add-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v4, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    iget-object v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    aget-short v4, v4, v3

    iget-object v13, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    add-int/lit8 v14, v3, 0x1

    aget-short v13, v13, v14

    iget v14, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    sub-int/2addr v13, v11

    int-to-float v13, v13

    mul-float v13, v13, v10

    float-to-int v13, v13

    sget v15, Ldisplay/vmap/boxes/BoxGroundProfile;->MARGIN_TOP:I

    add-int/2addr v13, v15

    sub-int/2addr v14, v13

    iget-object v13, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->gPath:Landroid/graphics/Path;

    add-int v15, v8, v4

    int-to-float v15, v15

    add-int/2addr v14, v9

    int-to-float v14, v14

    invoke-virtual {v13, v15, v14}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_4
    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->gPath:Landroid/graphics/Path;

    add-int v3, v4, v8

    int-to-float v3, v3

    iget v13, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    sget v14, Ldisplay/vmap/boxes/BoxGroundProfile;->MARGIN_TOP:I

    add-int/2addr v13, v14

    add-int/2addr v13, v9

    int-to-float v13, v13

    invoke-virtual {v1, v3, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->gPath:Landroid/graphics/Path;

    add-int/lit8 v3, v8, -0xa

    int-to-float v3, v3

    iget v13, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    sget v14, Ldisplay/vmap/boxes/BoxGroundProfile;->MARGIN_TOP:I

    add-int/2addr v13, v14

    add-int/2addr v13, v9

    int-to-float v13, v13

    invoke-virtual {v1, v3, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->gPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->gPath:Landroid/graphics/Path;

    iget-object v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGround:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->gPath:Landroid/graphics/Path;

    iget-object v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintGroundStroke:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictAirSize:I

    if-le v1, v12, :cond_8

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->aPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->aPath:Landroid/graphics/Path;

    add-int/lit8 v3, v8, 0x0

    int-to-float v3, v3

    add-int/lit8 v12, v9, -0x1

    int-to-float v12, v12

    invoke-virtual {v1, v3, v12}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, -0x1

    const/4 v3, -0x1

    :goto_2
    iget v13, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictAirSize:I

    if-ge v5, v13, :cond_6

    iget-object v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictAir:[S

    aget-short v4, v4, v5

    iget-object v13, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictAir:[S

    add-int/lit8 v14, v5, 0x1

    aget-short v13, v13, v14

    if-eq v13, v1, :cond_5

    iget-object v14, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->aPath:Landroid/graphics/Path;

    add-int v15, v4, v8

    int-to-float v15, v15

    add-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v14, v15, v3}, Landroid/graphics/Path;->lineTo(FF)V

    mul-int/lit8 v13, v13, 0x32

    iget v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    sub-int/2addr v13, v11

    int-to-float v13, v13

    mul-float v13, v13, v10

    float-to-int v13, v13

    sget v14, Ldisplay/vmap/boxes/BoxGroundProfile;->MARGIN_TOP:I

    add-int/2addr v13, v14

    sub-int/2addr v3, v13

    iget-object v13, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->aPath:Landroid/graphics/Path;

    add-int v14, v3, v9

    int-to-float v14, v14

    invoke-virtual {v13, v15, v14}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_5
    iget-object v13, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->aPath:Landroid/graphics/Path;

    add-int v14, v4, v8

    int-to-float v14, v14

    add-int v15, v3, v9

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_6
    sget v1, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v4, v1, :cond_7

    sget v1, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    mul-int/lit8 v4, v1, 0x2

    :cond_7
    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->aPath:Landroid/graphics/Path;

    sget v5, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    add-int/2addr v4, v5

    add-int/2addr v4, v8

    int-to-float v4, v4

    add-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->aPath:Landroid/graphics/Path;

    const/high16 v3, 0x3f800000    # 1.0f

    sget v5, Lcom/xcglobe/xclog/l;->j:I

    invoke-static {v3, v5}, Lcom/xcglobe/xclog/g;->a(FI)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->aPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v12}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->aPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    sget v1, Lcom/xcglobe/xclog/l;->n:I

    invoke-static {v6, v1}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v1

    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->aPath:Landroid/graphics/Path;

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    iget v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    sget v3, Lm/g;->s:I

    sub-int/2addr v3, v11

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    sget v4, Ldisplay/vmap/boxes/BoxGroundProfile;->MARGIN_TOP:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    sget v12, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    sget v3, Lcom/xcglobe/xclog/l;->c:I

    iget-object v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sget v5, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v4, v4

    add-int/2addr v1, v9

    div-int/2addr v3, v2

    sub-int v2, v1, v3

    int-to-float v3, v2

    iget-object v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v5, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    int-to-float v13, v1

    sget v1, Lcom/xcglobe/xclog/l;->o:I

    invoke-static {v6, v1}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move v2, v4

    move v4, v5

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lm/g;->k()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v2, v4

    if-lez v6, :cond_9

    iget v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->point2kmDist:F

    div-float/2addr v2, v1

    sget v1, Lm/g;->s:I

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    sub-int/2addr v1, v11

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    sget v3, Ldisplay/vmap/boxes/BoxGroundProfile;->MARGIN_TOP:I

    add-int/2addr v1, v3

    sub-int/2addr v2, v1

    iget v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->point2PixDistance:F

    float-to-int v1, v1

    add-int/2addr v1, v12

    add-int/2addr v12, v8

    int-to-float v3, v12

    add-int/2addr v1, v8

    int-to-float v4, v1

    add-int/2addr v2, v9

    int-to-float v5, v2

    iget-object v6, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->paintDashed:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_9
    iget v1, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    iget v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->maxAlt:I

    sub-int/2addr v2, v11

    int-to-float v2, v2

    mul-float v10, v10, v2

    float-to-int v2, v10

    sget v3, Ldisplay/vmap/boxes/BoxGroundProfile;->MARGIN_TOP:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    sget v2, Lcom/xcglobe/xclog/l;->c:I

    add-int/2addr v1, v2

    iget-object v2, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->clipRec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Ldisplay/vmap/boxes/BoxGroundProfile;->maxAlt:I

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ltypes/q;->e(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ltypes/q;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v2, v2

    add-int/2addr v1, v9

    int-to-float v1, v1

    invoke-static {}, Lcom/xcglobe/xclog/g;->d()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v7, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private fixSize()V
    .locals 3

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->customPosition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lm/g;->x:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    sget v0, Lm/g;->k:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Ldisplay/vmap/boxes/BoxGroundProfile;->createPredict(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->clipRec:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-direct {p0, p1}, Ldisplay/vmap/boxes/BoxGroundProfile;->drawPredict(Landroid/graphics/Canvas;)V

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initSize(F)V
    .locals 0

    invoke-super {p0, p1}, Ldisplay/vmap/boxes/InfoBox;->initSize(F)V

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxGroundProfile;->fixSize()V

    return-void
.end method

.method public isInside(II)Z
    .locals 1

    sget-boolean v0, Ldisplay/vmap/boxes/BoxGroundProfile;->disabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isTimeRotatable()Z
    .locals 1

    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->customPosition:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onClick()Z
    .locals 3

    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->customPosition:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Ldisplay/vmap/ViewVmp;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldisplay/vmap/ViewVmp;->isThermailing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->customPosition:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-static {}, Ldisplay/vmap/ViewVmp;->isThermailing()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    sget-boolean v2, Ldisplay/vmap/boxes/BoxGroundProfile;->defaultCustomPosition:Z

    if-ne v0, v2, :cond_2

    iget-boolean v2, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->customPosition:Z

    if-eq v0, v2, :cond_4

    :cond_2
    sput-boolean v0, Ldisplay/vmap/boxes/BoxGroundProfile;->defaultCustomPosition:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ldisplay/vmap/ViewVmp;->isRotating()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x40

    invoke-static {v0}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    :cond_3
    invoke-static {v1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    :cond_4
    return v1
.end method

.method public onFinalized(Ldisplay/vmap/boxes/LayoutManager;)V
    .locals 5

    sget-object p1, Ldisplay/vmap/boxes/BoxGroundProfile;->world:Lvmaps/core/VmpWorld;

    invoke-static {p1}, Ldisplay/vmap/features/RingPainter;->setPosition(Lvmaps/core/VmpWorld;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxGroundProfile;->fixSize()V

    iget-boolean p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->customPosition:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Ldisplay/vmap/features/RingPainter;->getCenter()[I

    move-result-object p1

    aget v1, p1, v0

    sget-object v2, Ldisplay/vmap/boxes/BoxGroundProfile;->world:Lvmaps/core/VmpWorld;

    iget v2, v2, Lvmaps/core/VmpWorld;->f:F

    sget v3, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconSize:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {}, Ldisplay/vmap/features/RingPainter;->getRadius()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    sget v1, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    add-int/2addr v3, v1

    iput v3, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    iget-object v2, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    aget p1, p1, v0

    sget v3, Ldisplay/vmap/boxes/BoxGroundProfile;->behindPix:I

    sub-int/2addr p1, v3

    sget v3, Ldisplay/vmap/features/StatusMsg;->height:I

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    add-int/2addr v1, p1

    add-int/2addr v2, v3

    invoke-virtual {v4, p1, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-object p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    iget-object p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->height:I

    iget p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x8

    new-array p1, p1, [S

    iput-object p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGround:[S

    iget p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x8

    new-array p1, p1, [S

    iput-object p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictAir:[S

    invoke-virtual {p0}, Ldisplay/vmap/boxes/BoxGroundProfile;->resetAltitude()V

    const/4 p1, 0x0

    iput p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevLng:F

    iput p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevLat:F

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevDirection:I

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->prevKmPerWidth:I

    iget-object p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->clipRec:Landroid/graphics/Rect;

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->rec:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->clipRec:Landroid/graphics/Rect;

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->clipRec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->width:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public onModeChanged(ZZ)V
    .locals 2

    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->customPosition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    sget-boolean p1, Ldisplay/vmap/boxes/BoxGroundProfile;->defaultCustomPosition:Z

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    invoke-static {p1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    :cond_2
    return-void
.end method

.method public resetAltitude()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->maxAlt:I

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->minAlt:I

    const/16 v0, 0x270f

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGroundMin:I

    const/16 v0, -0x270f

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundProfile;->predictGroundMax:I

    return-void
.end method

.method public update(Landroid/graphics/Canvas;)V
    .locals 1

    sget-boolean v0, Ldisplay/vmap/boxes/BoxGroundProfile;->disabled:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ldisplay/vmap/boxes/InfoBox;->update(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
