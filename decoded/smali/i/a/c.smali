.class public Li/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/c$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field final a:F

.field final b:F

.field public c:Z

.field public d:[I

.field public e:I

.field f:[S

.field g:[I

.field public h:Li/b;

.field i:I

.field j:[Li/a/c$a;

.field k:I

.field l:I

.field m:I

.field public n:Li/a/b;

.field public o:Li/a/b;

.field public p:Li/a/b;

.field public q:Li/a/b;

.field public r:J

.field public s:Li/a/a;

.field t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Li/a/c;->a:F

    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Li/a/c;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/a/c;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Li/a/c;->f:[S

    iput-object v1, p0, Li/a/c;->g:[I

    iput v0, p0, Li/a/c;->y:I

    iput v0, p0, Li/a/c;->z:I

    iput v0, p0, Li/a/c;->A:I

    iput v0, p0, Li/a/c;->B:I

    iput-object v1, p0, Li/a/c;->s:Li/a/a;

    iput-boolean v0, p0, Li/a/c;->u:Z

    iput-boolean p1, p0, Li/a/c;->t:Z

    return-void
.end method

.method private a(II)Li/a/c$a;
    .locals 8

    iget-object v0, p0, Li/a/c;->j:[Li/a/c$a;

    array-length v0, v0

    const v1, 0x1869f

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x1869f

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v6, p0, Li/a/c;->j:[Li/a/c$a;

    aget-object v6, v6, v3

    iget v7, v6, Li/a/c$a;->a:I

    if-le v7, p1, :cond_0

    goto :goto_2

    :cond_0
    iget v7, v6, Li/a/c$a;->b:I

    if-ge v7, p2, :cond_1

    iget v7, v6, Li/a/c$a;->d:I

    if-le v7, v3, :cond_2

    iget v3, v6, Li/a/c$a;->d:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    iget v7, v6, Li/a/c$a;->c:I

    if-ge v7, v5, :cond_2

    iget v4, v6, Li/a/c$a;->c:I

    move v5, v4

    move v4, v3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eq v4, v2, :cond_4

    iget-object p1, p0, Li/a/c;->j:[Li/a/c$a;

    aget-object p1, p1, v4

    return-object p1

    :cond_4
    new-instance v0, Li/a/c$a;

    invoke-direct {v0, p0, p1, p2, v1}, Li/a/c$a;-><init>(Li/a/c;III)V

    return-object v0
.end method

.method private a()V
    .locals 8

    iget-object v0, p0, Li/a/c;->h:Li/b;

    iget-object v0, v0, Li/b;->n:Ltypes/c;

    invoke-virtual {v0}, Ltypes/c;->d()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget-boolean v1, p0, Li/a/c;->u:Z

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/16 v4, 0x1f4

    const/16 v5, 0x64

    const/16 v6, 0x32

    if-eqz v1, :cond_1

    const/16 v1, 0x190

    if-le v0, v6, :cond_0

    goto :goto_2

    :cond_0
    const/16 v4, 0x190

    goto :goto_2

    :cond_1
    iget-object v1, p0, Li/a/c;->h:Li/b;

    invoke-virtual {v1}, Li/b;->b()F

    move-result v1

    float-to-int v1, v1

    iget-object v7, p0, Li/a/c;->h:Li/b;

    iget-object v7, v7, Li/b;->i:[I

    array-length v7, v7

    if-ge v7, v4, :cond_2

    const/16 v4, 0x8

    if-le v1, v4, :cond_2

    const/16 v0, 0xa

    const/16 v4, 0xa

    goto :goto_1

    :cond_2
    iget-object v4, p0, Li/a/c;->h:Li/b;

    iget-object v4, v4, Li/b;->i:[I

    array-length v4, v4

    const/16 v7, 0x320

    if-ge v4, v7, :cond_3

    if-le v1, v3, :cond_3

    :goto_0
    const/16 v4, 0x32

    goto :goto_1

    :cond_3
    if-gt v0, v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v4, 0x64

    :goto_1
    iget-boolean v0, p0, Li/a/c;->t:Z

    if-eqz v0, :cond_5

    mul-int/lit8 v4, v4, 0x2

    :cond_5
    :goto_2
    iget-object v0, p0, Li/a/c;->h:Li/b;

    iget-object v0, v0, Li/b;->i:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Li/a/c;->d:[I

    iget-object v0, p0, Li/a/c;->h:Li/b;

    iget-object v0, v0, Li/b;->j:[I

    iget-object v1, p0, Li/a/c;->h:Li/b;

    iget-object v1, v1, Li/b;->i:[I

    iget-object v6, p0, Li/a/c;->d:[I

    invoke-static {v0, v1, v6, v4}, Ltypes/e;->a([I[I[II)I

    move-result v0

    iput v0, p0, Li/a/c;->e:I

    iget v0, p0, Li/a/c;->e:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    iget-boolean v5, p0, Li/a/c;->u:Z

    if-eqz v5, :cond_6

    iget v5, p0, Li/a/c;->e:I

    if-le v5, v2, :cond_6

    goto :goto_4

    :cond_6
    iget-object v5, p0, Li/a/c;->h:Li/b;

    iget-object v5, v5, Li/b;->j:[I

    iget-object v6, p0, Li/a/c;->h:Li/b;

    iget-object v6, v6, Li/b;->i:[I

    iget-object v7, p0, Li/a/c;->d:[I

    div-int/2addr v4, v1

    invoke-static {v5, v6, v7, v4}, Ltypes/e;->a([I[I[II)I

    move-result v1

    iput v1, p0, Li/a/c;->e:I

    if-le v1, v3, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Li/a/c;->u:Z

    if-eqz v0, :cond_9

    iget v0, p0, Li/a/c;->e:I

    if-le v0, v5, :cond_9

    iget-object v0, p0, Li/a/c;->h:Li/b;

    iget-object v0, v0, Li/b;->j:[I

    iget-object v1, p0, Li/a/c;->h:Li/b;

    iget-object v1, v1, Li/b;->i:[I

    iget-object v2, p0, Li/a/c;->d:[I

    div-int/lit8 v3, v4, 0x4

    add-int/2addr v4, v3

    invoke-static {v0, v1, v2, v4}, Ltypes/e;->a([I[I[II)I

    move-result v0

    iput v0, p0, Li/a/c;->e:I

    :cond_9
    :goto_4
    iget v0, p0, Li/a/c;->e:I

    iget v1, p0, Li/a/c;->e:I

    mul-int v0, v0, v1

    iput v0, p0, Li/a/c;->i:I

    iget v0, p0, Li/a/c;->i:I

    new-array v0, v0, [S

    iput-object v0, p0, Li/a/c;->f:[S

    iget v0, p0, Li/a/c;->i:I

    new-array v0, v0, [I

    iput-object v0, p0, Li/a/c;->g:[I

    return-void
.end method

.method private a(Li/a/a;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v1, Li/a/a;->a:[I

    aget v3, v3, v2

    iget-object v4, v1, Li/a/a;->a:[I

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    if-ne v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v4, :cond_2

    iget-object v7, v1, Li/a/a;->a:[I

    add-int/lit8 v8, v2, 0x1

    aget v7, v7, v8

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-nez v5, :cond_3

    iget-object v8, v1, Li/a/a;->a:[I

    add-int/lit8 v9, v2, -0x1

    aget v8, v8, v9

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    sub-int v9, v7, v3

    div-int/lit8 v10, v9, 0x4

    const/16 v11, 0x32

    if-ge v10, v11, :cond_4

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_4
    if-eqz v4, :cond_5

    iget-object v9, v0, Li/a/c;->h:Li/b;

    iget-object v9, v9, Li/b;->i:[I

    array-length v9, v9

    goto :goto_4

    :cond_5
    add-int v9, v3, v10

    :goto_4
    if-eqz v5, :cond_6

    add-int/lit8 v9, v7, -0x1

    :cond_6
    move v10, v3

    move v14, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_5
    if-ge v10, v9, :cond_b

    if-nez v4, :cond_7

    invoke-direct {v0, v10, v7}, Li/a/c;->f(II)I

    move-result v15

    add-int/2addr v15, v6

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    :goto_6
    if-nez v5, :cond_8

    invoke-direct {v0, v10, v8}, Li/a/c;->f(II)I

    move-result v16

    add-int v15, v15, v16

    :cond_8
    if-le v15, v12, :cond_9

    mul-int/lit8 v12, v15, 0x3

    div-int/lit8 v12, v12, 0x4

    move v14, v10

    move v13, v12

    move v12, v15

    goto :goto_7

    :cond_9
    if-ge v15, v13, :cond_a

    goto :goto_8

    :cond_a
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    :goto_8
    sub-int v9, v3, v8

    div-int/lit8 v10, v9, 0x4

    if-ge v10, v11, :cond_c

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    :cond_c
    if-eqz v5, :cond_d

    const/4 v9, 0x0

    goto :goto_9

    :cond_d
    sub-int v9, v3, v10

    :goto_9
    if-eqz v4, :cond_e

    add-int/lit8 v9, v8, 0x1

    :cond_e
    :goto_a
    if-lt v3, v9, :cond_13

    if-nez v5, :cond_f

    invoke-direct {v0, v3, v8}, Li/a/c;->f(II)I

    move-result v10

    add-int/2addr v10, v6

    goto :goto_b

    :cond_f
    const/4 v10, 0x0

    :goto_b
    if-nez v4, :cond_10

    invoke-direct {v0, v3, v7}, Li/a/c;->f(II)I

    move-result v11

    add-int/2addr v10, v11

    :cond_10
    if-le v10, v12, :cond_11

    mul-int/lit8 v11, v10, 0x3

    div-int/lit8 v11, v11, 0x4

    move v14, v3

    move v12, v10

    move v13, v11

    goto :goto_c

    :cond_11
    if-ge v10, v13, :cond_12

    goto :goto_d

    :cond_12
    :goto_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    :cond_13
    :goto_d
    iget-object v1, v1, Li/a/a;->a:[I

    aput v14, v1, v2

    return-void
.end method

.method private a(Li/a/b;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Li/a/b;->a:[Li/a/a;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p1, Li/a/b;->a:[Li/a/a;

    aget-object v1, v1, v0

    iget v2, v1, Li/a/a;->b:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, p0, Li/a/c;->z:I

    goto :goto_1

    :cond_0
    iget v2, p0, Li/a/c;->y:I

    :goto_1
    iget v4, v1, Li/a/a;->c:I

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    int-to-float v6, v2

    mul-float v6, v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    iget-boolean v4, p0, Li/a/c;->t:Z

    if-nez v4, :cond_1

    invoke-direct {p0, v1}, Li/a/c;->d(Li/a/a;)V

    :cond_1
    invoke-direct {p0, v1}, Li/a/c;->a(Li/a/a;)Z

    iget v4, v1, Li/a/a;->c:I

    if-le v4, v2, :cond_3

    iget v2, v1, Li/a/a;->b:I

    if-ne v2, v3, :cond_2

    iget v1, v1, Li/a/a;->c:I

    iput v1, p0, Li/a/c;->z:I

    goto :goto_2

    :cond_2
    iget v1, v1, Li/a/a;->c:I

    iput v1, p0, Li/a/c;->y:I

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Li/a/c;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Li/a/a;)Z
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v8, 0x1

    iput-boolean v8, v1, Li/a/a;->f:Z

    iget-object v2, v1, Li/a/a;->a:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v4, v1, Li/a/a;->a:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v2, v4

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    return v5

    :cond_0
    iget v2, v1, Li/a/a;->b:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_2

    iget v2, v0, Li/a/c;->z:I

    goto :goto_1

    :cond_2
    iget v2, v0, Li/a/c;->y:I

    :goto_1
    iget v7, v1, Li/a/a;->c:I

    int-to-float v7, v7

    int-to-float v10, v2

    const v11, 0x3f666666    # 0.9f

    mul-float v10, v10, v11

    cmpg-float v7, v7, v10

    if-gez v7, :cond_3

    return v5

    :cond_3
    iget-object v7, v1, Li/a/a;->a:[I

    aget v7, v7, v5

    iget-object v10, v1, Li/a/a;->a:[I

    aget v10, v10, v8

    iget-object v11, v1, Li/a/a;->a:[I

    aget v11, v11, v3

    iget-object v12, v0, Li/a/c;->h:Li/b;

    invoke-virtual {v12}, Li/b;->b()F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v14

    double-to-int v12, v12

    if-ge v12, v8, :cond_4

    const/4 v12, 0x1

    :cond_4
    const/16 v13, 0x168

    div-int v12, v13, v12

    if-ge v12, v4, :cond_5

    const/16 v12, 0xa

    :cond_5
    iget v13, v0, Li/a/c;->v:I

    div-int v13, v12, v13

    if-nez v13, :cond_6

    const/4 v13, 0x1

    :cond_6
    sub-int v14, v7, v12

    if-gez v14, :cond_7

    const/4 v14, 0x0

    :cond_7
    add-int v15, v7, v12

    if-le v15, v10, :cond_8

    move v15, v10

    :cond_8
    sub-int v4, v10, v12

    add-int v6, v10, v12

    if-le v6, v11, :cond_9

    move v3, v11

    goto :goto_2

    :cond_9
    move v3, v6

    :goto_2
    sub-int v8, v11, v12

    add-int/2addr v12, v11

    iget-object v3, v0, Li/a/c;->h:Li/b;

    iget-object v3, v3, Li/b;->i:[I

    array-length v3, v3

    if-le v12, v3, :cond_a

    iget-object v3, v0, Li/a/c;->h:Li/b;

    iget-object v3, v3, Li/b;->i:[I

    array-length v12, v3

    :cond_a
    invoke-direct {v0, v7, v11}, Li/a/c;->b(II)Li/a/c$a;

    move-result-object v3

    iget v5, v3, Li/a/c$a;->c:I

    iget v1, v3, Li/a/c$a;->a:I

    move/from16 v20, v2

    iget v2, v3, Li/a/c$a;->b:I

    move-object/from16 v21, v3

    const/4 v3, 0x5

    new-array v3, v3, [I

    const/16 v19, 0x0

    aput v7, v3, v19

    const/16 v18, 0x1

    aput v10, v3, v18

    const/16 v17, 0x2

    aput v11, v3, v17

    const/16 v16, 0x3

    aput v1, v3, v16

    const/4 v1, 0x4

    aput v2, v3, v1

    add-int/lit8 v2, v13, 0x1

    invoke-direct {v0, v7, v11}, Li/a/c;->f(II)I

    move-result v22

    invoke-direct {v0, v7, v10}, Li/a/c;->f(II)I

    move-result v7

    invoke-direct {v0, v10, v11}, Li/a/c;->f(II)I

    move-result v10

    move/from16 v26, v5

    move-object/from16 v24, v21

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v37, v20

    move/from16 v20, v10

    move/from16 v10, v37

    :goto_3
    if-lt v15, v14, :cond_25

    aget v1, v3, v17

    invoke-direct {v0, v15, v1}, Li/a/c;->f(II)I

    move-result v1

    sub-int v1, v22, v1

    move/from16 v27, v11

    const/16 v11, 0x64

    if-le v1, v11, :cond_b

    const/4 v1, 0x1

    aget v11, v3, v1

    invoke-direct {v0, v15, v11}, Li/a/c;->f(II)I

    move-result v1

    sub-int v1, v7, v1

    const/16 v11, 0x64

    if-le v1, v11, :cond_b

    move/from16 v30, v4

    move/from16 v31, v6

    move/from16 v28, v8

    move/from16 v32, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v11, v27

    const/16 v1, 0xa

    goto/16 :goto_13

    :cond_b
    if-ge v8, v15, :cond_c

    move v1, v15

    goto :goto_4

    :cond_c
    move v1, v8

    :goto_4
    move v11, v7

    move/from16 v27, v26

    const/4 v7, 0x0

    const/16 v26, 0x0

    move-object/from16 v37, v24

    move/from16 v24, v5

    move-object/from16 v5, v37

    :goto_5
    if-ge v1, v12, :cond_21

    move/from16 v28, v8

    const/16 v17, 0x2

    aget v8, v3, v17

    invoke-direct {v0, v15, v8}, Li/a/c;->f(II)I

    move-result v8

    sub-int v8, v22, v8

    if-lez v8, :cond_d

    move/from16 v29, v11

    const/4 v8, 0x1

    aget v11, v3, v8

    invoke-direct {v0, v1, v11}, Li/a/c;->f(II)I

    move-result v8

    sub-int v8, v20, v8

    if-lez v8, :cond_e

    move/from16 v30, v4

    move/from16 v31, v6

    move/from16 v32, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v11, v29

    goto/16 :goto_10

    :cond_d
    move/from16 v29, v11

    :cond_e
    iget v8, v5, Li/a/c$a;->a:I

    if-lt v15, v8, :cond_10

    iget v8, v5, Li/a/c$a;->b:I

    if-le v1, v8, :cond_f

    goto :goto_6

    :cond_f
    move/from16 v8, v27

    goto :goto_7

    :cond_10
    :goto_6
    invoke-direct {v0, v15, v1}, Li/a/c;->b(II)Li/a/c$a;

    move-result-object v5

    iget v8, v5, Li/a/c$a;->c:I

    :goto_7
    invoke-direct {v0, v15, v1}, Li/a/c;->f(II)I

    move-result v11

    if-ge v4, v15, :cond_11

    move/from16 v23, v15

    goto :goto_8

    :cond_11
    move/from16 v23, v4

    :goto_8
    if-le v6, v1, :cond_12

    move/from16 v30, v4

    move v4, v1

    goto :goto_9

    :cond_12
    move/from16 v30, v4

    move v4, v6

    :goto_9
    if-nez v25, :cond_13

    const/16 v25, 0x0

    goto :goto_a

    :cond_13
    const/16 v25, 0x1

    :goto_a
    move/from16 v31, v6

    move v6, v10

    move/from16 v32, v12

    const/4 v10, 0x0

    move v12, v7

    move/from16 v7, v23

    move/from16 v23, v20

    const/16 v20, 0x0

    :goto_b
    if-ge v7, v4, :cond_1d

    move/from16 v33, v4

    invoke-direct {v0, v15, v7}, Li/a/c;->f(II)I

    move-result v4

    move/from16 v34, v13

    invoke-direct {v0, v7, v1}, Li/a/c;->f(II)I

    move-result v13

    add-int v27, v4, v13

    move/from16 v35, v14

    add-int v14, v27, v11

    int-to-float v0, v8

    move/from16 v36, v10

    int-to-float v10, v14

    const v27, 0x3e4ccccd    # 0.2f

    mul-float v10, v10, v27

    cmpg-float v0, v0, v10

    if-gtz v0, :cond_1a

    sub-int v0, v14, v8

    if-le v0, v6, :cond_17

    if-ge v4, v13, :cond_14

    move v10, v4

    goto :goto_c

    :cond_14
    move v10, v13

    :goto_c
    if-ge v11, v10, :cond_15

    move v10, v11

    :cond_15
    if-eqz v9, :cond_16

    mul-int/lit16 v10, v10, 0x3e8

    mul-int/lit16 v14, v14, 0x118

    if-lt v10, v14, :cond_18

    :cond_16
    const/4 v6, 0x0

    aput v15, v3, v6

    const/4 v6, 0x1

    aput v7, v3, v6

    const/4 v6, 0x2

    aput v1, v3, v6

    iget v6, v5, Li/a/c$a;->a:I

    const/4 v10, 0x3

    aput v6, v3, v10

    iget v6, v5, Li/a/c$a;->b:I

    const/4 v10, 0x4

    aput v6, v3, v10

    add-int/lit8 v24, v24, 0x1

    move v6, v0

    move/from16 v29, v4

    move/from16 v22, v11

    move/from16 v23, v13

    const/16 v20, 0x1

    goto :goto_d

    :cond_17
    sub-int v4, v26, v0

    if-lez v4, :cond_18

    add-int/lit16 v4, v6, -0x1f4

    if-le v0, v4, :cond_18

    add-int/2addr v7, v2

    :cond_18
    :goto_d
    if-le v0, v12, :cond_19

    move v12, v0

    :cond_19
    move/from16 v4, v36

    if-le v0, v4, :cond_1b

    move v10, v0

    goto :goto_e

    :cond_1a
    move/from16 v4, v36

    :cond_1b
    move v10, v4

    :goto_e
    if-eqz v25, :cond_1c

    const/4 v0, 0x1

    goto :goto_f

    :cond_1c
    move/from16 v0, v34

    :goto_f
    add-int/2addr v7, v0

    move/from16 v4, v33

    move/from16 v13, v34

    move/from16 v14, v35

    move-object/from16 v0, p0

    goto :goto_b

    :cond_1d
    move v4, v10

    move/from16 v34, v13

    move/from16 v35, v14

    add-int/lit16 v0, v6, -0x1f4

    if-ge v4, v0, :cond_1e

    sub-int v0, v26, v4

    const/16 v7, 0xa

    if-le v0, v7, :cond_1e

    add-int/2addr v1, v2

    :cond_1e
    if-eqz v20, :cond_1f

    move/from16 v26, v4

    move v10, v6

    move/from16 v27, v8

    move v7, v12

    move/from16 v25, v20

    move/from16 v20, v23

    move/from16 v11, v29

    const/16 v23, 0x1

    goto :goto_10

    :cond_1f
    move/from16 v26, v4

    move v10, v6

    move/from16 v27, v8

    move v7, v12

    move/from16 v25, v20

    move/from16 v20, v23

    move/from16 v11, v29

    const/16 v23, 0x0

    :goto_10
    if-eqz v23, :cond_20

    const/4 v0, 0x1

    goto :goto_11

    :cond_20
    move/from16 v0, v34

    :goto_11
    add-int/2addr v1, v0

    move/from16 v8, v28

    move/from16 v4, v30

    move/from16 v6, v31

    move/from16 v12, v32

    move/from16 v13, v34

    move/from16 v14, v35

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_21
    move/from16 v30, v4

    move/from16 v31, v6

    move/from16 v28, v8

    move/from16 v29, v11

    move/from16 v32, v12

    move/from16 v34, v13

    move/from16 v35, v14

    add-int/lit16 v0, v10, -0x1f4

    if-ge v7, v0, :cond_22

    sub-int v0, v21, v7

    const/16 v1, 0xa

    if-le v0, v1, :cond_23

    sub-int/2addr v15, v2

    goto :goto_12

    :cond_22
    const/16 v1, 0xa

    :cond_23
    :goto_12
    move/from16 v21, v7

    move/from16 v11, v23

    move/from16 v26, v27

    move/from16 v7, v29

    move/from16 v37, v24

    move-object/from16 v24, v5

    move/from16 v5, v37

    :goto_13
    if-eqz v11, :cond_24

    const/4 v0, 0x1

    goto :goto_14

    :cond_24
    move/from16 v0, v34

    :goto_14
    sub-int/2addr v15, v0

    move/from16 v8, v28

    move/from16 v4, v30

    move/from16 v6, v31

    move/from16 v12, v32

    move/from16 v13, v34

    move/from16 v14, v35

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/16 v17, 0x2

    goto/16 :goto_3

    :cond_25
    if-lez v5, :cond_27

    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v1, 0x1

    aget v4, v3, v1

    const/4 v1, 0x2

    aget v5, v3, v1

    const/4 v1, 0x3

    aget v6, v3, v1

    const/4 v1, 0x4

    aget v7, v3, v1

    move-object/from16 v1, p1

    move v2, v10

    move v3, v0

    invoke-virtual/range {v1 .. v7}, Li/a/a;->a(IIIIII)V

    if-eqz v9, :cond_26

    move-object/from16 v0, p0

    iput v10, v0, Li/a/c;->z:I

    :goto_15
    const/4 v1, 0x1

    goto :goto_16

    :cond_26
    move-object/from16 v0, p0

    iput v10, v0, Li/a/c;->y:I

    goto :goto_15

    :goto_16
    return v1

    :cond_27
    move-object/from16 v0, p0

    const/4 v1, 0x0

    return v1
.end method

.method private b(Li/a/b;)Li/a/a;
    .locals 1

    invoke-virtual {p1}, Li/a/b;->a()Li/a/a;

    move-result-object p1

    iget v0, p1, Li/a/a;->c:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Li/a/c;->b(Li/a/a;)V

    :cond_0
    return-object p1
.end method

.method private b(II)Li/a/c$a;
    .locals 9

    invoke-direct {p0, p1, p2}, Li/a/c;->a(II)Li/a/c$a;

    move-result-object v0

    iget v1, v0, Li/a/c$a;->a:I

    iget v2, v0, Li/a/c$a;->b:I

    iget v3, v0, Li/a/c$a;->c:I

    iget v4, p0, Li/a/c;->w:I

    iget v5, v0, Li/a/c$a;->c:I

    const/16 v6, 0x3e8

    if-ge v5, v6, :cond_0

    mul-int/lit8 v4, v4, 0x2

    :cond_0
    iget v5, v0, Li/a/c$a;->a:I

    sub-int v5, p1, v5

    div-int/2addr v5, v4

    const/4 v6, 0x1

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :cond_1
    iget v7, v0, Li/a/c$a;->b:I

    sub-int/2addr v7, p2

    div-int v4, v7, v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :cond_2
    iget v6, v0, Li/a/c$a;->a:I

    :goto_0
    if-gt v6, p1, :cond_5

    move v7, v2

    move v2, v1

    move v1, p2

    :goto_1
    iget v8, v0, Li/a/c$a;->b:I

    if-gt v1, v8, :cond_4

    invoke-direct {p0, v6, v1}, Li/a/c;->f(II)I

    move-result v8

    if-ge v8, v3, :cond_3

    move v7, v1

    move v2, v6

    move v3, v8

    :cond_3
    add-int/2addr v1, v4

    goto :goto_1

    :cond_4
    add-int/2addr v6, v5

    move v1, v2

    move v2, v7

    goto :goto_0

    :cond_5
    new-instance p1, Li/a/c$a;

    invoke-direct {p1, p0, v1, v2, v3}, Li/a/c$a;-><init>(Li/a/c;III)V

    return-object p1
.end method

.method private b()V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Li/a/c;->A:I

    iget v2, v0, Li/a/c;->e:I

    div-int/lit8 v3, v2, 0xa

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    const/4 v3, 0x2

    :cond_0
    iget-object v5, v0, Li/a/c;->h:Li/b;

    iget-object v5, v5, Li/b;->n:Ltypes/c;

    invoke-virtual {v5}, Ltypes/c;->d()I

    move-result v5

    div-int/lit8 v5, v5, 0x6

    move v6, v3

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    add-int/lit8 v9, v2, -0x1

    if-ge v6, v9, :cond_6

    invoke-direct {v0, v6, v9}, Li/a/c;->d(II)I

    move-result v9

    invoke-direct {v0, v6, v9}, Li/a/c;->e(II)I

    move-result v10

    move v11, v7

    const/4 v7, 0x2

    :goto_1
    if-ge v7, v6, :cond_5

    invoke-direct {v0, v7, v6}, Li/a/c;->e(II)I

    move-result v12

    move v13, v11

    const/4 v11, 0x1

    :goto_2
    if-ge v11, v7, :cond_4

    invoke-direct {v0, v11, v7}, Li/a/c;->e(II)I

    move-result v14

    add-int/lit8 v15, v11, -0x1

    invoke-direct {v0, v15, v1}, Li/a/c;->d(II)I

    move-result v15

    invoke-direct {v0, v15, v11}, Li/a/c;->e(II)I

    move-result v16

    add-int v16, v16, v14

    add-int v16, v16, v12

    add-int v14, v16, v10

    if-le v14, v13, :cond_1

    iget-object v13, v0, Li/a/c;->n:Li/a/b;

    iget-object v1, v0, Li/a/c;->d:[I

    aget v19, v1, v15

    iget-object v1, v0, Li/a/c;->d:[I

    aget v20, v1, v11

    iget-object v1, v0, Li/a/c;->d:[I

    aget v21, v1, v7

    iget-object v1, v0, Li/a/c;->d:[I

    aget v22, v1, v6

    iget-object v1, v0, Li/a/c;->d:[I

    aget v23, v1, v9

    move-object/from16 v17, v13

    move/from16 v18, v14

    invoke-virtual/range {v17 .. v23}, Li/a/b;->a(IIIIII)V

    iget-object v1, v0, Li/a/c;->n:Li/a/b;

    iget v1, v1, Li/a/b;->c:I

    iget-object v13, v0, Li/a/c;->n:Li/a/b;

    iget v13, v13, Li/a/b;->b:I

    iput v13, v0, Li/a/c;->A:I

    move v13, v1

    goto :goto_3

    :cond_1
    if-lt v14, v5, :cond_2

    iget v1, v0, Li/a/c;->A:I

    div-int/lit8 v1, v1, 0x4

    if-ge v14, v1, :cond_3

    :cond_2
    add-int/2addr v11, v3

    :cond_3
    :goto_3
    add-int/2addr v11, v8

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    move v11, v13

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move v7, v11

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    return-void
.end method

.method private b(Li/a/a;)V
    .locals 8

    iget v0, p1, Li/a/a;->b:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    iget-object v0, p1, Li/a/a;->a:[I

    aget v0, v0, v4

    iget-object v6, p1, Li/a/a;->a:[I

    aget v6, v6, v5

    invoke-direct {p0, v0, v6}, Li/a/c;->g(II)F

    move-result v0

    iget-object v6, p1, Li/a/a;->a:[I

    aget v5, v6, v5

    iget-object v6, p1, Li/a/a;->a:[I

    aget v6, v6, v3

    invoke-direct {p0, v5, v6}, Li/a/c;->g(II)F

    move-result v5

    iget-object v6, p1, Li/a/a;->a:[I

    aget v3, v6, v3

    iget-object v6, p1, Li/a/a;->a:[I

    aget v6, v6, v2

    invoke-direct {p0, v3, v6}, Li/a/c;->g(II)F

    move-result v3

    iget-object v6, p1, Li/a/a;->a:[I

    aget v2, v6, v2

    iget-object v6, p1, Li/a/a;->a:[I

    aget v6, v6, v1

    invoke-direct {p0, v2, v6}, Li/a/c;->g(II)F

    move-result v2

    add-float/2addr v0, v5

    add-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, p1, Li/a/a;->d:F

    iget-object v0, p0, Li/a/c;->h:Li/b;

    iget-object v0, v0, Li/b;->e:[I

    iget-object v2, p1, Li/a/a;->a:[I

    aget v1, v2, v1

    aget v0, v0, v1

    iget-object v1, p0, Li/a/c;->h:Li/b;

    iget-object v1, v1, Li/b;->e:[I

    iget-object v2, p1, Li/a/a;->a:[I

    aget v2, v2, v4

    aget v1, v1, v2

    :goto_0
    sub-int/2addr v0, v1

    iput v0, p1, Li/a/a;->h:I

    goto :goto_1

    :cond_0
    iget-object v0, p1, Li/a/a;->a:[I

    aget v0, v0, v4

    iget-object v6, p1, Li/a/a;->a:[I

    aget v6, v6, v3

    invoke-direct {p0, v0, v6}, Li/a/c;->c(II)Li/a/c$a;

    move-result-object v0

    iget-object v6, p1, Li/a/a;->a:[I

    iget v7, v0, Li/a/c$a;->a:I

    aput v7, v6, v2

    iget-object v6, p1, Li/a/a;->a:[I

    iget v7, v0, Li/a/c$a;->b:I

    aput v7, v6, v1

    iget v6, v0, Li/a/c$a;->a:I

    iget v0, v0, Li/a/c$a;->b:I

    invoke-direct {p0, v6, v0}, Li/a/c;->g(II)F

    move-result v0

    iget-object v6, p1, Li/a/a;->a:[I

    aget v6, v6, v4

    iget-object v7, p1, Li/a/a;->a:[I

    aget v7, v7, v5

    invoke-direct {p0, v6, v7}, Li/a/c;->g(II)F

    move-result v6

    iget-object v7, p1, Li/a/a;->a:[I

    aget v5, v7, v5

    iget-object v7, p1, Li/a/a;->a:[I

    aget v7, v7, v3

    invoke-direct {p0, v5, v7}, Li/a/c;->g(II)F

    move-result v5

    add-float/2addr v6, v5

    iget-object v5, p1, Li/a/a;->a:[I

    aget v3, v5, v3

    iget-object v5, p1, Li/a/a;->a:[I

    aget v4, v5, v4

    invoke-direct {p0, v3, v4}, Li/a/c;->g(II)F

    move-result v3

    add-float/2addr v6, v3

    iput v6, p1, Li/a/a;->d:F

    iget v3, p1, Li/a/a;->d:F

    sub-float/2addr v3, v0

    iput v3, p1, Li/a/a;->d:F

    iget-object v0, p0, Li/a/c;->h:Li/b;

    iget-object v0, v0, Li/b;->e:[I

    iget-object v3, p1, Li/a/a;->a:[I

    aget v1, v3, v1

    aget v0, v0, v1

    iget-object v1, p0, Li/a/c;->h:Li/b;

    iget-object v1, v1, Li/b;->e:[I

    iget-object v3, p1, Li/a/a;->a:[I

    aget v2, v3, v2

    aget v1, v1, v2

    goto :goto_0

    :goto_1
    iget v0, p1, Li/a/a;->h:I

    if-lez v0, :cond_1

    const/high16 v0, 0x45610000    # 3600.0f

    iget v1, p1, Li/a/a;->d:F

    mul-float v1, v1, v0

    iget v0, p1, Li/a/a;->h:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p1, Li/a/a;->g:F

    :cond_1
    invoke-direct {p0, p1}, Li/a/c;->c(Li/a/a;)V

    return-void
.end method

.method private c(II)Li/a/c$a;
    .locals 6

    iget-boolean v0, p0, Li/a/c;->u:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Li/a/c;->b(II)Li/a/c$a;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x1869f

    const/4 v1, 0x0

    move v0, p1

    move v2, p2

    const v3, 0x1869f

    :goto_0
    if-gt v1, p1, :cond_3

    move v4, v2

    move v2, v0

    move v0, p2

    :goto_1
    iget-object v5, p0, Li/a/c;->h:Li/b;

    iget-object v5, v5, Li/b;->i:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    invoke-direct {p0, v1, v0}, Li/a/c;->f(II)I

    move-result v5

    if-ge v5, v3, :cond_1

    move v4, v0

    move v2, v1

    move v3, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    move v2, v4

    goto :goto_0

    :cond_3
    new-instance p1, Li/a/c$a;

    invoke-direct {p1, p0, v0, v2, v3}, Li/a/c$a;-><init>(Li/a/c;III)V

    return-object p1
.end method

.method private c()V
    .locals 11

    iget-object v0, p0, Li/a/c;->n:Li/a/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Li/a/b;->a:[Li/a/a;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Li/a/b;->a:[Li/a/a;

    aget-object v3, v3, v2

    iget v4, v3, Li/a/a;->c:I

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    iget v6, p0, Li/a/c;->A:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Li/a/c;->a(Li/a/a;I)V

    const/4 v5, 0x2

    invoke-direct {p0, v3, v5}, Li/a/c;->a(Li/a/a;I)V

    const/4 v6, 0x3

    invoke-direct {p0, v3, v6}, Li/a/c;->a(Li/a/a;I)V

    invoke-direct {p0, v3, v1}, Li/a/c;->a(Li/a/a;I)V

    const/4 v7, 0x4

    invoke-direct {p0, v3, v7}, Li/a/c;->a(Li/a/a;I)V

    iget-object v8, v3, Li/a/a;->a:[I

    aget v8, v8, v1

    iget-object v9, v3, Li/a/a;->a:[I

    aget v9, v9, v4

    invoke-direct {p0, v8, v9}, Li/a/c;->f(II)I

    move-result v8

    iget-object v9, v3, Li/a/a;->a:[I

    aget v9, v9, v4

    iget-object v10, v3, Li/a/a;->a:[I

    aget v10, v10, v5

    invoke-direct {p0, v9, v10}, Li/a/c;->f(II)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v3, Li/a/a;->a:[I

    aget v5, v9, v5

    iget-object v9, v3, Li/a/a;->a:[I

    aget v9, v9, v6

    invoke-direct {p0, v5, v9}, Li/a/c;->f(II)I

    move-result v5

    add-int/2addr v8, v5

    iget-object v5, v3, Li/a/a;->a:[I

    aget v5, v5, v6

    iget-object v6, v3, Li/a/a;->a:[I

    aget v6, v6, v7

    invoke-direct {p0, v5, v6}, Li/a/c;->f(II)I

    move-result v5

    add-int/2addr v8, v5

    iput v8, v3, Li/a/a;->c:I

    iget v5, v3, Li/a/a;->c:I

    iget v6, p0, Li/a/c;->A:I

    if-le v5, v6, :cond_0

    iget v5, v3, Li/a/a;->c:I

    iput v5, p0, Li/a/c;->A:I

    :cond_0
    iput-boolean v4, v3, Li/a/a;->f:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Li/a/a;)V
    .locals 2

    iget v0, p1, Li/a/a;->d:F

    iput v0, p1, Li/a/a;->e:F

    iget v0, p1, Li/a/a;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p1, Li/a/a;->e:F

    const v1, 0x3fb33333    # 1.4f

    goto :goto_0

    :pswitch_1
    iget v0, p1, Li/a/a;->e:F

    const v1, 0x3f99999a    # 1.2f

    :goto_0
    mul-float v0, v0, v1

    iput v0, p1, Li/a/a;->e:F

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(II)I
    .locals 5

    iget v0, p0, Li/a/c;->e:I

    mul-int v0, v0, p1

    add-int/2addr v0, p2

    iget-object v1, p0, Li/a/c;->f:[S

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/a/c;->f:[S

    aget-short v1, v1, v0

    if-eqz v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    if-le p2, p1, :cond_2

    move v1, p1

    move v3, v1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, p2, :cond_4

    invoke-direct {p0, p1, v1}, Li/a/c;->e(II)I

    move-result v4

    if-le v4, v2, :cond_1

    move v3, v1

    move v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, p1

    move v3, v1

    const/4 v2, 0x0

    :goto_1
    if-lt v1, p2, :cond_4

    invoke-direct {p0, v1, p1}, Li/a/c;->e(II)I

    move-result v4

    if-le v4, v2, :cond_3

    move v3, v1

    move v2, v4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Li/a/c;->f:[S

    if-eqz p1, :cond_5

    iget-object p1, p0, Li/a/c;->f:[S

    int-to-short p2, v3

    aput-short p2, p1, v0

    :cond_5
    return v3
.end method

.method private d()V
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Li/a/c;->h:Li/b;

    iget-object v2, v2, Li/b;->n:Ltypes/c;

    invoke-virtual {v2}, Ltypes/c;->d()I

    move-result v2

    iget v3, v0, Li/a/c;->e:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    div-int/lit8 v7, v2, 0x2

    add-int/lit8 v8, v3, -0x1

    move v11, v7

    move v9, v8

    const/4 v10, 0x0

    :goto_1
    if-le v9, v5, :cond_2

    invoke-direct {v0, v9, v8}, Li/a/c;->e(II)I

    move-result v12

    mul-int/lit8 v13, v2, 0x3

    div-int/lit8 v13, v13, 0x4

    if-le v12, v13, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {v0, v5, v9}, Li/a/c;->e(II)I

    move-result v12

    if-le v12, v10, :cond_1

    move v10, v12

    :cond_1
    if-le v12, v7, :cond_3

    mul-int/lit8 v13, v11, 0x2

    if-le v12, v13, :cond_3

    :cond_2
    :goto_2
    move/from16 v17, v5

    goto :goto_4

    :cond_3
    int-to-double v13, v12

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    move/from16 v17, v5

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v15

    cmpl-double v15, v13, v4

    if-lez v15, :cond_4

    goto :goto_3

    :cond_4
    if-ge v12, v11, :cond_5

    new-instance v4, Li/a/c$a;

    iget-object v5, v0, Li/a/c;->d:[I

    aget v5, v5, v17

    iget-object v11, v0, Li/a/c;->d:[I

    aget v11, v11, v9

    invoke-direct {v4, v0, v5, v11, v12}, Li/a/c$a;-><init>(Li/a/c;III)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v12

    :cond_5
    :goto_3
    add-int/lit8 v9, v9, -0x1

    move/from16 v5, v17

    goto :goto_1

    :goto_4
    div-int/lit8 v4, v2, 0x3

    if-le v10, v4, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li/a/c$a;

    iput v4, v7, Li/a/c$a;->d:I

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v17, 0x1

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    new-array v2, v4, [Li/a/c$a;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Li/a/c$a;

    iput-object v1, v0, Li/a/c;->j:[Li/a/c$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinGaps arr. length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Li/a/c;->j:[Li/a/c$a;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Li/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d(Li/a/a;)V
    .locals 6

    iget-object v0, p1, Li/a/a;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Li/a/a;->a:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {p0, v0, v2}, Li/a/c;->c(II)Li/a/c$a;

    move-result-object v0

    iget-object v2, p1, Li/a/a;->a:[I

    iget v4, v0, Li/a/c$a;->a:I

    const/4 v5, 0x3

    aput v4, v2, v5

    iget-object v2, p1, Li/a/a;->a:[I

    iget v4, v0, Li/a/c$a;->b:I

    const/4 v5, 0x4

    aput v4, v2, v5

    iget v2, v0, Li/a/c$a;->a:I

    iget v0, v0, Li/a/c$a;->b:I

    invoke-direct {p0, v2, v0}, Li/a/c;->f(II)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p1, Li/a/a;->a:[I

    aget v2, v2, v1

    iget-object v4, p1, Li/a/a;->a:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-direct {p0, v2, v4}, Li/a/c;->f(II)I

    move-result v2

    iget-object v4, p1, Li/a/a;->a:[I

    aget v4, v4, v5

    iget-object v5, p1, Li/a/a;->a:[I

    aget v5, v5, v3

    invoke-direct {p0, v4, v5}, Li/a/c;->f(II)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p1, Li/a/a;->a:[I

    aget v3, v4, v3

    iget-object v4, p1, Li/a/a;->a:[I

    aget v1, v4, v1

    invoke-direct {p0, v3, v1}, Li/a/c;->f(II)I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p1, Li/a/a;->c:I

    iget v1, p1, Li/a/a;->c:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Li/a/a;->c:I

    return-void
.end method

.method private e(II)I
    .locals 1

    iget v0, p0, Li/a/c;->e:I

    mul-int p1, p1, v0

    add-int/2addr p1, p2

    iget-object p2, p0, Li/a/c;->g:[I

    aget p1, p2, p1

    return p1
.end method

.method private e()V
    .locals 7

    iget v0, p0, Li/a/c;->e:I

    const/4 v1, 0x0

    iput v1, p0, Li/a/c;->l:I

    iput v1, p0, Li/a/c;->m:I

    iput v1, p0, Li/a/c;->k:I

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Li/a/c;->d:[I

    aget v4, v4, v3

    iget-object v5, p0, Li/a/c;->d:[I

    aget v5, v5, v2

    invoke-direct {p0, v4, v5}, Li/a/c;->f(II)I

    move-result v4

    iget v5, p0, Li/a/c;->e:I

    mul-int v5, v5, v3

    add-int/2addr v5, v2

    iget-object v6, p0, Li/a/c;->g:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Li/a/c;->g:[I

    aput v4, v6, v5

    :cond_0
    iget v5, p0, Li/a/c;->k:I

    if-le v4, v5, :cond_1

    iput v4, p0, Li/a/c;->k:I

    iput v3, p0, Li/a/c;->m:I

    iput v2, p0, Li/a/c;->l:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private f(II)I
    .locals 3

    iget-object v0, p0, Li/a/c;->h:Li/b;

    iget-object v0, v0, Li/b;->i:[I

    aget v0, v0, p1

    iget-object v1, p0, Li/a/c;->h:Li/b;

    iget-object v1, v1, Li/b;->i:[I

    aget v1, v1, p2

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Li/a/c;->h:Li/b;

    iget-object v2, v2, Li/b;->j:[I

    aget p1, v2, p1

    iget-object v2, p0, Li/a/c;->h:Li/b;

    iget-object v2, v2, Li/b;->j:[I

    aget p2, v2, p2

    sub-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private f()V
    .locals 54

    move-object/from16 v0, p0

    iget v1, v0, Li/a/c;->A:I

    iget v2, v0, Li/a/c;->A:I

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iput v2, v0, Li/a/c;->B:I

    iput v2, v0, Li/a/c;->y:I

    iput v2, v0, Li/a/c;->z:I

    iget v3, v0, Li/a/c;->e:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Li/a/c;->e(II)I

    move-result v3

    int-to-double v5, v3

    const-wide v7, 0x3fe3333333333333L    # 0.6

    iget v3, v0, Li/a/c;->A:I

    int-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    cmpl-double v3, v5, v9

    if-lez v3, :cond_1

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Li/a/c;->d()V

    iget v3, v0, Li/a/c;->e:I

    div-int/lit8 v3, v3, 0xc

    if-ge v3, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget v5, v0, Li/a/c;->e:I

    sub-int/2addr v5, v3

    iget v6, v0, Li/a/c;->l:I

    iget v7, v0, Li/a/c;->e:I

    add-int/2addr v6, v7

    if-le v5, v6, :cond_3

    iget v5, v0, Li/a/c;->l:I

    iget v6, v0, Li/a/c;->e:I

    add-int/2addr v5, v6

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v6, v5, :cond_2b

    if-eqz v7, :cond_4

    goto/16 :goto_16

    :cond_4
    add-int v13, v6, v3

    iget v14, v0, Li/a/c;->m:I

    if-ge v13, v14, :cond_5

    iget v14, v0, Li/a/c;->m:I

    goto :goto_1

    :cond_5
    move v14, v13

    :goto_1
    iget v15, v0, Li/a/c;->e:I

    sub-int/2addr v15, v4

    if-lt v14, v15, :cond_6

    iget v14, v0, Li/a/c;->e:I

    sub-int/2addr v14, v4

    :cond_6
    iget v15, v0, Li/a/c;->e:I

    sub-int/2addr v15, v4

    const-wide/16 v16, 0x0

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move v11, v7

    move v12, v9

    move-wide/from16 v9, v16

    const/4 v7, 0x0

    :goto_2
    if-le v15, v14, :cond_27

    invoke-direct {v0, v6, v15}, Li/a/c;->e(II)I

    move-result v2

    const/16 v24, 0x0

    add-int/lit8 v25, v6, 0x1

    move/from16 v32, v3

    move/from16 v26, v5

    move v4, v7

    move-wide/from16 v30, v9

    move/from16 v27, v11

    move/from16 v33, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v14, v18

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v3, v22

    move/from16 v12, v23

    move/from16 v7, v25

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_3
    if-ge v7, v15, :cond_1d

    move/from16 v34, v8

    invoke-direct {v0, v6, v7}, Li/a/c;->e(II)I

    move-result v8

    move/from16 v35, v12

    invoke-direct {v0, v7, v15}, Li/a/c;->e(II)I

    move-result v12

    add-int v18, v8, v12

    move/from16 v36, v3

    add-int v3, v18, v2

    if-le v8, v4, :cond_7

    move v4, v8

    :cond_7
    if-le v12, v5, :cond_8

    move v5, v12

    :cond_8
    if-le v8, v11, :cond_9

    move v11, v8

    :cond_9
    if-le v12, v11, :cond_a

    move v11, v12

    :cond_a
    move/from16 v37, v4

    div-int/lit8 v4, v1, 0x5

    if-ge v3, v4, :cond_b

    add-int/lit8 v7, v7, 0x1

    move/from16 v49, v1

    move/from16 v51, v2

    move/from16 v38, v5

    :goto_4
    move/from16 v46, v11

    move/from16 v12, v35

    move/from16 v3, v36

    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_f

    :cond_b
    mul-int/lit8 v4, v3, 0x64

    move/from16 v38, v5

    iget v5, v0, Li/a/c;->y:I

    mul-int/lit8 v5, v5, 0x50

    if-ge v4, v5, :cond_c

    iget v5, v0, Li/a/c;->z:I

    mul-int/lit8 v5, v5, 0x50

    if-ge v4, v5, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit16 v4, v3, 0x1f4

    div-int/lit8 v5, v1, 0x3

    if-ge v4, v5, :cond_d

    :goto_6
    move/from16 v49, v1

    move/from16 v51, v2

    goto :goto_4

    :cond_d
    if-le v3, v14, :cond_e

    move v14, v3

    :cond_e
    if-nez v24, :cond_10

    iget-object v4, v0, Li/a/c;->d:[I

    aget v4, v4, v6

    iget-object v5, v0, Li/a/c;->d:[I

    aget v5, v5, v15

    invoke-direct {v0, v4, v5}, Li/a/c;->a(II)Li/a/c$a;

    move-result-object v4

    iget v5, v4, Li/a/c$a;->c:I

    move-object/from16 v39, v4

    int-to-float v4, v5

    const v18, 0x3f19999a    # 0.6f

    move/from16 v40, v5

    iget v5, v0, Li/a/c;->k:I

    int-to-float v5, v5

    mul-float v5, v5, v18

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    move/from16 v49, v1

    move/from16 v51, v2

    move/from16 v46, v11

    move/from16 v12, v35

    move/from16 v3, v36

    move-object/from16 v24, v39

    move/from16 v19, v40

    goto :goto_5

    :cond_f
    move/from16 v46, v11

    move-object/from16 v5, v39

    move/from16 v4, v40

    goto :goto_7

    :cond_10
    move/from16 v46, v11

    move/from16 v4, v19

    move-object/from16 v5, v24

    :goto_7
    sub-int v11, v3, v4

    if-le v11, v13, :cond_11

    move/from16 v47, v13

    move/from16 v48, v14

    int-to-double v13, v4

    move/from16 v49, v1

    move/from16 v50, v2

    int-to-double v1, v3

    const-wide v18, 0x3fd3333333333333L    # 0.3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v18

    cmpg-double v18, v13, v1

    if-gez v18, :cond_12

    move/from16 v47, v11

    goto :goto_8

    :cond_11
    move/from16 v49, v1

    move/from16 v50, v2

    move/from16 v47, v13

    move/from16 v48, v14

    :cond_12
    :goto_8
    int-to-float v1, v4

    int-to-float v2, v3

    const v13, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v13

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1b

    if-le v11, v9, :cond_13

    move v9, v11

    :cond_13
    if-le v11, v10, :cond_14

    iget-object v1, v0, Li/a/c;->o:Li/a/b;

    iget-object v2, v0, Li/a/c;->d:[I

    aget v41, v2, v6

    iget-object v2, v0, Li/a/c;->d:[I

    aget v42, v2, v7

    iget-object v2, v0, Li/a/c;->d:[I

    aget v43, v2, v15

    iget v2, v5, Li/a/c$a;->a:I

    iget v10, v5, Li/a/c$a;->b:I

    move-object/from16 v39, v1

    move/from16 v40, v11

    move/from16 v44, v2

    move/from16 v45, v10

    invoke-virtual/range {v39 .. v45}, Li/a/b;->b(IIIIII)V

    iget-object v1, v0, Li/a/c;->o:Li/a/b;

    iget v10, v1, Li/a/b;->c:I

    iget-object v1, v0, Li/a/c;->o:Li/a/b;

    iget v1, v1, Li/a/b;->b:I

    iput v1, v0, Li/a/c;->y:I

    :cond_14
    move/from16 v1, v50

    if-ge v8, v1, :cond_15

    int-to-double v13, v8

    :goto_9
    move/from16 v51, v1

    goto :goto_a

    :cond_15
    int-to-double v13, v1

    goto :goto_9

    :goto_a
    int-to-double v1, v12

    cmpg-double v8, v1, v13

    if-gez v8, :cond_16

    goto :goto_b

    :cond_16
    move-wide v1, v13

    :goto_b
    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v12

    mul-int/lit16 v8, v3, 0x118

    int-to-double v12, v8

    cmpl-double v8, v1, v12

    if-ltz v8, :cond_17

    const/4 v8, 0x1

    goto :goto_c

    :cond_17
    const/4 v8, 0x0

    :goto_c
    if-eqz v8, :cond_18

    move/from16 v8, v36

    if-le v11, v8, :cond_19

    iget-object v1, v0, Li/a/c;->p:Li/a/b;

    iget-object v2, v0, Li/a/c;->d:[I

    aget v41, v2, v6

    iget-object v2, v0, Li/a/c;->d:[I

    aget v42, v2, v7

    iget-object v2, v0, Li/a/c;->d:[I

    aget v43, v2, v15

    iget v2, v5, Li/a/c$a;->a:I

    iget v3, v5, Li/a/c$a;->b:I

    move-object/from16 v39, v1

    move/from16 v40, v11

    move/from16 v44, v2

    move/from16 v45, v3

    invoke-virtual/range {v39 .. v45}, Li/a/b;->b(IIIIII)V

    iget-object v1, v0, Li/a/c;->p:Li/a/b;

    iget v1, v1, Li/a/b;->b:I

    iput v1, v0, Li/a/c;->z:I

    iget-object v1, v0, Li/a/c;->p:Li/a/b;

    iget v1, v1, Li/a/b;->c:I

    move v3, v1

    move/from16 v19, v4

    move-object/from16 v24, v5

    move/from16 v12, v35

    goto :goto_e

    :cond_18
    move/from16 v8, v36

    :cond_19
    iget v12, v0, Li/a/c;->z:I

    if-le v11, v12, :cond_1a

    move/from16 v12, v35

    if-le v11, v12, :cond_1c

    mul-int/lit16 v3, v3, 0x10e

    int-to-double v13, v3

    cmpl-double v3, v1, v13

    if-ltz v3, :cond_1c

    iget-object v1, v0, Li/a/c;->q:Li/a/b;

    iget-object v2, v0, Li/a/c;->d:[I

    aget v41, v2, v6

    iget-object v2, v0, Li/a/c;->d:[I

    aget v42, v2, v7

    iget-object v2, v0, Li/a/c;->d:[I

    aget v43, v2, v15

    iget v2, v5, Li/a/c$a;->a:I

    iget v3, v5, Li/a/c$a;->b:I

    move-object/from16 v39, v1

    move/from16 v40, v11

    move/from16 v44, v2

    move/from16 v45, v3

    invoke-virtual/range {v39 .. v45}, Li/a/b;->b(IIIIII)V

    iget-object v1, v0, Li/a/c;->q:Li/a/b;

    iget v1, v1, Li/a/b;->b:I

    iput v1, v0, Li/a/c;->B:I

    iget-object v1, v0, Li/a/c;->q:Li/a/b;

    iget v1, v1, Li/a/b;->c:I

    move v12, v1

    goto :goto_d

    :cond_1a
    move/from16 v12, v35

    goto :goto_d

    :cond_1b
    move/from16 v12, v35

    move/from16 v8, v36

    move/from16 v51, v50

    :cond_1c
    :goto_d
    move/from16 v19, v4

    move-object/from16 v24, v5

    move v3, v8

    :goto_e
    move/from16 v13, v47

    move/from16 v14, v48

    goto/16 :goto_5

    :goto_f
    add-int/2addr v7, v1

    move/from16 v8, v34

    move/from16 v4, v37

    move/from16 v5, v38

    move/from16 v11, v46

    move/from16 v1, v49

    move/from16 v2, v51

    goto/16 :goto_3

    :cond_1d
    move/from16 v49, v1

    move v1, v8

    move/from16 v47, v13

    move v8, v3

    if-le v4, v1, :cond_1e

    move v1, v4

    :cond_1e
    move/from16 v2, v33

    if-le v5, v2, :cond_1f

    move v2, v5

    :cond_1f
    iget v3, v0, Li/a/c;->A:I

    div-int/lit8 v3, v3, 0x5

    if-ge v11, v3, :cond_20

    sub-int v15, v15, v32

    move/from16 v52, v1

    move/from16 v53, v2

    move/from16 v11, v27

    goto :goto_14

    :cond_20
    if-gtz v47, :cond_22

    div-int/lit8 v3, v49, 0x5

    if-ge v11, v3, :cond_21

    goto :goto_10

    :cond_21
    move/from16 v13, v47

    goto :goto_11

    :cond_22
    :goto_10
    iget v3, v0, Li/a/c;->y:I

    div-int/lit8 v3, v3, 0x2

    move/from16 v13, v47

    if-lt v13, v3, :cond_24

    div-int/lit8 v3, v49, 0x4

    if-ge v13, v3, :cond_23

    goto :goto_12

    :cond_23
    :goto_11
    move/from16 v52, v1

    move/from16 v53, v2

    move/from16 v11, v27

    goto :goto_13

    :cond_24
    :goto_12
    iget v3, v0, Li/a/c;->e:I

    sub-int v3, v3, v32

    if-le v15, v3, :cond_25

    if-lez v13, :cond_25

    const/16 v27, 0x1

    :cond_25
    sub-int v15, v15, v32

    goto :goto_11

    :goto_13
    int-to-double v1, v13

    cmpl-double v3, v1, v30

    if-lez v3, :cond_26

    move-wide/from16 v30, v1

    :cond_26
    :goto_14
    add-int/lit8 v15, v15, -0x1

    move v7, v4

    move/from16 v22, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v23, v12

    move/from16 v18, v14

    move/from16 v5, v26

    move/from16 v13, v28

    move/from16 v14, v29

    move-wide/from16 v9, v30

    move/from16 v3, v32

    move/from16 v1, v49

    move/from16 v8, v52

    move/from16 v12, v53

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_27
    move/from16 v49, v1

    move/from16 v32, v3

    move/from16 v26, v5

    move v1, v8

    move-wide/from16 v30, v9

    move/from16 v27, v11

    move v2, v12

    move/from16 v28, v13

    div-int/lit8 v8, v1, 0x8

    if-ge v7, v8, :cond_28

    goto :goto_16

    :cond_28
    cmpl-double v3, v30, v16

    if-lez v3, :cond_2a

    iget v3, v0, Li/a/c;->y:I

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    cmpg-double v5, v30, v3

    if-ltz v5, :cond_29

    div-int/lit8 v3, v49, 0x4

    int-to-double v3, v3

    cmpg-double v5, v30, v3

    if-gez v5, :cond_2a

    :cond_29
    move/from16 v6, v28

    const/4 v3, 0x1

    const/4 v7, 0x1

    goto :goto_15

    :cond_2a
    move/from16 v7, v27

    const/4 v3, 0x1

    :goto_15
    add-int/2addr v6, v3

    move v8, v1

    move v9, v2

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v5, v26

    move/from16 v3, v32

    move/from16 v1, v49

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2b
    :goto_16
    return-void
.end method

.method private g(II)F
    .locals 3

    iget-object v0, p0, Li/a/c;->h:Li/b;

    iget-object v0, v0, Li/b;->c:[F

    aget v0, v0, p1

    iget-object v1, p0, Li/a/c;->h:Li/b;

    iget-object v1, v1, Li/b;->d:[F

    aget p1, v1, p1

    iget-object v1, p0, Li/a/c;->h:Li/b;

    iget-object v1, v1, Li/b;->c:[F

    aget v1, v1, p2

    iget-object v2, p0, Li/a/c;->h:Li/b;

    iget-object v2, v2, Li/b;->d:[F

    aget p2, v2, p2

    invoke-static {v0, p1, v1, p2}, Ltypes/i;->b(FFFF)F

    move-result p1

    return p1
.end method

.method private g()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Li/a/c;->q:Li/a/b;

    iget-object v2, v2, Li/a/b;->a:[Li/a/a;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Li/a/c;->q:Li/a/b;

    iget-object v2, v2, Li/a/b;->a:[Li/a/a;

    aget-object v2, v2, v1

    iget v3, v2, Li/a/a;->c:I

    iget v4, p0, Li/a/c;->z:I

    if-le v3, v4, :cond_0

    invoke-direct {p0, v2}, Li/a/c;->a(Li/a/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Li/a/c;->p:Li/a/b;

    iget v5, v2, Li/a/a;->c:I

    iget-object v3, v2, Li/a/a;->a:[I

    aget v6, v3, v0

    iget-object v3, v2, Li/a/a;->a:[I

    const/4 v7, 0x1

    aget v7, v3, v7

    iget-object v3, v2, Li/a/a;->a:[I

    const/4 v8, 0x2

    aget v8, v3, v8

    iget-object v3, v2, Li/a/a;->a:[I

    const/4 v9, 0x3

    aget v9, v3, v9

    iget-object v2, v2, Li/a/a;->a:[I

    const/4 v3, 0x4

    aget v10, v2, v3

    invoke-virtual/range {v4 .. v10}, Li/a/b;->b(IIIIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Li/b;)Z
    .locals 6

    iput-object p1, p0, Li/a/c;->h:Li/b;

    iget-object v0, p0, Li/a/c;->h:Li/b;

    iget-object v0, v0, Li/b;->c:[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Li/b;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Li/a/c;->a()V

    iget-boolean p1, p0, Li/a/c;->t:Z

    const/4 v0, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    const/16 p1, 0x47

    iput p1, p0, Li/a/c;->w:I

    const/16 p1, 0x33

    iput p1, p0, Li/a/c;->v:I

    const/4 p1, 0x6

    iput p1, p0, Li/a/c;->x:I

    iget-boolean p1, p0, Li/a/c;->u:Z

    if-eqz p1, :cond_2

    iput v4, p0, Li/a/c;->x:I

    iget p1, p0, Li/a/c;->w:I

    div-int/2addr p1, v0

    iput p1, p0, Li/a/c;->w:I

    iget p1, p0, Li/a/c;->v:I

    div-int/2addr p1, v0

    iput p1, p0, Li/a/c;->v:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x50

    iput p1, p0, Li/a/c;->w:I

    const/16 p1, 0x3d

    iput p1, p0, Li/a/c;->v:I

    const/16 p1, 0xa

    iput p1, p0, Li/a/c;->x:I

    :cond_2
    :goto_0
    new-instance p1, Li/a/b;

    iget v5, p0, Li/a/c;->x:I

    invoke-direct {p1, v5, v4}, Li/a/b;-><init>(II)V

    iput-object p1, p0, Li/a/c;->n:Li/a/b;

    new-instance p1, Li/a/b;

    iget v5, p0, Li/a/c;->x:I

    invoke-direct {p1, v5, v0}, Li/a/b;-><init>(II)V

    iput-object p1, p0, Li/a/c;->o:Li/a/b;

    new-instance p1, Li/a/b;

    iget v0, p0, Li/a/c;->x:I

    const/4 v5, 0x3

    invoke-direct {p1, v0, v5}, Li/a/b;-><init>(II)V

    iput-object p1, p0, Li/a/c;->p:Li/a/b;

    new-instance p1, Li/a/b;

    iget v0, p0, Li/a/c;->x:I

    invoke-direct {p1, v0, v5}, Li/a/b;-><init>(II)V

    iput-object p1, p0, Li/a/c;->q:Li/a/b;

    invoke-direct {p0}, Li/a/c;->e()V

    invoke-direct {p0}, Li/a/c;->b()V

    iget-boolean p1, p0, Li/a/c;->u:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Li/a/c;->c()V

    :cond_3
    iget-object p1, p0, Li/a/c;->n:Li/a/b;

    invoke-direct {p0, p1}, Li/a/c;->b(Li/a/b;)Li/a/a;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FreeFlight: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Li/a/a;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\t / "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Li/a/a;->d:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Li/a/c;->a(Ljava/lang/String;)V

    iput-object p1, p0, Li/a/c;->s:Li/a/a;

    invoke-direct {p0}, Li/a/c;->f()V

    iget p1, p0, Li/a/c;->z:I

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    iget v5, p0, Li/a/c;->A:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    cmpl-float p1, p1, v5

    if-gtz p1, :cond_4

    iget p1, p0, Li/a/c;->y:I

    int-to-float p1, p1

    iget v0, p0, Li/a/c;->A:I

    int-to-float v0, v0

    const v5, 0x3f19999a    # 0.6f

    mul-float v0, v0, v5

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_4

    iget p1, p0, Li/a/c;->B:I

    int-to-float p1, p1

    iget v0, p0, Li/a/c;->A:I

    int-to-float v0, v0

    mul-float v0, v0, v5

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_c

    iget-boolean p1, p0, Li/a/c;->u:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Li/a/c;->t:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Li/a/c;->o:Li/a/b;

    invoke-virtual {p1}, Li/a/b;->a()Li/a/a;

    move-result-object p1

    invoke-direct {p0, p1}, Li/a/c;->a(Li/a/a;)Z

    goto :goto_1

    :cond_6
    iget-object p1, p0, Li/a/c;->o:Li/a/b;

    invoke-direct {p0, p1}, Li/a/c;->a(Li/a/b;)V

    :cond_7
    :goto_1
    iget-object p1, p0, Li/a/c;->o:Li/a/b;

    invoke-direct {p0, p1}, Li/a/c;->b(Li/a/b;)Li/a/a;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triangle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Li/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\t / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Li/a/a;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Li/a/c;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Li/a/c;->u:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Li/a/c;->g()V

    :cond_8
    iget-object v0, p0, Li/a/c;->p:Li/a/b;

    invoke-virtual {v0}, Li/a/b;->a()Li/a/a;

    move-result-object v0

    iget v1, v0, Li/a/a;->c:I

    if-lez v1, :cond_a

    iget-boolean v1, v0, Li/a/a;->f:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Li/a/c;->u:Z

    if-nez v1, :cond_9

    invoke-direct {p0, v0}, Li/a/c;->a(Li/a/a;)Z

    :cond_9
    invoke-direct {p0, v0}, Li/a/c;->b(Li/a/a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FAI: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Li/a/a;->c:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\t / "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Li/a/a;->d:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Li/a/c;->a(Ljava/lang/String;)V

    :cond_a
    if-eqz v0, :cond_b

    iget v1, v0, Li/a/a;->e:F

    iget v5, p1, Li/a/a;->e:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_b

    move-object p1, v0

    :cond_b
    iget v0, p1, Li/a/a;->e:F

    iget-object v1, p0, Li/a/c;->s:Li/a/a;

    iget v1, v1, Li/a/a;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iput-object p1, p0, Li/a/c;->s:Li/a/a;

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Li/a/c;->r:J

    return v4
.end method
