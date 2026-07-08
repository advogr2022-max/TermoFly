.class public Lcom/xcglobe/xclog/ButterworthLP;
.super Ljava/lang/Object;
.source "ButterworthLP.java"


# direct methods
.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static computeLP(FF)[F
    .locals 14

    const-wide v0, 0x400921fb54442d18L    # PI

    float-to-double v2, p0
    mul-double/2addr v2, v0
    float-to-double p0, p1
    div-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D
    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v2

    mul-double v4, p0, p0        # v4:v5 = w²
    mul-double/2addr v2, p0      # v2:v3 = sqrt2 * w

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double v6, v2, p0        # v6:v7 = sqrt2*w + 1
    add-double/2addr v6, v4      # v6:v7 = DENOM
    div-double v6, p0, v6        # v6:v7 = K

    mul-double v8, v6, v4        # v8:v9 = K * w²
    double-to-float v8, v8       # v8 = b0

    mul-double v9, v6, v0        # v9:v10 = K * 2
    mul-double/2addr v9, v4      # v9:v10 = K*2*w²
    double-to-float v9, v9       # v9 = b1

    sub-double v10, v4, p0       # v10:v11 = w² - 1
    mul-double/2addr v10, v0     # v10:v11 = (w²-1)*2
    mul-double/2addr v10, v6     # v10:v11 = (w²-1)*2*K = a1
    double-to-float v0, v10      # v0 = a1

    sub-double p0, p0, v2        # p0:p1 = 1 - sqrt2*w
    add-double/2addr p0, v4      # p0:p1 = 1 - sqrt2*w + w²
    mul-double/2addr p0, v6      # p0:p1 = a2
    double-to-float p0, p0       # p0 = a2

    const/high16 v1, -0x40000000    # -2.0 (temp for comparison)
    # Actually let me use the right clamp values:
    const v10, -0x4001a148      # -1.99
    cmpg-float v11, v0, v10
    if-gez v11, :ca1
    move v0, v10
    :ca1

    const v10, 0x3f7d70a4      # 0.99
    cmpl-float v11, p0, v10
    if-lez v11, :ca2
    move p0, v10
    :ca2

    const/4 v10, 0x5
    new-array v10, v10, [F
    const/4 v11, 0x0
    aput v8, v10, v11
    const/4 v11, 0x1
    aput v9, v10, v11
    const/4 v11, 0x2
    aput v8, v10, v11
    const/4 v11, 0x3
    aput v0, v10, v11
    const/4 v0, 0x4
    aput p0, v10, v0

    return-object v10
.end method

.method public static getLpCoeffsFromPrefs(F)[F
    .locals 3

    sget-object v1, Lcom/xcglobe/xclog/App;->a:Lcom/xcglobe/xclog/App;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v1

    const-string v0, "lp_cutoff"
    const-string v2, "2.5"
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1

    const/high16 v0, 0x40200000    # 2.5
    if-eqz v1, :chk_empty
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :try_prs
    goto :chk_empty

    :try_prs
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    move-result v0
    :try_end
    .catch Ljava/lang/NumberFormatException; { :try_prs .. :try_end } :catch_nfe
    goto :chk_empty

    :catch_nfe
    move-exception v1

    :chk_empty
    const/high16 v1, 0x40000000    # 2.0
    cmpg-float v2, v0, v1
    if-gez v2, :cl_low
    move v0, v1
    :cl_low
    const/high16 v1, 0x41c80000    # 25.0
    cmpl-float v2, v0, v1
    if-lez v2, :cl_high
    move v0, v1
    :cl_high

    invoke-static {v0, p0}, Lcom/xcglobe/xclog/ButterworthLP;->computeLP(FF)[F
    move-result-object v1

    const/4 v2, 0x6
    new-array v2, v2, [F
    const/4 v3, 0x0
    aput v0, v2, v3
    aget v0, v1, v3
    const/4 v3, 0x1
    aput v0, v2, v3
    aget v0, v1, v3
    const/4 v3, 0x2
    aput v0, v2, v3
    aget v0, v1, v3
    const/4 v3, 0x3
    aput v0, v2, v3
    aget v0, v1, v3
    const/4 v3, 0x4
    aput v0, v2, v3
    aget v0, v1, v3
    const/4 v1, 0x5
    aput v0, v2, v1

    return-object v2
.end method
