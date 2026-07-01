.class public Lg/h;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/h;->a:F

    iput v0, p0, Lg/h;->b:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lg/h;->d:F

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const v1, 0x3e4ccccd    # 0.2f

    :goto_0
    iput v1, p0, Lg/h;->c:F

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x3dcccccd    # 0.1f

    :goto_1
    iput v0, p0, Lg/h;->d:F

    invoke-virtual {p0}, Lg/h;->a()V

    return-void
.end method


# virtual methods
.method public a(FF)F
    .locals 6

    iget v0, p0, Lg/h;->a:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lg/h;->c:F

    const v2, 0x38d1b717    # 1.0E-4f

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lg/h;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    :goto_0
    iput v2, p0, Lg/h;->b:F

    goto :goto_3

    :cond_0
    iput p1, p0, Lg/h;->b:F

    iget p1, p0, Lg/h;->b:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lg/h;->d:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    :goto_1
    iput p2, p0, Lg/h;->a:F

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :goto_2
    float-to-double p1, p1

    cmpg-double v0, p1, v3

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_3
    iget p1, p0, Lg/h;->b:F

    return p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/h;->a:F

    iput v0, p0, Lg/h;->b:F

    return-void
.end method
