.class public Lvmaps/core/VmpWorld;
.super Ljava/lang/Object;


# static fields
.field private static final p:Landroid/os/Handler;


# instance fields
.field private A:F

.field private B:Z

.field private C:B

.field private D:J

.field private E:Z

.field public a:F

.field b:F

.field public c:F

.field d:Lvmaps/core/e;

.field public e:Ltypes/d;

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:I

.field public k:I

.field public l:Ltypes/g;

.field public m:Ltypes/c;

.field public n:Ltypes/c;

.field o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvmaps/core/g;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lvmaps/core/VmpWorld;->p:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lvmaps/core/VmpWorld;->a:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lvmaps/core/VmpWorld;->b:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lvmaps/core/VmpWorld;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvmaps/core/VmpWorld;->q:Z

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lvmaps/core/VmpWorld;->z:F

    new-instance v1, Ltypes/g;

    invoke-direct {v1}, Ltypes/g;-><init>()V

    iput-object v1, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    new-instance v1, Ltypes/c;

    invoke-direct {v1}, Ltypes/c;-><init>()V

    iput-object v1, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    new-instance v1, Ltypes/c;

    invoke-direct {v1}, Ltypes/c;-><init>()V

    iput-object v1, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    const/4 v1, 0x0

    iput v1, p0, Lvmaps/core/VmpWorld;->A:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvmaps/core/VmpWorld;->o:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lvmaps/core/VmpWorld;->B:Z

    iput-byte v0, p0, Lvmaps/core/VmpWorld;->C:B

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lvmaps/core/VmpWorld;->D:J

    iput-boolean v0, p0, Lvmaps/core/VmpWorld;->E:Z

    iput-boolean p1, p0, Lvmaps/core/VmpWorld;->q:Z

    iput-byte v0, p0, Lvmaps/core/VmpWorld;->C:B

    return-void
.end method

.method private a(FLtypes/g;)V
    .locals 3

    iget-object v0, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    neg-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ltypes/d;->c(F)F

    move-result v0

    iput v0, p2, Ltypes/g;->a:F

    iget-object v0, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    invoke-virtual {v0, v1}, Ltypes/d;->d(F)F

    move-result v0

    iput v0, p2, Ltypes/g;->c:F

    iget-object v0, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    div-float/2addr p1, v2

    invoke-virtual {v0, p1}, Ltypes/d;->c(F)F

    move-result v0

    iput v0, p2, Ltypes/g;->b:F

    iget-object v0, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    invoke-virtual {v0, p1}, Ltypes/d;->d(F)F

    move-result p1

    iput p1, p2, Ltypes/g;->d:F

    return-void
.end method

