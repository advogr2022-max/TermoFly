.class public Ltypes/d;
.super Ljava/lang/Object;


# static fields
.field public static a:F = 6371.0f


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Ltypes/d;->c(FF)V

    return-void
.end method

.method public static b(FFFF)F
    .locals 8

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v4

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    div-double/2addr v6, v4

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v2

    div-double/2addr p0, v4

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v2

    div-double/2addr p2, v4

    sub-double v2, v0, v6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v0, v0, v6

    sub-double/2addr p0, p2

    div-double/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double v0, v0, p0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    mul-double p0, p0, v4

    sget p2, Ltypes/d;->a:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p2

    double-to-float p0, p0

    return p0
.end method

.method private c(FF)V
    .locals 1

    iput p1, p0, Ltypes/d;->b:F

    iput p2, p0, Ltypes/d;->c:F

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p1, v0}, Ltypes/d;->b(FFFF)F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float p2, v0, p2

    invoke-static {p1}, Ltypes/d;->e(F)F

    move-result p1

    iput p1, p0, Ltypes/d;->d:F

    div-float/2addr v0, p2

    iput v0, p0, Ltypes/d;->e:F

    iget p1, p0, Ltypes/d;->e:F

    iget p2, p0, Ltypes/d;->d:F

    mul-float p1, p1, p2

    iput p1, p0, Ltypes/d;->f:F

    return-void
.end method

.method public static e(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v1, p0, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Ltypes/d;->b(FFFF)F

    move-result v1

    invoke-static {p0, v2, p0, v0}, Ltypes/d;->b(FFFF)F

    move-result p0

    div-float/2addr v1, p0

    return v1
.end method


# virtual methods
.method public a(F)F
    .locals 1

    iget v0, p0, Ltypes/d;->c:F

    sub-float/2addr p1, v0

    iget v0, p0, Ltypes/d;->e:F

    mul-float p1, p1, v0

    return p1
.end method

.method public a(FFFF)F
    .locals 0

    sub-float/2addr p2, p4

    iget p4, p0, Ltypes/d;->c:F

    add-float/2addr p2, p4

    invoke-virtual {p0, p2}, Ltypes/d;->a(F)F

    move-result p2

    sub-float/2addr p1, p3

    iget p3, p0, Ltypes/d;->b:F

    add-float/2addr p1, p3

    invoke-virtual {p0, p1}, Ltypes/d;->b(F)F

    move-result p1

    invoke-static {p2, p1}, Ltypes/e;->a(FF)F

    move-result p1

    return p1
.end method

.method public a(FF)V
    .locals 0

    iput p1, p0, Ltypes/d;->b:F

    iput p2, p0, Ltypes/d;->c:F

    return-void
.end method

.method public a(FFLtypes/Coord;)V
    .locals 0

    invoke-virtual {p0, p2}, Ltypes/d;->a(F)F

    move-result p2

    iput p2, p3, Ltypes/Coord;->a:F

    invoke-virtual {p0, p1}, Ltypes/d;->b(F)F

    move-result p1

    iput p1, p3, Ltypes/Coord;->b:F

    return-void
.end method

.method public a(Ltypes/Coord;Ltypes/l;)V
    .locals 1

    iget v0, p1, Ltypes/Coord;->b:F

    invoke-virtual {p0, v0}, Ltypes/d;->c(F)F

    move-result v0

    iput v0, p2, Ltypes/l;->a:F

    iget p1, p1, Ltypes/Coord;->a:F

    invoke-virtual {p0, p1}, Ltypes/d;->d(F)F

    move-result p1

    iput p1, p2, Ltypes/l;->b:F

    return-void
.end method

.method public a(Ltypes/l;Ltypes/Coord;)V
    .locals 1

    iget v0, p1, Ltypes/l;->b:F

    invoke-virtual {p0, v0}, Ltypes/d;->a(F)F

    move-result v0

    iput v0, p2, Ltypes/Coord;->a:F

    iget p1, p1, Ltypes/l;->a:F

    invoke-virtual {p0, p1}, Ltypes/d;->b(F)F

    move-result p1

    iput p1, p2, Ltypes/Coord;->b:F

    return-void
.end method

.method public b(F)F
    .locals 1

    iget v0, p0, Ltypes/d;->b:F

    sub-float/2addr p1, v0

    iget v0, p0, Ltypes/d;->f:F

    mul-float p1, p1, v0

    return p1
.end method

.method public b(FF)F
    .locals 0

    invoke-virtual {p0, p2}, Ltypes/d;->a(F)F

    move-result p2

    invoke-virtual {p0, p1}, Ltypes/d;->b(F)F

    move-result p1

    invoke-static {p2, p1}, Ltypes/e;->a(FF)F

    move-result p1

    return p1
.end method

.method public c(F)F
    .locals 2

    iget v0, p0, Ltypes/d;->b:F

    iget v1, p0, Ltypes/d;->f:F

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public d(F)F
    .locals 2

    iget v0, p0, Ltypes/d;->c:F

    iget v1, p0, Ltypes/d;->e:F

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method
