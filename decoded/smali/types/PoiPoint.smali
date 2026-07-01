.class public Ltypes/PoiPoint;
.super Ljava/lang/Object;


# instance fields
.field public i:F

.field public j:F

.field public k:S

.field public l:Ljava/lang/String;

.field public m:C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFSLjava/lang/String;C)V
    .locals 0

    iput p1, p0, Ltypes/PoiPoint;->i:F

    iput p2, p0, Ltypes/PoiPoint;->j:F

    iput-short p3, p0, Ltypes/PoiPoint;->k:S

    iput-object p4, p0, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iput-char p5, p0, Ltypes/PoiPoint;->m:C

    return-void
.end method

.method public a(Ltypes/PoiPoint;)V
    .locals 1

    iget v0, p1, Ltypes/PoiPoint;->i:F

    iput v0, p0, Ltypes/PoiPoint;->i:F

    iget v0, p1, Ltypes/PoiPoint;->j:F

    iput v0, p0, Ltypes/PoiPoint;->j:F

    iget-short v0, p1, Ltypes/PoiPoint;->k:S

    iput-short v0, p0, Ltypes/PoiPoint;->k:S

    iget-object v0, p1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iput-object v0, p0, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iget-char p1, p1, Ltypes/PoiPoint;->m:C

    iput-char p1, p0, Ltypes/PoiPoint;->m:C

    return-void
.end method

.method public b(Ltypes/PoiPoint;)Z
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p1, Ltypes/PoiPoint;->i:F

    iget v1, p0, Ltypes/PoiPoint;->i:F

    sub-float/2addr v0, v1

    const v1, 0x47c35000    # 100000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_0

    iget v0, p1, Ltypes/PoiPoint;->j:F

    iget v2, p0, Ltypes/PoiPoint;->j:F

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_0

    iget-object p1, p1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iget-object v0, p0, Ltypes/PoiPoint;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
