.class public Lvmaps/core/c;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lvmaps/core/c;->a:I

    iget p1, p0, Lvmaps/core/c;->a:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lvmaps/core/c;->b:I

    iput-boolean p1, p0, Lvmaps/core/c;->d:Z

    const/4 p1, 0x1

    iget v0, p0, Lvmaps/core/c;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lvmaps/core/c;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "locate size error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(D)I
    .locals 9

    iget v0, p0, Lvmaps/core/c;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lvmaps/core/c;->a:I

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    :goto_1
    sub-int v5, v3, v4

    if-le v5, v1, :cond_3

    add-int v5, v3, v4

    shr-int/2addr v5, v1

    int-to-double v6, v5

    cmpl-double v8, p1, v6

    if-ltz v8, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ne v6, v0, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    iget p1, p0, Lvmaps/core/c;->b:I

    if-lt v4, p1, :cond_5

    iget p1, p0, Lvmaps/core/c;->b:I

    sub-int p1, v4, p1

    iget p2, p0, Lvmaps/core/c;->c:I

    if-gt p1, p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    iget p1, p0, Lvmaps/core/c;->b:I

    sub-int/2addr p1, v4

    iget p2, p0, Lvmaps/core/c;->c:I

    if-gt p1, p2, :cond_4

    :goto_3
    iput-boolean v1, p0, Lvmaps/core/c;->d:Z

    iput v4, p0, Lvmaps/core/c;->b:I

    iget p1, p0, Lvmaps/core/c;->a:I

    add-int/lit8 p1, p1, -0x2

    if-ge p1, v4, :cond_7

    iget p1, p0, Lvmaps/core/c;->a:I

    add-int/lit8 p1, p1, -0x2

    if-gez p1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, p0, Lvmaps/core/c;->a:I

    add-int/lit8 v2, p1, -0x2

    goto :goto_4

    :cond_7
    if-gez v4, :cond_8

    goto :goto_4

    :cond_8
    move v2, v4

    :goto_4
    return v2
.end method

.method private c(D)I
    .locals 9

    iget v0, p0, Lvmaps/core/c;->b:I

    iget v1, p0, Lvmaps/core/c;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_a

    iget v4, p0, Lvmaps/core/c;->a:I

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_1

    goto :goto_6

    :cond_1
    int-to-double v4, v0

    cmpl-double v6, p1, v4

    if-ltz v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ne v4, v1, :cond_6

    const/4 v4, 0x1

    :goto_2
    add-int v5, v0, v4

    iget v6, p0, Lvmaps/core/c;->a:I

    sub-int/2addr v6, v2

    if-lt v5, v6, :cond_3

    iget v4, p0, Lvmaps/core/c;->a:I

    add-int/lit8 v5, v4, -0x1

    goto :goto_8

    :cond_3
    int-to-double v6, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-ne v6, v1, :cond_5

    goto :goto_8

    :cond_5
    add-int/2addr v4, v4

    move v0, v5

    goto :goto_2

    :cond_6
    move v5, v0

    const/4 v0, 0x1

    :goto_4
    sub-int v4, v5, v0

    if-gtz v4, :cond_7

    goto :goto_7

    :cond_7
    int-to-double v6, v4

    cmpl-double v8, p1, v6

    if-ltz v8, :cond_8

    const/4 v6, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    :goto_5
    if-ne v6, v1, :cond_9

    goto :goto_a

    :cond_9
    add-int/2addr v0, v0

    move v5, v4

    goto :goto_4

    :cond_a
    :goto_6
    iget v0, p0, Lvmaps/core/c;->a:I

    add-int/lit8 v5, v0, -0x1

    :goto_7
    const/4 v0, 0x0

    :goto_8
    sub-int v4, v5, v0

    if-le v4, v2, :cond_d

    add-int v4, v5, v0

    shr-int/2addr v4, v2

    int-to-double v6, v4

    cmpl-double v8, p1, v6

    if-ltz v8, :cond_b

    const/4 v6, 0x1

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    :goto_9
    if-ne v6, v1, :cond_c

    :goto_a
    move v0, v4

    goto :goto_8

    :cond_c
    move v5, v4

    goto :goto_8

    :cond_d
    iget p1, p0, Lvmaps/core/c;->b:I

    if-lt v0, p1, :cond_f

    iget p1, p0, Lvmaps/core/c;->b:I

    sub-int p1, v0, p1

    iget p2, p0, Lvmaps/core/c;->c:I

    if-gt p1, p2, :cond_e

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    goto :goto_b

    :cond_f
    iget p1, p0, Lvmaps/core/c;->b:I

    sub-int/2addr p1, v0

    iget p2, p0, Lvmaps/core/c;->c:I

    if-gt p1, p2, :cond_e

    :goto_b
    iput-boolean v2, p0, Lvmaps/core/c;->d:Z

    iput v0, p0, Lvmaps/core/c;->b:I

    iget p1, p0, Lvmaps/core/c;->a:I

    add-int/lit8 p1, p1, -0x2

    if-ge p1, v0, :cond_11

    iget p1, p0, Lvmaps/core/c;->a:I

    add-int/lit8 p1, p1, -0x2

    if-gez p1, :cond_10

    goto :goto_c

    :cond_10
    iget p1, p0, Lvmaps/core/c;->a:I

    add-int/lit8 v3, p1, -0x2

    goto :goto_c

    :cond_11
    if-gez v0, :cond_12

    goto :goto_c

    :cond_12
    move v3, v0

    :goto_c
    return v3
.end method


# virtual methods
.method a(D)I
    .locals 1

    iget-boolean v0, p0, Lvmaps/core/c;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lvmaps/core/c;->c(D)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lvmaps/core/c;->b(D)I

    move-result p1

    :goto_0
    return p1
.end method
