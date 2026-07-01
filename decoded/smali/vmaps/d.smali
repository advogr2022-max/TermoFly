.class public Lvmaps/d;
.super Ljava/lang/Object;


# static fields
.field public static a:F = 20.0f

.field private static b:Ltypes/k;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltypes/k;

    const/16 v1, 0x190

    invoke-direct {v0, v1, v1}, Ltypes/k;-><init>(II)V

    sput-object v0, Lvmaps/d;->b:Ltypes/k;

    const/4 v0, 0x0

    sput-boolean v0, Lvmaps/d;->c:Z

    return-void
.end method

.method public static a(FF)I
    .locals 4

    sget-boolean v0, Lvmaps/d;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lvmaps/d;->b:Ltypes/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Ltypes/k;->a(FFZ)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lvmaps/d;->b:Ltypes/k;

    iget v1, v1, Ltypes/k;->l:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    sget v3, Lvmaps/d;->a:F

    mul-float v3, v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    :cond_1
    new-instance v1, Lc/b;

    invoke-direct {v1, p0, p1}, Lc/b;-><init>(FF)V

    :cond_2
    return v0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lvmaps/d;->c:Z

    return-void
.end method

.method public static a(F)V
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/high16 p0, 0x41200000    # 10.0f

    :cond_0
    sput p0, Lvmaps/d;->a:F

    return-void
.end method

.method public static a(Ltypes/k;)V
    .locals 3

    sget-object v0, Lvmaps/d;->b:Ltypes/k;

    const/4 v1, 0x0

    iput-object v1, v0, Ltypes/k;->a:[B

    sput-object v1, Lvmaps/d;->b:Ltypes/k;

    sput-object p0, Lvmaps/d;->b:Ltypes/k;

    const/4 p0, 0x1

    sput-boolean p0, Lvmaps/d;->c:Z

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    if-eqz v0, :cond_0

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iget-short v0, v0, Ltypes/PoiPoint;->k:S

    if-nez v0, :cond_0

    sget-object v0, Lvmaps/d;->b:Ltypes/k;

    sget-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v1, v1, Ltypes/PoiPoint;->i:F

    sget-object v2, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v2, v2, Ltypes/PoiPoint;->j:F

    invoke-virtual {v0, v1, v2, p0}, Ltypes/k;->a(FFZ)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    int-to-short p0, p0

    iput-short p0, v0, Ltypes/PoiPoint;->k:S

    :cond_0
    const/16 p0, 0x10

    invoke-static {p0}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    return-void
.end method

.method public static b(FF)I
    .locals 4

    sget-boolean v0, Lvmaps/d;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lvmaps/d;->b:Ltypes/k;

    invoke-virtual {v0, p0, p1, v1}, Ltypes/k;->a(FFZ)I

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Lvmaps/d;->b:Ltypes/k;

    iget v0, v0, Ltypes/k;->l:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    sget v3, Lvmaps/d;->a:F

    mul-float v3, v3, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Lc/b;

    invoke-direct {v0, p0, p1}, Lc/b;-><init>(FF)V

    :cond_2
    return v1
.end method
