.class public Ltypes/g;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field private final e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x461c3c00    # 9999.0f

    iput v0, p0, Ltypes/g;->e:F

    invoke-virtual {p0}, Ltypes/g;->a()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x461c3c00    # 9999.0f

    iput v0, p0, Ltypes/g;->e:F

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Ltypes/g;->a:F

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Ltypes/g;->c:F

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Ltypes/g;->b:F

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Ltypes/g;->d:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const v0, -0x3963c400    # -19998.0f

    iput v0, p0, Ltypes/g;->b:F

    iput v0, p0, Ltypes/g;->d:F

    const v0, 0x469c3c00    # 19998.0f

    iput v0, p0, Ltypes/g;->a:F

    iput v0, p0, Ltypes/g;->c:F

    return-void
.end method

.method public a(FF)V
    .locals 1

    iget v0, p0, Ltypes/g;->b:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Ltypes/g;->b:F

    :cond_0
    iget v0, p0, Ltypes/g;->a:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iput p1, p0, Ltypes/g;->a:F

    :cond_1
    iget p1, p0, Ltypes/g;->d:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    iput p2, p0, Ltypes/g;->d:F

    :cond_2
    iget p1, p0, Ltypes/g;->c:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    iput p2, p0, Ltypes/g;->c:F

    :cond_3
    return-void
.end method

.method public a(Ltypes/GpsVal;)V
    .locals 2

    iget v0, p1, Ltypes/GpsVal;->a:F

    iget v1, p0, Ltypes/g;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Ltypes/GpsVal;->a:F

    iput v0, p0, Ltypes/g;->b:F

    :cond_0
    iget v0, p1, Ltypes/GpsVal;->a:F

    iget v1, p0, Ltypes/g;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p1, Ltypes/GpsVal;->a:F

    iput v0, p0, Ltypes/g;->a:F

    :cond_1
    iget v0, p1, Ltypes/GpsVal;->b:F

    iget v1, p0, Ltypes/g;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p1, Ltypes/GpsVal;->b:F

    iput v0, p0, Ltypes/g;->d:F

    :cond_2
    iget v0, p1, Ltypes/GpsVal;->b:F

    iget v1, p0, Ltypes/g;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget p1, p1, Ltypes/GpsVal;->b:F

    iput p1, p0, Ltypes/g;->c:F

    :cond_3
    return-void
.end method

.method public a(Ltypes/g;FF)V
    .locals 1

    iget v0, p1, Ltypes/g;->a:F

    sub-float/2addr v0, p2

    iput v0, p0, Ltypes/g;->a:F

    iget v0, p1, Ltypes/g;->b:F

    add-float/2addr v0, p2

    iput v0, p0, Ltypes/g;->b:F

    iget p2, p1, Ltypes/g;->c:F

    sub-float/2addr p2, p3

    iput p2, p0, Ltypes/g;->c:F

    iget p1, p1, Ltypes/g;->d:F

    add-float/2addr p1, p3

    iput p1, p0, Ltypes/g;->d:F

    return-void
.end method

.method public a(Ltypes/PoiPoint;)Z
    .locals 2

    iget v0, p1, Ltypes/PoiPoint;->i:F

    iget v1, p0, Ltypes/g;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Ltypes/PoiPoint;->i:F

    iget v1, p0, Ltypes/g;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Ltypes/PoiPoint;->j:F

    iget v1, p0, Ltypes/g;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget p1, p1, Ltypes/PoiPoint;->j:F

    iget v0, p0, Ltypes/g;->d:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ltypes/g;)Z
    .locals 2

    iget v0, p0, Ltypes/g;->a:F

    iget v1, p1, Ltypes/g;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Ltypes/g;->c:F

    iget v1, p1, Ltypes/g;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Ltypes/g;->b:F

    iget v1, p1, Ltypes/g;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Ltypes/g;->d:F

    iget p1, p1, Ltypes/g;->d:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ltypes/g;)V
    .locals 1

    iget v0, p1, Ltypes/g;->a:F

    iput v0, p0, Ltypes/g;->a:F

    iget v0, p1, Ltypes/g;->b:F

    iput v0, p0, Ltypes/g;->b:F

    iget v0, p1, Ltypes/g;->c:F

    iput v0, p0, Ltypes/g;->c:F

    iget p1, p1, Ltypes/g;->d:F

    iput p1, p0, Ltypes/g;->d:F

    return-void
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Ltypes/g;->a:F

    const v1, 0x461c3c00    # 9999.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(FF)Z
    .locals 1

    iget v0, p0, Ltypes/g;->a:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Ltypes/g;->b:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Ltypes/g;->c:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    iget p1, p0, Ltypes/g;->d:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ltypes/GpsVal;)Z
    .locals 2

    iget v0, p1, Ltypes/GpsVal;->a:F

    iget v1, p0, Ltypes/g;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Ltypes/GpsVal;->a:F

    iget v1, p0, Ltypes/g;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Ltypes/GpsVal;->b:F

    iget v1, p0, Ltypes/g;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget p1, p1, Ltypes/GpsVal;->b:F

    iget v0, p0, Ltypes/g;->d:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Ltypes/GpsVal;
    .locals 4

    new-instance v0, Ltypes/GpsVal;

    invoke-direct {v0}, Ltypes/GpsVal;-><init>()V

    iget v1, p0, Ltypes/g;->b:F

    iget v2, p0, Ltypes/g;->a:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Ltypes/GpsVal;->a:F

    iget v1, p0, Ltypes/g;->d:F

    iget v3, p0, Ltypes/g;->c:F

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    iput v1, v0, Ltypes/GpsVal;->b:F

    return-object v0
.end method

.method public c(Ltypes/g;)Z
    .locals 3

    iget v0, p1, Ltypes/g;->a:F

    iget v1, p0, Ltypes/g;->a:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Ltypes/g;->b:F

    iget v1, p0, Ltypes/g;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return v2

    :cond_0
    iget v0, p1, Ltypes/g;->a:F

    iget v1, p0, Ltypes/g;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    return v2

    :cond_1
    iget v0, p1, Ltypes/g;->c:F

    iget v1, p0, Ltypes/g;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget p1, p1, Ltypes/g;->d:F

    iget v0, p0, Ltypes/g;->c:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    return v2

    :cond_2
    iget p1, p1, Ltypes/g;->c:F

    iget v0, p0, Ltypes/g;->d:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public d()F
    .locals 2

    iget v0, p0, Ltypes/g;->b:F

    iget v1, p0, Ltypes/g;->a:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public e()F
    .locals 2

    iget v0, p0, Ltypes/g;->d:F

    iget v1, p0, Ltypes/g;->c:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public f()F
    .locals 2

    iget v0, p0, Ltypes/g;->b:F

    iget v1, p0, Ltypes/g;->a:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public g()F
    .locals 2

    iget v0, p0, Ltypes/g;->d:F

    iget v1, p0, Ltypes/g;->c:F

    sub-float/2addr v0, v1

    return v0
.end method
