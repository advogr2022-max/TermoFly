.class public Ldisplay/vmap/features/TaskPainter;
.super Ljava/lang/Object;


# static fields
.field static dashPathEffect:Landroid/graphics/DashPathEffect;

.field private static pp:[F

.field static pps:[F

.field static rec:Ltypes/b;

.field private static view:Ldisplay/vmap/ViewVmp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ldisplay/vmap/features/TaskPainter;->pp:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Ldisplay/vmap/features/TaskPainter;->pps:[F

    new-instance v0, Ltypes/b;

    invoke-direct {v0}, Ltypes/b;-><init>()V

    sput-object v0, Ldisplay/vmap/features/TaskPainter;->rec:Ltypes/b;

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
    .locals 4

    sput-object p0, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    sget p0, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit8 p0, p0, 0x30

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float v2, p0

    const/4 v3, 0x0

    aput v2, v1, v3

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x4

    int-to-float p0, p0

    const/4 v3, 0x1

    aput p0, v1, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    sput-object v0, Ldisplay/vmap/features/TaskPainter;->dashPathEffect:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method private static drawFinishLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12

    sget-object v0, Lk/a;->a:Lk/a;

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->pps:[F

    iget-object v2, v0, Lk/a;->o:[Ltypes/l;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Ltypes/l;->a:F

    aput v2, v1, v3

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->pps:[F

    iget-object v2, v0, Lk/a;->o:[Ltypes/l;

    aget-object v2, v2, v3

    iget v2, v2, Ltypes/l;->b:F

    const/4 v4, 0x1

    aput v2, v1, v4

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->pps:[F

    iget-object v2, v0, Lk/a;->o:[Ltypes/l;

    aget-object v2, v2, v4

    iget v2, v2, Ltypes/l;->a:F

    const/4 v5, 0x2

    aput v2, v1, v5

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->pps:[F

    iget-object v0, v0, Lk/a;->o:[Ltypes/l;

    aget-object v0, v0, v4

    iget v0, v0, Ltypes/l;->b:F

    const/4 v2, 0x3

    aput v0, v1, v2

    sget-object v0, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->pps:[F

    invoke-virtual {v0, v1}, Lvmaps/core/VmpWorld;->a([F)V

    sget-object v0, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->pps:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v0, Ldisplay/vmap/features/TaskPainter;->pps:[F

    aget v7, v0, v3

    sget-object v0, Ldisplay/vmap/features/TaskPainter;->pps:[F

    aget v8, v0, v4

    sget-object v0, Ldisplay/vmap/features/TaskPainter;->pps:[F

    aget v9, v0, v5

    sget-object v0, Ldisplay/vmap/features/TaskPainter;->pps:[F

    aget v10, v0, v2

    move-object v6, p0

    move-object v11, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawGoalLine(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [F

    iget v3, v0, Ltypes/GpsVal;->a:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v0, v0, Ltypes/GpsVal;->b:F

    const/4 v3, 0x1

    aput v0, v2, v3

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v0, v0, Ltypes/PoiPoint;->i:F

    const/4 v5, 0x2

    aput v0, v2, v5

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v0, v0, Ltypes/PoiPoint;->j:F

    const/4 v6, 0x3

    aput v0, v2, v6

    sget-object v0, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v0, v2}, Lvmaps/core/VmpWorld;->a([F)V

    sget-object v0, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-static {}, Lcom/xcglobe/xclog/g;->b()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v7, Ldisplay/vmap/features/TaskPainter;->dashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    sget v7, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v1, v7, 0x4

    mul-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v7, Lcom/xcglobe/xclog/l;->m:I

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    aget v8, v2, v4

    aget v9, v2, v3

    aget v10, v2, v5

    aget v11, v2, v6

    move-object v7, p0

    move-object v12, v0

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v1, Lcom/xcglobe/xclog/l;->D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    aget v8, v2, v4

    aget v9, v2, v3

    aget v10, v2, v5

    aget v11, v2, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget-boolean v1, Ltypes/f;->g:Z

    const/4 v13, 0x0

    if-eqz v1, :cond_2

    sget v1, Lcom/xcglobe/xclog/l;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v1, Lk/a;->a:Lk/a;

    invoke-virtual {v1}, Lk/a;->j()Lk/c;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v7, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v7, v7, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v8, v1, Lk/c;->h:Ltypes/l;

    iget v8, v8, Ltypes/l;->a:F

    iget-object v1, v1, Lk/c;->h:Ltypes/l;

    iget v1, v1, Ltypes/l;->b:F

    sget-object v9, Ldisplay/vmap/features/TaskPainter;->pp:[F

    invoke-virtual {v7, v8, v1, v9}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v1, v1, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v7, Ldisplay/vmap/features/TaskPainter;->pp:[F

    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v8, v2, v5

    aget v9, v2, v6

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->pp:[F

    aget v10, v1, v4

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->pp:[F

    aget v11, v1, v3

    move-object v7, p0

    move-object v12, v0

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    sget-object v1, Lk/a;->a:Lk/a;

    iget-boolean v1, v1, Lk/a;->t:Z

    if-eqz v1, :cond_1

    sget-object v1, Lk/a;->a:Lk/a;

    iget-boolean v1, v1, Lk/a;->m:Z

    if-eqz v1, :cond_1

    sget-object v1, Lk/a;->a:Lk/a;

    iget-object v1, v1, Lk/a;->o:[Ltypes/l;

    if-eqz v1, :cond_1

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p0, v0}, Ldisplay/vmap/features/TaskPainter;->drawFinishLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lk/a;->a:Lk/a;

    iget-object v1, v1, Lk/a;->h:Lk/c;

    sget-object v7, Ldisplay/vmap/features/TaskPainter;->pp:[F

    iget v8, v1, Lk/c;->i:F

    aput v8, v7, v4

    sget-object v7, Ldisplay/vmap/features/TaskPainter;->pp:[F

    iget v1, v1, Lk/c;->j:F

    aput v1, v7, v3

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v1, v1, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sget-object v7, Ldisplay/vmap/features/TaskPainter;->pp:[F

    invoke-virtual {v1, v7}, Lvmaps/core/VmpWorld;->b([F)V

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v1, v1, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v7, Ldisplay/vmap/features/TaskPainter;->pp:[F

    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v1, Ldisplay/vmap/features/TaskPainter;->pp:[F

    aget v1, v1, v4

    sget-object v7, Ldisplay/vmap/features/TaskPainter;->pp:[F

    aget v7, v7, v3

    aget v5, v2, v5

    aget v2, v2, v6

    invoke-static {v1, v7, v5, v2}, Ltypes/e;->a(FFFF)F

    move-result v1

    sget-object v2, Ldisplay/vmap/features/TaskPainter;->pp:[F

    aget v2, v2, v4

    sget-object v4, Ldisplay/vmap/features/TaskPainter;->pp:[F

    aget v3, v4, v3

    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget p0, Lcom/xcglobe/xclog/l;->A:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static drawTask(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v6, p0

    sget-object v0, Lk/a;->a:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget-object v8, Lk/a;->a:Lk/a;

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xcglobe/xclog/g;->c()Landroid/graphics/Paint;

    move-result-object v9

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v10, v0, 0x4

    int-to-float v11, v10

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v0, Lcom/xcglobe/xclog/l;->s:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x80

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    div-int/lit8 v12, v0, 0x2

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v13, v0, 0x4

    const/4 v0, 0x0

    sget v1, Lcom/xcglobe/xclog/l;->m:I

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_5

    iget-object v2, v8, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lk/c;

    if-nez v3, :cond_1

    move v15, v0

    move-object v0, v6

    const/4 v4, 0x0

    move-object/from16 v25, v14

    move v14, v1

    move v1, v5

    move-object/from16 v5, v25

    goto/16 :goto_4

    :cond_1
    sget-object v2, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v2, v2, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v4, v3, Lk/c;->h:Ltypes/l;

    iget v4, v4, Ltypes/l;->a:F

    iget-object v15, v3, Lk/c;->h:Ltypes/l;

    iget v15, v15, Ltypes/l;->b:F

    move-object/from16 v17, v3

    sget-object v3, Ldisplay/vmap/features/TaskPainter;->pp:[F

    invoke-virtual {v2, v4, v15, v3}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v2, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v2, v2, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v3, Ldisplay/vmap/features/TaskPainter;->pp:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v2, Ldisplay/vmap/features/TaskPainter;->pp:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v15, v2

    sget-object v2, Ldisplay/vmap/features/TaskPainter;->pp:[F

    const/16 v18, 0x1

    aget v2, v2, v18

    float-to-int v4, v2

    if-lez v5, :cond_2

    sget-object v2, Ldisplay/vmap/features/TaskPainter;->dashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    sget v2, Lcom/xcglobe/xclog/l;->m:I

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 v2, v10, 0x2

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v3, v0

    int-to-float v2, v1

    int-to-float v1, v15

    int-to-float v0, v4

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move v1, v3

    move/from16 v21, v2

    move-object/from16 v22, v14

    move-object/from16 v14, v17

    move/from16 v17, v3

    move/from16 v3, v20

    move-object/from16 v23, v14

    const/4 v6, 0x0

    move v14, v4

    move/from16 v4, v19

    move/from16 v24, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget v0, Lcom/xcglobe/xclog/l;->D:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_1

    :cond_2
    move/from16 v24, v5

    move-object/from16 v22, v14

    move-object/from16 v23, v17

    move v14, v4

    sget v0, Lcom/xcglobe/xclog/l;->o:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 v0, v10, 0x2

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v6, v15

    int-to-float v5, v14

    sub-int v0, v15, v12

    int-to-float v4, v0

    sub-int v0, v14, v13

    int-to-float v3, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v5

    move/from16 v16, v3

    move v3, v4

    move/from16 v17, v4

    move/from16 v4, v16

    move/from16 v19, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v0, v15, v12

    int-to-float v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    move v3, v5

    move/from16 v17, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v1, v17

    move v3, v6

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v0, v7, -0x1

    move/from16 v1, v24

    if-ne v1, v0, :cond_4

    iget-boolean v0, v8, Lk/a;->m:Z

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v0, -0x10000

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Ldisplay/vmap/features/TaskPainter;->drawFinishLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    sget-object v2, Ldisplay/vmap/features/TaskPainter;->pp:[F

    move-object/from16 v3, v23

    iget v4, v3, Lk/c;->i:F

    const/4 v5, 0x0

    aput v4, v2, v5

    sget-object v2, Ldisplay/vmap/features/TaskPainter;->pp:[F

    iget v3, v3, Lk/c;->j:F

    aput v3, v2, v18

    sget-object v2, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v2, v2, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sget-object v3, Ldisplay/vmap/features/TaskPainter;->pp:[F

    invoke-virtual {v2, v3}, Lvmaps/core/VmpWorld;->b([F)V

    sget-object v2, Ldisplay/vmap/features/TaskPainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v2, v2, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v3, Ldisplay/vmap/features/TaskPainter;->pp:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v2, Ldisplay/vmap/features/TaskPainter;->pp:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Ldisplay/vmap/features/TaskPainter;->pp:[F

    aget v3, v3, v18

    int-to-float v4, v15

    int-to-float v5, v14

    invoke-static {v2, v3, v4, v5}, Ltypes/e;->a(FFFF)F

    move-result v2

    sget v3, Lcom/xcglobe/xclog/l;->k:I

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 v3, v10, 0x2

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v3, Ldisplay/vmap/features/TaskPainter;->pp:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v5, Ldisplay/vmap/features/TaskPainter;->pp:[F

    aget v5, v5, v18

    invoke-virtual {v0, v3, v5, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_3
    int-to-float v2, v15

    int-to-float v3, v14

    move-object/from16 v5, v22

    invoke-virtual {v0, v2, v3, v11, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move-object v6, v0

    move v0, v15

    move-object/from16 v25, v5

    move v5, v1

    move v1, v14

    move-object/from16 v14, v25

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method
