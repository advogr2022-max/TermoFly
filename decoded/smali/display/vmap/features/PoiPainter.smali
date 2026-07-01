.class public Ldisplay/vmap/features/PoiPainter;
.super Ljava/lang/Object;


# static fields
.field private static bmpPoiMap:Landroid/graphics/Bitmap;

.field private static cfgEnabled:Z

.field private static goalOnFirstPosition:Z

.field private static goalVisible:Z

.field static paintOutline:Landroid/graphics/Paint;

.field private static paintThermal:Landroid/graphics/Paint;

.field private static poiList:[Ltypes/PoiPoint;

.field private static poiMask:[B

.field private static poiMaskBlockHeight:I

.field private static poiMaskBlockWidth:I

.field private static poiMaskHeight:I

.field private static poiMaskSize:I

.field private static poiMaskWidth:I

.field private static poiRecDst:Landroid/graphics/Rect;

.field private static poiRecSrc:[Landroid/graphics/Rect;

.field private static pts:[F

.field private static view:Ldisplay/vmap/ViewVmp;

.field private static world:Lvmaps/core/VmpWorld;

.field private static xy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Ldisplay/vmap/features/PoiPainter;->pts:[F

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ldisplay/vmap/features/PoiPainter;->xy:[I

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    sput-object v0, Ldisplay/vmap/features/PoiPainter;->poiRecSrc:[Landroid/graphics/Rect;

    const/4 v0, 0x1

    sput-boolean v0, Ldisplay/vmap/features/PoiPainter;->cfgEnabled:Z

    const/4 v0, 0x0

    sput-boolean v0, Ldisplay/vmap/features/PoiPainter;->goalVisible:Z

    sput-boolean v0, Ldisplay/vmap/features/PoiPainter;->goalOnFirstPosition:Z

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
    .locals 0

    sput-object p0, Ldisplay/vmap/features/PoiPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object p0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sput-object p0, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    sget-object p0, Ldisplay/vmap/features/PoiPainter;->bmpPoiMap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    invoke-static {}, Ldisplay/vmap/features/PoiPainter;->createOnce()V

    :cond_0
    return-void
.end method

.method private static createOnce()V
    .locals 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Ldisplay/vmap/features/PoiPainter;->poiRecDst:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ldisplay/vmap/features/PoiPainter;->paintOutline:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ldisplay/vmap/features/PoiPainter;->paintThermal:Landroid/graphics/Paint;

    const/4 v0, 0x0

    new-array v1, v0, [Ltypes/PoiPoint;

    sput-object v1, Ldisplay/vmap/features/PoiPainter;->poiList:[Ltypes/PoiPoint;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Ldisplay/vmap/features/PoiPainter;->bmpPoiMap:Landroid/graphics/Bitmap;

    sget-object v1, Ldisplay/vmap/features/PoiPainter;->bmpPoiMap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x4

    div-int/2addr v1, v2

    sget-object v3, Ldisplay/vmap/features/PoiPainter;->bmpPoiMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    sget-object v5, Ldisplay/vmap/features/PoiPainter;->poiRecSrc:[Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    mul-int v7, v4, v1

    add-int/lit8 v8, v4, 0x1

    mul-int v9, v8, v1

    invoke-direct {v6, v7, v0, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v5, v4

    move v4, v8

    goto :goto_0

    :cond_0
    sget-object v1, Ldisplay/vmap/features/PoiPainter;->paintThermal:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Ldisplay/vmap/features/PoiPainter;->paintThermal:Landroid/graphics/Paint;

    sget v2, Lcom/xcglobe/xclog/l;->j:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Ldisplay/vmap/features/PoiPainter;->paintThermal:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v1, Ldisplay/vmap/features/PoiPainter;->paintThermal:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Ldisplay/vmap/features/PoiPainter;->paintThermal:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    sget-object v1, Ldisplay/vmap/features/PoiPainter;->paintOutline:Landroid/graphics/Paint;

    invoke-static {}, Lcom/xcglobe/xclog/g;->d()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    sget-object v1, Ldisplay/vmap/features/PoiPainter;->paintOutline:Landroid/graphics/Paint;

    const-string v2, "#f0fff0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Ldisplay/vmap/features/PoiPainter;->paintOutline:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Ldisplay/vmap/features/PoiPainter;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Ldisplay/vmap/features/PoiPainter;->paintOutline:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public static drawPoi(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    sget-boolean v1, Ldisplay/vmap/features/PoiPainter;->cfgEnabled:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    iget v1, v1, Lvmaps/core/VmpWorld;->f:F

    float-to-int v1, v1

    sget-object v2, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    iget v2, v2, Lvmaps/core/VmpWorld;->g:F

    float-to-int v2, v2

    sget v3, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v3, v3

    sget v4, Lcom/xcglobe/xclog/l;->t:I

    invoke-static {v3, v4}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v3

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->poiList:[Ltypes/PoiPoint;

    array-length v4, v4

    sget v5, Lcom/xcglobe/xclog/l;->c:I

    const/4 v6, 0x2

    div-int/2addr v5, v6

    int-to-float v5, v5

    sget v7, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v7, v7, 0x8

    sget-object v8, Ldisplay/vmap/features/PoiPainter;->bmpPoiMap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    sget-object v9, Ldisplay/vmap/features/PoiPainter;->bmpPoiMap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v10}, Lvmaps/core/VmpWorld;->c()F

    move-result v10

    const/high16 v11, 0x41900000    # 18.0f

    const/high16 v12, 0x40000000    # 2.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_1

    div-float/2addr v5, v12

    :cond_1
    const/high16 v11, 0x41c80000    # 25.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_2

    div-float/2addr v5, v12

    :cond_2
    const/high16 v11, 0x42000000    # 32.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    div-float/2addr v5, v12

    :cond_3
    sget-object v10, Ltypes/f;->a:Ltypes/PoiPoint;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_4

    sget-boolean v10, Ldisplay/vmap/features/PoiPainter;->goalOnFirstPosition:Z

    if-eqz v10, :cond_4

    sget-object v10, Ldisplay/vmap/features/PoiPainter;->pts:[F

    sget-object v14, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v14, v14, Ltypes/PoiPoint;->i:F

    aput v14, v10, v12

    sget-object v10, Ldisplay/vmap/features/PoiPainter;->pts:[F

    sget-object v14, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v14, v14, Ltypes/PoiPoint;->j:F

    aput v14, v10, v13

    sget-object v10, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    sget-object v14, Ldisplay/vmap/features/PoiPainter;->pts:[F

    invoke-virtual {v10, v14}, Lvmaps/core/VmpWorld;->b([F)V

    sget-object v10, Ldisplay/vmap/features/PoiPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v10, v10, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v14, Ldisplay/vmap/features/PoiPainter;->pts:[F

    invoke-virtual {v10, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v10, Ldisplay/vmap/features/PoiPainter;->pts:[F

    aget v10, v10, v12

    float-to-int v10, v10

    sget-object v14, Ldisplay/vmap/features/PoiPainter;->pts:[F

    aget v14, v14, v13

    float-to-int v14, v14

    sget-object v15, Ldisplay/vmap/features/RingPainter;->bmpGoal:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    div-int/2addr v15, v6

    int-to-float v15, v15

    sget-object v13, Lcom/xcglobe/xclog/e;->a:Landroid/graphics/Bitmap;

    int-to-float v10, v10

    sub-float/2addr v10, v15

    int-to-float v14, v14

    sub-float/2addr v14, v15

    invoke-virtual {v0, v13, v10, v14, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    sput-boolean v12, Ldisplay/vmap/features/PoiPainter;->goalVisible:Z

    new-array v10, v6, [F

    fill-array-data v10, :array_0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v4, :cond_9

    sget-object v14, Ldisplay/vmap/features/PoiPainter;->poiList:[Ltypes/PoiPoint;

    aget-object v14, v14, v13

    iget v15, v14, Ltypes/PoiPoint;->i:F

    aput v15, v10, v12

    iget v15, v14, Ltypes/PoiPoint;->j:F

    const/16 v16, 0x1

    aput v15, v10, v16

    sget-object v15, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v15, v10}, Lvmaps/core/VmpWorld;->b([F)V

    sget-object v15, Ldisplay/vmap/features/PoiPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v15, v15, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v15, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v15, v10, v12

    float-to-int v15, v15

    aget v6, v10, v16

    float-to-int v6, v6

    if-lez v15, :cond_7

    if-ge v15, v1, :cond_7

    if-lez v6, :cond_7

    if-ge v6, v2, :cond_7

    iget-char v12, v14, Ltypes/PoiPoint;->m:C

    const/16 v11, 0x6c

    if-eq v12, v11, :cond_6

    const/16 v11, 0x77

    if-eq v12, v11, :cond_5

    packed-switch v12, :pswitch_data_0

    const/4 v11, 0x0

    goto :goto_1

    :pswitch_0
    int-to-float v11, v15

    int-to-float v6, v6

    sget-object v12, Ldisplay/vmap/features/PoiPainter;->paintThermal:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v6, v5, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v7

    const/4 v1, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :pswitch_1
    const/4 v11, 0x2

    goto :goto_1

    :cond_5
    const/4 v11, 0x3

    goto :goto_1

    :cond_6
    const/4 v11, 0x1

    :goto_1
    int-to-float v12, v15

    move/from16 v17, v1

    int-to-float v1, v6

    move/from16 v18, v2

    int-to-float v2, v7

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    div-int/lit8 v2, v9, 0x8

    sub-int v2, v9, v2

    const/4 v12, 0x1

    sub-int/2addr v2, v12

    sub-int/2addr v6, v2

    div-int/lit8 v2, v8, 0x2

    sub-int v12, v15, v2

    move/from16 v19, v4

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->poiRecDst:Landroid/graphics/Rect;

    move/from16 v20, v5

    add-int v5, v12, v8

    move/from16 v21, v7

    add-int v7, v6, v9

    invoke-virtual {v4, v12, v6, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->bmpPoiMap:Landroid/graphics/Bitmap;

    sget-object v5, Ldisplay/vmap/features/PoiPainter;->poiRecSrc:[Landroid/graphics/Rect;

    aget-object v5, v5, v11

    sget-object v6, Ldisplay/vmap/features/PoiPainter;->poiRecDst:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/2addr v15, v2

    iget-object v2, v14, Ltypes/PoiPoint;->l:Ljava/lang/String;

    int-to-float v4, v15

    sget-object v5, Ldisplay/vmap/features/PoiPainter;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v14, Ltypes/PoiPoint;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-nez v13, :cond_8

    sget-boolean v1, Ldisplay/vmap/features/PoiPainter;->goalOnFirstPosition:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    sput-boolean v1, Ldisplay/vmap/features/PoiPainter;->goalVisible:Z

    goto :goto_2

    :cond_7
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v7

    move-object v7, v11

    :cond_8
    const/4 v1, 0x1

    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object v11, v7

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v7, v21

    const/4 v6, 0x2

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static isGoalVisible()Z
    .locals 1

    sget-boolean v0, Ldisplay/vmap/features/PoiPainter;->goalVisible:Z

    return v0
.end method

.method public static reloadLocalPoints()V
    .locals 12

    sget-object v0, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    sget-object v1, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    iget-object v1, v1, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v1, v1, Ltypes/g;->a:F

    sget-object v2, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    iget-object v2, v2, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v2, v2, Ltypes/g;->c:F

    sget-object v3, Ldisplay/vmap/features/PoiPainter;->xy:[I

    invoke-virtual {v0, v1, v2, v3}, Lvmaps/core/VmpWorld;->a(FF[I)V

    sget-object v0, Ldisplay/vmap/features/PoiPainter;->xy:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v2, Ldisplay/vmap/features/PoiPainter;->xy:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    sget-object v5, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    iget-object v5, v5, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v5, v5, Ltypes/g;->b:F

    sget-object v6, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    iget-object v6, v6, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v6, v6, Ltypes/g;->d:F

    sget-object v7, Ldisplay/vmap/features/PoiPainter;->xy:[I

    invoke-virtual {v4, v5, v6, v7}, Lvmaps/core/VmpWorld;->a(FF[I)V

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->xy:[I

    aget v4, v4, v1

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->xy:[I

    aget v4, v4, v3

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v4, Lcom/xcglobe/xclog/l;->d:I

    mul-int/lit8 v4, v4, 0xa

    sput v4, Ldisplay/vmap/features/PoiPainter;->poiMaskBlockWidth:I

    sget v4, Ldisplay/vmap/features/PoiPainter;->poiMaskBlockWidth:I

    sput v4, Ldisplay/vmap/features/PoiPainter;->poiMaskBlockHeight:I

    sget v4, Ldisplay/vmap/features/PoiPainter;->poiMaskBlockWidth:I

    div-int/2addr v0, v4

    add-int/2addr v0, v3

    sput v0, Ldisplay/vmap/features/PoiPainter;->poiMaskWidth:I

    sget v0, Ldisplay/vmap/features/PoiPainter;->poiMaskBlockHeight:I

    div-int/2addr v2, v0

    add-int/2addr v2, v3

    sput v2, Ldisplay/vmap/features/PoiPainter;->poiMaskHeight:I

    sget v0, Ldisplay/vmap/features/PoiPainter;->poiMaskWidth:I

    sget v2, Ldisplay/vmap/features/PoiPainter;->poiMaskHeight:I

    mul-int v0, v0, v2

    sput v0, Ldisplay/vmap/features/PoiPainter;->poiMaskSize:I

    sget-object v0, Ldisplay/vmap/features/PoiPainter;->poiMask:[B

    if-eqz v0, :cond_1

    sget v0, Ldisplay/vmap/features/PoiPainter;->poiMaskSize:I

    sget-object v2, Ldisplay/vmap/features/PoiPainter;->poiMask:[B

    array-length v2, v2

    if-eq v0, v2, :cond_2

    :cond_1
    sget v0, Ldisplay/vmap/features/PoiPainter;->poiMaskSize:I

    new-array v0, v0, [B

    sput-object v0, Ldisplay/vmap/features/PoiPainter;->poiMask:[B

    :cond_2
    sget-object v0, Lcom/xcglobe/xclog/l;->ar:Lcom/xcglobe/xclog/h;

    iget-object v0, v0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    sget-object v2, Ldisplay/vmap/features/PoiPainter;->poiMask:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Ltypes/f;->a:Ltypes/PoiPoint;

    if-eqz v4, :cond_3

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->pts:[F

    sget-object v5, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v5, v5, Ltypes/PoiPoint;->i:F

    aput v5, v4, v1

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->pts:[F

    sget-object v5, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v5, v5, Ltypes/PoiPoint;->j:F

    aput v5, v4, v3

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    sget-object v5, Ldisplay/vmap/features/PoiPainter;->pts:[F

    invoke-virtual {v4, v5}, Lvmaps/core/VmpWorld;->b([F)V

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v4, v4, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v5, Ldisplay/vmap/features/PoiPainter;->pts:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->pts:[F

    aget v4, v4, v1

    float-to-int v4, v4

    sget-object v5, Ldisplay/vmap/features/PoiPainter;->pts:[F

    aget v5, v5, v3

    float-to-int v5, v5

    sget v6, Ldisplay/vmap/features/PoiPainter;->poiMaskBlockHeight:I

    div-int/2addr v5, v6

    sget v6, Ldisplay/vmap/features/PoiPainter;->poiMaskBlockWidth:I

    div-int/2addr v4, v6

    sget v6, Ldisplay/vmap/features/PoiPainter;->poiMaskWidth:I

    mul-int v6, v6, v5

    add-int/2addr v6, v4

    if-lez v6, :cond_3

    sget v4, Ldisplay/vmap/features/PoiPainter;->poiMaskSize:I

    if-ge v6, v4, :cond_3

    sget-object v4, Ldisplay/vmap/features/PoiPainter;->poiMask:[B

    aput-byte v3, v4, v6

    sget-object v4, Ltypes/f;->a:Ltypes/PoiPoint;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    sput-boolean v4, Ldisplay/vmap/features/PoiPainter;->goalOnFirstPosition:Z

    array-length v4, v0

    sget-object v5, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v5}, Lvmaps/core/VmpWorld;->c()F

    move-result v5

    const/high16 v6, 0x42480000    # 50.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_9

    aget-object v7, v0, v6

    const/16 v8, 0x74

    if-nez v5, :cond_6

    iget-char v9, v7, Ltypes/PoiPoint;->m:C

    if-ne v9, v8, :cond_6

    goto :goto_3

    :cond_6
    sget-object v9, Ldisplay/vmap/features/PoiPainter;->pts:[F

    iget v10, v7, Ltypes/PoiPoint;->i:F

    aput v10, v9, v1

    sget-object v9, Ldisplay/vmap/features/PoiPainter;->pts:[F

    iget v10, v7, Ltypes/PoiPoint;->j:F

    aput v10, v9, v3

    sget-object v9, Ldisplay/vmap/features/PoiPainter;->world:Lvmaps/core/VmpWorld;

    sget-object v10, Ldisplay/vmap/features/PoiPainter;->pts:[F

    invoke-virtual {v9, v10}, Lvmaps/core/VmpWorld;->b([F)V

    sget-object v9, Ldisplay/vmap/features/PoiPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v9, v9, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v10, Ldisplay/vmap/features/PoiPainter;->pts:[F

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v9, Ldisplay/vmap/features/PoiPainter;->pts:[F

    aget v9, v9, v1

    float-to-int v9, v9

    sget-object v10, Ldisplay/vmap/features/PoiPainter;->pts:[F

    aget v10, v10, v3

    float-to-int v10, v10

    sget v11, Ldisplay/vmap/features/PoiPainter;->poiMaskBlockHeight:I

    div-int/2addr v10, v11

    sget v11, Ldisplay/vmap/features/PoiPainter;->poiMaskBlockWidth:I

    div-int/2addr v9, v11

    sget v11, Ldisplay/vmap/features/PoiPainter;->poiMaskWidth:I

    mul-int v11, v11, v10

    add-int/2addr v11, v9

    if-lez v11, :cond_8

    sget v9, Ldisplay/vmap/features/PoiPainter;->poiMaskSize:I

    if-ge v11, v9, :cond_8

    sget-object v9, Ldisplay/vmap/features/PoiPainter;->poiMask:[B

    aget-byte v9, v9, v11

    if-eqz v9, :cond_7

    iget-char v9, v7, Ltypes/PoiPoint;->m:C

    const/16 v10, 0x6c

    if-eq v9, v10, :cond_7

    iget-char v9, v7, Ltypes/PoiPoint;->m:C

    if-eq v9, v8, :cond_7

    goto :goto_3

    :cond_7
    sget-object v8, Ldisplay/vmap/features/PoiPainter;->poiMask:[B

    aput-byte v3, v8, v11

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    new-array v0, v1, [Ltypes/PoiPoint;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltypes/PoiPoint;

    sput-object v0, Ldisplay/vmap/features/PoiPainter;->poiList:[Ltypes/PoiPoint;

    return-void
.end method
