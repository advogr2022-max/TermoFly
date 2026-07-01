.class public Ldisplay/vmap/boxes/LayoutManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldisplay/vmap/boxes/LayoutManager$RowInfo;
    }
.end annotation


# static fields
.field private static final ALIGN_ALLOW_CENTER:I = 0x4

.field private static final ALIGN_ALLOW_SCALE_UP:I = 0x1

.field private static final ALIGN_CENTER:I = 0x2

.field static BORDER:I = 0x0

.field private static HEIGHT_INFINITE:I = 0xf423f

.field private static MAX_CFG_INFOBOXES_SIZE:I = 0x5

.field private static WIDTH_INFINITE:I = 0xf423f

.field private static WIDTH_TOLERANCE_PLUS:F = 1.05f


# instance fields
.field public bottomPanelExtendedHeight:I

.field public bottomPanelHeight:I

.field public bottomPanelNeeded:Z

.field private horizontalTerrainMode:Z

.field public pivotDx:I

.field public pivotDy:I

.field public rightPanelWidth:I

.field protected unitSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/LayoutManager;->rightPanelWidth:I

    iput v0, p0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelHeight:I

    iput v0, p0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelExtendedHeight:I

    iput-boolean v0, p0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelNeeded:Z

    iput-boolean v0, p0, Ldisplay/vmap/boxes/LayoutManager;->horizontalTerrainMode:Z

    return-void
.end method

.method private alignRowRight(Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, p2}, Ldisplay/vmap/boxes/LayoutManager;->getInfo(Ljava/util/ArrayList;I)Ldisplay/vmap/boxes/LayoutManager$RowInfo;

    move-result-object v1

    iget v1, v1, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->bottomY:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v3, v2, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v2, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v5, p2, v3

    sub-int v4, v1, v4

    invoke-virtual {v2, v5, v4}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    sget v2, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr v3, v2

    sub-int/2addr p2, v3

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calcDefaultArea(Ljava/util/ArrayList;F)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;F)F"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v4, v3, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p2}, Ldisplay/vmap/boxes/InfoBox;->initSize(F)V

    iget-object v4, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v3, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int v4, v4, v3

    int-to-float v3, v4

    add-float/2addr v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private calcPivot(II)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/LayoutManager;->pivotDx:I

    iput v0, p0, Ldisplay/vmap/boxes/LayoutManager;->pivotDy:I

    div-int/lit8 v0, p2, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    int-to-double p1, p2

    const-wide v1, 0x3fd999999999999aL    # 0.4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v1

    double-to-int p1, p1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    neg-int p1, p1

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager;->pivotDy:I

    return-void
.end method

