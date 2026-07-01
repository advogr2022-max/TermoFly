.class public Ltypes/i;
.super Ljava/lang/Object;


# static fields
.field public static a:F = 1.5f

.field public static b:F = 6371.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(FFFF)I
    .locals 2

    sub-float/2addr p3, p1

    float-to-double v0, p3

    sub-float/2addr p2, p0

    float-to-double p0, p2

    sget p2, Ltypes/i;->a:F

    float-to-double p2, p2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    const-wide p2, 0x4076800000000000L    # 360.0

    add-double/2addr p0, p2

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method public static a(Ltypes/GpsVal;Ltypes/GpsVal;)I
    .locals 4

    iget v0, p1, Ltypes/GpsVal;->b:F

    iget v1, p0, Ltypes/GpsVal;->b:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p1, p1, Ltypes/GpsVal;->a:F

    iget p0, p0, Ltypes/GpsVal;->a:F

    sub-float/2addr p1, p0

    float-to-double p0, p1

    sget v2, Ltypes/i;->a:F

    float-to-double v2, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method public static a(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v1, p0, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Ltypes/i;->b(FFFF)F

    move-result v1

    invoke-static {p0, v2, p0, v0}, Ltypes/i;->b(FFFF)F

    move-result p0

    div-float/2addr v1, p0

    sput v1, Ltypes/i;->a:F

    return-void
.end method

.method public static a(FFFLtypes/g;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, p1, v1}, Ltypes/i;->b(FFFF)F

    move-result v0

    div-float/2addr p0, v0

    sget v0, Ltypes/i;->a:F

    div-float v0, p0, v0

    sub-float v1, p1, v0

    iput v1, p3, Ltypes/g;->a:F

    add-float/2addr p1, v0

    iput p1, p3, Ltypes/g;->b:F

    sub-float p1, p2, p0

    iput p1, p3, Ltypes/g;->c:F

    add-float/2addr p2, p0

    iput p2, p3, Ltypes/g;->d:F

    return-void
.end method

.method public static b(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v1, p0, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Ltypes/i;->b(FFFF)F

    move-result v1

    invoke-static {p0, v2, p0, v0}, Ltypes/i;->b(FFFF)F

    move-result p0

    div-float/2addr v1, p0

    return v1
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

    sget p2, Ltypes/i;->b:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p2

    double-to-float p0, p0

    return p0
.end method

.method public static b(Ltypes/GpsVal;Ltypes/GpsVal;)F
    .locals 10

    iget v0, p0, Ltypes/GpsVal;->a:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v4

    iget v6, p1, Ltypes/GpsVal;->a:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    div-double/2addr v6, v4

    iget p0, p0, Ltypes/GpsVal;->b:F

    float-to-double v8, p0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v2

    div-double/2addr v8, v4

    iget p0, p1, Ltypes/GpsVal;->b:F

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v2

    div-double/2addr p0, v4

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

    sub-double/2addr v8, p0

    div-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

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

    sget v0, Ltypes/i;->b:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v0

    double-to-float p0, p0

    return p0
.end method
