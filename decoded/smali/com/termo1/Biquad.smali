.class public Lcom/termo1/Biquad;
.super Ljava/lang/Object;

.field public static final HP_B0:F = 0.978f
.field public static final HP_B1:F = -1.956f
.field public static final HP_B2:F = 0.978f
.field public static final HP_A1:F = -1.9555f
.field public static final HP_A2:F = 0.9565f
.field public static final LP_B0:F = 0.02007f
.field public static final LP_B1:F = 0.04014f
.field public static final LP_B2:F = 0.02007f
.field public static final LP_A1:F = -1.5613f
.field public static final LP_A2:F = 0.6415f

.field public static hpX:[F
.field public static lpX:[F
.field public static hpY:[F
.field public static lpY:[F

.method static constructor <clinit>()V
    .locals 2
    const/4 v0, 0x4
    new-array v1, v0, [F
    sput-object v1, Lcom/termo1/Biquad;->hpX:[F
    new-array v1, v0, [F
    sput-object v1, Lcom/termo1/Biquad;->lpX:[F
    new-array v1, v0, [F
    sput-object v1, Lcom/termo1/Biquad;->hpY:[F
    new-array v1, v0, [F
    sput-object v1, Lcom/termo1/Biquad;->lpY:[F
    return-void
.end method

.method public static hpSection(F[F)F
    .locals 8
    sget v0, Lcom/termo1/Biquad;->HP_B0:F
    mul-float v0, v0, p0
    sget v1, Lcom/termo1/Biquad;->HP_B1:F
    const/4 v2, 0x0
    aget v2, p1, v2
    mul-float v1, v1, v2
    add-float/2addr v0, v1
    sget v1, Lcom/termo1/Biquad;->HP_B2:F
    const/4 v2, 0x1
    aget v2, p1, v2
    mul-float v1, v1, v2
    add-float/2addr v0, v1
    sget v1, Lcom/termo1/Biquad;->HP_A1:F
    const/4 v2, 0x2
    aget v2, p1, v2
    mul-float v1, v1, v2
    sub-float/2addr v0, v1
    sget v1, Lcom/termo1/Biquad;->HP_A2:F
    const/4 v2, 0x3
    aget v2, p1, v2
    mul-float v1, v1, v2
    sub-float/2addr v0, v1
    const/high16 v1, 0x42c80000
    cmpg-float v2, v0, v1
    if-ltz v2, :clp_h
    move v0, v1
    :clp_h
    const/high16 v1, -0x3d380000
    cmpg-float v2, v0, v1
    if-gez v2, :clp_h2
    move v0, v1
    :clp_h2
    const/4 v1, 0x1
    aget v2, p1, v1
    const/4 v3, 0x0
    aget v3, p1, v3
    aput v2, p1, v1
    aput p0, p1, v3
    const/4 p0, 0x3
    aget v1, p1, p0
    const/4 v2, 0x2
    aget v2, p1, v2
    aput v1, p1, p0
    aput v0, p1, v2
    return v0
.end method

# Same for LpSection - but this is getting complex
# Let me just use a minimal approach