.method private centerRowHorizontally(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Ldisplay/vmap/boxes/LayoutManager;->getInfo(Ljava/util/ArrayList;I)Ldisplay/vmap/boxes/LayoutManager$RowInfo;

    move-result-object v1

    iget v1, v1, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->sumWidth:I

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/2addr p2, v1

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v4, v3, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v2, v4}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    iget-object v3, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, p2

    add-int/2addr v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private centerVerticaly(Ljava/util/ArrayList;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;III)V"
        }
    .end annotation

    const/4 p2, 0x1

    new-array v0, p2, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-direct {p0, p1, v0}, Ldisplay/vmap/boxes/LayoutManager;->getRowsHeight(Ljava/util/ArrayList;[I)I

    move-result v2

    sub-int/2addr p3, v2

    aget v0, v0, v1

    add-int/2addr v0, p2

    div-int/2addr p3, v0

    sub-int p2, p4, p3

    :goto_0
    invoke-direct {p0, p1, v1}, Ldisplay/vmap/boxes/LayoutManager;->getRowItems(Ljava/util/ArrayList;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v3, p4

    move v2, v1

    :goto_1
    add-int v4, v1, v0

    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v5, v4, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {v4, v5, v6}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    iget-object v5, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v5, v3, :cond_1

    iget-object v3, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sub-int p2, v3, p3

    move v1, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method private createGrid(FLjava/util/ArrayList;IILjava/util/ArrayList;ZZ)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;ZZ)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    int-to-float v4, v2

    sget v5, Ldisplay/vmap/boxes/LayoutManager;->WIDTH_TOLERANCE_PLUS:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, v1, v5

    float-to-int v5, v5

    neg-int v5, v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move/from16 v12, p4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_9

    move-object/from16 v14, p2

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v15, v7, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v15, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    :goto_1
    move/from16 v17, v4

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v7, v1}, Ldisplay/vmap/boxes/InfoBox;->initSize(F)V

    iget-object v15, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    iget-object v1, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    move/from16 v17, v4

    iget-boolean v4, v7, Ldisplay/vmap/boxes/InfoBox;->customWidth:Z

    if-eqz v4, :cond_2

    const/4 v9, 0x1

    :cond_2
    if-eqz v9, :cond_3

    sget v4, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    sub-int v4, v2, v4

    move/from16 v18, v9

    goto :goto_2

    :cond_3
    move/from16 v18, v9

    move/from16 v4, v17

    :goto_2
    add-int v9, v11, v15

    if-le v9, v4, :cond_6

    if-gt v15, v4, :cond_5

    if-eqz p7, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v4, -0x1

    if-le v9, v4, :cond_4

    mul-int/lit8 v4, v2, 0x3

    const/4 v9, 0x4

    div-int/2addr v4, v9

    if-le v15, v4, :cond_4

    div-int/lit8 v4, v2, 0x2

    if-ge v11, v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x2

    invoke-direct {v0, v6, v11, v2, v4}, Ldisplay/vmap/boxes/LayoutManager;->realignRow(Ljava/util/ArrayList;III)I

    move-result v4

    sget v9, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr v9, v4

    add-int/2addr v10, v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-boolean v9, v7, Ldisplay/vmap/boxes/InfoBox;->customWidth:Z

    sget v11, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr v4, v11

    sub-int/2addr v12, v4

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v9, v18

    goto :goto_5

    :cond_6
    move/from16 v9, v18

    :goto_4
    sub-int v4, v12, v1

    if-ge v4, v5, :cond_7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    invoke-virtual {v7, v11, v4}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v1, v13, :cond_8

    move v13, v1

    :cond_8
    sget v1, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr v15, v1

    add-int/2addr v11, v15

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v17

    move/from16 v1, p1

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x2

    const/4 v9, 0x4

    sget v1, Ldisplay/vmap/boxes/LayoutManager;->WIDTH_INFINITE:I

    if-eq v2, v1, :cond_b

    if-eqz p6, :cond_a

    const/4 v9, 0x2

    :cond_a
    invoke-direct {v0, v6, v11, v2, v9}, Ldisplay/vmap/boxes/LayoutManager;->realignRow(Ljava/util/ArrayList;III)I

    move-result v1

    sget v2, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    :cond_b
    return v10
.end method

.method private createGrid(Ljava/util/ArrayList;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;II)V"
        }
    .end annotation

    int-to-float v0, p2

    sget v1, Ldisplay/vmap/boxes/LayoutManager;->WIDTH_TOLERANCE_PLUS:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v5, p3

    const/4 p3, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p3, v7, :cond_5

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v8, v7, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    iget v8, p0, Ldisplay/vmap/boxes/LayoutManager;->unitSize:F

    invoke-virtual {v7, v8}, Ldisplay/vmap/boxes/InfoBox;->initSize(F)V

    iget-object v8, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-boolean v10, v7, Ldisplay/vmap/boxes/InfoBox;->customWidth:Z

    if-eqz v10, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    sget v10, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    sub-int v10, p2, v10

    goto :goto_1

    :cond_2
    move v10, v0

    :goto_1
    add-int v11, v3, v8

    if-le v11, v10, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    const/4 v4, 0x2

    invoke-direct {p0, v1, v3, p2, v4}, Ldisplay/vmap/boxes/LayoutManager;->realignRow(Ljava/util/ArrayList;III)I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-boolean v4, v7, Ldisplay/vmap/boxes/InfoBox;->customWidth:Z

    sget v6, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr v3, v6

    sub-int/2addr v5, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    :cond_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v10, v5, v9

    invoke-virtual {v7, v3, v10}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    if-le v9, v6, :cond_4

    move v6, v9

    :cond_4
    sget v7, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr v8, v7

    add-int/2addr v3, v8

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    sget p1, Ldisplay/vmap/boxes/LayoutManager;->WIDTH_INFINITE:I

    if-eq p2, p1, :cond_6

    const/4 p1, 0x4

    invoke-direct {p0, v1, v3, p2, p1}, Ldisplay/vmap/boxes/LayoutManager;->realignRow(Ljava/util/ArrayList;III)I

    :cond_6
    return-void
.end method

