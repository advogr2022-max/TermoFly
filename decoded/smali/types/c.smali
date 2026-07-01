.class public Ltypes/c;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ltypes/c;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ltypes/c;->e:I

    iput v0, p0, Ltypes/c;->d:I

    iput v0, p0, Ltypes/c;->c:I

    iput v0, p0, Ltypes/c;->b:I

    iput v0, p0, Ltypes/c;->a:I

    return-void
.end method

.method public a(II)V
    .locals 2

    iget v0, p0, Ltypes/c;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltypes/c;->e:I

    if-eqz v0, :cond_3

    iget v0, p0, Ltypes/c;->a:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Ltypes/c;->a:I

    goto :goto_0

    :cond_0
    iget v0, p0, Ltypes/c;->c:I

    if-le p1, v0, :cond_1

    iput p1, p0, Ltypes/c;->c:I

    :cond_1
    :goto_0
    iget p1, p0, Ltypes/c;->b:I

    if-ge p2, p1, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Ltypes/c;->d:I

    if-le p2, p1, :cond_4

    iput p2, p0, Ltypes/c;->d:I

    goto :goto_2

    :cond_3
    iput p1, p0, Ltypes/c;->a:I

    iput p1, p0, Ltypes/c;->c:I

    iput p2, p0, Ltypes/c;->d:I

    :goto_1
    iput p2, p0, Ltypes/c;->b:I

    :cond_4
    :goto_2
    return-void
.end method

.method public a([I)Z
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Ltypes/c;->a:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    aget v1, p1, v0

    iget v2, p0, Ltypes/c;->c:I

    if-gt v1, v2, :cond_0

    aget v1, p1, v3

    iget v2, p0, Ltypes/c;->b:I

    if-lt v1, v2, :cond_0

    aget p1, p1, v3

    iget v1, p0, Ltypes/c;->d:I

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Ltypes/c;->c:I

    iget v1, p0, Ltypes/c;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(II)V
    .locals 1

    iget v0, p0, Ltypes/c;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Ltypes/c;->a:I

    iget v0, p0, Ltypes/c;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Ltypes/c;->c:I

    iget p1, p0, Ltypes/c;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Ltypes/c;->b:I

    iget p1, p0, Ltypes/c;->d:I

    add-int/2addr p1, p2

    iput p1, p0, Ltypes/c;->d:I

    return-void
.end method

.method public c()I
    .locals 2

    iget v0, p0, Ltypes/c;->d:I

    iget v1, p0, Ltypes/c;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 4

    iget v0, p0, Ltypes/c;->c:I

    iget v1, p0, Ltypes/c;->a:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Ltypes/c;->d:I

    iget v3, p0, Ltypes/c;->b:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
