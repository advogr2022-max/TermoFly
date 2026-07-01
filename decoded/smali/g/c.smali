.class public Lg/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private b:F

.field private c:J

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lg/c;->a:F

    iput p1, p0, Lg/c;->b:F

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lg/c;->f:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lg/c;->d:F

    return v0
.end method

.method public a(FFFJ)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_0
    iget v1, p0, Lg/c;->f:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iput-wide p4, p0, Lg/c;->c:J

    iput p1, p0, Lg/c;->d:F

    iput p2, p0, Lg/c;->e:F

    mul-float p3, p3, p3

    iput p3, p0, Lg/c;->f:F

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lg/c;->c:J

    sub-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    iget v3, p0, Lg/c;->f:F

    long-to-float v1, v1

    iget v2, p0, Lg/c;->b:F

    mul-float v1, v1, v2

    iget v2, p0, Lg/c;->b:F

    mul-float v1, v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v3, v1

    iput v3, p0, Lg/c;->f:F

    iput-wide p4, p0, Lg/c;->c:J

    :cond_2
    iget p4, p0, Lg/c;->f:F

    iget p5, p0, Lg/c;->f:F

    mul-float p3, p3, p3

    add-float/2addr p5, p3

    div-float/2addr p4, p5

    iget p3, p0, Lg/c;->d:F

    iget p5, p0, Lg/c;->d:F

    sub-float/2addr p1, p5

    mul-float p1, p1, p4

    add-float/2addr p3, p1

    iput p3, p0, Lg/c;->d:F

    iget p1, p0, Lg/c;->e:F

    iget p3, p0, Lg/c;->e:F

    sub-float/2addr p2, p3

    mul-float p2, p2, p4

    add-float/2addr p1, p2

    iput p1, p0, Lg/c;->e:F

    sub-float/2addr v0, p4

    iget p1, p0, Lg/c;->f:F

    mul-float v0, v0, p1

    iput v0, p0, Lg/c;->f:F

    :goto_0
    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lg/c;->e:F

    return v0
.end method
