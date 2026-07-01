.class public Lvmaps/core/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvmaps/core/d$a;
    }
.end annotation


# instance fields
.field public a:Ltypes/g;

.field public b:[S

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:Lvmaps/core/f;

.field public o:Z

.field public p:I

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvmaps/core/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Z


# direct methods
.method public constructor <init>(Ltypes/g;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvmaps/core/d;->o:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvmaps/core/d;->q:Ljava/util/ArrayList;

    new-instance v0, Ltypes/g;

    invoke-direct {v0}, Ltypes/g;-><init>()V

    iput-object v0, p0, Lvmaps/core/d;->a:Ltypes/g;

    iget-object v0, p0, Lvmaps/core/d;->a:Ltypes/g;

    invoke-virtual {v0, p1}, Ltypes/g;->b(Ltypes/g;)V

    iput p2, p0, Lvmaps/core/d;->c:I

    iput p3, p0, Lvmaps/core/d;->d:I

    iput p4, p0, Lvmaps/core/d;->e:I

    invoke-direct {p0}, Lvmaps/core/d;->b()V

    return-void
.end method

.method private a(IIII)I
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    mul-int v0, v0, p3

    mul-int v1, v1, p4

    add-int/2addr v0, v1

    add-int v1, p3, p4

    div-int/2addr v0, v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    mul-int v2, v2, p3

    mul-int v3, v3, p4

    add-int/2addr v2, v3

    div-int/2addr v2, v1

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p2, 0xff

    mul-int p3, p3, p1

    mul-int p4, p4, p2

    add-int/2addr p3, p4

    div-int/2addr p3, v1

    shl-int/lit8 p1, v0, 0x10

    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method

.method private static a(I)S
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit16 p0, p0, 0x400

    mul-int/lit8 v1, v1, 0x20

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    int-to-short p0, p0

    add-int/lit16 p0, p0, -0x3e8

    int-to-short p0, p0

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private a(Ljava/lang/String;Lvmaps/core/e;Lvmaps/core/d;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lvmaps/core/d;->a:Ltypes/g;

    invoke-static {v2}, Ltypes/o;->a(Ltypes/g;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lvmaps/core/e;->a()Lvmaps/core/e;

    move-result-object v9

    iget v3, v0, Lvmaps/core/d;->c:I

    iget v4, v0, Lvmaps/core/d;->d:I

    iget-object v5, v0, Lvmaps/core/d;->a:Ltypes/g;

    invoke-virtual {v9, v3, v4, v5}, Lvmaps/core/e;->a(IILtypes/g;)V

    iget-object v3, v0, Lvmaps/core/d;->b:[S

    if-nez v3, :cond_0

    iget v3, v0, Lvmaps/core/d;->c:I

    iget v4, v0, Lvmaps/core/d;->d:I

    mul-int v3, v3, v4

    new-array v3, v3, [S

    iput-object v3, v0, Lvmaps/core/d;->b:[S

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".vmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lvmaps/core/i;

    const/4 v4, 0x5

    invoke-direct {v8, v4}, Lvmaps/core/i;-><init>(I)V

    const/4 v4, 0x3

    invoke-virtual {v8, v4}, Lvmaps/core/i;->b(I)V

    iget v14, v0, Lvmaps/core/d;->c:I

    iget v15, v0, Lvmaps/core/d;->d:I

    iget-object v4, v0, Lvmaps/core/d;->a:Ltypes/g;

    iget v4, v4, Ltypes/g;->a:F

    iget-object v5, v0, Lvmaps/core/d;->a:Ltypes/g;

    iget v5, v5, Ltypes/g;->c:F

    iget v6, v9, Lvmaps/core/e;->m:F

    iget v7, v9, Lvmaps/core/e;->n:F

    move-object v13, v8

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual/range {v13 .. v19}, Lvmaps/core/i;->a(IIFFFF)V

    :try_start_0
    invoke-virtual {v8, v3}, Lvmaps/core/i;->a(Ljava/lang/String;)V

    iget v3, v0, Lvmaps/core/d;->f:F

    iget v4, v0, Lvmaps/core/d;->c:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v8, v3}, Lvmaps/core/i;->a(I)V

    invoke-virtual {v8}, Lvmaps/core/i;->c()I

    move-result v3

    iput v3, v0, Lvmaps/core/d;->r:I

    iget v3, v8, Lvmaps/core/i;->i:I

    iput v3, v0, Lvmaps/core/d;->p:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v8}, Lvmaps/core/i;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v8, Lvmaps/core/i;->f:I

    if-lez v3, :cond_1

    iget v3, v8, Lvmaps/core/i;->d:I

    if-gez v3, :cond_4

    if-eqz v1, :cond_3

    iget-boolean v3, v0, Lvmaps/core/d;->s:Z

    if-eqz v3, :cond_2

    iget v3, v8, Lvmaps/core/i;->d:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_1

    :cond_2
    invoke-direct {v1, v8}, Lvmaps/core/d;->a(Lvmaps/core/i;)V

    goto :goto_1

    :cond_3
    iget v3, v8, Lvmaps/core/i;->d:I

    invoke-static {v3}, Lvmaps/core/d;->b(I)I

    move-result v13

    iget-object v4, v8, Lvmaps/core/i;->a:[I

    iget-object v5, v8, Lvmaps/core/i;->b:[I

    iget v6, v8, Lvmaps/core/i;->f:I

    iget v7, v8, Lvmaps/core/i;->d:I

    move-object v3, v9

    move-object v14, v8

    move v8, v13

    goto :goto_2

    :cond_4
    move-object v14, v8

    iget v3, v14, Lvmaps/core/i;->d:I

    invoke-static {v3}, Lvmaps/core/d;->b(I)I

    move-result v8

    iget-object v4, v14, Lvmaps/core/i;->a:[I

    iget-object v5, v14, Lvmaps/core/i;->b:[I

    iget v6, v14, Lvmaps/core/i;->f:I

    iget v7, v14, Lvmaps/core/i;->d:I

    move-object v3, v9

    :goto_2
    invoke-virtual/range {v3 .. v8}, Lvmaps/core/e;->a([I[IIII)V

    move-object v8, v14

    goto :goto_1

    :catch_0
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v9}, Lvmaps/core/e;->c()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_8

    aget v3, v1, v2

    invoke-static {v3}, Lvmaps/core/d;->a(I)S

    move-result v3

    if-ltz v3, :cond_7

    add-int/lit16 v3, v3, 0x3e8

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    iget-object v4, v0, Lvmaps/core/d;->b:[S

    int-to-short v3, v3

    aput-short v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private a(Lvmaps/core/e;)V
    .locals 8

    iget-object v0, p0, Lvmaps/core/d;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvmaps/core/d$a;

    iget-object v3, v1, Lvmaps/core/d$a;->b:[I

    iget-object v4, v1, Lvmaps/core/d$a;->c:[I

    iget v5, v1, Lvmaps/core/d$a;->d:I

    iget v6, v1, Lvmaps/core/d$a;->a:I

    iget-object v2, p0, Lvmaps/core/d;->n:Lvmaps/core/f;

    iget v1, v1, Lvmaps/core/d$a;->a:I

    invoke-virtual {v2, v1}, Lvmaps/core/f;->a(I)I

    move-result v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lvmaps/core/e;->a([I[IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lvmaps/core/i;)V
    .locals 5

    new-instance v0, Lvmaps/core/d$a;

    invoke-direct {v0, p0}, Lvmaps/core/d$a;-><init>(Lvmaps/core/d;)V

    iget v1, p1, Lvmaps/core/i;->d:I

    iput v1, v0, Lvmaps/core/d$a;->a:I

    iget v1, p1, Lvmaps/core/i;->f:I

    iput v1, v0, Lvmaps/core/d$a;->d:I

    iget v1, v0, Lvmaps/core/d$a;->d:I

    new-array v1, v1, [I

    iput-object v1, v0, Lvmaps/core/d$a;->b:[I

    iget v1, v0, Lvmaps/core/d$a;->d:I

    new-array v1, v1, [I

    iput-object v1, v0, Lvmaps/core/d$a;->c:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lvmaps/core/d$a;->d:I

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Lvmaps/core/i;->b:[I

    aget v2, v2, v1

    int-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    mul-float v2, v2, v3

    iget-object v4, p1, Lvmaps/core/i;->a:[I

    aget v4, v4, v1

    int-to-float v4, v4

    mul-float v4, v4, v3

    iget-object v3, v0, Lvmaps/core/d$a;->b:[I

    invoke-virtual {p0, v4}, Lvmaps/core/d;->a(F)I

    move-result v4

    aput v4, v3, v1

    iget-object v3, v0, Lvmaps/core/d$a;->c:[I

    invoke-virtual {p0, v2}, Lvmaps/core/d;->b(F)I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvmaps/core/d;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a([III)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lvmaps/core/d;->d:I

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    iget v2, p0, Lvmaps/core/d;->c:I

    mul-int v2, v2, v1

    move v3, v2

    const/4 v2, 0x1

    :goto_1
    iget v4, p0, Lvmaps/core/d;->c:I

    sub-int/2addr v4, v0

    if-ge v2, v4, :cond_3

    add-int/2addr v3, v0

    iget-object v4, p0, Lvmaps/core/d;->b:[S

    iget v5, p0, Lvmaps/core/d;->c:I

    sub-int v5, v3, v5

    aget-short v4, v4, v5

    div-int/2addr v4, p3

    iget-object v5, p0, Lvmaps/core/d;->b:[S

    add-int/lit8 v6, v3, -0x1

    aget-short v5, v5, v6

    div-int/2addr v5, p3

    iget-object v6, p0, Lvmaps/core/d;->b:[S

    aget-short v6, v6, v3

    add-int/lit16 v6, v6, -0x3e8

    div-int/2addr v6, p2

    iget-object v7, p0, Lvmaps/core/d;->b:[S

    aget-short v7, v7, v3

    div-int/2addr v7, p3

    iget-object v8, p0, Lvmaps/core/d;->b:[S

    add-int/lit8 v9, v3, 0x1

    aget-short v8, v8, v9

    div-int/2addr v8, p3

    iget-object v9, p0, Lvmaps/core/d;->b:[S

    iget v10, p0, Lvmaps/core/d;->c:I

    add-int/2addr v10, v3

    aget-short v9, v9, v10

    div-int/2addr v9, p3

    aget v10, p1, v3

    if-le p2, v0, :cond_0

    iget-object v11, p0, Lvmaps/core/d;->n:Lvmaps/core/f;

    mul-int v6, v6, p2

    invoke-virtual {v11, v6}, Lvmaps/core/f;->a(I)I

    move-result v6

    invoke-direct {p0, v10, v6, v0, v0}, Lvmaps/core/d;->a(IIII)I

    move-result v10

    :cond_0
    if-le p3, v0, :cond_2

    if-gt v7, v4, :cond_1

    if-gt v7, v5, :cond_1

    if-gt v7, v8, :cond_1

    if-le v7, v9, :cond_2

    :cond_1
    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-direct {p0, v10, v4, v5, v0}, Lvmaps/core/d;->a(IIII)I

    move-result v10

    :cond_2
    aput v10, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private a()[I
    .locals 3

    iget-object v0, p0, Lvmaps/core/d;->b:[S

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lvmaps/core/d;->b:[S

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lvmaps/core/d;->b:[S

    aget-short v2, v2, v1

    invoke-virtual {p0, v2}, Lvmaps/core/d;->a(S)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(I)I
    .locals 3

    add-int/lit16 p0, p0, 0x3e8

    div-int/lit16 v0, p0, 0x400

    mul-int/lit16 v1, v0, 0x400

    sub-int/2addr p0, v1

    div-int/lit8 v1, p0, 0x20

    mul-int/lit8 v2, v1, 0x20

    sub-int/2addr p0, v2

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 p0, p0, 0x4

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private b()V
    .locals 5

    iget v0, p0, Lvmaps/core/d;->c:I

    int-to-float v0, v0

    iget-object v1, p0, Lvmaps/core/d;->a:Ltypes/g;

    invoke-virtual {v1}, Ltypes/g;->g()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lvmaps/core/d;->h:F

    iget v0, p0, Lvmaps/core/d;->d:I

    int-to-float v0, v0

    iget-object v1, p0, Lvmaps/core/d;->a:Ltypes/g;

    invoke-virtual {v1}, Ltypes/g;->f()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lvmaps/core/d;->i:F

    iget-object v0, p0, Lvmaps/core/d;->a:Ltypes/g;

    iget v0, v0, Ltypes/g;->a:F

    iget-object v1, p0, Lvmaps/core/d;->a:Ltypes/g;

    iget v1, v1, Ltypes/g;->c:F

    iget-object v2, p0, Lvmaps/core/d;->a:Ltypes/g;

    iget v2, v2, Ltypes/g;->a:F

    iget-object v3, p0, Lvmaps/core/d;->a:Ltypes/g;

    iget v3, v3, Ltypes/g;->d:F

    invoke-static {v0, v1, v2, v3}, Ltypes/i;->b(FFFF)F

    move-result v0

    iget-object v1, p0, Lvmaps/core/d;->a:Ltypes/g;

    iget v1, v1, Ltypes/g;->a:F

    iget-object v2, p0, Lvmaps/core/d;->a:Ltypes/g;

    iget v2, v2, Ltypes/g;->c:F

    iget-object v3, p0, Lvmaps/core/d;->a:Ltypes/g;

    iget v3, v3, Ltypes/g;->b:F

    iget-object v4, p0, Lvmaps/core/d;->a:Ltypes/g;

    iget v4, v4, Ltypes/g;->c:F

    invoke-static {v1, v2, v3, v4}, Ltypes/i;->b(FFFF)F

    move-result v1

    iget v2, p0, Lvmaps/core/d;->c:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lvmaps/core/d;->f:F

    iget v0, p0, Lvmaps/core/d;->d:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lvmaps/core/d;->g:F

    iget-object v0, p0, Lvmaps/core/d;->a:Ltypes/g;

    invoke-virtual {v0}, Ltypes/g;->f()F

    move-result v0

    iget v1, p0, Lvmaps/core/d;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lvmaps/core/d;->j:F

    iget-object v0, p0, Lvmaps/core/d;->a:Ltypes/g;

    invoke-virtual {v0}, Ltypes/g;->g()F

    move-result v0

    iget v1, p0, Lvmaps/core/d;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lvmaps/core/d;->k:F

    iget v0, p0, Lvmaps/core/d;->d:I

    int-to-float v0, v0

    iget-object v1, p0, Lvmaps/core/d;->a:Ltypes/g;

    invoke-virtual {v1}, Ltypes/g;->f()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lvmaps/core/d;->l:F

    iget v0, p0, Lvmaps/core/d;->c:I

    int-to-float v0, v0

    iget-object v1, p0, Lvmaps/core/d;->a:Ltypes/g;

    invoke-virtual {v1}, Ltypes/g;->g()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lvmaps/core/d;->m:F

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 1

    iget-object v0, p0, Lvmaps/core/d;->a:Ltypes/g;

    iget v0, v0, Ltypes/g;->c:F

    sub-float/2addr p1, v0

    iget v0, p0, Lvmaps/core/d;->h:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public a(S)I
    .locals 1

    add-int/lit16 p1, p1, -0x3e8

    int-to-short p1, p1

    iget-object v0, p0, Lvmaps/core/d;->n:Lvmaps/core/f;

    invoke-virtual {v0, p1}, Lvmaps/core/f;->a(I)I

    move-result p1

    return p1
.end method

.method public a(II)V
    .locals 10

    iget-object v0, p0, Lvmaps/core/d;->b:[S

    array-length v0, v0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lvmaps/core/d;->b:[S

    aget-short v2, v2, v1

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_1

    if-eqz p2, :cond_0

    int-to-double v4, v2

    int-to-double v6, p2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    div-int/lit8 v2, p2, 0x2

    int-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-int v2, v4

    int-to-short v2, v2

    if-ge v2, v3, :cond_0

    const/16 v2, 0x3e8

    :cond_0
    add-int/2addr v2, p1

    div-int/2addr v2, p1

    mul-int v2, v2, p1

    int-to-short v2, v2

    :cond_1
    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lvmaps/core/d;->b:[S

    iput-object v0, p0, Lvmaps/core/d;->b:[S

    return-void
.end method

.method public a(Ljava/lang/String;Lvmaps/core/e;ZIZ)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    iget v3, v0, Lvmaps/core/d;->c:I

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v7, 0xb

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    const/4 v9, 0x2

    new-array v10, v9, [[I

    new-array v11, v7, [I

    fill-array-data v11, :array_1

    aput-object v11, v10, v5

    new-array v11, v7, [I

    fill-array-data v11, :array_2

    aput-object v11, v10, v6

    new-array v11, v9, [[I

    new-array v12, v7, [I

    fill-array-data v12, :array_3

    aput-object v12, v11, v5

    new-array v12, v7, [I

    fill-array-data v12, :array_4

    aput-object v12, v11, v6

    new-array v12, v9, [[I

    new-array v13, v7, [I

    fill-array-data v13, :array_5

    aput-object v13, v12, v5

    new-array v13, v7, [I

    fill-array-data v13, :array_6

    aput-object v13, v12, v6

    new-array v13, v9, [[I

    new-array v14, v7, [I

    fill-array-data v14, :array_7

    aput-object v14, v13, v5

    new-array v14, v7, [I

    fill-array-data v14, :array_8

    aput-object v14, v13, v6

    new-array v14, v9, [[D

    new-array v15, v7, [D

    fill-array-data v15, :array_9

    aput-object v15, v14, v5

    new-array v7, v7, [D

    fill-array-data v7, :array_a

    aput-object v7, v14, v6

    const/high16 v7, 0x41200000    # 10.0f

    iget v15, v0, Lvmaps/core/d;->f:F

    div-float/2addr v7, v15

    float-to-int v7, v7

    array-length v15, v8

    sub-int/2addr v15, v6

    const/4 v9, 0x0

    :goto_1
    array-length v4, v8

    if-ge v9, v4, :cond_2

    aget v4, v8, v9

    if-le v7, v4, :cond_1

    move v15, v9

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    add-int/lit8 v15, v15, 0x2

    aget-object v4, v10, v5

    array-length v4, v4

    if-lt v15, v4, :cond_3

    aget-object v4, v10, v5

    array-length v4, v4

    add-int/lit8 v15, v4, -0x1

    :cond_3
    xor-int/lit8 v4, p3, 0x1

    aget-object v8, v10, v4

    aget v8, v8, v15

    aget-object v9, v11, v4

    aget v9, v9, v15

    aget-object v10, v12, v4

    aget v10, v10, v15

    aget-object v11, v13, v4

    aget v11, v11, v15

    aget-object v4, v14, v4

    aget-wide v12, v4, v15

    double-to-float v4, v12

    if-eqz v3, :cond_4

    const/16 v12, 0x64

    if-ge v7, v12, :cond_4

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    :cond_4
    iget v12, v0, Lvmaps/core/d;->f:F

    iget v13, v0, Lvmaps/core/d;->c:I

    int-to-float v13, v13

    mul-float v12, v12, v13

    const/high16 v13, 0x41100000    # 9.0f

    const/4 v14, 0x4

    const/4 v5, 0x3

    const/16 v6, 0x14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    if-eq v2, v14, :cond_5

    if-eq v2, v5, :cond_5

    const/16 v2, 0x14

    :cond_5
    iget-boolean v12, v0, Lvmaps/core/d;->o:Z

    const/16 v13, 0x32

    if-nez v12, :cond_6

    const/16 v12, 0x64

    if-lt v7, v12, :cond_6

    const/4 v7, 0x2

    const/16 v11, 0x32

    goto :goto_3

    :cond_6
    const/4 v7, 0x2

    :goto_3
    if-eq v2, v7, :cond_7

    if-eq v2, v6, :cond_7

    if-ne v2, v5, :cond_8

    :cond_7
    const/4 v11, 0x0

    :cond_8
    new-instance v7, Lvmaps/core/f;

    invoke-direct {v7, v2}, Lvmaps/core/f;-><init>(I)V

    iput-object v7, v0, Lvmaps/core/d;->n:Lvmaps/core/f;

    iget v7, v0, Lvmaps/core/d;->c:I

    div-int/2addr v7, v8

    iget v12, v0, Lvmaps/core/d;->d:I

    div-int/2addr v12, v8

    new-instance v8, Lvmaps/core/d;

    iget-object v6, v0, Lvmaps/core/d;->a:Ltypes/g;

    iget v14, v0, Lvmaps/core/d;->e:I

    invoke-direct {v8, v6, v7, v12, v14}, Lvmaps/core/d;-><init>(Ltypes/g;III)V

    iget-object v6, v0, Lvmaps/core/d;->n:Lvmaps/core/f;

    iput-object v6, v8, Lvmaps/core/d;->n:Lvmaps/core/f;

    const/16 v6, 0x9

    if-le v15, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    :goto_4
    iput-boolean v6, v8, Lvmaps/core/d;->s:Z

    move-object/from16 v6, p1

    invoke-direct {v8, v6, v1, v0}, Lvmaps/core/d;->a(Ljava/lang/String;Lvmaps/core/e;Lvmaps/core/d;)V

    iget v6, v8, Lvmaps/core/d;->p:I

    iput v6, v0, Lvmaps/core/d;->p:I

    new-instance v6, Lvmaps/b;

    const/16 v7, 0x3e8

    invoke-direct {v6, v7}, Lvmaps/b;-><init>(S)V

    iget v7, v8, Lvmaps/core/d;->r:I

    const/4 v12, 0x1

    if-le v7, v12, :cond_a

    const/16 v7, 0x190

    invoke-virtual {v8, v13, v7}, Lvmaps/core/d;->a(II)V

    iget-object v7, v8, Lvmaps/core/d;->b:[S

    iget v12, v8, Lvmaps/core/d;->c:I

    iget v13, v8, Lvmaps/core/d;->d:I

    invoke-virtual {v6, v7, v12, v13, v5}, Lvmaps/b;->a([SIII)V

    :cond_a
    const/4 v7, 0x0

    :goto_5
    const/4 v12, 0x6

    if-ge v7, v9, :cond_d

    const/4 v13, 0x4

    if-ge v15, v13, :cond_b

    iget-object v12, v8, Lvmaps/core/d;->b:[S

    iget v14, v8, Lvmaps/core/d;->c:I

    iget v13, v8, Lvmaps/core/d;->d:I

    const/16 v26, 0x5

    const/16 v27, 0x3

    const/16 v28, 0x2

    move-object/from16 v22, v6

    move-object/from16 v23, v12

    move/from16 v24, v14

    move/from16 v25, v13

    :goto_6
    invoke-virtual/range {v22 .. v28}, Lvmaps/b;->a([SIIIII)[S

    move-result-object v12

    iput-object v12, v8, Lvmaps/core/d;->b:[S

    goto :goto_8

    :cond_b
    if-ge v15, v12, :cond_c

    iget-object v12, v8, Lvmaps/core/d;->b:[S

    iget v13, v8, Lvmaps/core/d;->c:I

    iget v14, v8, Lvmaps/core/d;->d:I

    const/16 v26, 0x8

    :goto_7
    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v22, v6

    move-object/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    goto :goto_6

    :cond_c
    iget-object v12, v8, Lvmaps/core/d;->b:[S

    iget v13, v8, Lvmaps/core/d;->c:I

    iget v14, v8, Lvmaps/core/d;->d:I

    const/16 v26, 0x14

    goto :goto_7

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    if-lez v10, :cond_e

    iget-object v7, v8, Lvmaps/core/d;->b:[S

    iget v9, v8, Lvmaps/core/d;->c:I

    iget v13, v8, Lvmaps/core/d;->d:I

    const/4 v14, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v7, v9, v13, v10}, Lvmaps/b;->a([SIII)V

    :cond_e
    const/16 v6, 0x1e

    const/16 v7, 0xa

    if-nez p5, :cond_14

    invoke-virtual {v0, v8}, Lvmaps/core/d;->a(Lvmaps/core/d;)V

    iget-boolean v8, v0, Lvmaps/core/d;->o:Z

    if-eqz v8, :cond_12

    new-instance v8, Lvmaps/core/a;

    invoke-direct {v8, v0}, Lvmaps/core/a;-><init>(Lvmaps/core/d;)V

    if-eqz v3, :cond_f

    const/16 v3, 0x14

    invoke-virtual {v8, v4, v3}, Lvmaps/core/a;->a(FI)Lvmaps/core/a;

    move-result-object v13

    const-wide v14, 0x4073b00000000000L    # 315.0

    const-wide v16, 0x4046800000000000L    # 45.0

    const/16 v18, 0x2

    invoke-virtual/range {v13 .. v18}, Lvmaps/core/a;->a(DDI)Lvmaps/core/a;

    goto :goto_9

    :cond_f
    const/16 v3, 0x14

    invoke-virtual {v8, v4, v3}, Lvmaps/core/a;->a(FI)Lvmaps/core/a;

    move-result-object v20

    const-wide/16 v21, 0x0

    const-wide v23, 0x4056800000000000L    # 90.0

    const/16 v25, 0x1

    invoke-virtual/range {v20 .. v25}, Lvmaps/core/a;->a(DDI)Lvmaps/core/a;

    :goto_9
    if-ne v2, v5, :cond_10

    iput v12, v8, Lvmaps/core/a;->g:I

    goto :goto_a

    :cond_10
    if-ne v2, v7, :cond_11

    iput v6, v8, Lvmaps/core/a;->h:I

    goto :goto_a

    :cond_11
    iput v7, v8, Lvmaps/core/a;->h:I

    :goto_a
    invoke-virtual {v8}, Lvmaps/core/a;->a()[I

    move-result-object v2

    goto :goto_b

    :cond_12
    invoke-direct/range {p0 .. p0}, Lvmaps/core/d;->a()[I

    move-result-object v2

    :goto_b
    if-eqz v11, :cond_13

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v11}, Lvmaps/core/d;->a([III)V

    :cond_13
    iget v3, v0, Lvmaps/core/d;->c:I

    iget v4, v0, Lvmaps/core/d;->d:I

    iget-object v5, v0, Lvmaps/core/d;->a:Ltypes/g;

    invoke-virtual {v1, v3, v4, v5}, Lvmaps/core/e;->a(IILtypes/g;)V

    invoke-virtual {v1, v2}, Lvmaps/core/e;->a([I)V

    goto :goto_f

    :cond_14
    iget-boolean v4, v0, Lvmaps/core/d;->o:Z

    if-eqz v4, :cond_19

    const/16 v4, 0xc

    new-array v4, v4, [D

    fill-array-data v4, :array_b

    aget-wide v9, v4, v15

    double-to-float v4, v9

    new-instance v9, Lvmaps/core/a;

    invoke-direct {v9, v8}, Lvmaps/core/a;-><init>(Lvmaps/core/d;)V

    if-eqz v3, :cond_15

    const/16 v3, 0x14

    invoke-virtual {v9, v4, v3}, Lvmaps/core/a;->a(FI)Lvmaps/core/a;

    move-result-object v16

    const-wide v17, 0x4073b00000000000L    # 315.0

    const-wide v19, 0x4046800000000000L    # 45.0

    const/16 v21, 0x2

    invoke-virtual/range {v16 .. v21}, Lvmaps/core/a;->a(DDI)Lvmaps/core/a;

    goto :goto_c

    :cond_15
    const/16 v3, 0x14

    invoke-virtual {v9, v4, v3}, Lvmaps/core/a;->a(FI)Lvmaps/core/a;

    move-result-object v22

    const-wide/16 v23, 0x0

    const-wide v25, 0x4056800000000000L    # 90.0

    const/16 v27, 0x1

    invoke-virtual/range {v22 .. v27}, Lvmaps/core/a;->a(DDI)Lvmaps/core/a;

    :goto_c
    if-ne v2, v5, :cond_17

    iput v12, v9, Lvmaps/core/a;->g:I

    :cond_16
    iput v7, v9, Lvmaps/core/a;->h:I

    goto :goto_d

    :cond_17
    if-ne v2, v7, :cond_18

    iput v6, v9, Lvmaps/core/a;->h:I

    goto :goto_d

    :cond_18
    if-ge v15, v5, :cond_16

    const/16 v2, 0x14

    iput v2, v9, Lvmaps/core/a;->h:I

    :goto_d
    invoke-virtual {v9}, Lvmaps/core/a;->a()[I

    move-result-object v2

    goto :goto_e

    :cond_19
    invoke-direct {v8}, Lvmaps/core/d;->a()[I

    move-result-object v2

    :goto_e
    iget v3, v0, Lvmaps/core/d;->c:I

    iget v4, v0, Lvmaps/core/d;->d:I

    iget-object v5, v0, Lvmaps/core/d;->a:Ltypes/g;

    invoke-virtual {v1, v3, v4, v5}, Lvmaps/core/e;->a(IILtypes/g;)V

    iget v3, v8, Lvmaps/core/d;->c:I

    iget v4, v8, Lvmaps/core/d;->d:I

    invoke-virtual {v1, v2, v3, v4}, Lvmaps/core/e;->a([III)V

    :goto_f
    invoke-direct {v0, v1}, Lvmaps/core/d;->a(Lvmaps/core/e;)V

    return-void

    :array_0
    .array-data 4
        0x7d0
        0x320
        0x1f4
        0xfa
        0x64
        0x28
        0x10
        0x5
        0x2
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x5
        0x5
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x6
        0x6
        0x4
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x4
        0x3
        0x3
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x8
        0x4
        0x5
        0x3
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x28
        0x32
        0x3c
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x14
        0x1e
        0x28
        0x32
        0x50
        0x32
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x3fd999999999999aL    # 0.4
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
    .end array-data

    :array_a
    .array-data 8
        0x4028000000000000L    # 12.0
        0x401c000000000000L    # 7.0
        0x4010000000000000L    # 4.0
        0x400c000000000000L    # 3.5
        0x3ff8000000000000L    # 1.5
        0x3fd999999999999aL    # 0.4
        0x3fd3333333333333L    # 0.3
        0x3fd0000000000000L    # 0.25
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
    .end array-data

    :array_b
    .array-data 8
        0x4010000000000000L    # 4.0
        0x4008000000000000L    # 3.0
        0x3ff8000000000000L    # 1.5
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
        0x3fd3333333333333L    # 0.3
        0x3fc999999999999aL    # 0.2
        0x3fc3333333333333L    # 0.15
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
    .end array-data
.end method

.method a(Lvmaps/core/d;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lvmaps/core/d;->b:[S

    if-nez v2, :cond_0

    iget v2, v0, Lvmaps/core/d;->c:I

    iget v3, v0, Lvmaps/core/d;->d:I

    mul-int v2, v2, v3

    new-array v2, v2, [S

    iput-object v2, v0, Lvmaps/core/d;->b:[S

    :cond_0
    new-instance v2, Lvmaps/core/b;

    iget v3, v1, Lvmaps/core/d;->c:I

    iget v4, v1, Lvmaps/core/d;->d:I

    iget-object v5, v1, Lvmaps/core/d;->b:[S

    invoke-direct {v2, v3, v4, v5}, Lvmaps/core/b;-><init>(II[S)V

    iget-object v3, v1, Lvmaps/core/d;->b:[S

    iget-object v4, v0, Lvmaps/core/d;->b:[S

    iget v5, v1, Lvmaps/core/d;->c:I

    iget v6, v1, Lvmaps/core/d;->d:I

    iget v7, v1, Lvmaps/core/d;->h:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v11, v0, Lvmaps/core/d;->d:I

    if-ge v9, v11, :cond_7

    iget v11, v0, Lvmaps/core/d;->d:I

    int-to-float v11, v11

    int-to-float v12, v9

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, v0, Lvmaps/core/d;->i:F

    div-float/2addr v11, v12

    iget-object v12, v0, Lvmaps/core/d;->a:Ltypes/g;

    iget v12, v12, Ltypes/g;->a:F

    add-float/2addr v11, v12

    int-to-float v12, v6

    iget-object v13, v1, Lvmaps/core/d;->a:Ltypes/g;

    iget v13, v13, Ltypes/g;->a:F

    sub-float/2addr v11, v13

    iget v13, v1, Lvmaps/core/d;->i:F

    mul-float v11, v11, v13

    sub-float v11, v12, v11

    const v13, 0x3a83126f    # 0.001f

    const/4 v14, 0x0

    cmpg-float v15, v11, v14

    if-gez v15, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    cmpl-float v15, v11, v12

    if-ltz v15, :cond_2

    sub-float v11, v12, v13

    :cond_2
    :goto_1
    float-to-int v12, v11

    mul-int v12, v12, v5

    const/4 v15, 0x0

    :goto_2
    iget v8, v0, Lvmaps/core/d;->c:I

    if-ge v15, v8, :cond_6

    iget-object v8, v0, Lvmaps/core/d;->a:Ltypes/g;

    iget v8, v8, Ltypes/g;->c:F

    int-to-float v13, v15

    iget v14, v0, Lvmaps/core/d;->h:F

    div-float/2addr v13, v14

    add-float/2addr v8, v13

    iget-object v13, v1, Lvmaps/core/d;->a:Ltypes/g;

    iget v13, v13, Ltypes/g;->c:F

    sub-float/2addr v8, v13

    mul-float v14, v8, v7

    const/4 v8, 0x0

    cmpg-float v13, v14, v8

    if-gez v13, :cond_4

    const/4 v14, 0x0

    :cond_3
    const v16, 0x3a83126f    # 0.001f

    goto :goto_3

    :cond_4
    int-to-float v13, v5

    cmpl-float v17, v14, v13

    if-ltz v17, :cond_3

    const v16, 0x3a83126f    # 0.001f

    sub-float v14, v13, v16

    :goto_3
    float-to-int v13, v14

    add-int/2addr v13, v12

    aget-short v13, v3, v13

    if-lez v13, :cond_5

    float-to-double v13, v14

    move/from16 v18, v9

    float-to-double v8, v11

    invoke-virtual {v2, v13, v14, v8, v9}, Lvmaps/core/b;->a(DD)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-short v13, v8

    goto :goto_4

    :cond_5
    move/from16 v18, v9

    :goto_4
    add-int v8, v10, v15

    aput-short v13, v4, v8

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v18

    const v13, 0x3a83126f    # 0.001f

    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    move/from16 v18, v9

    iget v8, v0, Lvmaps/core/d;->c:I

    add-int/2addr v10, v8

    add-int/lit8 v9, v18, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public b(F)I
    .locals 2

    iget v0, p0, Lvmaps/core/d;->d:I

    int-to-float v0, v0

    iget-object v1, p0, Lvmaps/core/d;->a:Ltypes/g;

    iget v1, v1, Ltypes/g;->a:F

    sub-float/2addr p1, v1

    iget v1, p0, Lvmaps/core/d;->i:F

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method
