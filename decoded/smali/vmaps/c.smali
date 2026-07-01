.class public Lvmaps/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a([I)I
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget p1, p1, v1

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private a()Lvmaps/c;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lvmaps/c;->c(I)[I

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-direct {p0, v2, v3}, Lvmaps/c;->a([IF)V

    const/4 v3, 0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x10

    aput v4, v2, v3

    const/16 v5, 0xff

    if-le v4, v5, :cond_0

    aput v5, v2, v3

    :cond_0
    aget v3, v2, v0

    add-int/lit8 v3, v3, 0xa

    aput v3, v2, v0

    if-le v3, v5, :cond_1

    aput v5, v2, v0

    :cond_1
    invoke-direct {p0, v1, v2}, Lvmaps/c;->a(I[I)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private a(I[I)V
    .locals 1

    iget-object v0, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lvmaps/c;->a(I[ILjava/util/ArrayList;)V

    return-void
.end method

.method private a(I[ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    mul-int/lit8 v2, v1, 0x3

    invoke-direct {p0, v2, p1}, Lvmaps/c;->a(ILjava/util/ArrayList;)[I

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-direct {p0, v2}, Lvmaps/c;->c(I)[I

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {p0, v3, v4, v5, v5}, Lvmaps/c;->a([I[III)V

    :cond_0
    invoke-direct {p0, v2, v3}, Lvmaps/c;->a(I[I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a([IF)V
    .locals 4

    invoke-direct {p0, p1}, Lvmaps/c;->a([I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    int-to-float v3, v0

    mul-float v3, v3, p2

    int-to-float v2, v2

    add-float/2addr v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, p2

    div-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([II)V
    .locals 5

    iget-object v0, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    iget-object v2, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v2, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    aput v0, v1, v2

    invoke-direct {p0, v1, p1, p2}, Lvmaps/c;->a([I[II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lvmaps/c;->a([ILjava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method private a([ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    aget v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a([I[II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lvmaps/c;->b([I[II)[I

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    aget v0, p1, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([I[III)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    mul-int v1, v1, p3

    mul-int v2, v2, p4

    add-int/2addr v1, v2

    add-int v2, p3, p4

    div-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(ILjava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    aput p1, v0, v2

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    aput p1, v0, p2

    return-object v0
.end method

.method private b(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, p1, 0x3

    sub-int v3, v2, v3

    if-gez v3, :cond_0

    move v3, v2

    :cond_0
    invoke-direct {p0, v3}, Lvmaps/c;->c(I)[I

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lvmaps/c;->a([ILjava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private b([I[II)[I
    .locals 9

    int-to-float v0, p3

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    aget v4, p2, v3

    aget v5, p1, v3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p3, :cond_0

    aget v6, p1, v3

    add-int/lit8 v7, v5, 0x1

    int-to-float v8, v7

    mul-float v8, v8, v4

    float-to-int v8, v8

    add-int/2addr v6, v8

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v3

    aput v6, v1, v5

    move v5, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private c(I)[I
    .locals 1

    iget-object v0, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lvmaps/c;->a(ILjava/util/ArrayList;)[I

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)Lvmaps/c;
    .locals 9

    const/16 v0, 0x84

    const/16 v1, 0x28

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq p1, v2, :cond_1

    const/16 v2, 0x14

    const/4 v5, 0x1

    const/16 v6, 0x8c

    const/16 v7, 0x18

    const/16 v8, 0x30

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-array p1, v4, [I

    fill-array-data p1, :array_0

    invoke-direct {p0, p1, v3}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_1

    invoke-direct {p0, p1, v1}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_2

    invoke-direct {p0, p1, v1}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_3

    invoke-direct {p0, p1, v1}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_4

    invoke-direct {p0, p1, v0}, Lvmaps/c;->a([II)V

    goto/16 :goto_1

    :pswitch_1
    new-array p1, v4, [I

    fill-array-data p1, :array_5

    invoke-direct {p0, p1, v3}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_6

    invoke-direct {p0, p1, v8}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_7

    invoke-direct {p0, p1, v8}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_8

    invoke-direct {p0, p1, v7}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_9

    invoke-direct {p0, p1, v6}, Lvmaps/c;->a([II)V

    goto :goto_0

    :pswitch_2
    new-array p1, v4, [I

    fill-array-data p1, :array_a

    invoke-direct {p0, p1, v3}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_b

    invoke-direct {p0, p1, v8}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_c

    invoke-direct {p0, p1, v8}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_d

    invoke-direct {p0, p1, v7}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_e

    invoke-direct {p0, p1, v6}, Lvmaps/c;->a([II)V

    iget-object p1, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/2addr p1, v4

    div-int/lit8 p1, p1, 0x1a

    add-int/2addr p1, v5

    invoke-direct {p0, p1}, Lvmaps/c;->b(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lvmaps/c;->a(Ljava/util/ArrayList;Z)V

    :goto_0
    invoke-direct {p0}, Lvmaps/c;->a()Lvmaps/c;

    goto/16 :goto_1

    :pswitch_3
    new-array p1, v4, [I

    fill-array-data p1, :array_f

    invoke-direct {p0, p1, v3}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_10

    invoke-direct {p0, p1, v8}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_11

    invoke-direct {p0, p1, v8}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_12

    invoke-direct {p0, p1, v7}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_13

    invoke-direct {p0, p1, v6}, Lvmaps/c;->a([II)V

    iget-object p1, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/2addr p1, v4

    div-int/lit8 p1, p1, 0x1a

    add-int/2addr p1, v5

    invoke-direct {p0, p1}, Lvmaps/c;->b(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lvmaps/c;->a(Ljava/util/ArrayList;Z)V

    goto/16 :goto_1

    :pswitch_4
    new-array p1, v4, [I

    fill-array-data p1, :array_14

    invoke-direct {p0, p1, v3}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_15

    invoke-direct {p0, p1, v8}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_16

    invoke-direct {p0, p1, v8}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_17

    invoke-direct {p0, p1, v7}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_18

    invoke-direct {p0, p1, v6}, Lvmaps/c;->a([II)V

    goto :goto_1

    :cond_0
    new-array p1, v4, [I

    fill-array-data p1, :array_19

    invoke-direct {p0, p1, v3}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_1a

    invoke-direct {p0, p1, v8}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_1b

    invoke-direct {p0, p1, v8}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_1c

    invoke-direct {p0, p1, v7}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_1d

    invoke-direct {p0, p1, v6}, Lvmaps/c;->a([II)V

    iget-object p1, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/2addr p1, v4

    div-int/lit8 p1, p1, 0x1a

    add-int/2addr p1, v5

    invoke-direct {p0, p1}, Lvmaps/c;->b(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lvmaps/c;->a(Ljava/util/ArrayList;Z)V

    goto :goto_1

    :cond_1
    new-array p1, v4, [I

    fill-array-data p1, :array_1e

    invoke-direct {p0, p1, v3}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_1f

    invoke-direct {p0, p1, v1}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_20

    invoke-direct {p0, p1, v1}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_21

    invoke-direct {p0, p1, v1}, Lvmaps/c;->a([II)V

    new-array p1, v4, [I

    fill-array-data p1, :array_22

    invoke-direct {p0, p1, v0}, Lvmaps/c;->a([II)V

    invoke-virtual {p0, v2, v3}, Lvmaps/c;->a(II)Lvmaps/c;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x5b
        0x82
        0x55
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0x9c
    .end array-data

    :array_2
    .array-data 4
        0x9c
        0x69
        0x3a
    .end array-data

    :array_3
    .array-data 4
        0xbe
        0xbe
        0xbe
    .end array-data

    :array_4
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xc8
        0xe6
        0xaa
    .end array-data

    :array_6
    .array-data 4
        0xff
        0xff
        0xa6
    .end array-data

    :array_7
    .array-data 4
        0xb7
        0x87
        0x54
    .end array-data

    :array_8
    .array-data 4
        0xc8
        0xc8
        0xc8
    .end array-data

    :array_9
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    :array_a
    .array-data 4
        0xc8
        0xe6
        0xaa
    .end array-data

    :array_b
    .array-data 4
        0xff
        0xff
        0xa6
    .end array-data

    :array_c
    .array-data 4
        0xb7
        0x87
        0x54
    .end array-data

    :array_d
    .array-data 4
        0xc8
        0xc8
        0xc8
    .end array-data

    :array_e
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    :array_f
    .array-data 4
        0x82
        0xbe
        0x64
    .end array-data

    :array_10
    .array-data 4
        0xff
        0xff
        0xa6
    .end array-data

    :array_11
    .array-data 4
        0xb7
        0x87
        0x54
    .end array-data

    :array_12
    .array-data 4
        0xc8
        0xc8
        0xc8
    .end array-data

    :array_13
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    :array_14
    .array-data 4
        0xa0
        0xc8
        0x8c
    .end array-data

    :array_15
    .array-data 4
        0xff
        0xff
        0xa6
    .end array-data

    :array_16
    .array-data 4
        0xb7
        0x87
        0x54
    .end array-data

    :array_17
    .array-data 4
        0xc8
        0xc8
        0xc8
    .end array-data

    :array_18
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    :array_19
    .array-data 4
        0xaa
        0xdc
        0x78
    .end array-data

    :array_1a
    .array-data 4
        0xff
        0xff
        0xa6
    .end array-data

    :array_1b
    .array-data 4
        0xb7
        0x87
        0x54
    .end array-data

    :array_1c
    .array-data 4
        0xc8
        0xc8
        0xc8
    .end array-data

    :array_1d
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    :array_1e
    .array-data 4
        0x5a
        0x96
        0x46
    .end array-data

    :array_1f
    .array-data 4
        0xf0
        0xf0
        0x9c
    .end array-data

    :array_20
    .array-data 4
        0x9c
        0x69
        0x3a
    .end array-data

    :array_21
    .array-data 4
        0xbe
        0xbe
        0xbe
    .end array-data

    :array_22
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method

.method public a(II)Lvmaps/c;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lvmaps/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-direct {p0, v1}, Lvmaps/c;->c(I)[I

    move-result-object v2

    if-eqz p2, :cond_0

    int-to-float v3, p2

    invoke-direct {p0, v2, v3}, Lvmaps/c;->a([IF)V

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    aget v4, v2, v3

    add-int/2addr v4, p1

    const/16 v5, 0xff

    if-le v4, v5, :cond_1

    const/16 v4, 0xff

    :cond_1
    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, v2}, Lvmaps/c;->a(I[I)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    return-object p0
.end method
