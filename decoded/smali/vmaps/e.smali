.class public Lvmaps/e;
.super Lvmaps/core/e;


# static fields
.field static i:Landroid/os/Handler;


# instance fields
.field public a:Lvmaps/core/f;

.field public b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Canvas;

.field d:Landroid/graphics/Paint;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/Path;

.field g:Landroid/graphics/Rect;

.field h:Landroid/graphics/Rect;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lvmaps/e;->i:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lvmaps/core/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lvmaps/e;->a:Lvmaps/core/f;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lvmaps/e;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lvmaps/e;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lvmaps/e;->h:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a()Lvmaps/core/e;
    .locals 1

    new-instance v0, Lvmaps/e;

    invoke-direct {v0}, Lvmaps/e;-><init>()V

    return-object v0
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lvmaps/e;->c:Landroid/graphics/Canvas;

    iget-object v0, p0, Lvmaps/e;->l:Ltypes/g;

    invoke-virtual {p0, p1, p2, v0}, Lvmaps/e;->b(IILtypes/g;)V

    iget-object v0, p0, Lvmaps/e;->g:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public a(IILtypes/g;)V
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lvmaps/e;->b(IILtypes/g;)V

    iget-object p3, p0, Lvmaps/e;->g:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lvmaps/e;->a:Lvmaps/core/f;

    if-nez p3, :cond_0

    new-instance p3, Lvmaps/core/f;

    sget v1, Lcom/xcglobe/xclog/l;->ad:I

    invoke-direct {p3, v1}, Lvmaps/core/f;-><init>(I)V

    iput-object p3, p0, Lvmaps/e;->a:Lvmaps/core/f;

    :cond_0
    iget-object p3, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-eq p1, p2, :cond_2

    :cond_1
    iget p1, p0, Lvmaps/e;->j:I

    iget p2, p0, Lvmaps/e;->k:I

    invoke-static {p1, p2}, Lcom/xcglobe/xclog/l;->b(II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    :cond_2
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lvmaps/e;->c:Landroid/graphics/Canvas;

    iget-object p1, p0, Lvmaps/e;->c:Landroid/graphics/Canvas;

    iget-object p2, p0, Lvmaps/e;->a:Lvmaps/core/f;

    invoke-virtual {p2}, Lvmaps/core/f;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget p1, p0, Lvmaps/e;->m:F

    const/high16 p2, 0x44480000    # 800.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget p2, p0, Lvmaps/e;->m:F

    const/4 p3, 0x0

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_4

    const/4 p1, 0x0

    :cond_4
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lvmaps/e;->e:Landroid/graphics/Paint;

    iget-object p2, p0, Lvmaps/e;->e:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lvmaps/e;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lvmaps/e;->a:Lvmaps/core/f;

    invoke-virtual {v2}, Lvmaps/core/f;->a()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lvmaps/e;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lvmaps/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget p1, p0, Lvmaps/e;->m:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    iget-object p1, p0, Lvmaps/e;->e:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lvmaps/e;->e:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/CornerPathEffect;

    sget v1, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit8 v1, v1, 0x1e

    int-to-float v1, v1

    invoke-direct {p2, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lvmaps/e;->d:Landroid/graphics/Paint;

    iget-object p1, p0, Lvmaps/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lvmaps/e;->d:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lvmaps/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-boolean v0, p0, Lvmaps/e;->o:Z

    return-void
.end method

.method public a(Lvmaps/core/e;Ltypes/c;)V
    .locals 4

    check-cast p1, Lvmaps/e;

    iget-object v0, p0, Lvmaps/e;->h:Landroid/graphics/Rect;

    iget v1, p2, Ltypes/c;->a:I

    iget v2, p2, Ltypes/c;->b:I

    iget v3, p2, Ltypes/c;->c:I

    iget p2, p2, Ltypes/c;->d:I

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lvmaps/e;->c:Landroid/graphics/Canvas;

    iget-object p1, p1, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lvmaps/e;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Lvmaps/e;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a([I)V
    .locals 8

    iget-object v0, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    iget v3, p0, Lvmaps/e;->j:I

    iget v6, p0, Lvmaps/e;->j:I

    iget v7, p0, Lvmaps/e;->k:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public a([III)V
    .locals 9

    invoke-static {p2, p3}, Lcom/xcglobe/xclog/l;->b(II)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    move v3, p2

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    iget p3, p0, Lvmaps/e;->j:I

    iget v1, p0, Lvmaps/e;->k:I

    invoke-direct {p2, v0, v0, p3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lvmaps/e;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v8, p1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public a([I[IIII)V
    .locals 4

    iget-object v0, p0, Lvmaps/e;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lvmaps/e;->f:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    aget v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lvmaps/e;->f:Landroid/graphics/Path;

    aget v2, p1, v0

    int-to-float v2, v2

    aget v3, p2, v0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p4, p1, :cond_1

    iget-object p1, p0, Lvmaps/e;->c:Landroid/graphics/Canvas;

    iget-object p2, p0, Lvmaps/e;->f:Landroid/graphics/Path;

    iget-object p3, p0, Lvmaps/e;->e:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lvmaps/e;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lvmaps/e;->c:Landroid/graphics/Canvas;

    iget-object p2, p0, Lvmaps/e;->f:Landroid/graphics/Path;

    iget-object p3, p0, Lvmaps/e;->d:Landroid/graphics/Paint;

    goto :goto_1

    :goto_2
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lvmaps/e;->c:Landroid/graphics/Canvas;

    iput-object v0, p0, Lvmaps/e;->d:Landroid/graphics/Paint;

    return-void
.end method

.method public c()[I
    .locals 9

    iget v0, p0, Lvmaps/e;->j:I

    iget v1, p0, Lvmaps/e;->k:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    iget-object v1, p0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    iget v4, p0, Lvmaps/e;->j:I

    iget v7, p0, Lvmaps/e;->k:I

    iget v8, p0, Lvmaps/e;->k:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object v0
.end method