.method private synthetic a(ILtypes/g;)V
    .locals 2

    iget-byte v0, p0, Lvmaps/core/VmpWorld;->C:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lvmaps/core/VmpWorld;->C:B

    sget-object v0, Lvmaps/core/VmpWorld;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvmaps/core/VmpWorld;->B:Z

    iput-boolean v0, p0, Lvmaps/core/VmpWorld;->E:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lvmaps/core/-$$Lambda$VmpWorld$TOyqxK26eFLduRlZfy-PQLzc7tw;

    invoke-direct {v1, p0, p1, p2}, Lvmaps/core/-$$Lambda$VmpWorld$TOyqxK26eFLduRlZfy-PQLzc7tw;-><init>(Lvmaps/core/VmpWorld;ILtypes/g;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(F)V
    .locals 1

    iget-object v0, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    invoke-direct {p0, p1, v0}, Lvmaps/core/VmpWorld;->a(FLtypes/g;)V

    iget-object p1, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    invoke-virtual {p1}, Ltypes/g;->f()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lvmaps/core/VmpWorld;->t:F

    iget-object p1, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    invoke-virtual {p1}, Ltypes/g;->g()F

    move-result p1

    div-float/2addr p1, v0

    iput p1, p0, Lvmaps/core/VmpWorld;->u:F

    iget p1, p0, Lvmaps/core/VmpWorld;->h:F

    iget-object v0, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    invoke-virtual {v0}, Ltypes/g;->g()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lvmaps/core/VmpWorld;->r:F

    iget p1, p0, Lvmaps/core/VmpWorld;->i:F

    iget-object v0, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    invoke-virtual {v0}, Ltypes/g;->f()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lvmaps/core/VmpWorld;->s:F

    return-void
.end method

.method private synthetic b(ILtypes/g;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    invoke-virtual {v1}, Lvmaps/core/e;->a()Lvmaps/core/e;

    move-result-object v1

    iget v3, p0, Lvmaps/core/VmpWorld;->z:F

    float-to-int v3, v3

    invoke-static {v1, p1, p2, v3, v0}, Lvmaps/core/h;->a(Lvmaps/core/e;ILtypes/g;II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-object v4, Lvmaps/core/VmpWorld;->p:Landroid/os/Handler;

    new-instance v5, Lvmaps/core/-$$Lambda$VmpWorld$Gas6_6kji9g6vZtOr65EqSAAeig;

    invoke-direct {v5, p0, v1}, Lvmaps/core/-$$Lambda$VmpWorld$Gas6_6kji9g6vZtOr65EqSAAeig;-><init>(Lvmaps/core/VmpWorld;Lvmaps/core/e;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lvmaps/core/VmpWorld;->B:Z

    if-eqz v1, :cond_2

    sget-object p1, Lvmaps/core/VmpWorld;->p:Landroid/os/Handler;

    new-instance p2, Lvmaps/core/-$$Lambda$VmpWorld$fuByZBVTWCgIRjnRntFMr7tdXtA;

    invoke-direct {p2, p0}, Lvmaps/core/-$$Lambda$VmpWorld$fuByZBVTWCgIRjnRntFMr7tdXtA;-><init>(Lvmaps/core/VmpWorld;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Lvmaps/core/VmpWorld;->E:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-byte p1, p0, Lvmaps/core/VmpWorld;->C:B

    sub-int/2addr p1, v2

    int-to-byte p1, p1

    iput-byte p1, p0, Lvmaps/core/VmpWorld;->C:B

    return-void
.end method

.method private synthetic b(Lvmaps/core/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lvmaps/core/VmpWorld;->a(Lvmaps/core/e;)V

    return-void
.end method

.method private g()V
    .locals 11

    iget-boolean v0, p0, Lvmaps/core/VmpWorld;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ldisplay/vmap/ViewVmp;->isThermailing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ldisplay/vmap/ViewVmp;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lvmaps/core/VmpWorld;->z:F

    iget v1, p0, Lvmaps/core/VmpWorld;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lvmaps/core/VmpWorld;->z:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lvmaps/core/VmpWorld;->b:F

    :goto_0
    iget v1, p0, Lvmaps/core/VmpWorld;->h:F

    iget v2, p0, Lvmaps/core/VmpWorld;->f:F

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p0, Lvmaps/core/VmpWorld;->a:F

    mul-float v0, v0, v1

    new-instance v1, Ltypes/g;

    invoke-direct {v1}, Ltypes/g;-><init>()V

    invoke-direct {p0, v0, v1}, Lvmaps/core/VmpWorld;->a(FLtypes/g;)V

    iget v0, p0, Lvmaps/core/VmpWorld;->f:F

    iget v2, p0, Lvmaps/core/VmpWorld;->g:F

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lvmaps/core/VmpWorld;->x:I

    if-nez v2, :cond_3

    iget v2, p0, Lvmaps/core/VmpWorld;->y:I

    if-eqz v2, :cond_4

    :cond_3
    iget v0, p0, Lvmaps/core/VmpWorld;->f:F

    iget v2, p0, Lvmaps/core/VmpWorld;->g:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    :cond_4
    iget-boolean v2, p0, Lvmaps/core/VmpWorld;->E:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    invoke-virtual {v2, v0, v0, v1}, Lvmaps/core/e;->c(IILtypes/g;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    iget-byte v2, p0, Lvmaps/core/VmpWorld;->C:B

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_6

    sget-object v0, Lvmaps/core/VmpWorld;->p:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v3, p0, Lvmaps/core/VmpWorld;->B:Z

    sget-object v0, Lvmaps/core/VmpWorld;->p:Landroid/os/Handler;

    new-instance v1, Lvmaps/core/-$$Lambda$VmpWorld$mwDqz2CqTieHQjYhf5C1-pXzJS4;

    invoke-direct {v1, p0}, Lvmaps/core/-$$Lambda$VmpWorld$mwDqz2CqTieHQjYhf5C1-pXzJS4;-><init>(Lvmaps/core/VmpWorld;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lvmaps/core/VmpWorld;->D:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x64

    cmp-long v2, v7, v9

    if-gez v2, :cond_7

    sget-object v0, Lvmaps/core/VmpWorld;->p:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v3, p0, Lvmaps/core/VmpWorld;->B:Z

    sget-object v0, Lvmaps/core/VmpWorld;->p:Landroid/os/Handler;

    new-instance v1, Lvmaps/core/-$$Lambda$VmpWorld$zaaQqw4YATPn4ILfrL6s770YSqo;

    invoke-direct {v1, p0}, Lvmaps/core/-$$Lambda$VmpWorld$zaaQqw4YATPn4ILfrL6s770YSqo;-><init>(Lvmaps/core/VmpWorld;)V

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_7
    iput-wide v5, p0, Lvmaps/core/VmpWorld;->D:J

    sget-object v2, Lvmaps/core/VmpWorld;->p:Landroid/os/Handler;

    new-instance v3, Lvmaps/core/-$$Lambda$VmpWorld$z4NVk7bXEPzIbE1_wctBzdG8t1Q;

    invoke-direct {v3, p0, v0, v1}, Lvmaps/core/-$$Lambda$VmpWorld$z4NVk7bXEPzIbE1_wctBzdG8t1Q;-><init>(Lvmaps/core/VmpWorld;ILtypes/g;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private h()V
    .locals 8

    iget-object v0, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    iget-object v0, v0, Lvmaps/core/e;->l:Ltypes/g;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lvmaps/core/VmpWorld;->q:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v0, v0, Ltypes/g;->c:F

    iget-object v1, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    iget-object v1, v1, Lvmaps/core/e;->l:Ltypes/g;

    iget v1, v1, Ltypes/g;->c:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v1, v1, Ltypes/g;->b:F

    iget-object v2, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    iget-object v2, v2, Lvmaps/core/e;->l:Ltypes/g;

    iget v2, v2, Ltypes/g;->b:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    iget-object v2, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    iget v2, v2, Lvmaps/core/e;->m:F

    mul-float v0, v0, v2

    iget-object v2, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    iget v2, v2, Lvmaps/core/e;->n:F

    mul-float v1, v1, v2

    iget-object v2, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    float-to-int v3, v0

    iput v3, v2, Ltypes/c;->a:I

    iget-object v2, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    float-to-int v3, v1

    iput v3, v2, Ltypes/c;->b:I

    iget-object v2, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v3, p0, Lvmaps/core/VmpWorld;->u:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    iget-object v5, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    iget v5, v5, Lvmaps/core/e;->m:F

    mul-float v3, v3, v5

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Ltypes/c;->c:I

    iget-object v0, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v2, p0, Lvmaps/core/VmpWorld;->t:F

    mul-float v2, v2, v4

    iget-object v3, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    iget v3, v3, Lvmaps/core/e;->n:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Ltypes/c;->d:I

    iget-object v0, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v1, p0, Lvmaps/core/VmpWorld;->v:I

    neg-int v1, v1

    iput v1, v0, Ltypes/c;->a:I

    iget-object v0, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v1, p0, Lvmaps/core/VmpWorld;->w:I

    neg-int v1, v1

    iput v1, v0, Ltypes/c;->b:I

    iget-object v0, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v1, p0, Lvmaps/core/VmpWorld;->v:I

    neg-int v1, v1

    iget v2, p0, Lvmaps/core/VmpWorld;->h:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Ltypes/c;->c:I

    iget-object v0, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v1, p0, Lvmaps/core/VmpWorld;->w:I

    neg-int v1, v1

    iget v2, p0, Lvmaps/core/VmpWorld;->i:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Ltypes/c;->d:I

    iget-object v0, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v0, v0, Ltypes/c;->a:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v0, v0, Ltypes/c;->b:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v0, v0, Ltypes/c;->c:I

    iget-object v2, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    iget v2, v2, Lvmaps/core/e;->j:I

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v0, v0, Ltypes/c;->d:I

    iget-object v2, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    iget v2, v2, Lvmaps/core/e;->k:I

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    invoke-virtual {v2}, Ltypes/c;->b()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    invoke-virtual {v3}, Ltypes/c;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    invoke-virtual {v3}, Ltypes/c;->c()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    invoke-virtual {v4}, Ltypes/c;->c()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lvmaps/core/VmpWorld;->h:F

    div-float/2addr v4, v2

    iget v2, p0, Lvmaps/core/VmpWorld;->i:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v3, v3, Ltypes/c;->a:I

    int-to-float v3, v3

    iget-object v5, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    invoke-virtual {v5}, Ltypes/c;->b()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    iget-object v5, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v5, v5, Ltypes/c;->b:I

    int-to-float v5, v5

    iget-object v6, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    invoke-virtual {v6}, Ltypes/c;->c()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    invoke-virtual {v6}, Ltypes/c;->b()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    iget-object v3, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    invoke-virtual {v3}, Ltypes/c;->c()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v5

    iget-object v5, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v7, v5, Ltypes/c;->a:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    float-to-int v6, v7

    iput v6, v5, Ltypes/c;->a:I

    iget-object v5, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v6, v5, Ltypes/c;->b:I

    int-to-float v6, v6

    sub-float/2addr v6, v3

    float-to-int v3, v6

    iput v3, v5, Ltypes/c;->b:I

    iget-object v3, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget-object v5, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v5, v5, Ltypes/c;->a:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v3, Ltypes/c;->c:I

    iget-object v3, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget-object v4, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v4, v4, Ltypes/c;->b:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v3, Ltypes/c;->d:I

    iget-object v2, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iput v1, v2, Ltypes/c;->a:I

    iget-object v2, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iput v1, v2, Ltypes/c;->b:I

    iget-object v1, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v2, p0, Lvmaps/core/VmpWorld;->h:F

    float-to-int v2, v2

    iput v2, v1, Ltypes/c;->c:I

    iget-object v1, p0, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v2, p0, Lvmaps/core/VmpWorld;->i:F

    float-to-int v2, v2

    iput v2, v1, Ltypes/c;->d:I

    iget-object v1, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v2, p0, Lvmaps/core/VmpWorld;->x:I

    iget v3, p0, Lvmaps/core/VmpWorld;->y:I

    invoke-virtual {v1, v2, v3}, Ltypes/c;->b(II)V

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->g()V

    :cond_3
    :goto_2
    return-void
.end method

.method private i()V
    .locals 2

    iget v0, p0, Lvmaps/core/VmpWorld;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    invoke-virtual {v0}, Ltypes/c;->b()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lvmaps/core/VmpWorld;->h:F

    div-float/2addr v0, v1

    iput v0, p0, Lvmaps/core/VmpWorld;->A:F

    iget-object v0, p0, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    invoke-virtual {v0}, Ltypes/c;->c()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lvmaps/core/VmpWorld;->i:F

    div-float/2addr v0, v1

    iget v1, p0, Lvmaps/core/VmpWorld;->A:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iput v0, p0, Lvmaps/core/VmpWorld;->A:F

    :cond_1
    iget v0, p0, Lvmaps/core/VmpWorld;->A:F

    iget v1, p0, Lvmaps/core/VmpWorld;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lvmaps/core/VmpWorld;->z:F

    iget v1, p0, Lvmaps/core/VmpWorld;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->g()V

    :cond_2
    return-void
.end method

.method private synthetic j()V
    .locals 0

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->g()V

    return-void
.end method

.method private synthetic k()V
    .locals 0

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->g()V

    return-void
.end method

.method private synthetic l()V
    .locals 0

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->g()V

    return-void
.end method

.method public static synthetic lambda$Gas6_6kji9g6vZtOr65EqSAAeig(Lvmaps/core/VmpWorld;Lvmaps/core/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lvmaps/core/VmpWorld;->b(Lvmaps/core/e;)V

    return-void
.end method

.method public static synthetic lambda$TOyqxK26eFLduRlZfy-PQLzc7tw(Lvmaps/core/VmpWorld;ILtypes/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lvmaps/core/VmpWorld;->b(ILtypes/g;)V

    return-void
.end method

.method public static synthetic lambda$fuByZBVTWCgIRjnRntFMr7tdXtA(Lvmaps/core/VmpWorld;)V
    .locals 0

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->j()V

    return-void
.end method

.method public static synthetic lambda$mwDqz2CqTieHQjYhf5C1-pXzJS4(Lvmaps/core/VmpWorld;)V
    .locals 0

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->l()V

    return-void
.end method

.method public static synthetic lambda$z4NVk7bXEPzIbE1_wctBzdG8t1Q(Lvmaps/core/VmpWorld;ILtypes/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lvmaps/core/VmpWorld;->a(ILtypes/g;)V

    return-void
.end method

.method public static synthetic lambda$zaaQqw4YATPn4ILfrL6s770YSqo(Lvmaps/core/VmpWorld;)V
    .locals 0

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->k()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iput p1, p0, Lvmaps/core/VmpWorld;->z:F

    iget v0, p0, Lvmaps/core/VmpWorld;->h:F

    iget v1, p0, Lvmaps/core/VmpWorld;->f:F

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    invoke-direct {p0, p1}, Lvmaps/core/VmpWorld;->b(F)V

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->h()V

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->i()V

    iget-object p1, p0, Lvmaps/core/VmpWorld;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvmaps/core/g;

    invoke-interface {v0}, Lvmaps/core/g;->onZoom()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(FF)V
    .locals 2

    iget-object v0, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    invoke-virtual {v0, p1, p2}, Ltypes/d;->a(FF)V

    iget-object v0, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v1, p0, Lvmaps/core/VmpWorld;->t:F

    sub-float v1, p1, v1

    iput v1, v0, Ltypes/g;->a:F

    iget-object v0, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v1, p0, Lvmaps/core/VmpWorld;->t:F

    add-float/2addr p1, v1

    iput p1, v0, Ltypes/g;->b:F

    iget-object p1, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v0, p0, Lvmaps/core/VmpWorld;->u:F

    sub-float v0, p2, v0

    iput v0, p1, Ltypes/g;->c:F

    iget-object p1, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v0, p0, Lvmaps/core/VmpWorld;->u:F

    add-float/2addr p2, v0

    iput p2, p1, Ltypes/g;->d:F

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->h()V

    return-void
.end method

.method public a(FFF)V
    .locals 2

    iput p3, p0, Lvmaps/core/VmpWorld;->z:F

    iget v0, p0, Lvmaps/core/VmpWorld;->h:F

    iget v1, p0, Lvmaps/core/VmpWorld;->f:F

    div-float/2addr v0, v1

    mul-float v0, v0, p3

    new-instance v1, Ltypes/d;

    invoke-direct {v1, p1, p2}, Ltypes/d;-><init>(FF)V

    iput-object v1, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    invoke-direct {p0, v0}, Lvmaps/core/VmpWorld;->b(F)V

    invoke-virtual {p0, p1, p2}, Lvmaps/core/VmpWorld;->a(FF)V

    invoke-virtual {p0, p3}, Lvmaps/core/VmpWorld;->a(F)V

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->g()V

    return-void
.end method

.method public a(FF[F)V
    .locals 1

    iget v0, p0, Lvmaps/core/VmpWorld;->r:F

    div-float/2addr p1, v0

    const/4 v0, 0x0

    aput p1, p3, v0

    iget p1, p0, Lvmaps/core/VmpWorld;->s:F

    div-float/2addr p2, p1

    const/4 p1, 0x1

    aput p2, p3, p1

    return-void
.end method

.method public a(FF[I)V
    .locals 1

    iget-object v0, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v0, v0, Ltypes/g;->c:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v0, v0, Ltypes/g;->a:F

    sub-float/2addr p1, v0

    iget v0, p0, Lvmaps/core/VmpWorld;->r:F

    mul-float p2, p2, v0

    iget v0, p0, Lvmaps/core/VmpWorld;->v:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget v0, p0, Lvmaps/core/VmpWorld;->x:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    aput p2, p3, v0

    iget p2, p0, Lvmaps/core/VmpWorld;->i:F

    iget v0, p0, Lvmaps/core/VmpWorld;->s:F

    mul-float p1, p1, v0

    sub-float/2addr p2, p1

    iget p1, p0, Lvmaps/core/VmpWorld;->w:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget p1, p0, Lvmaps/core/VmpWorld;->y:I

    int-to-float p1, p1

    add-float/2addr p2, p1

    float-to-int p1, p2

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method

.method public a(IILvmaps/core/e;II)V
    .locals 4

    int-to-float v0, p1

    iput v0, p0, Lvmaps/core/VmpWorld;->f:F

    int-to-float v1, p2

    iput v1, p0, Lvmaps/core/VmpWorld;->g:F

    iget-object v2, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    if-nez v2, :cond_0

    iput-object p3, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    :cond_0
    div-int/lit8 p2, p2, 0x2

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p3, p2

    int-to-float p3, p3

    div-int/lit8 p1, p1, 0x2

    int-to-float v2, p1

    mul-float p3, p3, p3

    mul-float v2, v2, v2

    add-float/2addr p3, v2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p3, v2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr p1, v2

    int-to-float p1, p1

    int-to-float p2, p2

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    iput p1, p0, Lvmaps/core/VmpWorld;->h:F

    iput p1, p0, Lvmaps/core/VmpWorld;->i:F

    sub-float p3, p1, v0

    div-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p0, Lvmaps/core/VmpWorld;->v:I

    sub-float/2addr p1, v1

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lvmaps/core/VmpWorld;->w:I

    iput p4, p0, Lvmaps/core/VmpWorld;->x:I

    iput p5, p0, Lvmaps/core/VmpWorld;->y:I

    iget p1, p0, Lvmaps/core/VmpWorld;->v:I

    iget p2, p0, Lvmaps/core/VmpWorld;->x:I

    add-int/2addr p1, p2

    iput p1, p0, Lvmaps/core/VmpWorld;->j:I

    iget p1, p0, Lvmaps/core/VmpWorld;->w:I

    iget p2, p0, Lvmaps/core/VmpWorld;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Lvmaps/core/VmpWorld;->k:I

    return-void
.end method

.method public a(Ltypes/g;F)V
    .locals 4

    iget-object v0, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v1, p1, Ltypes/g;->a:F

    iget v2, p1, Ltypes/g;->c:F

    invoke-virtual {v0, v1, v2}, Ltypes/d;->a(FF)V

    iget-object v0, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v1, p1, Ltypes/g;->a:F

    iget v2, p1, Ltypes/g;->d:F

    invoke-virtual {v0, v1, v2}, Ltypes/d;->b(FF)F

    move-result v0

    iget-object v1, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v2, p1, Ltypes/g;->b:F

    iget v3, p1, Ltypes/g;->c:F

    invoke-virtual {v1, v2, v3}, Ltypes/d;->b(FF)F

    move-result v1

    mul-float v0, v0, p2

    mul-float v1, v1, p2

    invoke-virtual {p1}, Ltypes/g;->d()F

    move-result p2

    invoke-virtual {p1}, Ltypes/g;->e()F

    move-result p1

    invoke-virtual {p0, p2, p1, v0}, Lvmaps/core/VmpWorld;->a(FFF)V

    iget p1, p0, Lvmaps/core/VmpWorld;->g:F

    iget p2, p0, Lvmaps/core/VmpWorld;->f:F

    div-float/2addr p1, p2

    mul-float p1, p1, v0

    cmpg-float p2, p1, v1

    if-gez p2, :cond_0

    div-float/2addr v1, p1

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lvmaps/core/VmpWorld;->a(F)V

    :cond_0
    return-void
.end method

.method public a(Lvmaps/core/VmpWorld;)V
    .locals 2

    iget v0, p1, Lvmaps/core/VmpWorld;->f:F

    iput v0, p0, Lvmaps/core/VmpWorld;->f:F

    iget v0, p1, Lvmaps/core/VmpWorld;->g:F

    iput v0, p0, Lvmaps/core/VmpWorld;->g:F

    const/4 v0, 0x0

    iput-object v0, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    iget v0, p1, Lvmaps/core/VmpWorld;->h:F

    iput v0, p0, Lvmaps/core/VmpWorld;->h:F

    iget v0, p1, Lvmaps/core/VmpWorld;->i:F

    iput v0, p0, Lvmaps/core/VmpWorld;->i:F

    iget v0, p1, Lvmaps/core/VmpWorld;->v:I

    iput v0, p0, Lvmaps/core/VmpWorld;->v:I

    iget v0, p1, Lvmaps/core/VmpWorld;->w:I

    iput v0, p0, Lvmaps/core/VmpWorld;->w:I

    iget v0, p1, Lvmaps/core/VmpWorld;->x:I

    iput v0, p0, Lvmaps/core/VmpWorld;->x:I

    iget v0, p1, Lvmaps/core/VmpWorld;->y:I

    iput v0, p0, Lvmaps/core/VmpWorld;->y:I

    iget v0, p1, Lvmaps/core/VmpWorld;->j:I

    iput v0, p0, Lvmaps/core/VmpWorld;->j:I

    iget v0, p1, Lvmaps/core/VmpWorld;->k:I

    iput v0, p0, Lvmaps/core/VmpWorld;->k:I

    iget-object v0, p1, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v0, v0, Ltypes/d;->b:F

    iget-object v1, p1, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v1, v1, Ltypes/d;->c:F

    invoke-virtual {p1}, Lvmaps/core/VmpWorld;->c()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lvmaps/core/VmpWorld;->a(FFF)V

    return-void
.end method

.method public a(Lvmaps/core/e;)V
    .locals 1

    iget-object v0, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    invoke-virtual {v0, p1}, Lvmaps/core/e;->a(Lvmaps/core/e;)V

    invoke-virtual {p1}, Lvmaps/core/e;->b()V

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->h()V

    invoke-direct {p0}, Lvmaps/core/VmpWorld;->i()V

    iget-object p1, p0, Lvmaps/core/VmpWorld;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvmaps/core/g;

    invoke-interface {v0}, Lvmaps/core/g;->onMapUpdate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lvmaps/core/g;)V
    .locals 1

    iget-object v0, p0, Lvmaps/core/VmpWorld;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a([F)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    iget-object v2, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v2, v2, Ltypes/g;->a:F

    sub-float/2addr v1, v2

    add-int/lit8 v2, v0, 0x1

    aget v3, p1, v2

    iget-object v4, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v4, v4, Ltypes/g;->c:F

    sub-float/2addr v3, v4

    iget v4, p0, Lvmaps/core/VmpWorld;->r:F

    mul-float v3, v3, v4

    iget v4, p0, Lvmaps/core/VmpWorld;->v:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lvmaps/core/VmpWorld;->x:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p1, v0

    iget v3, p0, Lvmaps/core/VmpWorld;->i:F

    iget v4, p0, Lvmaps/core/VmpWorld;->s:F

    mul-float v1, v1, v4

    sub-float/2addr v3, v1

    iget v1, p0, Lvmaps/core/VmpWorld;->w:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget v1, p0, Lvmaps/core/VmpWorld;->y:I

    int-to-float v1, v1

    add-float/2addr v3, v1

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 3

    iget-object v0, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v0, v0, Ltypes/d;->c:F

    iget-object v1, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v1, v1, Ltypes/g;->c:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v1, v1, Ltypes/d;->b:F

    iget-object v2, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v2, v2, Ltypes/g;->a:F

    sub-float/2addr v1, v2

    iget v2, p0, Lvmaps/core/VmpWorld;->r:F

    mul-float v0, v0, v2

    iget v2, p0, Lvmaps/core/VmpWorld;->v:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lvmaps/core/VmpWorld;->x:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    aput v0, p1, v2

    iget v0, p0, Lvmaps/core/VmpWorld;->i:F

    iget v2, p0, Lvmaps/core/VmpWorld;->s:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lvmaps/core/VmpWorld;->w:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lvmaps/core/VmpWorld;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method

.method public a()Z
    .locals 1

    iget-byte v0, p0, Lvmaps/core/VmpWorld;->C:B

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lvmaps/core/e;
    .locals 1

    iget-object v0, p0, Lvmaps/core/VmpWorld;->d:Lvmaps/core/e;

    return-object v0
.end method

.method public b(FF[F)V
    .locals 1

    iget-object v0, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v0, v0, Ltypes/g;->c:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v0, v0, Ltypes/g;->a:F

    sub-float/2addr p1, v0

    iget v0, p0, Lvmaps/core/VmpWorld;->r:F

    mul-float p2, p2, v0

    iget v0, p0, Lvmaps/core/VmpWorld;->v:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget v0, p0, Lvmaps/core/VmpWorld;->x:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    const/4 v0, 0x0

    aput p2, p3, v0

    iget p2, p0, Lvmaps/core/VmpWorld;->i:F

    iget v0, p0, Lvmaps/core/VmpWorld;->s:F

    mul-float p1, p1, v0

    sub-float/2addr p2, p1

    iget p1, p0, Lvmaps/core/VmpWorld;->w:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget p1, p0, Lvmaps/core/VmpWorld;->y:I

    int-to-float p1, p1

    add-float/2addr p2, p1

    const/4 p1, 0x1

    aput p2, p3, p1

    return-void
.end method

.method public b(Lvmaps/core/g;)V
    .locals 1

    iget-object v0, p0, Lvmaps/core/VmpWorld;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lvmaps/core/VmpWorld;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b([F)V
    .locals 5

    const/4 v0, 0x1

    aget v1, p1, v0

    iget-object v2, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v2, v2, Ltypes/g;->c:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    aget v3, p1, v2

    iget-object v4, p0, Lvmaps/core/VmpWorld;->l:Ltypes/g;

    iget v4, v4, Ltypes/g;->a:F

    sub-float/2addr v3, v4

    iget v4, p0, Lvmaps/core/VmpWorld;->r:F

    mul-float v1, v1, v4

    iget v4, p0, Lvmaps/core/VmpWorld;->v:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, p0, Lvmaps/core/VmpWorld;->x:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    aput v1, p1, v2

    iget v1, p0, Lvmaps/core/VmpWorld;->i:F

    iget v2, p0, Lvmaps/core/VmpWorld;->s:F

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    iget v2, p0, Lvmaps/core/VmpWorld;->w:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lvmaps/core/VmpWorld;->y:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method public b([I)V
    .locals 3

    iget v0, p0, Lvmaps/core/VmpWorld;->f:F

    float-to-int v0, v0

    iget v1, p0, Lvmaps/core/VmpWorld;->g:F

    float-to-int v1, v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lvmaps/core/VmpWorld;->e()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lvmaps/core/VmpWorld;->f()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    aput v0, p1, v2

    const/4 v0, 0x1

    aput v1, p1, v0

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lvmaps/core/VmpWorld;->z:F

    return v0
.end method

.method public c([F)Z
    .locals 5

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget p1, p1, v2

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-ltz v4, :cond_1

    iget v4, p0, Lvmaps/core/VmpWorld;->f:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v3

    if-ltz v1, :cond_1

    iget v1, p0, Lvmaps/core/VmpWorld;->g:F

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public d()F
    .locals 2

    iget v0, p0, Lvmaps/core/VmpWorld;->r:F

    iget v1, p0, Lvmaps/core/VmpWorld;->s:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lvmaps/core/VmpWorld;->x:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lvmaps/core/VmpWorld;->y:I

    return v0
.end method