.method private createLandscape(Ljava/util/ArrayList;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_0

    return-void

    :cond_0
    sget v0, Ldisplay/vmap/boxes/LayoutManager;->WIDTH_INFINITE:I

    invoke-direct {v8, v9, v0, v11}, Ldisplay/vmap/boxes/LayoutManager;->createGrid(Ljava/util/ArrayList;II)V

    invoke-direct/range {p0 .. p2}, Ldisplay/vmap/boxes/LayoutManager;->getInfo(Ljava/util/ArrayList;I)Ldisplay/vmap/boxes/LayoutManager$RowInfo;

    move-result-object v0

    const v1, 0x3f8ccccd    # 1.1f

    int-to-float v2, v10

    mul-float v2, v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    float-to-int v13, v2

    int-to-float v1, v12

    iget v2, v8, Ldisplay/vmap/boxes/LayoutManager;->unitSize:F

    sget v3, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    int-to-float v2, v11

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-int v1, v1

    iget v0, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->avgWidth:I

    mul-int v0, v0, v1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x4479c000    # 999.0f

    add-int/lit8 v1, v13, -0x1

    div-int/lit8 v15, v1, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v5, v3, :cond_7

    move/from16 v18, v0

    move/from16 v17, v16

    move/from16 v16, v4

    const/4 v4, 0x1

    :goto_1
    if-gt v4, v13, :cond_6

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    iget v1, v8, Ldisplay/vmap/boxes/LayoutManager;->unitSize:F

    const/16 v19, 0x1

    if-ne v5, v6, :cond_1

    const/16 v20, 0x1

    goto :goto_2

    :cond_1
    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const/16 v21, 0x2

    move v3, v4

    move/from16 v22, v4

    move/from16 v4, p3

    move/from16 v23, v13

    move v13, v5

    move-object v5, v14

    const/4 v9, 0x1

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Ldisplay/vmap/boxes/LayoutManager;->createGrid(FLjava/util/ArrayList;IILjava/util/ArrayList;ZZ)I

    invoke-direct/range {p0 .. p2}, Ldisplay/vmap/boxes/LayoutManager;->getInfo(Ljava/util/ArrayList;I)Ldisplay/vmap/boxes/LayoutManager$RowInfo;

    move-result-object v0

    invoke-direct {v8, v14, v10}, Ldisplay/vmap/boxes/LayoutManager;->getInfo(Ljava/util/ArrayList;I)Ldisplay/vmap/boxes/LayoutManager$RowInfo;

    move-result-object v1

    iget v0, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->area:I

    iget v1, v1, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->area:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    mul-int v4, v22, v11

    int-to-float v2, v4

    div-float/2addr v1, v2

    if-nez v0, :cond_2

    const v1, 0x3f333333    # 0.7f

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v3, v2, 0x3

    int-to-float v3, v3

    int-to-float v4, v2

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v3, v12, 0x1

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_3

    const/4 v2, 0x3

    if-le v12, v2, :cond_3

    add-float/2addr v1, v0

    :cond_3
    cmpg-float v0, v1, v18

    if-gez v0, :cond_5

    if-ne v13, v9, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v16, v22

    :cond_5
    add-int v4, v22, v15

    move v5, v13

    move/from16 v13, v23

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v9, p1

    goto :goto_1

    :cond_6
    move/from16 v23, v13

    const/4 v9, 0x1

    move v13, v5

    add-int/lit8 v5, v13, 0x1

    move/from16 v4, v16

    move/from16 v16, v17

    move/from16 v0, v18

    move/from16 v13, v23

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v9, p1

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x1

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    iget v1, v8, Ldisplay/vmap/boxes/LayoutManager;->unitSize:F

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v3, v4

    move v12, v4

    move/from16 v4, p3

    move-object v5, v14

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Ldisplay/vmap/boxes/LayoutManager;->createGrid(FLjava/util/ArrayList;IILjava/util/ArrayList;ZZ)I

    move-object/from16 v0, p1

    const/4 v1, 0x1

    invoke-direct {v8, v0, v14}, Ldisplay/vmap/boxes/LayoutManager;->excludeBoxes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v8, v0, v12, v11, v11}, Ldisplay/vmap/boxes/LayoutManager;->centerVerticaly(Ljava/util/ArrayList;III)V

    sub-int v2, v10, v12

    const/4 v3, 0x0

    invoke-direct {v8, v0, v2, v3}, Ldisplay/vmap/boxes/LayoutManager;->moveBoxes(Ljava/util/ArrayList;II)V

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldisplay/vmap/boxes/InfoBox;

    iput-boolean v1, v4, Ldisplay/vmap/boxes/InfoBox;->docked:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    if-ne v12, v1, :cond_9

    const/4 v12, 0x0

    :cond_9
    iput v12, v8, Ldisplay/vmap/boxes/LayoutManager;->rightPanelWidth:I

    sub-int v0, v10, v12

    if-lez v12, :cond_a

    sget v1, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    sub-int/2addr v0, v1

    :cond_a
    invoke-direct {v8, v14, v0, v11, v3}, Ldisplay/vmap/boxes/LayoutManager;->createPortrait(Ljava/util/ArrayList;IIZ)V

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/vmap/boxes/InfoBox;

    iput-boolean v3, v1, Ldisplay/vmap/boxes/InfoBox;->docked:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method private createPortrait(Ljava/util/ArrayList;IIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;IIZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Ldisplay/vmap/boxes/LayoutManager;->unitSize:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Ldisplay/vmap/boxes/LayoutManager;->createGrid(FLjava/util/ArrayList;IILjava/util/ArrayList;ZZ)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    invoke-direct {p0, p1, v0}, Ldisplay/vmap/boxes/LayoutManager;->excludeBoxes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, p2, p3}, Ldisplay/vmap/boxes/LayoutManager;->createGrid(Ljava/util/ArrayList;II)V

    if-nez p4, :cond_1

    invoke-direct {p0, v0, p2, p3, v2}, Ldisplay/vmap/boxes/LayoutManager;->getTopBoxY(Ljava/util/ArrayList;IIZ)I

    move-result p1

    sub-int p1, p3, p1

    sget p4, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr p1, p4

    neg-int p1, p1

    invoke-direct {p0, v1, v2, p1}, Ldisplay/vmap/boxes/LayoutManager;->moveBoxes(Ljava/util/ArrayList;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0}, Ldisplay/vmap/boxes/LayoutManager;->shiftRejected(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, p1}, Ldisplay/vmap/boxes/LayoutManager;->reorderBoxes(Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    const/4 p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Ldisplay/vmap/boxes/LayoutManager;->getTopBoxY(Ljava/util/ArrayList;IIZ)I

    move-result v0

    sub-int v1, p3, v0

    sget v3, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr v1, v3

    iput v1, p0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelHeight:I

    invoke-direct {p0, p1, p2}, Ldisplay/vmap/boxes/LayoutManager;->getInfo(Ljava/util/ArrayList;I)Ldisplay/vmap/boxes/LayoutManager$RowInfo;

    move-result-object v1

    iget v3, v1, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->fullRowsCount:I

    if-le v3, p4, :cond_3

    iget v3, p0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelHeight:I

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelNeeded:Z

    iget-boolean v3, p0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelNeeded:Z

    if-eqz v3, :cond_6

    iget v3, v1, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rowsCount:I

    iget v4, v1, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->fullRowsCount:I

    if-le v3, v4, :cond_6

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v5, v4, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object v5, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->topBottomY:I

    if-ne v5, v6, :cond_5

    iget-object v5, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sget v7, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-boolean v1, p0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelNeeded:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v4, v3, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    iget-object v4, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelHeight:I

    sub-int v5, p3, v5

    if-le v4, v5, :cond_8

    iput-boolean p4, v3, Ldisplay/vmap/boxes/InfoBox;->docked:Z

    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-direct {p0, p1, p2, p3, v2}, Ldisplay/vmap/boxes/LayoutManager;->getTopBoxY(Ljava/util/ArrayList;IIZ)I

    move-result p1

    sub-int p1, p3, p1

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelExtendedHeight:I

    iget-boolean p1, p0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelNeeded:Z

    if-nez p1, :cond_a

    invoke-direct {p0, v0, p3}, Ldisplay/vmap/boxes/LayoutManager;->calcPivot(II)V

    :cond_a
    return-void
.end method

.method private createUnitSize(I)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    add-float/2addr p1, v0

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    return p1
.end method

.method private excludeBoxes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findBottomBox(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldisplay/vmap/boxes/InfoBox;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v4, v3, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v2, :cond_2

    iget-object v1, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move v2, v1

    move v1, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private getInfo(Ljava/util/ArrayList;I)Ldisplay/vmap/boxes/LayoutManager$RowInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;I)",
            "Ldisplay/vmap/boxes/LayoutManager$RowInfo;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ldisplay/vmap/boxes/LayoutManager;->getInfo(Ljava/util/ArrayList;III)Ldisplay/vmap/boxes/LayoutManager$RowInfo;

    move-result-object p1

    return-object p1
.end method

.method private getInfo(Ljava/util/ArrayList;III)Ldisplay/vmap/boxes/LayoutManager$RowInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;III)",
            "Ldisplay/vmap/boxes/LayoutManager$RowInfo;"
        }
    .end annotation

    new-instance v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;

    invoke-direct {v0, p0}, Ldisplay/vmap/boxes/LayoutManager$RowInfo;-><init>(Ldisplay/vmap/boxes/LayoutManager;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int v2, p2, p3

    if-gt v2, v1, :cond_d

    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const p3, 0x1869f

    div-int/lit8 v3, p4, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge p2, v2, :cond_9

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v8, v7, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v8, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v4, v7, Ldisplay/vmap/boxes/InfoBox;->customWidth:Z

    if-eqz v4, :cond_2

    iget v4, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->customSizeCount:I

    add-int/2addr v4, v1

    iput v4, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->customSizeCount:I

    :cond_2
    iget-object v4, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v8, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->topY:I

    if-ge v4, v8, :cond_3

    iget-object v4, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->topY:I

    :cond_3
    iget-object v4, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->bottomY:I

    if-le v4, v8, :cond_4

    iget-object v4, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->bottomY:I

    :cond_4
    iget-object v4, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-eq v4, p3, :cond_5

    iget p3, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rowsCount:I

    add-int/2addr p3, v1

    iput p3, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rowsCount:I

    iget-object p3, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->lastRowIndex:I

    :cond_5
    iget-object v4, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v8, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->area:I

    mul-int v10, v4, v8

    add-int/2addr v9, v10

    iput v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->area:I

    iget-object v9, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-lt v9, v3, :cond_6

    iget v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rightCount:I

    add-int/2addr v9, v1

    iput v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rightCount:I

    iget v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rightSumWidth:I

    add-int/2addr v9, v4

    iput v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rightSumWidth:I

    goto :goto_1

    :cond_6
    iget v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->leftCount:I

    add-int/2addr v9, v1

    iput v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->leftCount:I

    iget v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->leftSumWidth:I

    add-int/2addr v9, v4

    iput v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->leftSumWidth:I

    :goto_1
    iget v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->largestWidth:I

    if-le v4, v9, :cond_7

    iput v4, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->largestWidth:I

    iput p2, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->largestWidthIndex:I

    :cond_7
    iget v9, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->largestHeight:I

    if-le v8, v9, :cond_8

    iput v8, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->largestHeight:I

    iput p2, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->largestHeightIndex:I

    :cond_8
    add-int/2addr v6, v4

    move-object v4, v7

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v4, :cond_a

    iget p2, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->lastRowIndex:I

    invoke-direct {p0, p1, p2}, Ldisplay/vmap/boxes/LayoutManager;->getRowWidth(Ljava/util/ArrayList;I)I

    move-result p2

    invoke-direct {p0, p2, p4}, Ldisplay/vmap/boxes/LayoutManager;->isFullRow(II)Z

    move-result p2

    if-nez p2, :cond_a

    iget p2, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rowsCount:I

    sub-int/2addr p2, v1

    goto :goto_3

    :cond_a
    iget p2, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rowsCount:I

    :goto_3
    iput p2, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->fullRowsCount:I

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    iget-object p2, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    :goto_4
    iput v5, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->topBottomY:I

    iput v6, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->sumWidth:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/2addr v6, p1

    iput v6, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->avgWidth:I

    iget p1, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rightCount:I

    if-lez p1, :cond_c

    iget p1, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rightSumWidth:I

    sget p2, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    iget p3, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rightCount:I

    sub-int/2addr p3, v1

    mul-int p2, p2, p3

    add-int/2addr p1, p2

    iput p1, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rightSumWidth:I

    :cond_c
    iget p1, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->leftCount:I

    if-lez p1, :cond_d

    iget p1, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->leftSumWidth:I

    sget p2, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    iget p3, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->leftCount:I

    sub-int/2addr p3, v1

    mul-int p2, p2, p3

    add-int/2addr p1, p2

    iput p1, v0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->leftSumWidth:I

    :cond_d
    :goto_5
    return-object v0
.end method

.method private getRowItems(Ljava/util/ArrayList;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;I)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v1, v1, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-lt p2, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/vmap/boxes/InfoBox;

    iget-object v2, v2, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_1
    if-ge p2, v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v4, v3, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-nez v4, :cond_2

    iget-object v3, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method private getRowWidth(Ljava/util/ArrayList;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;I)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/vmap/boxes/InfoBox;

    iget-object v1, v1, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    :goto_0
    if-ge p2, v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v4, v3, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-eq v4, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method

.method private getRowsHeight(Ljava/util/ArrayList;[I)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;[I)I"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x1869f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x1869f

    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Ldisplay/vmap/boxes/LayoutManager;->getRowItems(Ljava/util/ArrayList;I)I

    move-result v5

    if-eqz v5, :cond_1

    sget v6, Ldisplay/vmap/boxes/LayoutManager;->WIDTH_INFINITE:I

    invoke-direct {p0, p1, v1, v5, v6}, Ldisplay/vmap/boxes/LayoutManager;->getInfo(Ljava/util/ArrayList;III)Ldisplay/vmap/boxes/LayoutManager$RowInfo;

    move-result-object v6

    iget v7, v6, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->bottomY:I

    iget v8, v6, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->topY:I

    sub-int/2addr v7, v8

    add-int/2addr v2, v7

    iget v7, v6, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->bottomY:I

    if-gt v7, v3, :cond_0

    iget v3, v6, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->topY:I

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/2addr v1, v5

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    aput v4, p2, v0

    :cond_2
    return v2
.end method

.method private getTopBoxY(Ljava/util/ArrayList;IIZ)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;IIZ)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    sget v1, Ldisplay/vmap/boxes/LayoutManager;->HEIGHT_INFINITE:I

    sget v2, Ldisplay/vmap/boxes/LayoutManager;->HEIGHT_INFINITE:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ltz v0, :cond_9

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v8, v7, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v8, :cond_1

    goto :goto_3

    :cond_1
    sget v8, Ldisplay/vmap/boxes/LayoutManager;->HEIGHT_INFINITE:I

    if-ne v1, v8, :cond_2

    iget-object v1, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget-object v8, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-eq v8, v1, :cond_5

    if-eqz p4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    return v2

    :cond_5
    :goto_2
    iget-object v8, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v6, v8

    if-nez v5, :cond_6

    invoke-direct {p0, v6, p2}, Ldisplay/vmap/boxes/LayoutManager;->isFullRow(II)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v5, 0x1

    :cond_6
    iget-object v8, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v8, v2, :cond_8

    if-eqz p4, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    iget-object v2, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    :cond_8
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_9
    sget p1, Ldisplay/vmap/boxes/LayoutManager;->HEIGHT_INFINITE:I

    if-ne v2, p1, :cond_a

    goto :goto_4

    :cond_a
    move p3, v2

    :goto_4
    return p3
.end method

.method private isFullRow(II)Z
    .locals 0

    mul-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0xc

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHorizontalTerrainNeeded(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v2}, Ldisplay/vmap/boxes/InfoBox;->hasCustomPosition()Z

    move-result v3

    invoke-virtual {v2}, Ldisplay/vmap/boxes/InfoBox;->getVisibleBox()Ldisplay/vmap/boxes/InfoBox;

    move-result-object v2

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ldisplay/vmap/boxes/BoxGroundProfile;

    if-ne v2, v3, :cond_0

    sget-boolean v2, Ldisplay/vmap/boxes/BoxGroundProfile;->disabled:Z

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private moveBoxes(ILjava/util/ArrayList;IILjava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;I)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v1, v0, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v1, p6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p3

    iget-object v2, v0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p4

    invoke-virtual {v0, v1, v2}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private moveBoxes(Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v2, v1, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget-object v3, v1, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    invoke-virtual {v1, v2, v3}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private realignRow(Ljava/util/ArrayList;III)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;III)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget v4, Ldisplay/vmap/boxes/LayoutManager;->WIDTH_INFINITE:I

    const/4 v5, 0x0

    move/from16 v6, p3

    if-ne v6, v4, :cond_0

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    return v5

    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldisplay/vmap/boxes/InfoBox;

    iget-object v7, v7, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v8, v6

    int-to-float v9, v2

    div-float/2addr v8, v9

    and-int/lit8 v9, p4, 0x2

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    and-int/lit8 v11, p4, 0x4

    if-eqz v11, :cond_3

    int-to-double v11, v2

    const-wide/high16 v13, 0x3fe8000000000000L    # 0.75

    move-wide v15, v11

    int-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v13

    cmpl-double v12, v15, v10

    if-lez v12, :cond_3

    const/4 v9, 0x1

    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v8, v10

    if-lez v11, :cond_a

    const/4 v11, 0x1

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    sub-int/2addr v6, v2

    int-to-float v2, v6

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v11

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v3, v2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_e

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v6, v4, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    float-to-int v6, v3

    iget-object v7, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v7}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    iget-object v6, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    add-float/2addr v3, v6

    iget-object v4, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    sget v3, Ldisplay/vmap/boxes/LayoutManager;->WIDTH_INFINITE:I

    invoke-direct {v0, v1, v3}, Ldisplay/vmap/boxes/LayoutManager;->getInfo(Ljava/util/ArrayList;I)Ldisplay/vmap/boxes/LayoutManager$RowInfo;

    move-result-object v3

    iget v7, v3, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->largestHeight:I

    if-eqz v9, :cond_6

    :goto_3
    invoke-direct {v0, v1, v6}, Ldisplay/vmap/boxes/LayoutManager;->centerRowHorizontally(Ljava/util/ArrayList;I)V

    goto/16 :goto_7

    :cond_6
    iget-boolean v3, v0, Ldisplay/vmap/boxes/LayoutManager;->horizontalTerrainMode:Z

    if-eqz v3, :cond_7

    invoke-direct {v0, v1, v6}, Ldisplay/vmap/boxes/LayoutManager;->alignRowRight(Ljava/util/ArrayList;I)V

    goto :goto_7

    :cond_7
    const/4 v3, 0x1

    if-eq v4, v3, :cond_9

    div-int/lit8 v3, v6, 0x2

    if-ge v2, v3, :cond_8

    goto :goto_4

    :cond_8
    invoke-direct {v0, v1, v6}, Ldisplay/vmap/boxes/LayoutManager;->splitRow(Ljava/util/ArrayList;I)V

    goto :goto_7

    :cond_9
    :goto_4
    sget v3, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldisplay/vmap/boxes/InfoBox;

    iget-object v4, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_e

    sget v4, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v6, v4

    if-ge v2, v6, :cond_e

    invoke-direct {v0, v1, v3, v5}, Ldisplay/vmap/boxes/LayoutManager;->moveBoxes(Ljava/util/ArrayList;II)V

    goto :goto_7

    :cond_a
    cmpg-float v2, v8, v10

    if-gez v2, :cond_e

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_d

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v4, v3, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    iget-object v4, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v10, v3, Ldisplay/vmap/boxes/InfoBox;->unitSize:F

    mul-float v10, v10, v8

    invoke-virtual {v3, v10}, Ldisplay/vmap/boxes/InfoBox;->initSize(F)V

    iget-object v10, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v4, v11

    invoke-virtual {v3, v2, v4}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    sget v3, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr v10, v3

    add-int/2addr v2, v10

    if-le v11, v7, :cond_c

    move v7, v11

    :cond_c
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    if-eqz v9, :cond_e

    goto :goto_3

    :cond_e
    :goto_7
    return v7
