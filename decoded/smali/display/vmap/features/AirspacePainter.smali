.class public Ldisplay/vmap/features/AirspacePainter;
.super Ljava/lang/Object;


# static fields
.field public static cfgEnabled:Z = true

.field static pathAir:Landroid/graphics/Path;

.field static view:Ldisplay/vmap/ViewVmp;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ldisplay/vmap/ViewVmp;)V
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Ldisplay/vmap/features/AirspacePainter;->pathAir:Landroid/graphics/Path;

    sput-object p0, Ldisplay/vmap/features/AirspacePainter;->view:Ldisplay/vmap/ViewVmp;

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;)V
    .locals 10

    sget-boolean v0, Ldisplay/vmap/features/AirspacePainter;->cfgEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/xcglobe/xclog/l;->aC:I

    int-to-float v0, v0

    sget v1, Lcom/xcglobe/xclog/l;->A:I

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/g;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Lvmaps/a;->b:Ltypes/a;

    iget-object v1, v1, Ltypes/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    sget-object v5, Lvmaps/a;->b:Ltypes/a;

    iget-object v5, v5, Ltypes/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/b;

    iget v6, v5, La/b;->d:I

    if-nez v6, :cond_1

    sget v6, Lcom/xcglobe/xclog/l;->B:I

    goto :goto_1

    :cond_1
    sget v6, Lcom/xcglobe/xclog/l;->C:I

    :goto_1
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v6, 0xa0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v6, Ldisplay/vmap/features/AirspacePainter;->pathAir:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    const/4 v6, 0x0

    :goto_2
    iget-object v7, v5, La/b;->b:[I

    array-length v7, v7

    if-ge v6, v7, :cond_3

    iget-object v7, v5, La/b;->b:[I

    aget v7, v7, v6

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    aput v7, v2, v3

    iget-object v7, v5, La/b;->c:[I

    aget v7, v7, v6

    int-to-float v7, v7

    div-float/2addr v7, v8

    const/4 v8, 0x1

    aput v7, v2, v8

    sget-object v7, Ldisplay/vmap/features/AirspacePainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v7, v7, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v7, v2}, Lvmaps/core/VmpWorld;->b([F)V

    sget-object v7, Ldisplay/vmap/features/AirspacePainter;->view:Ldisplay/vmap/ViewVmp;

    iget-object v7, v7, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v7, v2, v3

    float-to-int v7, v7

    aget v8, v2, v8

    float-to-int v8, v8

    if-nez v6, :cond_2

    sget-object v9, Ldisplay/vmap/features/AirspacePainter;->pathAir:Landroid/graphics/Path;

    int-to-float v7, v7

    int-to-float v8, v8

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    :cond_2
    sget-object v9, Ldisplay/vmap/features/AirspacePainter;->pathAir:Landroid/graphics/Path;

    int-to-float v7, v7

    int-to-float v8, v8

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    sget-object v5, Ldisplay/vmap/features/AirspacePainter;->pathAir:Landroid/graphics/Path;

    invoke-virtual {p0, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
