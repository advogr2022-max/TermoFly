.class public Lg/a;
.super Ljava/lang/Object;

# interfaces
.implements Lg/b;


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:Z

.field private e:I

.field private f:F

.field private g:[F

.field private h:[J

.field private i:[F

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:J

.field private o:F


# direct methods
.method public constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lg/a;->a:I

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lg/a;->f:F

    const/4 v0, 0x0

    iput v0, p0, Lg/a;->j:I

    iput v0, p0, Lg/a;->k:I

    const/4 v1, 0x0

    iput v1, p0, Lg/a;->l:F

    iput v0, p0, Lg/a;->m:I

    iput-boolean v0, p0, Lg/a;->d:Z

    invoke-virtual {p0, p1, p2}, Lg/a;->a(IF)V

    return-void
.end method


# virtual methods
.method public a(FJ)F
    .locals 8

    iget v0, p0, Lg/a;->b:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lg/a;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget p1, p0, Lg/a;->b:F

    :cond_0
    iget-object v0, p0, Lg/a;->g:[F

    iget v1, p0, Lg/a;->k:I

    aput p1, v0, v1

    iget-object v0, p0, Lg/a;->h:[J

    iget v1, p0, Lg/a;->k:I

    aput-wide p2, v0, v1

    iget v0, p0, Lg/a;->l:F

    add-float/2addr v0, p1

    iput v0, p0, Lg/a;->l:F

    iget v0, p0, Lg/a;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lg/a;->m:I

    iget v0, p0, Lg/a;->a:I

    int-to-long v2, v0

    sub-long v2, p2, v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/a;->h:[J

    iget v4, p0, Lg/a;->j:I

    aget-wide v4, v0, v4

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    iget v4, p0, Lg/a;->l:F

    iget-object v5, p0, Lg/a;->g:[F

    iget v6, p0, Lg/a;->j:I

    aget v5, v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lg/a;->l:F

    iget v4, p0, Lg/a;->m:I

    sub-int/2addr v4, v1

    iput v4, p0, Lg/a;->m:I

    iget v4, p0, Lg/a;->j:I

    add-int/2addr v4, v1

    iput v4, p0, Lg/a;->j:I

    iget v5, p0, Lg/a;->e:I

    if-ne v4, v5, :cond_1

    iput v0, p0, Lg/a;->j:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lg/a;->m:I

    if-lez v2, :cond_3

    iget p1, p0, Lg/a;->l:F

    iget v2, p0, Lg/a;->m:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    :cond_3
    iput p1, p0, Lg/a;->b:F

    iget-object p1, p0, Lg/a;->i:[F

    iget v2, p0, Lg/a;->k:I

    iget v3, p0, Lg/a;->b:F

    aput v3, p1, v2

    iget p1, p0, Lg/a;->m:I

    const/4 v2, 0x0

    const/high16 v3, 0x447a0000    # 1000.0f

    if-le p1, v1, :cond_4

    iget-object p1, p0, Lg/a;->h:[J

    iget v4, p0, Lg/a;->j:I

    aget-wide v4, p1, v4

    sub-long v4, p2, v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_5

    iget p1, p0, Lg/a;->b:F

    iget-object v2, p0, Lg/a;->i:[F

    iget v6, p0, Lg/a;->j:I

    aget v2, v2, v6

    goto :goto_1

    :cond_4
    iget-wide v4, p0, Lg/a;->n:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0x64

    cmp-long p1, v4, v6

    if-lez p1, :cond_5

    iget p1, p0, Lg/a;->b:F

    iget v2, p0, Lg/a;->o:F

    :goto_1
    sub-float/2addr p1, v2

    mul-float p1, p1, v3

    long-to-float v2, v4

    div-float/2addr p1, v2

    iput p1, p0, Lg/a;->c:F

    goto :goto_2

    :cond_5
    iput v2, p0, Lg/a;->c:F

    :goto_2
    iget p1, p0, Lg/a;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Lg/a;->k:I

    iget v2, p0, Lg/a;->e:I

    if-ne p1, v2, :cond_6

    iput v0, p0, Lg/a;->k:I

    :cond_6
    iget p1, p0, Lg/a;->k:I

    iget v2, p0, Lg/a;->j:I

    if-ne p1, v2, :cond_7

    iget p1, p0, Lg/a;->l:F

    iget-object v2, p0, Lg/a;->g:[F

    iget v3, p0, Lg/a;->j:I

    aget v2, v2, v3

    sub-float/2addr p1, v2

    iput p1, p0, Lg/a;->l:F

    iget p1, p0, Lg/a;->m:I

    sub-int/2addr p1, v1

    iput p1, p0, Lg/a;->m:I

    iget p1, p0, Lg/a;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Lg/a;->j:I

    iget v1, p0, Lg/a;->e:I

    if-ne p1, v1, :cond_7

    iput v0, p0, Lg/a;->j:I

    :cond_7
    iput-wide p2, p0, Lg/a;->n:J

    iget p1, p0, Lg/a;->b:F

    iput p1, p0, Lg/a;->o:F

    iget p1, p0, Lg/a;->b:F

    return p1
.end method

.method public a()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lg/a;->j:I

    iput v0, p0, Lg/a;->k:I

    const/4 v1, 0x0

    iput v1, p0, Lg/a;->l:F

    iput v0, p0, Lg/a;->m:I

    iput v1, p0, Lg/a;->b:F

    iput v1, p0, Lg/a;->c:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lg/a;->n:J

    iput v1, p0, Lg/a;->o:F

    return-void
.end method

.method public a(IF)V
    .locals 1

    iput p1, p0, Lg/a;->a:I

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lg/a;->e:I

    iget p1, p0, Lg/a;->e:I

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    iput v0, p0, Lg/a;->e:I

    :cond_0
    iput p2, p0, Lg/a;->f:F

    iget p1, p0, Lg/a;->e:I

    new-array p1, p1, [F

    iput-object p1, p0, Lg/a;->g:[F

    iget p1, p0, Lg/a;->e:I

    new-array p1, p1, [J

    iput-object p1, p0, Lg/a;->h:[J

    iget p1, p0, Lg/a;->e:I

    new-array p1, p1, [F

    iput-object p1, p0, Lg/a;->i:[F

    invoke-virtual {p0}, Lg/a;->a()V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lg/a;->m:I

    return v0
.end method
