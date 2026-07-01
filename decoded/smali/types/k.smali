.class public Ltypes/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltypes/k$a;
    }
.end annotation


# instance fields
.field public a:[B

.field b:I

.field c:I

.field d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:I

.field private m:I

.field private n:Ltypes/k$a;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ltypes/k;->k:I

    const/16 v0, 0xa

    iput v0, p0, Ltypes/k;->m:I

    new-instance v0, Ltypes/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltypes/k$a;-><init>(Ltypes/k$1;)V

    iput-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iput p1, p0, Ltypes/k;->b:I

    iput p2, p0, Ltypes/k;->c:I

    iget p1, p0, Ltypes/k;->b:I

    iget p2, p0, Ltypes/k;->c:I

    mul-int p1, p1, p2

    iput p1, p0, Ltypes/k;->d:I

    iget p1, p0, Ltypes/k;->d:I

    new-array p1, p1, [B

    iput-object p1, p0, Ltypes/k;->a:[B

    return-void
.end method

.method public static a(I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xc80

    const/16 v2, 0xff

    if-ge p0, v1, :cond_0

    div-int/lit8 p0, p0, 0x64

    mul-int/lit8 v1, p0, 0xa

    and-int/2addr v1, v2

    mul-int/lit8 p0, p0, 0x8

    goto :goto_1

    :cond_0
    sub-int/2addr p0, v1

    div-int/lit16 p0, p0, 0x96

    if-le p0, v2, :cond_1

    const/16 v1, 0xff

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    const/4 p0, 0x0

    const/16 v0, 0xff

    :goto_1
    invoke-static {v1, p0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private a(IIIII)I
    .locals 2

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v0, v0, Ltypes/k$a;->j:I

    if-lt v0, p1, :cond_0

    if-lt v0, p2, :cond_0

    if-lt v0, p3, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x32

    :cond_0
    if-ge p4, p5, :cond_1

    move v1, p4

    goto :goto_0

    :cond_1
    move v1, p5

    :goto_0
    mul-int/lit8 v0, v0, 0x64

    mul-int p1, p1, p4

    add-int/2addr v0, p1

    mul-int p2, p2, p5

    add-int/2addr v0, p2

    mul-int p3, p3, v1

    add-int/2addr v0, p3

    add-int/2addr p4, p5

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, 0x64

    div-int/2addr v0, p4

    return v0
.end method

.method public static a(IIFFI)Ltypes/k;
    .locals 11

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Ltypes/g;

    invoke-direct {v2}, Ltypes/g;-><init>()V

    new-instance v3, Ltypes/p;

    invoke-direct {v3}, Ltypes/p;-><init>()V

    mul-int/lit8 v4, p4, 0x2

    int-to-float v4, v4

    int-to-float v5, p1

    sget v6, Ltypes/i;->a:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v4, p2, p0, v5}, Ltypes/p;->a(FFII)V

    invoke-virtual {v3, p2, p3, v2}, Ltypes/p;->a(FFLtypes/g;)V

    invoke-static {v2}, Ltypes/o;->a(Ltypes/g;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance p3, Lvmaps/core/i;

    invoke-direct {p3, v1}, Lvmaps/core/i;-><init>(Z)V

    iget v7, v2, Ltypes/g;->a:F

    iget v8, v2, Ltypes/g;->c:F

    iget v9, v3, Ltypes/p;->h:F

    iget v10, v3, Ltypes/p;->i:F

    move-object v4, p3

    move v5, p0

    move v6, p1

    invoke-virtual/range {v4 .. v10}, Lvmaps/core/i;->a(IIFFFF)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vmp/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".vmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Lvmaps/core/i;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {p3}, Lvmaps/core/i;->b()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p3, Lvmaps/core/i;->d:I

    if-ltz v7, :cond_0

    iget v7, p3, Lvmaps/core/i;->f:I

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v7, p3, Lvmaps/core/i;->a:[I

    aget v7, v7, v1

    int-to-float v7, v7

    iget-object v8, p3, Lvmaps/core/i;->b:[I

    aget v8, v8, v1

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v7, 0x1

    :goto_2
    iget v8, p3, Lvmaps/core/i;->f:I

    if-ge v7, v8, :cond_2

    iget-object v8, p3, Lvmaps/core/i;->a:[I

    aget v8, v8, v7

    int-to-float v8, v8

    iget-object v9, p3, Lvmaps/core/i;->b:[I

    aget v9, v9, v7

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    iget v7, p3, Lvmaps/core/i;->d:I

    invoke-static {v7}, Ltypes/k;->a(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    new-instance p2, Ltypes/k;

    invoke-direct {p2, p0, p1}, Ltypes/k;-><init>(II)V

    invoke-virtual {p2, p4, v3, v2}, Ltypes/k;->a(ILandroid/graphics/Bitmap;Ltypes/g;)V

    return-object p2
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 9

    iget v0, p0, Ltypes/k;->d:I

    new-array v0, v0, [I

    iget v4, p0, Ltypes/k;->b:I

    iget v7, p0, Ltypes/k;->b:I

    iget v8, p0, Ltypes/k;->c:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p1, 0x0

    :goto_0
    iget v1, p0, Ltypes/k;->d:I

    if-ge p1, v1, :cond_1

    aget v1, v0, p1

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0x80

    if-ge v2, v4, :cond_0

    div-int/lit8 v3, v3, 0x8

    mul-int/lit8 v3, v3, 0x64

    goto :goto_1

    :cond_0
    mul-int/lit16 v1, v1, 0x96

    add-int/lit16 v3, v1, 0xc80

    :goto_1
    iget-object v1, p0, Ltypes/k;->a:[B

    div-int/lit8 v3, v3, 0x32

    int-to-byte v2, v3

    aput-byte v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(II)V
    .locals 6

    iget v0, p0, Ltypes/k;->b:I

    mul-int v0, v0, p2

    add-int/2addr v0, p1

    iget-object v1, p0, Ltypes/k;->n:Ltypes/k$a;

    iput v0, v1, Ltypes/k$a;->a:I

    iget-object v1, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v2, p0, Ltypes/k;->g:F

    int-to-float p2, p2

    iget v3, p0, Ltypes/k;->j:F

    div-float/2addr p2, v3

    add-float/2addr v2, p2

    iput v2, v1, Ltypes/k$a;->b:F

    iget-object p2, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v1, p0, Ltypes/k;->h:F

    int-to-float p1, p1

    iget v2, p0, Ltypes/k;->i:F

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    iput v1, p2, Ltypes/k$a;->c:F

    iget-object p1, p0, Ltypes/k;->n:Ltypes/k$a;

    iget-object p2, p0, Ltypes/k;->a:[B

    aget-byte p2, p2, v0

    mul-int/lit8 p2, p2, 0x32

    iput p2, p1, Ltypes/k$a;->j:I

    iget p1, p0, Ltypes/k;->b:I

    sub-int p1, v0, p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iget-object v2, p0, Ltypes/k;->n:Ltypes/k$a;

    iget-object v3, p0, Ltypes/k;->a:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte p1, v3, p1

    mul-int/lit8 p1, p1, 0x32

    iput p1, v2, Ltypes/k$a;->f:I

    iget-object p1, p0, Ltypes/k;->n:Ltypes/k$a;

    iget-object v2, p0, Ltypes/k;->a:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    mul-int/lit8 v2, v2, 0x32

    iput v2, p1, Ltypes/k$a;->g:I

    if-gt v2, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Ltypes/k;->n:Ltypes/k$a;

    iget-object v4, p0, Ltypes/k;->a:[B

    aget-byte v3, v4, v3

    mul-int/lit8 v3, v3, 0x32

    iput v3, v2, Ltypes/k$a;->h:I

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Ltypes/k;->n:Ltypes/k$a;

    iget-object v4, p0, Ltypes/k;->a:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v4, v2

    mul-int/lit8 v2, v2, 0x32

    iput v2, v3, Ltypes/k$a;->i:I

    if-gt v2, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iget-object v2, p0, Ltypes/k;->n:Ltypes/k$a;

    iget-object v3, p0, Ltypes/k;->a:[B

    aget-byte v3, v3, v5

    mul-int/lit8 v3, v3, 0x32

    iput v3, v2, Ltypes/k$a;->k:I

    if-gt v3, p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    iget v2, p0, Ltypes/k;->b:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Ltypes/k;->n:Ltypes/k$a;

    iget-object v2, p0, Ltypes/k;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    mul-int/lit8 v0, v0, 0x32

    iput v0, v1, Ltypes/k$a;->l:I

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget-object v1, p0, Ltypes/k;->a:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    mul-int/lit8 v1, v1, 0x32

    iput v1, v0, Ltypes/k$a;->m:I

    if-gt v1, p2, :cond_3

    add-int/lit8 p1, p1, 0x1

    :cond_3
    iget-object p2, p0, Ltypes/k;->n:Ltypes/k$a;

    iget-object v0, p0, Ltypes/k;->a:[B

    aget-byte v0, v0, v2

    mul-int/lit8 v0, v0, 0x32

    iput v0, p2, Ltypes/k$a;->n:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Ltypes/k;->n:Ltypes/k$a;

    iget p2, p1, Ltypes/k$a;->j:I

    add-int/lit8 p2, p2, 0x32

    iput p2, p1, Ltypes/k$a;->j:I

    :cond_4
    iget-object p1, p0, Ltypes/k;->n:Ltypes/k$a;

    iget p2, p0, Ltypes/k;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    iput p2, p1, Ltypes/k$a;->d:F

    iget-object p1, p0, Ltypes/k;->n:Ltypes/k$a;

    iget p2, p0, Ltypes/k;->i:F

    div-float/2addr v0, p2

    iput v0, p1, Ltypes/k$a;->e:F

    return-void
.end method


# virtual methods
.method public a(FFZ)I
    .locals 7

    iget v2, p0, Ltypes/k;->h:F

    sub-float v2, p2, v2

    iget v3, p0, Ltypes/k;->i:F

    mul-float v2, v2, v3

    iget v3, p0, Ltypes/k;->c:I

    int-to-float v3, v3

    iget v4, p0, Ltypes/k;->g:F

    sub-float v4, p1, v4

    iget v5, p0, Ltypes/k;->j:F

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    float-to-int v2, v2

    float-to-int v3, v3

    iget v4, p0, Ltypes/k;->m:I

    const/4 v6, 0x0

    if-lt v2, v4, :cond_7

    iget v4, p0, Ltypes/k;->b:I

    iget v5, p0, Ltypes/k;->m:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_7

    iget v4, p0, Ltypes/k;->m:I

    if-lt v3, v4, :cond_7

    iget v4, p0, Ltypes/k;->c:I

    iget v5, p0, Ltypes/k;->m:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v4, p0, Ltypes/k;->b:I

    mul-int v4, v4, v3

    add-int/2addr v4, v2

    if-nez p3, :cond_1

    iget-object v0, p0, Ltypes/k;->a:[B

    aget-byte v0, v0, v4

    mul-int/lit8 v0, v0, 0x32

    iput v0, p0, Ltypes/k;->k:I

    add-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    iget-object v5, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v5, v5, Ltypes/k$a;->a:I

    if-eq v5, v4, :cond_2

    invoke-direct {p0, v2, v3}, Ltypes/k;->b(II)V

    :cond_2
    iget-object v2, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v2, v2, Ltypes/k$a;->c:F

    sub-float v1, p2, v2

    iget-object v2, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v2, v2, Ltypes/k$a;->e:F

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v4, v1

    iget-object v1, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v1, v1, Ltypes/k$a;->b:F

    sub-float v0, p1, v1

    iget-object v1, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v1, v1, Ltypes/k$a;->d:F

    div-float/2addr v0, v1

    mul-float v0, v0, v2

    float-to-int v5, v0

    if-lez v4, :cond_4

    if-lez v5, :cond_3

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v1, v0, Ltypes/k$a;->k:I

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v2, v0, Ltypes/k$a;->g:I

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v3, v0, Ltypes/k$a;->h:I

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ltypes/k;->a(IIIII)I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v1, v0, Ltypes/k$a;->k:I

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v2, v0, Ltypes/k$a;->m:I

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v3, v0, Ltypes/k$a;->n:I

    :goto_1
    neg-int v5, v5

    goto :goto_0

    :cond_4
    if-lez v5, :cond_5

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v1, v0, Ltypes/k$a;->i:I

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v2, v0, Ltypes/k$a;->g:I

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v3, v0, Ltypes/k$a;->f:I

    neg-int v4, v4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v1, v0, Ltypes/k$a;->i:I

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v2, v0, Ltypes/k$a;->m:I

    iget-object v0, p0, Ltypes/k;->n:Ltypes/k$a;

    iget v3, v0, Ltypes/k$a;->l:I

    neg-int v4, v4

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_6

    add-int/lit8 v0, v0, 0x32

    add-int/lit8 v6, v0, 0x1

    :cond_6
    iput v6, p0, Ltypes/k;->k:I

    :cond_7
    :goto_3
    return v6
.end method

.method public a(II)I
    .locals 1

    iget v0, p0, Ltypes/k;->b:I

    mul-int p2, p2, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Ltypes/k;->a:[B

    aget-byte p1, p1, p2

    mul-int/lit8 p1, p1, 0x32

    add-int/lit8 p1, p1, 0x32

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a(ILandroid/graphics/Bitmap;Ltypes/g;)V
    .locals 2

    iput p1, p0, Ltypes/k;->l:I

    iget p1, p3, Ltypes/g;->a:F

    invoke-virtual {p3}, Ltypes/g;->f()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Ltypes/k;->e:F

    iget p1, p3, Ltypes/g;->c:F

    invoke-virtual {p3}, Ltypes/g;->g()F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Ltypes/k;->f:F

    iget p1, p3, Ltypes/g;->a:F

    iput p1, p0, Ltypes/k;->g:F

    iget p1, p3, Ltypes/g;->c:F

    iput p1, p0, Ltypes/k;->h:F

    iget p1, p0, Ltypes/k;->b:I

    int-to-float p1, p1

    invoke-virtual {p3}, Ltypes/g;->g()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Ltypes/k;->i:F

    iget p1, p0, Ltypes/k;->c:I

    int-to-float p1, p1

    invoke-virtual {p3}, Ltypes/g;->f()F

    move-result p3

    div-float/2addr p1, p3

    iput p1, p0, Ltypes/k;->j:F

    invoke-direct {p0, p2}, Ltypes/k;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
