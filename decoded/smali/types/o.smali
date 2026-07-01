.class public Ltypes/o;
.super Ljava/lang/Object;


# static fields
.field static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4c

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ltypes/o;->a:[F

    return-void

    :array_0
    .array-data 4
        0x42400000    # 48.0f
        0x428c0000    # 70.0f
        -0x3e800000    # -16.0f
        0x41400000    # 12.0f
        0x42400000    # 48.0f
        0x428c0000    # 70.0f
        0x41400000    # 12.0f
        0x42100000    # 36.0f
        0x42080000    # 34.0f
        0x42400000    # 48.0f
        0x41400000    # 12.0f
        0x42100000    # 36.0f
        0x42080000    # 34.0f
        0x42400000    # 48.0f
        -0x3e800000    # -16.0f
        0x41400000    # 12.0f
        -0x3de00000    # -40.0f
        -0x3e400000    # -24.0f
        0x430c0000    # 140.0f
        0x431a0000    # 154.0f
        -0x3dc00000    # -48.0f
        -0x3e000000    # -32.0f
        0x43240000    # 164.0f
        0x43340000    # 180.0f
        -0x3df40000    # -35.0f
        0x0
        0x41000000    # 8.0f
        0x42300000    # 44.0f
        -0x3de00000    # -40.0f
        0x41400000    # 12.0f
        -0x3da00000    # -56.0f
        -0x3e000000    # -32.0f
        -0x3de00000    # -40.0f
        0x41400000    # 12.0f
        -0x3d580000    # -84.0f
        -0x3da00000    # -56.0f
        0x41e00000    # 28.0f
        0x42600000    # 56.0f
        -0x3d000000    # -128.0f
        -0x3d300000    # -104.0f
        0x41c00000    # 24.0f
        0x42000000    # 32.0f
        0x42900000    # 72.0f
        0x42c00000    # 96.0f
        0x42000000    # 32.0f
        0x42500000    # 52.0f
        0x42100000    # 36.0f
        0x42b80000    # 92.0f
        0x42000000    # 32.0f
        0x42500000    # 52.0f
        0x42b80000    # 92.0f
        0x43100000    # 144.0f
        -0x3ee00000    # -10.0f
        0x42000000    # 32.0f
        0x42b80000    # 92.0f
        0x43100000    # 144.0f
        -0x3ee00000    # -10.0f
        0x42000000    # 32.0f
        0x42100000    # 36.0f
        0x42b80000    # 92.0f
        0x40800000    # 4.0f
        0x41e00000    # 28.0f
        -0x3d180000    # -116.0f
        -0x3d6c0000    # -74.0f
        0x41c00000    # 24.0f
        0x42080000    # 34.0f
        -0x3e900000    # -15.0f
        0x42080000    # 34.0f
        0x41c00000    # 24.0f
        0x42500000    # 52.0f
        -0x3d300000    # -104.0f
        -0x3db00000    # -52.0f
        0x42700000    # 60.0f
        0x42880000    # 68.0f
        -0x3e200000    # -28.0f
        -0x3ec00000    # -12.0f
    .end array-data
.end method

.method public static a()I
    .locals 1

    sget-object v0, Ltypes/o;->a:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static a(FFFF)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Ltypes/n;->a:F

    sget v2, Ltypes/n;->b:F

    const/4 v3, 0x0

    cmpg-float v4, p0, v3

    if-gez v4, :cond_0

    sub-float/2addr p0, v1

    :cond_0
    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    sub-float/2addr p1, v2

    :cond_1
    sget v3, Ltypes/n;->a:F

    div-float/2addr p0, v3

    float-to-int p0, p0

    int-to-float p0, p0

    sget v3, Ltypes/n;->a:F

    mul-float p0, p0, v3

    sget v3, Ltypes/n;->b:F

    div-float/2addr p1, v3

    float-to-int p1, p1

    int-to-float p1, p1

    sget v3, Ltypes/n;->b:F

    mul-float p1, p1, v3

    :goto_0
    cmpg-float v3, p1, p3

    if-gez v3, :cond_3

    move v3, p0

    :goto_1
    cmpg-float v4, v3, p2

    if-gez v4, :cond_2

    invoke-static {v3, p1}, Ltypes/n;->a(FF)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v3, v1

    goto :goto_1

    :cond_2
    add-float/2addr p1, v2

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static a(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x4

    sget-object v0, Ltypes/o;->a:[F

    add-int/lit8 v1, p0, 0x1

    aget p0, v0, p0

    sget-object v0, Ltypes/o;->a:[F

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    sget-object v1, Ltypes/o;->a:[F

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v2

    sget-object v2, Ltypes/o;->a:[F

    aget v2, v2, v3

    invoke-static {p0, v1, v0, v2}, Ltypes/o;->a(FFFF)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ltypes/g;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltypes/g;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v0, p0, Ltypes/g;->a:F

    iget v1, p0, Ltypes/g;->c:F

    iget v2, p0, Ltypes/g;->b:F

    iget p0, p0, Ltypes/g;->d:F

    invoke-static {v0, v1, v2, p0}, Ltypes/o;->a(FFFF)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ltypes/g;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    const/16 v4, 0x39

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-lt v2, v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p0, v1, v2}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    invoke-static {p0, v3, v0}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_3

    neg-int v1, v1

    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v2, 0x77

    if-ne p0, v2, :cond_4

    neg-int v0, v0

    :cond_4
    sget p0, Ltypes/n;->a:F

    int-to-float v1, v1

    mul-float p0, p0, v1

    sget v1, Ltypes/n;->b:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    new-instance v0, Ltypes/g;

    invoke-direct {v0}, Ltypes/g;-><init>()V

    invoke-virtual {v0, p0, v1}, Ltypes/g;->a(FF)V

    sget v2, Ltypes/n;->a:F

    add-float/2addr p0, v2

    sget v2, Ltypes/n;->b:F

    add-float/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Ltypes/g;->a(FF)V

    return-object v0
.end method

.method public static b(Ltypes/g;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltypes/g;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ltypes/o;->a()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    invoke-static {v2}, Ltypes/o;->b(I)Ltypes/g;

    move-result-object v3

    invoke-virtual {v3, p0}, Ltypes/g;->c(Ltypes/g;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(I)Ltypes/g;
    .locals 4

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x4

    sget-object v0, Ltypes/o;->a:[F

    add-int/lit8 v1, p0, 0x1

    aget p0, v0, p0

    sget-object v0, Ltypes/o;->a:[F

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    sget-object v1, Ltypes/o;->a:[F

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v2

    sget-object v2, Ltypes/o;->a:[F

    aget v2, v2, v3

    new-instance v3, Ltypes/g;

    invoke-direct {v3, p0, v1, v0, v2}, Ltypes/g;-><init>(FFFF)V

    return-object v3
.end method
