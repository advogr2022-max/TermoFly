.class public Lvmaps/core/a;
.super Ljava/lang/Object;


# instance fields
.field public a:D

.field public b:D

.field public c:I

.field public d:I

.field public e:F

.field f:Lvmaps/core/d;

.field public g:I

.field public h:I

.field private i:I

.field private final j:I

.field private final k:I

.field private final l:[S

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:[D

.field private r:Z


# direct methods
.method public constructor <init>(Lvmaps/core/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvmaps/core/a;->i:I

    const-wide v1, 0x4073b00000000000L    # 315.0

    iput-wide v1, p0, Lvmaps/core/a;->a:D

    const-wide v1, 0x4050400000000000L    # 65.0

    iput-wide v1, p0, Lvmaps/core/a;->b:D

    const/4 v1, 0x2

    iput v1, p0, Lvmaps/core/a;->c:I

    iget v1, p0, Lvmaps/core/a;->c:I

    const/16 v2, 0x10e

    div-int/2addr v2, v1

    iput v2, p0, Lvmaps/core/a;->d:I

    const-wide/high16 v1, 0x406e000000000000L    # 240.0

    iput-wide v1, p0, Lvmaps/core/a;->m:D

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lvmaps/core/a;->e:F

    iput-boolean v0, p0, Lvmaps/core/a;->r:Z

    const/4 v1, 0x4

    iput v1, p0, Lvmaps/core/a;->g:I

    iput v0, p0, Lvmaps/core/a;->h:I

    iget v0, p1, Lvmaps/core/d;->c:I

    iput v0, p0, Lvmaps/core/a;->j:I

    iget v0, p1, Lvmaps/core/d;->d:I

    iput v0, p0, Lvmaps/core/a;->k:I

    iget-object v0, p1, Lvmaps/core/d;->b:[S

    iput-object v0, p0, Lvmaps/core/a;->l:[S

    iput-object p1, p0, Lvmaps/core/a;->f:Lvmaps/core/d;

    const/16 p1, 0x3e8

    iput p1, p0, Lvmaps/core/a;->i:I

    return-void
.end method

.method private b()V
    .locals 13

    iget-wide v0, p0, Lvmaps/core/a;->b:D

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v0, v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v6

    iput-wide v0, p0, Lvmaps/core/a;->n:D

    iget-wide v0, p0, Lvmaps/core/a;->n:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lvmaps/core/a;->o:D

    iget-wide v0, p0, Lvmaps/core/a;->n:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lvmaps/core/a;->p:D

    iget v0, p0, Lvmaps/core/a;->c:I

    new-array v0, v0, [D

    iput-object v0, p0, Lvmaps/core/a;->q:[D

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v8, p0, Lvmaps/core/a;->c:I

    if-ge v1, v8, :cond_1

    iget-wide v8, p0, Lvmaps/core/a;->a:D

    iget v10, p0, Lvmaps/core/a;->d:I

    mul-int v10, v10, v1

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    const-wide v10, 0x4076800000000000L    # 360.0

    rem-double/2addr v8, v10

    sub-double v8, v10, v8

    add-double/2addr v8, v2

    cmpl-double v12, v8, v10

    if-ltz v12, :cond_0

    sub-double/2addr v8, v10

    :cond_0
    mul-double v8, v8, v4

    div-double/2addr v8, v6

    iget-object v10, p0, Lvmaps/core/a;->q:[D

    aput-wide v8, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lvmaps/core/a;->b:D

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lvmaps/core/a;->r:Z

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lvmaps/core/a;->j:I

    sub-int v1, p1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v3, v0, Lvmaps/core/a;->l:[S

    aget-short v3, v3, v1

    iget-object v4, v0, Lvmaps/core/a;->l:[S

    add-int/2addr v1, v2

    aget-short v4, v4, v1

    iget-object v5, v0, Lvmaps/core/a;->l:[S

    add-int/2addr v1, v2

    aget-short v5, v5, v1

    iget v6, v0, Lvmaps/core/a;->j:I

    add-int/lit8 v6, v6, -0x2

    add-int/2addr v1, v6

    iget-object v6, v0, Lvmaps/core/a;->l:[S

    aget-short v6, v6, v1

    iget-object v7, v0, Lvmaps/core/a;->l:[S

    add-int/2addr v1, v2

    aget-short v7, v7, v1

    iget v8, v0, Lvmaps/core/a;->i:I

    const/4 v9, 0x0

    if-ge v7, v8, :cond_0

    return v9

    :cond_0
    iget-object v7, v0, Lvmaps/core/a;->l:[S

    add-int/2addr v1, v2

    aget-short v7, v7, v1

    iget v8, v0, Lvmaps/core/a;->j:I

    add-int/lit8 v8, v8, -0x2

    add-int/2addr v1, v8

    iget-object v8, v0, Lvmaps/core/a;->l:[S

    aget-short v8, v8, v1

    iget-object v10, v0, Lvmaps/core/a;->l:[S

    add-int/2addr v1, v2

    aget-short v10, v10, v1

    iget-object v11, v0, Lvmaps/core/a;->l:[S

    add-int/2addr v1, v2

    aget-short v1, v11, v1

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    add-int/2addr v7, v1

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    add-int/2addr v6, v8

    sub-int/2addr v7, v6

    int-to-double v6, v7

    iget-wide v11, v0, Lvmaps/core/a;->m:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v11

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    add-int/2addr v8, v1

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    sub-int/2addr v8, v3

    int-to-double v3, v8

    iget-wide v10, v0, Lvmaps/core/a;->m:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v10

    iget v1, v0, Lvmaps/core/a;->e:F

    float-to-double v10, v1

    mul-double v12, v6, v6

    mul-double v14, v3, v3

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/16 v14, 0x0

    cmpl-double v1, v6, v14

    if-eqz v1, :cond_2

    neg-double v5, v6

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    cmpg-double v1, v3, v14

    if-gez v1, :cond_1

    add-double/2addr v12, v3

    goto :goto_0

    :cond_1
    move-wide v12, v3

    goto :goto_0

    :cond_2
    cmpl-double v1, v3, v14

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    cmpg-double v1, v3, v14

    if-gez v1, :cond_4

    const-wide v12, 0x4012d97c7f3321d2L    # 4.71238898038469

    goto :goto_0

    :cond_4
    move-wide v12, v14

    :goto_0
    iget-boolean v1, v0, Lvmaps/core/a;->r:Z

    const-wide v3, 0x406fe00000000000L    # 255.0

    if-eqz v1, :cond_5

    iget-wide v1, v0, Lvmaps/core/a;->p:D

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    :goto_1
    mul-double v1, v1, v3

    double-to-int v1, v1

    :goto_2
    rsub-int v1, v1, 0xff

    return v1

    :cond_5
    iget v1, v0, Lvmaps/core/a;->c:I

    if-le v1, v2, :cond_7

    :goto_3
    iget v1, v0, Lvmaps/core/a;->c:I

    if-ge v9, v1, :cond_6

    iget-wide v1, v0, Lvmaps/core/a;->p:D

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    iget-wide v5, v0, Lvmaps/core/a;->o:D

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    iget-object v7, v0, Lvmaps/core/a;->q:[D

    aget-wide v16, v7, v9

    sub-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    add-double/2addr v1, v5

    mul-double v1, v1, v3

    add-double/2addr v14, v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    iget v1, v0, Lvmaps/core/a;->c:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v1

    double-to-int v1, v14

    goto :goto_2

    :cond_7
    iget-wide v1, v0, Lvmaps/core/a;->p:D

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    iget-wide v5, v0, Lvmaps/core/a;->o:D

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    iget-object v7, v0, Lvmaps/core/a;->q:[D

    aget-wide v8, v7, v9

    sub-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    add-double/2addr v1, v5

    goto :goto_1
.end method

.method public a(DDI)Lvmaps/core/a;
    .locals 0

    iput-wide p1, p0, Lvmaps/core/a;->a:D

    iput-wide p3, p0, Lvmaps/core/a;->b:D

    iput p5, p0, Lvmaps/core/a;->c:I

    iget p1, p0, Lvmaps/core/a;->c:I

    const/16 p2, 0x10e

    div-int/2addr p2, p1

    iput p2, p0, Lvmaps/core/a;->d:I

    return-object p0
.end method

.method public a(FI)Lvmaps/core/a;
    .locals 0

    iput p1, p0, Lvmaps/core/a;->e:F

    mul-int/lit8 p2, p2, 0x8

    int-to-double p1, p2

    iput-wide p1, p0, Lvmaps/core/a;->m:D

    return-object p0
.end method

.method public a()[I
    .locals 15

    invoke-direct {p0}, Lvmaps/core/a;->b()V

    iget v0, p0, Lvmaps/core/a;->j:I

    iget v1, p0, Lvmaps/core/a;->k:I

    mul-int v0, v0, v1

    new-array v1, v0, [I

    iget v2, p0, Lvmaps/core/a;->j:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lvmaps/core/a;->j:I

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lvmaps/core/a;->h:I

    iget v5, p0, Lvmaps/core/a;->g:I

    iget-object v6, p0, Lvmaps/core/a;->f:Lvmaps/core/d;

    iget-object v6, v6, Lvmaps/core/d;->n:Lvmaps/core/f;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v0, :cond_8

    iget-object v9, p0, Lvmaps/core/a;->l:[S

    aget-short v9, v9, v8

    add-int/lit16 v10, v9, -0x3e8

    invoke-virtual {v6, v10}, Lvmaps/core/f;->a(I)I

    move-result v10

    iget v11, p0, Lvmaps/core/a;->i:I

    if-lt v9, v11, :cond_7

    if-le v8, v2, :cond_7

    if-ge v8, v3, :cond_7

    invoke-virtual {p0, v8}, Lvmaps/core/a;->a(I)I

    move-result v9

    shr-int/lit8 v11, v10, 0x10

    const/16 v12, 0xff

    and-int/2addr v11, v12

    shr-int/lit8 v13, v10, 0x8

    and-int/2addr v13, v12

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v11, v4

    add-int/2addr v13, v4

    add-int/2addr v10, v4

    if-lez v9, :cond_2

    int-to-float v9, v9

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v9, v14

    add-int v14, v11, v13

    add-int/2addr v14, v10

    div-int/2addr v14, v5

    int-to-float v14, v14

    int-to-float v11, v11

    mul-float v9, v9, v14

    sub-float/2addr v11, v9

    float-to-int v11, v11

    if-gez v11, :cond_0

    const/4 v11, 0x0

    :cond_0
    int-to-float v13, v13

    sub-float/2addr v13, v9

    float-to-int v13, v13

    if-gez v13, :cond_1

    const/4 v13, 0x0

    :cond_1
    int-to-float v10, v10

    sub-float/2addr v10, v9

    float-to-int v9, v10

    if-gez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    move v9, v10

    :cond_3
    :goto_1
    if-le v11, v12, :cond_4

    const/16 v11, 0xff

    :cond_4
    if-le v13, v12, :cond_5

    const/16 v13, 0xff

    :cond_5
    if-le v9, v12, :cond_6

    const/16 v9, 0xff

    :cond_6
    const/high16 v10, -0x1000000

    and-int/2addr v11, v12

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    and-int/lit16 v11, v13, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    and-int/2addr v9, v12

    or-int/2addr v10, v9

    :cond_7
    aput v10, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    return-object v1
.end method
