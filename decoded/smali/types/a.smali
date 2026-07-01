.class public Ltypes/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:[B

.field public c:[B

.field public d:F

.field public e:F

.field private f:Ltypes/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltypes/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ltypes/g;

    invoke-direct {v0}, Ltypes/g;-><init>()V

    iput-object v0, p0, Ltypes/a;->f:Ltypes/g;

    const/16 v0, 0x2710

    new-array v1, v0, [B

    iput-object v1, p0, Ltypes/a;->b:[B

    new-array v0, v0, [B

    iput-object v0, p0, Ltypes/a;->c:[B

    return-void
.end method

.method public static a(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3

    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0xf

    and-int/lit8 p0, p0, 0x3

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 p0, p0, 0x2

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private a(FFI)V
    .locals 6

    const/16 v0, 0x19

    invoke-static {v0, v0, p1, p2, p3}, Ltypes/k;->a(IIFFI)Ltypes/k;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    const/16 v0, 0x64

    if-ge p3, v0, :cond_3

    mul-int/lit8 v1, p3, 0x64

    move v2, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    div-int/lit8 v3, v1, 0x4

    div-int/lit8 v4, p3, 0x4

    invoke-virtual {p1, v3, v4}, Ltypes/k;->a(II)I

    move-result v3

    iget-object v4, p0, Ltypes/a;->c:[B

    aget-byte v4, v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Ltypes/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/b;

    iget-boolean v5, v4, La/b;->e:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Ltypes/a;->b:[B

    iget v4, v4, La/b;->d:I

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x32

    int-to-byte v3, v4

    aput-byte v3, v5, v2

    goto :goto_2

    :cond_0
    iget-object v3, p0, Ltypes/a;->b:[B

    iget v4, v4, La/b;->d:I

    div-int/lit8 v4, v4, 0x32

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    goto :goto_2

    :cond_1
    iget-object v3, p0, Ltypes/a;->b:[B

    aput-byte v5, v3, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 9

    const/16 v0, 0x2710

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/16 v8, 0x64

    move-object v1, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    mul-int/lit8 v3, v1, 0x64

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget v5, v0, v4

    and-int/lit16 v6, v5, 0xff

    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    div-int/lit8 v5, v5, 0x2

    shl-int/lit8 v5, v5, 0x6

    div-int/lit8 v7, v7, 0x2

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v5, v7

    div-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    iget-object v6, p0, Ltypes/a;->c:[B

    int-to-byte v5, v5

    aput-byte v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;)Z
    .locals 10

    const/4 v0, -0x1

    invoke-static {v0}, Ltypes/a;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Ltypes/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Ltypes/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/b;

    iget-boolean v5, v4, La/b;->e:Z

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v5, 0x0

    :goto_1
    iget-object v6, v4, La/b;->b:[I

    array-length v6, v6

    if-ge v5, v6, :cond_2

    iget-object v6, v4, La/b;->b:[I

    aget v6, v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    iget-object v8, v4, La/b;->c:[I

    aget v8, v8, v5

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget-object v7, p0, Ltypes/a;->f:Ltypes/g;

    iget v7, v7, Ltypes/g;->c:F

    sub-float/2addr v8, v7

    iget v7, p0, Ltypes/a;->d:F

    mul-float v8, v8, v7

    float-to-int v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    iget-object v9, p0, Ltypes/a;->f:Ltypes/g;

    iget v9, v9, Ltypes/g;->a:F

    sub-float/2addr v6, v9

    iget v9, p0, Ltypes/a;->e:F

    mul-float v6, v6, v9

    sub-float/2addr v8, v6

    float-to-int v6, v8

    if-nez v5, :cond_1

    int-to-float v7, v7

    int-to-float v6, v6

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    :cond_1
    int-to-float v7, v7

    int-to-float v6, v6

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ltypes/a;->a(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3}, Ltypes/a;->a(Landroid/graphics/Bitmap;)V

    return v3
.end method


# virtual methods
.method public a(FF[B)B
    .locals 2

    iget-object v0, p0, Ltypes/a;->f:Ltypes/g;

    iget v0, v0, Ltypes/g;->c:F

    sub-float/2addr p2, v0

    iget v0, p0, Ltypes/a;->d:F

    mul-float p2, p2, v0

    iget-object v0, p0, Ltypes/a;->f:Ltypes/g;

    iget v0, v0, Ltypes/g;->a:F

    sub-float/2addr p1, v0

    iget v0, p0, Ltypes/a;->e:F

    mul-float p1, p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    sub-float/2addr v0, p1

    float-to-int p1, p2

    float-to-int p2, v0

    const/4 v0, -0x1

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    const/16 v1, 0x64

    if-ge p1, v1, :cond_2

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p2, p1

    const/4 p1, 0x1

    iget-object v1, p0, Ltypes/a;->c:[B

    aget-byte v1, v1, p2

    aput-byte v1, p3, p1

    if-ne v1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    iget-object v0, p0, Ltypes/a;->b:[B

    aget-byte p2, v0, p2

    aput-byte p2, p3, p1

    return p2

    :cond_2
    :goto_0
    return v0
.end method

.method a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ltypes/a;->c:[B

    aget-byte v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Ltypes/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b;

    iget v1, v1, La/b;->d:I

    iget-object v2, p0, Ltypes/a;->b:[B

    div-int/lit8 v1, v1, 0x32

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ltypes/a;->b:[B

    aput-byte v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(FF)V
    .locals 9

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Ltypes/p;

    invoke-direct {v2}, Ltypes/p;-><init>()V

    const/16 v3, 0x64

    int-to-float v4, v3

    sget v5, Ltypes/i;->a:F

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v4, p1, v3, v5}, Ltypes/p;->a(FFII)V

    iget-object v4, p0, Ltypes/a;->f:Ltypes/g;

    invoke-virtual {v2, p1, p2, v4}, Ltypes/p;->a(FFLtypes/g;)V

    iget-object v4, p0, Ltypes/a;->f:Ltypes/g;

    invoke-static {v4}, Ltypes/o;->b(Ltypes/g;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "air/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lvmaps/a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".air"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ltypes/a;->f:Ltypes/g;

    invoke-static {v7, v8, v5}, La/b;->a(Ljava/lang/String;Ltypes/g;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Ltypes/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    const/16 v4, 0x14

    int-to-float v4, v4

    sget v5, Ltypes/i;->a:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v4, p1, v3, v5}, Ltypes/p;->a(FFII)V

    iget-object v4, p0, Ltypes/a;->f:Ltypes/g;

    invoke-virtual {v2, p1, p2, v4}, Ltypes/p;->a(FFLtypes/g;)V

    iget v4, v2, Ltypes/p;->h:F

    iput v4, p0, Ltypes/a;->d:F

    iget v2, v2, Ltypes/p;->i:F

    iput v2, p0, Ltypes/a;->e:F

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v3, v0, v2}, Ltypes/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltypes/a;->a()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, v1}, Ltypes/a;->a(FFI)V

    :goto_1
    return-void
.end method