.end method

.method private reorderBoxes(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0, p1}, Ldisplay/vmap/boxes/LayoutManager;->findBottomBox(Ljava/util/ArrayList;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/vmap/boxes/InfoBox;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private sanitize(Ljava/util/ArrayList;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v4, v3, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_1

    iget-object v4, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v4, p2, :cond_1

    iget-object v4, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ltz v4, :cond_1

    iget-object v4, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v4, p3, :cond_2

    :cond_1
    invoke-virtual {v3, v1, v1}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private shiftRejected(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v5, v4, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v5, :cond_0

    goto :goto_3

    :cond_0
    if-ne v2, v0, :cond_1

    iget-object v2, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :cond_1
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v0, :cond_3

    iget-object v5, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {v4, v5, v2}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    iget-object v2, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget v5, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr v2, v5

    add-int/lit8 v6, v1, 0x1

    const/4 v8, 0x0

    neg-int v9, v2

    if-ne v3, v0, :cond_2

    const v2, 0x98967f

    const v11, 0x98967f

    goto :goto_1

    :cond_2
    move v11, v3

    :goto_1
    move-object v5, p0

    move-object v7, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v11}, Ldisplay/vmap/boxes/LayoutManager;->moveBoxes(ILjava/util/ArrayList;IILjava/util/ArrayList;I)V

    goto :goto_2

    :cond_3
    iget-object v2, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    :goto_2
    iget-object v2, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget v4, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    sub-int/2addr v2, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private splitRow(Ljava/util/ArrayList;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Ldisplay/vmap/boxes/LayoutManager;->getInfo(Ljava/util/ArrayList;I)Ldisplay/vmap/boxes/LayoutManager$RowInfo;

    move-result-object v1

    iget v2, v1, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->bottomY:I

    iget v1, v1, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rightCount:I

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-le v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    add-int/lit8 v5, v0, -0x1

    sub-int/2addr v5, v4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v6, v5, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, v5, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, v5, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int v8, p2, v6

    sub-int v7, v2, v7

    invoke-virtual {v5, v8, v7}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    sget v5, Ldisplay/vmap/boxes/LayoutManager;->BORDER:I

    add-int/2addr v6, v5

    sub-int/2addr p2, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public create(Ljava/util/ArrayList;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v2}, Ldisplay/vmap/boxes/InfoBox;->onLayoutStart()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Ldisplay/vmap/boxes/LayoutManager;->isHorizontalTerrainNeeded(Ljava/util/ArrayList;)Z

    move-result v1

    iput-boolean v1, p0, Ldisplay/vmap/boxes/LayoutManager;->horizontalTerrainMode:Z

    const/high16 v1, 0x3f400000    # 0.75f

    mul-int v2, p2, p3

    int-to-float v2, v2

    mul-float v2, v2, v1

    sget v1, Ldisplay/vmap/boxes/LayoutManager;->MAX_CFG_INFOBOXES_SIZE:I

    invoke-direct {p0, v1}, Ldisplay/vmap/boxes/LayoutManager;->createUnitSize(I)F

    move-result v1

    invoke-direct {p0, p1, v1}, Ldisplay/vmap/boxes/LayoutManager;->calcDefaultArea(Ljava/util/ArrayList;F)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    div-float v3, v2, v1

    :cond_1
    sget v1, Lcom/xcglobe/xclog/l;->ak:I

    invoke-direct {p0, v1}, Ldisplay/vmap/boxes/LayoutManager;->createUnitSize(I)F

    move-result v1

    iput v1, p0, Ldisplay/vmap/boxes/LayoutManager;->unitSize:F

    iget v1, p0, Ldisplay/vmap/boxes/LayoutManager;->unitSize:F

    mul-float v1, v1, v3

    iput v1, p0, Ldisplay/vmap/boxes/LayoutManager;->unitSize:F

    const/4 v1, 0x1

    if-le p2, p3, :cond_2

    invoke-direct {p0, p1, p2, p3}, Ldisplay/vmap/boxes/LayoutManager;->createLandscape(Ljava/util/ArrayList;II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, p3, v1}, Ldisplay/vmap/boxes/LayoutManager;->createPortrait(Ljava/util/ArrayList;IIZ)V

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Ldisplay/vmap/boxes/LayoutManager;->sanitize(Ljava/util/ArrayList;II)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_7

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v3, v2, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-nez v3, :cond_3

    iput-boolean v1, v2, Ldisplay/vmap/boxes/InfoBox;->isRightmost:Z

    iput-boolean v1, v2, Ldisplay/vmap/boxes/InfoBox;->isBottommost:Z

    :cond_3
    add-int/lit8 v3, p2, 0x1

    move v4, v3

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v6, v5, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, v5, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, v2, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-lt v4, v6, :cond_5

    iput-boolean v0, v2, Ldisplay/vmap/boxes/InfoBox;->isRightmost:Z

    :cond_5
    iget-object v4, v5, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v2, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gt v4, v5, :cond_6

    const/4 p3, 0x0

    :cond_6
    iput-boolean p3, v2, Ldisplay/vmap/boxes/InfoBox;->isBottommost:Z

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {p2}, Ldisplay/vmap/boxes/InfoBox;->onPosition()V

    move p2, v3

    goto :goto_2

    :cond_7
    return-void
.end method

.method public finalize(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v1, p0}, Ldisplay/vmap/boxes/InfoBox;->onFinalized(Ldisplay/vmap/boxes/LayoutManager;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isHorizontalTerrainMode()Z
    .locals 1

    iget-boolean v0, p0, Ldisplay/vmap/boxes/LayoutManager;->horizontalTerrainMode:Z

    return v0
.end method
