.class public Ltypes/p;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:I

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field private l:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ltypes/p;->l:F

    const v0, 0x47435000    # 50000.0f

    iput v0, p0, Ltypes/p;->k:F

    return-void
.end method

.method private a()V
    .locals 2

    iget v0, p0, Ltypes/p;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v1, v0

    iput v1, p0, Ltypes/p;->f:I

    iget v1, p0, Ltypes/p;->e:F

    mul-float v0, v0, v1

    iput v0, p0, Ltypes/p;->g:F

    return-void
.end method


# virtual methods
.method public a(FFII)V
    .locals 1

    int-to-float p4, p4

    sget v0, Ltypes/i;->a:F

    div-float/2addr p4, v0

    float-to-int p4, p4

    int-to-float p3, p3

    iput p3, p0, Ltypes/p;->b:F

    int-to-float p4, p4

    iput p4, p0, Ltypes/p;->a:F

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {p2, v0, p2, p4}, Ltypes/i;->b(FFFF)F

    move-result p2

    div-float p2, p1, p2

    div-float/2addr p3, p2

    iput p3, p0, Ltypes/p;->l:F

    iput p1, p0, Ltypes/p;->c:F

    iget p1, p0, Ltypes/p;->b:F

    iget p2, p0, Ltypes/p;->c:F

    div-float/2addr p1, p2

    iput p1, p0, Ltypes/p;->d:F

    iget p1, p0, Ltypes/p;->d:F

    div-float/2addr p4, p1

    iput p4, p0, Ltypes/p;->e:F

    iget p1, p0, Ltypes/p;->l:F

    iput p1, p0, Ltypes/p;->h:F

    iget p1, p0, Ltypes/p;->l:F

    sget p2, Ltypes/i;->a:F

    mul-float p1, p1, p2

    iput p1, p0, Ltypes/p;->i:F

    iget p1, p0, Ltypes/p;->h:F

    iget p2, p0, Ltypes/p;->i:F

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Ltypes/p;->j:F

    invoke-direct {p0}, Ltypes/p;->a()V

    return-void
.end method

.method public a(FFLtypes/g;)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, p1, v1}, Ltypes/i;->b(FFFF)F

    move-result v0

    iget v1, p0, Ltypes/p;->c:F

    div-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    sget v0, Ltypes/i;->a:F

    div-float v0, v1, v0

    sub-float v2, p1, v0

    iput v2, p3, Ltypes/g;->a:F

    sub-float v2, p2, v1

    iput v2, p3, Ltypes/g;->c:F

    add-float/2addr p1, v0

    iput p1, p3, Ltypes/g;->b:F

    add-float/2addr p2, v1

    iput p2, p3, Ltypes/g;->d:F

    iget p1, p3, Ltypes/g;->a:F

    iget p2, p0, Ltypes/p;->a:F

    iget v0, p0, Ltypes/p;->i:F

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p3, Ltypes/g;->b:F

    iget p1, p3, Ltypes/g;->c:F

    iget p2, p0, Ltypes/p;->b:F

    iget v0, p0, Ltypes/p;->h:F

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p3, Ltypes/g;->d:F

    return-void
.end method
