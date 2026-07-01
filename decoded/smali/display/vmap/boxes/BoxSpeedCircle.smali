.class public Ldisplay/vmap/boxes/BoxSpeedCircle;
.super Ldisplay/vmap/boxes/InfoBox;


# instance fields
.field private cX:I

.field private cY:I

.field imgX:I

.field imgY:I

.field private radius:F

.field private radiusText:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->aspectRatio:F

    return-void
.end method

.method private drawCircleAndLines(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cX:I

    int-to-float v1, v1

    iget v2, v0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cY:I

    int-to-float v2, v2

    iget v3, v0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radius:F

    sget v4, Lcom/xcglobe/xclog/l;->aB:I

    int-to-float v4, v4

    sget v5, Lcom/xcglobe/xclog/l;->v:I

    invoke-static {v4, v5}, Lcom/xcglobe/xclog/g;->b(FI)Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v11, p1

    invoke-virtual {v11, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v1, Lm/g;->W:Lh/a;

    iget v1, v1, Lh/a;->j:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v3, Lm/g;->W:Lh/a;

    iget-object v3, v3, Lh/a;->b:Lh/b;

    goto :goto_1

    :cond_1
    sget-object v3, Lm/g;->W:Lh/a;

    iget-object v3, v3, Lh/a;->a:Lh/b;

    :goto_1
    const/16 v4, 0xc

    const v5, -0x4036f025

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    int-to-float v8, v4

    float-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v9

    double-to-float v12, v6

    iget v13, v3, Lh/b;->b:F

    sget v6, Lcom/xcglobe/xclog/l;->aB:I

    int-to-float v6, v6

    if-eqz v1, :cond_2

    sget v1, Lcom/xcglobe/xclog/l;->o:I

    goto :goto_2

    :cond_2
    sget v1, Lcom/xcglobe/xclog/l;->p:I

    :goto_2
    invoke-static {v6, v1}, Lcom/xcglobe/xclog/g;->b(FI)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v6, 0x43b40000    # 360.0f

    div-float v14, v6, v8

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v13, v6

    if-lez v6, :cond_3

    const v10, -0x4036f025

    const/4 v15, 0x0

    :goto_3
    if-ge v2, v4, :cond_3

    iget v5, v0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radius:F

    invoke-virtual {v3, v15}, Lh/b;->a(I)F

    move-result v6

    div-float/2addr v6, v13

    mul-float v5, v5, v6

    float-to-double v5, v5

    float-to-double v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 v18, v3

    mul-double v3, v5, v16

    double-to-int v3, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-int v4, v5

    iget v5, v0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cX:I

    int-to-float v6, v5

    iget v5, v0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cY:I

    int-to-float v7, v5

    iget v5, v0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cX:I

    add-int/2addr v5, v3

    int-to-float v8, v5

    iget v3, v0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cY:I

    add-int/2addr v3, v4

    int-to-float v9, v3

    move-object/from16 v5, p1

    move v3, v10

    move-object v10, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v10, v3, v12

    int-to-float v3, v15

    add-float/2addr v3, v14

    float-to-int v15, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v18

    const/16 v4, 0xc

    goto :goto_3

    :cond_3
    return-void
.end method

.method private drawLabelsAndImage(Landroid/graphics/Canvas;)V
    .locals 14

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radiusText:F

    sget v2, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {}, Lcom/xcglobe/xclog/g;->d()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Lm/g;->W:Lh/a;

    iget v3, v3, Lh/a;->j:I

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    sget-object v5, Lm/g;->W:Lh/a;

    iget-object v5, v5, Lh/a;->b:Lh/b;

    goto :goto_1

    :cond_1
    sget-object v5, Lm/g;->W:Lh/a;

    iget-object v5, v5, Lh/a;->a:Lh/b;

    :goto_1
    const/16 v6, 0x168

    if-ge v4, v6, :cond_4

    invoke-virtual {v5, v4}, Lh/b;->a(I)F

    move-result v6

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, -0x4036f025

    add-float/2addr v8, v7

    if-eqz v4, :cond_2

    const/16 v7, 0xb4

    if-eq v4, v7, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    iget v7, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radiusText:F

    :goto_2
    iget v9, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cX:I

    float-to-double v10, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    double-to-int v12, v12

    add-int/2addr v9, v12

    iget v12, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cY:I

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v7

    double-to-int v7, v10

    add-int/2addr v12, v7

    const/high16 v7, 0x41100000    # 9.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    sget v7, Lcom/xcglobe/xclog/l;->d:I

    mul-int/lit8 v7, v7, 0x7

    div-int/lit8 v7, v7, 0x8

    goto :goto_3

    :cond_3
    sget v7, Lcom/xcglobe/xclog/l;->d:I

    div-int/lit8 v7, v7, 0x2

    :goto_3
    sub-int/2addr v9, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    invoke-static {v6}, Ltypes/q;->b(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    int-to-float v7, v9

    div-int/lit8 v8, v0, 0x3

    add-int/2addr v12, v8

    int-to-float v8, v12

    invoke-virtual {p1, v6, v7, v8, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x2d

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    sget-object v0, Lcom/xcglobe/xclog/e;->c:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/xcglobe/xclog/e;->b:Landroid/graphics/Bitmap;

    :goto_4
    iget v1, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->imgX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->imgY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Ldisplay/vmap/boxes/BoxSpeedCircle;->drawCircleAndLines(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Ldisplay/vmap/boxes/BoxSpeedCircle;->drawLabelsAndImage(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0c0119

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPosition()V
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v1, v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->captionVisible:Z

    :cond_0
    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->captionVisible:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->captionHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    sget v3, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    sub-float/2addr v0, v3

    div-float/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radius:F

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v2, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radius:F

    sub-float/2addr v0, v2

    sget v2, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    :goto_0
    iput v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cY:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget v2, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radius:F

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->rec:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    goto :goto_0

    :goto_1
    iget v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radius:F

    sget v2, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radiusText:F

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->rec:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radius:F

    add-float/2addr v0, v2

    sget v2, Ldisplay/vmap/boxes/BoxSpeedCircle;->MARGIN_LEFT:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget v2, Lcom/xcglobe/xclog/l;->d:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cX:I

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    iget v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radius:F

    sget v0, Lcom/xcglobe/xclog/l;->d:I

    iget v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cX:I

    int-to-float v0, v0

    iget v2, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->radius:F

    mul-float v2, v2, v1

    sget v3, Lcom/xcglobe/xclog/l;->d:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget-object v3, Lcom/xcglobe/xclog/e;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->imgX:I

    iget v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->cY:I

    sget-object v1, Lcom/xcglobe/xclog/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxSpeedCircle;->imgY:I

    return-void
.end method
