.class public Li/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:[Li/a/a;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Li/a/a;

    iput-object v0, p0, Li/a/b;->a:[Li/a/a;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Li/a/b;->a:[Li/a/a;

    new-instance v2, Li/a/a;

    invoke-direct {v2}, Li/a/a;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Li/a/b;->a:[Li/a/a;

    aget-object v1, v1, v0

    iput p2, v1, Li/a/a;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(IIIII)I
    .locals 13

    move-object v0, p0

    sub-int v2, p2, p1

    const/4 v3, 0x4

    div-int/2addr v2, v3

    sub-int v4, p3, p2

    div-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, p4, p3

    div-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v6, p5, p4

    div-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/lit8 v8, p5, 0xa

    const/16 v9, 0x32

    if-le v8, v9, :cond_0

    const/16 v8, 0x32

    :cond_0
    if-ge v2, v8, :cond_1

    move v2, v8

    :cond_1
    if-ge v4, v8, :cond_2

    move v4, v8

    :cond_2
    if-ge v5, v8, :cond_3

    move v5, v8

    :cond_3
    if-ge v7, v8, :cond_4

    move v7, v8

    :cond_4
    if-ge v6, v8, :cond_5

    move v6, v8

    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Li/a/b;->a:[Li/a/a;

    array-length v10, v10

    if-ge v9, v10, :cond_7

    iget-object v10, v0, Li/a/b;->a:[Li/a/a;

    aget-object v10, v10, v9

    iget-object v11, v10, Li/a/a;->a:[I

    aget v11, v11, v8

    sub-int/2addr v11, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v2, :cond_6

    iget-object v11, v10, Li/a/a;->a:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v11, p2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v4, :cond_6

    iget-object v11, v10, Li/a/a;->a:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    sub-int v11, v11, p3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v5, :cond_6

    iget-object v11, v10, Li/a/a;->a:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    sub-int v11, v11, p4

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v7, :cond_6

    iget-object v10, v10, Li/a/a;->a:[I

    aget v10, v10, v3

    sub-int v10, v10, p5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v6, :cond_6

    return v9

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_7
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public a()Li/a/a;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Li/a/b;->a:[Li/a/a;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Li/a/b;->a:[Li/a/a;

    aget-object v3, v3, v0

    iget v4, v3, Li/a/a;->c:I

    if-le v4, v1, :cond_0

    iget v1, v3, Li/a/a;->c:I

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li/a/b;->a:[Li/a/a;

    aget-object v0, v0, v2

    return-object v0
.end method

.method public a(IIIIII)V
    .locals 9

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Li/a/b;->a(IIIII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Li/a/b;->a:[Li/a/a;

    aget-object v1, v1, v0

    iget v1, v1, Li/a/a;->c:I

    if-le p1, v1, :cond_2

    iget-object v1, p0, Li/a/b;->a:[Li/a/a;

    aget-object v2, v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Li/a/a;->a(IIIIII)V

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object p2, p0, Li/a/b;->a:[Li/a/a;

    aget-object p2, p2, v0

    iget p2, p2, Li/a/a;->c:I

    if-ge p2, p1, :cond_0

    iget-object p2, p0, Li/a/b;->a:[Li/a/a;

    aget-object p2, p2, v0

    iget-object p3, p0, Li/a/b;->a:[Li/a/a;

    iget-object p4, p0, Li/a/b;->a:[Li/a/a;

    add-int/lit8 p5, v0, 0x1

    aget-object p4, p4, p5

    aput-object p4, p3, v0

    iget-object p3, p0, Li/a/b;->a:[Li/a/a;

    aput-object p2, p3, p5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget p2, p0, Li/a/b;->b:I

    if-le p1, p2, :cond_2

    iput p1, p0, Li/a/b;->b:I

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p6}, Li/a/b;->b(IIIIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(IIIIII)V
    .locals 11

    move-object v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Li/a/b;->a:[Li/a/a;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Li/a/b;->a:[Li/a/a;

    aget-object v3, v3, v2

    iget v3, v3, Li/a/a;->c:I

    move v5, p1

    if-ge v3, v5, :cond_1

    iget-object v3, v0, Li/a/b;->a:[Li/a/a;

    iget-object v4, v0, Li/a/b;->a:[Li/a/a;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    iget-object v3, v0, Li/a/b;->a:[Li/a/a;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-le v3, v2, :cond_0

    iget-object v6, v0, Li/a/b;->a:[Li/a/a;

    iget-object v7, v0, Li/a/b;->a:[Li/a/a;

    add-int/lit8 v8, v3, -0x1

    aget-object v7, v7, v8

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    iget-object v3, v0, Li/a/b;->a:[Li/a/a;

    aput-object v4, v3, v2

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Li/a/a;->a(IIIIII)V

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v2, v0, Li/a/b;->a:[Li/a/a;

    aget-object v1, v2, v1

    iget v1, v1, Li/a/a;->c:I

    iput v1, v0, Li/a/b;->b:I

    iget-object v1, v0, Li/a/b;->a:[Li/a/a;

    iget-object v2, v0, Li/a/b;->a:[Li/a/a;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Li/a/a;->c:I

    iput v1, v0, Li/a/b;->c:I

    return-void
.end method
