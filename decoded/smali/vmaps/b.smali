.class public Lvmaps/b;
.super Ljava/lang/Object;


# instance fields
.field public a:S


# direct methods
.method public constructor <init>(S)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lvmaps/b;->a:S

    iput-short p1, p0, Lvmaps/b;->a:S

    return-void
.end method

.method private b([SIII)V
    .locals 9

    div-int/lit8 p4, p4, 0x2

    new-array v0, p2, [S

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_a

    neg-int v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v4, p2, :cond_5

    sub-int v7, v4, p4

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_1

    add-int/2addr v7, v3

    aget-short v7, p1, v7

    if-eqz v7, :cond_0

    sub-int/2addr v5, v7

    :cond_0
    add-int/lit8 v6, v6, -0x1

    :cond_1
    add-int v7, v4, p4

    if-ge v7, p2, :cond_3

    add-int/2addr v7, v3

    aget-short v7, p1, v7

    if-eqz v7, :cond_2

    add-int/2addr v5, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    :cond_3
    if-ltz v4, :cond_4

    div-int v7, v5, v6

    int-to-short v7, v7

    aput-short v7, v0, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-ge v4, p2, :cond_9

    aget-short v5, v0, v4

    iget-short v6, p0, Lvmaps/b;->a:S

    if-ge v5, v6, :cond_7

    add-int v5, v3, v4

    aget-short v5, p1, v5

    iget-short v6, p0, Lvmaps/b;->a:S

    if-ge v5, v6, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    iget-short v5, p0, Lvmaps/b;->a:S

    :cond_7
    :goto_3
    add-int v6, v3, v4

    aget-short v7, p1, v6

    iget-short v8, p0, Lvmaps/b;->a:S

    if-lt v7, v8, :cond_8

    aput-short v5, p1, v6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr v3, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    return-void
.end method

.method private c([SIII)V
    .locals 10

    div-int/lit8 p4, p4, 0x2

    new-array v0, p3, [S

    add-int/lit8 v1, p4, 0x1

    neg-int v1, v1

    mul-int v1, v1, p2

    mul-int v2, p4, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_a

    neg-int v5, p4

    mul-int v6, v5, p2

    add-int/2addr v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v5, p3, :cond_5

    sub-int v9, v5, p4

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_1

    add-int v9, v6, v1

    aget-short v9, p1, v9

    if-eqz v9, :cond_0

    sub-int/2addr v7, v9

    :cond_0
    add-int/lit8 v8, v8, -0x1

    :cond_1
    add-int v9, v5, p4

    if-ge v9, p3, :cond_3

    add-int v9, v6, v2

    aget-short v9, p1, v9

    if-eqz v9, :cond_2

    add-int/2addr v7, v9

    :cond_2
    add-int/lit8 v8, v8, 0x1

    :cond_3
    if-ltz v5, :cond_4

    div-int v9, v7, v8

    int-to-short v9, v9

    aput-short v9, v0, v5

    :cond_4
    add-int/2addr v6, p2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-ge v5, p3, :cond_9

    aget-short v6, v0, v5

    iget-short v7, p0, Lvmaps/b;->a:S

    if-ge v6, v7, :cond_7

    mul-int v6, v5, p2

    add-int/2addr v6, v4

    aget-short v6, p1, v6

    iget-short v7, p0, Lvmaps/b;->a:S

    if-ge v6, v7, :cond_6

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    iget-short v6, p0, Lvmaps/b;->a:S

    :cond_7
    :goto_3
    mul-int v7, v5, p2

    add-int/2addr v7, v4

    aget-short v8, p1, v7

    iget-short v9, p0, Lvmaps/b;->a:S

    if-lt v8, v9, :cond_8

    aput-short v6, p1, v7

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public a([SIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lvmaps/b;->b([SIII)V

    invoke-direct {p0, p1, p2, p3, p4}, Lvmaps/b;->c([SIII)V

    return-void
.end method

.method public a([SIIIII)[S
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p3

    array-length v2, v0

    new-array v2, v2, [S

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    mul-int v4, v3, p2

    aget-short v5, v0, v4

    aput-short v5, v2, v4

    add-int/lit8 v5, p2, -0x1

    add-int v6, v4, v5

    aget-short v7, v0, v6

    aput-short v7, v2, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_1
    if-ge v7, v5, :cond_3

    add-int v8, v4, v7

    if-lez v3, :cond_0

    sub-int v9, v8, p2

    add-int/lit8 v10, v9, -0x1

    aget-short v10, v0, v10

    aget-short v11, v0, v9

    add-int/2addr v9, v6

    aget-short v9, v0, v9

    move/from16 v18, v11

    move v11, v9

    move v9, v10

    move/from16 v10, v18

    goto :goto_2

    :cond_0
    aget-short v10, v0, v8

    move v9, v10

    move v11, v9

    :goto_2
    add-int/lit8 v12, v8, -0x1

    aget-short v12, v0, v12

    aget-short v6, v0, v8

    add-int/lit8 v14, v8, 0x1

    aget-short v14, v0, v14

    move v15, v4

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    add-int v4, v8, p2

    add-int/lit8 v16, v4, -0x1

    aget-short v16, v0, v16

    aget-short v17, v0, v4

    const/4 v13, 0x1

    add-int/2addr v4, v13

    aget-short v4, v0, v4

    goto :goto_3

    :cond_1
    move v4, v6

    move/from16 v16, v4

    move/from16 v17, v16

    :goto_3
    if-lez v6, :cond_2

    if-lez v10, :cond_2

    if-lez v17, :cond_2

    if-lez v14, :cond_2

    if-lez v12, :cond_2

    if-lez v9, :cond_2

    if-lez v11, :cond_2

    if-lez v16, :cond_2

    if-lez v4, :cond_2

    mul-int v6, v6, p4

    add-int/2addr v10, v12

    add-int/2addr v10, v14

    add-int v10, v10, v17

    mul-int v10, v10, p5

    add-int/2addr v6, v10

    add-int/2addr v9, v11

    add-int v9, v9, v16

    add-int/2addr v9, v4

    mul-int v4, p6, v9

    add-int/2addr v6, v4

    const/4 v4, 0x1

    mul-int/lit8 v9, p4, 0x1

    mul-int/lit8 v10, p5, 0x4

    add-int/2addr v9, v10

    mul-int/lit8 v10, p6, 0x4

    add-int/2addr v9, v10

    div-int/2addr v6, v9

    int-to-short v6, v6

    aput-short v6, v2, v8

    goto :goto_4

    :cond_2
    const/4 v4, 0x1

    int-to-short v6, v6

    aput-short v6, v2, v8

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v4, v15

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v2
.end method
