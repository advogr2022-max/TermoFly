.class public Lvmaps/core/f;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field private b:[I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lvmaps/core/f;->c:I

    invoke-direct {p0, p1}, Lvmaps/core/f;->b(I)V

    return-void
.end method

.method private static a(III)I
    .locals 0

    and-int/lit16 p2, p2, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    const/high16 p1, -0x1000000

    or-int/2addr p0, p1

    return p0
.end method

.method private b(I)V
    .locals 6

    iput p1, p0, Lvmaps/core/f;->a:I

    new-instance v0, Lvmaps/c;

    invoke-direct {v0}, Lvmaps/c;-><init>()V

    invoke-virtual {v0, p1}, Lvmaps/c;->a(I)Lvmaps/c;

    move-result-object p1

    iget-object p1, p1, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lvmaps/core/f;->b:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Lvmaps/core/f;->a(III)I

    move-result v3

    iget-object v4, p0, Lvmaps/core/f;->b:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvmaps/core/f;->b:[I

    const/16 v1, 0xff

    invoke-static {v0, v0, v1}, Lvmaps/core/f;->a(III)I

    move-result v0

    aput v0, p1, v2

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lvmaps/core/f;->b:[I

    iget-object v1, p0, Lvmaps/core/f;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public a(I)I
    .locals 1

    if-gez p1, :cond_0

    iget-object p1, p0, Lvmaps/core/f;->b:[I

    iget-object v0, p0, Lvmaps/core/f;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    return p1

    :cond_0
    iget v0, p0, Lvmaps/core/f;->c:I

    if-lt p1, v0, :cond_1

    iget p1, p0, Lvmaps/core/f;->c:I

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-object v0, p0, Lvmaps/core/f;->b:[I

    array-length v0, v0

    mul-int p1, p1, v0

    iget v0, p0, Lvmaps/core/f;->c:I

    div-int/2addr p1, v0

    iget-object v0, p0, Lvmaps/core/f;->b:[I

    aget p1, v0, p1

    return p1
.end method
