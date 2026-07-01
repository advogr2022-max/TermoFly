.class public abstract Lvmaps/core/e;
.super Ljava/lang/Object;


# instance fields
.field public j:I

.field public k:I

.field protected l:Ltypes/g;

.field public m:F

.field public n:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lvmaps/core/e;
.end method

.method public abstract a(IILtypes/g;)V
.end method

.method protected a(Lvmaps/core/e;)V
    .locals 3

    iget v0, p1, Lvmaps/core/e;->j:I

    iget v1, p1, Lvmaps/core/e;->k:I

    iget-object v2, p1, Lvmaps/core/e;->l:Ltypes/g;

    invoke-virtual {p0, v0, v1, v2}, Lvmaps/core/e;->a(IILtypes/g;)V

    new-instance v0, Ltypes/c;

    invoke-direct {v0}, Ltypes/c;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ltypes/c;->a(II)V

    iget v1, p1, Lvmaps/core/e;->j:I

    iget v2, p1, Lvmaps/core/e;->k:I

    invoke-virtual {v0, v1, v2}, Ltypes/c;->a(II)V

    invoke-virtual {p0, p1, v0}, Lvmaps/core/e;->a(Lvmaps/core/e;Ltypes/c;)V

    return-void
.end method

.method public abstract a(Lvmaps/core/e;Ltypes/c;)V
.end method

.method public abstract a([I)V
.end method

.method public abstract a([III)V
.end method

.method public abstract a([I[IIII)V
.end method

.method public abstract b()V
.end method

.method protected b(IILtypes/g;)V
    .locals 1

    iput p1, p0, Lvmaps/core/e;->j:I

    iput p2, p0, Lvmaps/core/e;->k:I

    new-instance v0, Ltypes/g;

    invoke-direct {v0}, Ltypes/g;-><init>()V

    iput-object v0, p0, Lvmaps/core/e;->l:Ltypes/g;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lvmaps/core/e;->l:Ltypes/g;

    invoke-virtual {v0, p3}, Ltypes/g;->b(Ltypes/g;)V

    int-to-float p1, p1

    invoke-virtual {p3}, Ltypes/g;->g()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lvmaps/core/e;->m:F

    int-to-float p1, p2

    invoke-virtual {p3}, Ltypes/g;->f()F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lvmaps/core/e;->n:F

    :cond_0
    return-void
.end method

.method public c(IILtypes/g;)Z
    .locals 1

    iget v0, p0, Lvmaps/core/e;->j:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    iget p1, p0, Lvmaps/core/e;->k:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lvmaps/core/e;->l:Ltypes/g;

    iget p1, p1, Ltypes/g;->a:F

    const/16 p2, 0x2710

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iget v0, p3, Ltypes/g;->a:F

    mul-float v0, v0, p2

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lvmaps/core/e;->l:Ltypes/g;

    iget p1, p1, Ltypes/g;->c:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    iget v0, p3, Ltypes/g;->c:F

    mul-float v0, v0, p2

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lvmaps/core/e;->l:Ltypes/g;

    iget p1, p1, Ltypes/g;->b:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    iget v0, p3, Ltypes/g;->b:F

    mul-float v0, v0, p2

    float-to-int v0, v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lvmaps/core/e;->l:Ltypes/g;

    iget p1, p1, Ltypes/g;->d:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    iget p3, p3, Ltypes/g;->d:F

    mul-float p3, p3, p2

    float-to-int p2, p3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract c()[I
.end method
