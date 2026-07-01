.class public Lm/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/h$a;,
        Lm/h$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:F

.field private C:I

.field private D:F

.field private E:F

.field private F:I

.field private G:F

.field private H:F

.field private I:I

.field private J:I

.field private K:I

.field private final L:[F

.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm/h$a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:[F

.field public final o:[F

.field public final p:[F

.field private q:Lm/h$a;

.field private final r:I

.field private final s:[Lm/h$b;

.field private t:I

.field private u:I

.field private v:F

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/h$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v1, v2}, Lm/h$a;-><init>(Lm/h;FFI)V

    iput-object v0, p0, Lm/h;->q:Lm/h$a;

    const/16 v0, 0x1f4

    iput v0, p0, Lm/h;->r:I

    new-array v1, v0, [Lm/h$b;

    iput-object v1, p0, Lm/h;->s:[Lm/h$b;

    iput v2, p0, Lm/h;->t:I

    iput v2, p0, Lm/h;->u:I

    iput v2, p0, Lm/h;->w:I

    iput v2, p0, Lm/h;->a:I

    iput v2, p0, Lm/h;->b:I

    iput v2, p0, Lm/h;->x:I

    iput v2, p0, Lm/h;->y:I

    iput v2, p0, Lm/h;->z:I

    iput v2, p0, Lm/h;->A:I

    iput v2, p0, Lm/h;->l:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm/h;->m:Ljava/util/ArrayList;

    const/4 v1, 0x2

    iput v1, p0, Lm/h;->K:I

    const/4 v1, 0x4

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lm/h;->n:[F

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lm/h;->o:[F

    new-array v3, v1, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Lm/h;->p:[F

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lm/h;->L:[F

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v1, p0, Lm/h;->s:[Lm/h$b;

    new-instance v3, Lm/h$b;

    invoke-direct {v3, p0}, Lm/h$b;-><init>(Lm/h;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm/h;->b()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lm/h;)I
    .locals 0

    iget p0, p0, Lm/h;->y:I

    return p0
.end method

.method private e()Z
    .locals 6

    sget v0, Lm/g;->y:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_2

    sget v0, Lm/g;->y:I

    iget v5, p0, Lm/h;->I:I

    if-eq v0, v5, :cond_0

    iput v3, p0, Lm/h;->G:F

    :cond_0
    iget v0, p0, Lm/h;->G:F

    sget v3, Lm/g;->o:F

    add-float/2addr v0, v3

    iput v0, p0, Lm/h;->G:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    return v4

    :cond_1
    sget v0, Lm/g;->y:I

    iput v0, p0, Lm/h;->I:I

    goto :goto_0

    :cond_2
    sget v0, Lm/g;->y:I

    iget v5, p0, Lm/h;->J:I

    if-eq v0, v5, :cond_3

    iput v3, p0, Lm/h;->H:F

    :cond_3
    iget v0, p0, Lm/h;->H:F

    sget v3, Lm/g;->o:F

    add-float/2addr v0, v3

    iput v0, p0, Lm/h;->H:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    return v4

    :cond_4
    sget v0, Lm/g;->y:I

    iput v0, p0, Lm/h;->J:I

    :goto_0
    sget v0, Lm/g;->w:I

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    :goto_1
    iget v2, p0, Lm/h;->x:I

    if-nez v2, :cond_6

    iput v0, p0, Lm/h;->x:I

    :cond_6
    iget v2, p0, Lm/h;->y:I

    iget v3, p0, Lm/h;->x:I

    if-lez v3, :cond_7

    sget v3, Lm/g;->w:I

    goto :goto_2

    :cond_7
    sget v3, Lm/g;->w:I

    neg-int v3, v3

    :goto_2
    add-int/2addr v2, v3

    iput v2, p0, Lm/h;->y:I

    iget v2, p0, Lm/h;->x:I

    if-eq v0, v2, :cond_9

    iget v2, p0, Lm/h;->z:I

    if-lez v0, :cond_8

    sget v0, Lm/g;->w:I

    goto :goto_3

    :cond_8
    sget v0, Lm/g;->w:I

    neg-int v0, v0

    :goto_3
    add-int/2addr v2, v0

    iput v2, p0, Lm/h;->z:I

    iget v0, p0, Lm/h;->z:I

    const/16 v2, 0x3c

    if-le v0, v2, :cond_a

    return v4

    :cond_9
    iput v4, p0, Lm/h;->z:I

    :cond_a
    iget v0, p0, Lm/h;->B:F

    iget v2, p0, Lm/h;->v:F

    add-float/2addr v0, v2

    iput v0, p0, Lm/h;->B:F

    iget v0, p0, Lm/h;->C:I

    add-int/2addr v0, v1

    iput v0, p0, Lm/h;->C:I

    iget-object v0, p0, Lm/h;->s:[Lm/h$b;

    iget v2, p0, Lm/h;->t:I

    aget-object v0, v0, v2

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v2

    iget v3, v2, Ltypes/GpsVal;->a:F

    iput v3, v0, Lm/h$b;->a:F

    iget v3, v2, Ltypes/GpsVal;->b:F

    iput v3, v0, Lm/h$b;->b:F

    iget-short v2, v2, Ltypes/GpsVal;->c:S

    iput v2, v0, Lm/h$b;->c:I

    iget v2, p0, Lm/h;->v:F

    iput v2, v0, Lm/h$b;->d:F

    sget v2, Lm/g;->y:I

    iput v2, v0, Lm/h$b;->e:I

    iget v2, p0, Lm/h;->y:I

    iput v2, v0, Lm/h$b;->f:I

    iget v0, p0, Lm/h;->t:I

    add-int/2addr v0, v1

    iput v0, p0, Lm/h;->t:I

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_b

    iput v4, p0, Lm/h;->t:I

    :cond_b
    iget v0, p0, Lm/h;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lm/h;->u:I

    return v1
.end method

.method private f()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lm/h;->u:I

    const/4 v2, 0x4

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    new-array v6, v2, [I

    fill-array-data v6, :array_3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    if-ge v8, v2, :cond_0

    iget-object v10, v0, Lm/h;->n:[F

    iget-object v11, v0, Lm/h;->o:[F

    iget-object v12, v0, Lm/h;->L:[F

    iget-object v13, v0, Lm/h;->p:[F

    aput v9, v13, v8

    aput v9, v12, v8

    aput v9, v11, v8

    aput v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iput v7, v0, Lm/h;->b:I

    const/16 v8, 0x270f

    iput v9, v0, Lm/h;->d:F

    const v10, 0x4479c000    # 999.0f

    iput v10, v0, Lm/h;->e:F

    iget v10, v0, Lm/h;->t:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    const/4 v8, 0x0

    const/16 v12, 0x270f

    const/4 v13, 0x0

    :goto_1
    if-lez v1, :cond_8

    if-gez v10, :cond_1

    add-int/lit16 v10, v10, 0x1f4

    :cond_1
    iget-object v14, v0, Lm/h;->s:[Lm/h$b;

    aget-object v14, v14, v10

    iget v15, v14, Lm/h$b;->c:I

    if-le v15, v8, :cond_2

    iget v8, v14, Lm/h$b;->c:I

    :cond_2
    iget v15, v14, Lm/h$b;->c:I

    if-ge v15, v12, :cond_3

    iget v12, v14, Lm/h$b;->c:I

    :cond_3
    iget v15, v14, Lm/h$b;->e:I

    aget v16, v3, v15

    iget v7, v14, Lm/h$b;->a:F

    add-float v16, v16, v7

    aput v16, v3, v15

    aget v7, v4, v15

    iget v2, v14, Lm/h$b;->b:F

    add-float/2addr v7, v2

    aput v7, v4, v15

    aget v2, v5, v15

    iget v7, v14, Lm/h$b;->d:F

    add-float/2addr v2, v7

    aput v2, v5, v15

    aget v2, v6, v15

    add-int/2addr v2, v11

    aput v2, v6, v15

    iget-object v2, v0, Lm/h;->n:[F

    aget v7, v2, v15

    iget v9, v14, Lm/h$b;->a:F

    add-float/2addr v7, v9

    aput v7, v2, v15

    iget-object v2, v0, Lm/h;->o:[F

    aget v7, v2, v15

    iget v9, v14, Lm/h$b;->b:F

    add-float/2addr v7, v9

    aput v7, v2, v15

    iget-object v2, v0, Lm/h;->L:[F

    aget v7, v2, v15

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v7, v9

    aput v7, v2, v15

    iget-object v2, v0, Lm/h;->p:[F

    aget v7, v2, v15

    iget v9, v14, Lm/h$b;->d:F

    add-float/2addr v7, v9

    aput v7, v2, v15

    iget v2, v14, Lm/h$b;->d:F

    iget v7, v0, Lm/h;->d:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_4

    iget v2, v14, Lm/h$b;->d:F

    iput v2, v0, Lm/h;->d:F

    :cond_4
    iget v2, v14, Lm/h$b;->d:F

    iget v7, v0, Lm/h;->e:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_5

    iget v2, v14, Lm/h$b;->d:F

    iput v2, v0, Lm/h;->e:F

    :cond_5
    if-nez v13, :cond_6

    iget v2, v14, Lm/h$b;->f:I

    add-int/lit16 v2, v2, -0x190

    move v13, v2

    goto :goto_2

    :cond_6
    iget v2, v14, Lm/h$b;->f:I

    if-ge v2, v13, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, -0x1

    iget v2, v0, Lm/h;->b:I

    add-int/2addr v2, v11

    iput v2, v0, Lm/h;->b:I

    add-int/lit8 v10, v10, -0x1

    const/4 v2, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_8
    :goto_3
    const/4 v1, 0x0

    iput v1, v0, Lm/h;->h:F

    iput v1, v0, Lm/h;->g:F

    iput v1, v0, Lm/h;->f:F

    iput v1, v0, Lm/h;->k:F

    iput v1, v0, Lm/h;->j:F

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    :goto_4
    if-ge v2, v10, :cond_d

    aget v13, v6, v2

    int-to-float v13, v13

    cmpl-float v14, v13, v1

    if-eqz v14, :cond_9

    iget v1, v0, Lm/h;->h:F

    aget v14, v5, v2

    div-float/2addr v14, v13

    aput v14, v5, v2

    add-float/2addr v1, v14

    iput v1, v0, Lm/h;->h:F

    iget v1, v0, Lm/h;->f:F

    aget v14, v3, v2

    div-float/2addr v14, v13

    aput v14, v3, v2

    add-float/2addr v1, v14

    iput v1, v0, Lm/h;->f:F

    iget v1, v0, Lm/h;->g:F

    aget v14, v4, v2

    div-float/2addr v14, v13

    aput v14, v4, v2

    add-float/2addr v1, v14

    iput v1, v0, Lm/h;->g:F

    add-int/lit8 v7, v7, 0x1

    :cond_9
    iget-object v1, v0, Lm/h;->L:[F

    aget v1, v1, v2

    const/4 v13, 0x0

    cmpl-float v14, v1, v13

    if-eqz v14, :cond_c

    iget-object v14, v0, Lm/h;->p:[F

    aget v15, v14, v2

    div-float/2addr v15, v1

    aput v15, v14, v2

    mul-float v15, v15, v15

    iget-object v14, v0, Lm/h;->p:[F

    aget v14, v14, v2

    cmpg-float v14, v14, v13

    if-gez v14, :cond_a

    neg-float v14, v15

    move v15, v14

    :cond_a
    cmpg-float v14, v15, v13

    if-gez v14, :cond_b

    const/4 v15, 0x0

    :cond_b
    iget-object v13, v0, Lm/h;->n:[F

    aget v14, v13, v2

    div-float/2addr v14, v1

    aput v14, v13, v2

    iget-object v13, v0, Lm/h;->o:[F

    aget v14, v13, v2

    div-float/2addr v14, v1

    aput v14, v13, v2

    iget v1, v0, Lm/h;->j:F

    iget-object v13, v0, Lm/h;->n:[F

    aget v13, v13, v2

    mul-float v13, v13, v15

    add-float/2addr v1, v13

    iput v1, v0, Lm/h;->j:F

    iget v1, v0, Lm/h;->k:F

    iget-object v13, v0, Lm/h;->o:[F

    aget v13, v13, v2

    mul-float v13, v13, v15

    add-float/2addr v1, v13

    iput v1, v0, Lm/h;->k:F

    add-float/2addr v9, v15

    :cond_c
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_4

    :cond_d
    const/4 v1, 0x3

    if-ge v7, v1, :cond_e

    return-void

    :cond_e
    iget v2, v0, Lm/h;->B:F

    iget v4, v0, Lm/h;->C:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, v0, Lm/h;->c:F

    const/4 v2, 0x0

    aget v4, v3, v2

    const/4 v2, 0x2

    aget v5, v3, v2

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aget v5, v3, v11

    aget v3, v3, v1

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v0, Lm/h;->i:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_f

    iput v3, v0, Lm/h;->i:F

    goto :goto_5

    :cond_f
    iget v4, v0, Lm/h;->i:F

    iget v5, v0, Lm/h;->i:F

    sub-float/2addr v3, v5

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    iput v4, v0, Lm/h;->i:F

    :goto_5
    if-lez v7, :cond_10

    iget v3, v0, Lm/h;->f:F

    int-to-float v4, v7

    div-float/2addr v3, v4

    iput v3, v0, Lm/h;->f:F

    iget v3, v0, Lm/h;->g:F

    div-float/2addr v3, v4

    iput v3, v0, Lm/h;->g:F

    :cond_10
    const/4 v3, 0x0

    cmpl-float v4, v9, v3

    if-lez v4, :cond_11

    iget v3, v0, Lm/h;->j:F

    div-float/2addr v3, v9

    iput v3, v0, Lm/h;->j:F

    iget v3, v0, Lm/h;->k:F

    div-float/2addr v3, v9

    iput v3, v0, Lm/h;->k:F

    :cond_11
    iget v3, v0, Lm/h;->y:I

    div-int/lit16 v3, v3, 0x168

    iget v4, v0, Lm/h;->a:I

    if-le v3, v4, :cond_15

    iget v4, v0, Lm/h;->a:I

    iget v5, v0, Lm/h;->K:I

    if-ge v4, v5, :cond_12

    iget v4, v0, Lm/h;->K:I

    if-lt v3, v4, :cond_12

    goto :goto_6

    :cond_12
    const/4 v11, 0x0

    :goto_6
    iput v3, v0, Lm/h;->a:I

    iget v3, v0, Lm/h;->F:I

    if-lez v3, :cond_14

    add-int/2addr v12, v8

    div-int/2addr v12, v2

    new-instance v2, Lm/h$a;

    iget v3, v0, Lm/h;->D:F

    iget v4, v0, Lm/h;->F:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, v0, Lm/h;->E:F

    iget v5, v0, Lm/h;->F:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-direct {v2, v0, v3, v4, v12}, Lm/h$a;-><init>(Lm/h;FFI)V

    iget-object v3, v0, Lm/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_13

    sget-boolean v3, Lcom/xcglobe/xclog/l;->U:Z

    if-eqz v3, :cond_13

    const/16 v3, 0x11

    invoke-static {v3}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    :cond_13
    iget v3, v0, Lm/h;->a:I

    if-ne v3, v1, :cond_14

    sget-object v1, Lcom/xcglobe/xclog/l;->ar:Lcom/xcglobe/xclog/h;

    iget v3, v2, Lm/h$a;->a:F

    iget v2, v2, Lm/h$a;->b:F

    sget v4, Lm/g;->s:I

    int-to-short v4, v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/xcglobe/xclog/h;->a(FFS)V

    :cond_14
    const/4 v1, 0x0

    iput v1, v0, Lm/h;->E:F

    iput v1, v0, Lm/h;->D:F

    const/4 v1, 0x0

    goto :goto_7

    :cond_15
    iget v1, v0, Lm/h;->D:F

    iget v2, v0, Lm/h;->j:F

    add-float/2addr v1, v2

    iput v1, v0, Lm/h;->D:F

    iget v1, v0, Lm/h;->E:F

    iget v2, v0, Lm/h;->k:F

    add-float/2addr v1, v2

    iput v1, v0, Lm/h;->E:F

    iget v1, v0, Lm/h;->F:I

    add-int/2addr v1, v11

    :goto_7
    iput v1, v0, Lm/h;->F:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(I)Lm/h$b;
    .locals 4

    iget v0, p0, Lm/h;->A:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm/h;->A:I

    iget v1, p0, Lm/h;->u:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    iget v0, p0, Lm/h;->t:I

    iget v1, p0, Lm/h;->A:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_1

    add-int/lit16 v0, v0, 0x1f4

    :cond_1
    iget-object v1, p0, Lm/h;->s:[Lm/h$b;

    aget-object v0, v1, v0

    iget v1, p0, Lm/h;->t:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    add-int/lit16 v1, v1, 0x1f4

    :cond_2
    iget-object v3, p0, Lm/h;->s:[Lm/h$b;

    aget-object v1, v3, v1

    iget v1, v1, Lm/h$b;->f:I

    iget v3, v0, Lm/h$b;->f:I

    sub-int/2addr v1, v3

    mul-int/lit16 p1, p1, 0x168

    if-le v1, p1, :cond_3

    return-object v2

    :cond_3
    return-object v0
.end method

.method public a()Z
    .locals 4

    sget v0, Lm/g;->j:F

    iput v0, p0, Lm/h;->v:F

    iget v0, p0, Lm/h;->w:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget v0, Lm/g;->x:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_1

    iget v0, p0, Lm/h;->v:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm/h;->b()V

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :cond_2
    :goto_1
    invoke-direct {p0}, Lm/h;->e()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lm/h;->w:I

    add-int/2addr v0, v2

    iput v0, p0, Lm/h;->w:I

    iget v0, p0, Lm/h;->y:I

    const/16 v3, 0x168

    if-lt v0, v3, :cond_4

    invoke-direct {p0}, Lm/h;->f()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lm/h;->b()V

    :cond_4
    :goto_2
    iget v0, p0, Lm/h;->a:I

    if-lez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method b()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lm/h;->t:I

    iput v0, p0, Lm/h;->y:I

    iput v0, p0, Lm/h;->z:I

    iput v0, p0, Lm/h;->u:I

    iput v0, p0, Lm/h;->w:I

    iput v0, p0, Lm/h;->x:I

    const/4 v1, 0x0

    iput v1, p0, Lm/h;->H:F

    iput v1, p0, Lm/h;->G:F

    iput v0, p0, Lm/h;->J:I

    iput v0, p0, Lm/h;->I:I

    iput v0, p0, Lm/h;->a:I

    iput v0, p0, Lm/h;->A:I

    iget-object v2, p0, Lm/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lm/h;->E:F

    iput v1, p0, Lm/h;->D:F

    iput v0, p0, Lm/h;->F:I

    iput v1, p0, Lm/h;->B:F

    iput v0, p0, Lm/h;->C:I

    iput v1, p0, Lm/h;->c:F

    const/4 v0, 0x2

    iput v0, p0, Lm/h;->K:I

    return-void
.end method

.method public c()Lm/h$a;
    .locals 5

    iget-object v0, p0, Lm/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lm/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/h$a;

    iget v1, p0, Lm/h;->y:I

    iget v2, v0, Lm/h$a;->d:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lm/h;->j:F

    iget v3, v0, Lm/h$a;->a:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    iget v3, p0, Lm/h;->k:F

    iget v0, v0, Lm/h$a;->b:F

    sub-float/2addr v3, v0

    div-float/2addr v3, v1

    const/high16 v0, 0x42b40000    # 90.0f

    iget-object v1, p0, Lm/h;->q:Lm/h$a;

    iget v4, p0, Lm/h;->j:F

    mul-float v2, v2, v0

    add-float/2addr v4, v2

    iput v4, v1, Lm/h$a;->a:F

    iget-object v1, p0, Lm/h;->q:Lm/h$a;

    iget v2, p0, Lm/h;->k:F

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lm/h$a;->b:F

    iget-object v0, p0, Lm/h;->q:Lm/h$a;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lm/h;->A:I

    return-void
.end method
