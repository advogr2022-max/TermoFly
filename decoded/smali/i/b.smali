.class public Li/b;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J

.field public c:[F

.field public d:[F

.field public e:[I

.field public f:[S

.field public g:F

.field public h:F

.field public i:[I

.field public j:[I

.field public k:I

.field public l:I

.field public m:I

.field public n:Ltypes/c;

.field public o:Ltypes/b;

.field public p:[F

.field public q:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltypes/c;

    invoke-direct {v0}, Ltypes/c;-><init>()V

    iput-object v0, p0, Li/b;->n:Ltypes/c;

    new-instance v0, Ltypes/b;

    invoke-direct {v0}, Ltypes/b;-><init>()V

    iput-object v0, p0, Li/b;->o:Ltypes/b;

    const/4 v0, 0x0

    iput-object v0, p0, Li/b;->p:[F

    iput-object v0, p0, Li/b;->q:[F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    iget-object v0, p0, Li/b;->e:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li/b;->e:[I

    iget-object v2, p0, Li/b;->e:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    iget-object v2, p0, Li/b;->e:[I

    aget v1, v2, v1

    sub-int v1, v0, v1

    :goto_0
    return v1
.end method

.method public b()F
    .locals 2

    iget-object v0, p0, Li/b;->c:[F

    array-length v0, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/b;->a()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c()V
    .locals 9

    iget-object v0, p0, Li/b;->c:[F

    array-length v0, v0

    iget-object v1, p0, Li/b;->i:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/b;->j:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Li/b;->i:[I

    array-length v1, v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Li/b;->n:Ltypes/c;

    invoke-virtual {v1}, Ltypes/c;->a()V

    iget-object v1, p0, Li/b;->o:Ltypes/b;

    invoke-virtual {v1}, Ltypes/b;->a()V

    iget-object v1, p0, Li/b;->c:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, p0, Li/b;->g:F

    iget-object v1, p0, Li/b;->d:[F

    aget v1, v1, v2

    iput v1, p0, Li/b;->h:F

    new-instance v1, Ltypes/d;

    iget v3, p0, Li/b;->g:F

    iget v4, p0, Li/b;->h:F

    invoke-direct {v1, v3, v4}, Ltypes/d;-><init>(FF)V

    new-array v3, v0, [I

    iput-object v3, p0, Li/b;->i:[I

    new-array v3, v0, [I

    iput-object v3, p0, Li/b;->j:[I

    const v3, 0x1869f

    const/4 v3, 0x0

    const v4, 0x1869f

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v6, p0, Li/b;->i:[I

    iget-object v7, p0, Li/b;->d:[F

    aget v7, v7, v2

    invoke-virtual {v1, v7}, Ltypes/d;->a(F)F

    move-result v7

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float v7, v7, v8

    float-to-int v7, v7

    aput v7, v6, v2

    iget-object v6, p0, Li/b;->j:[I

    iget-object v7, p0, Li/b;->c:[F

    aget v7, v7, v2

    invoke-virtual {v1, v7}, Ltypes/d;->b(F)F

    move-result v7

    mul-float v7, v7, v8

    float-to-int v7, v7

    aput v7, v6, v2

    iget-object v6, p0, Li/b;->n:Ltypes/c;

    iget-object v7, p0, Li/b;->i:[I

    aget v7, v7, v2

    iget-object v8, p0, Li/b;->j:[I

    aget v8, v8, v2

    invoke-virtual {v6, v7, v8}, Ltypes/c;->a(II)V

    iget-object v6, p0, Li/b;->o:Ltypes/b;

    iget-object v7, p0, Li/b;->c:[F

    aget v7, v7, v2

    iget-object v8, p0, Li/b;->d:[F

    aget v8, v8, v2

    invoke-virtual {v6, v7, v8}, Ltypes/b;->a(FF)Z

    iget-object v6, p0, Li/b;->f:[S

    if-eqz v6, :cond_4

    iget-object v6, p0, Li/b;->f:[S

    aget-short v6, v6, v2

    if-le v6, v3, :cond_2

    move v3, v6

    :cond_2
    if-ge v6, v4, :cond_3

    move v4, v6

    :cond_3
    add-int/2addr v5, v6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    iput v3, p0, Li/b;->k:I

    iput v4, p0, Li/b;->l:I

    div-int/2addr v5, v0

    iput v5, p0, Li/b;->m:I

    :cond_6
    return-void
.end method
