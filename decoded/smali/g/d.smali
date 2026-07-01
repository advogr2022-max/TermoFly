.class public Lg/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg/b;


# instance fields
.field public a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/d;->h:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lg/d;->a:F

    invoke-virtual {p0, v0}, Lg/d;->a(F)V

    invoke-virtual {p0}, Lg/d;->a()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/d;->h:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lg/d;->a:F

    invoke-virtual {p0, p1}, Lg/d;->a(F)V

    invoke-virtual {p0}, Lg/d;->a()V

    iput p2, p0, Lg/d;->a:F

    return-void
.end method


# virtual methods
.method public a(FJ)F
    .locals 5

    iget-wide v0, p0, Lg/d;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lg/d;->h:J

    sub-long v0, p2, v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    :goto_0
    iget v1, p0, Lg/d;->a:F

    invoke-virtual {p0, p1, v1, v0}, Lg/d;->a(FFF)V

    iput-wide p2, p0, Lg/d;->h:J

    iget p1, p0, Lg/d;->b:F

    return p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lg/d;->a(FF)V

    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lg/d;->g:F

    return-void
.end method

.method public a(FF)V
    .locals 0

    iput p1, p0, Lg/d;->b:F

    iput p2, p0, Lg/d;->c:F

    const p1, 0x501502f9    # 1.0E10f

    iput p1, p0, Lg/d;->d:F

    const/4 p1, 0x0

    iput p1, p0, Lg/d;->e:F

    iget p1, p0, Lg/d;->g:F

    iput p1, p0, Lg/d;->f:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lg/d;->h:J

    return-void
.end method

.method public a(FFF)V
    .locals 10

    iget v0, p0, Lg/d;->b:F

    iget v1, p0, Lg/d;->c:F

    mul-float v1, v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lg/d;->b:F

    iget v0, p0, Lg/d;->d:F

    float-to-double v0, v0

    float-to-double v2, p3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    iget v6, p0, Lg/d;->e:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    mul-float v6, p3, p3

    iget v7, p0, Lg/d;->f:F

    mul-float v6, v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    iget v6, p0, Lg/d;->g:F

    mul-float v6, v6, p3

    mul-float v6, v6, p3

    mul-float v6, v6, p3

    mul-float v6, v6, p3

    float-to-double v6, v6

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lg/d;->d:F

    iget v0, p0, Lg/d;->e:F

    float-to-double v0, v0

    iget v2, p0, Lg/d;->f:F

    mul-float v2, v2, p3

    float-to-double v2, v2

    iget v6, p0, Lg/d;->g:F

    mul-float v6, v6, p3

    mul-float v6, v6, p3

    mul-float v6, v6, p3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lg/d;->e:F

    iget v0, p0, Lg/d;->f:F

    iget v1, p0, Lg/d;->g:F

    mul-float v1, v1, p3

    mul-float v1, v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lg/d;->f:F

    iget p3, p0, Lg/d;->b:F

    sub-float/2addr p1, p3

    iget p3, p0, Lg/d;->d:F

    add-float/2addr p3, p2

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p3

    iget p3, p0, Lg/d;->d:F

    mul-float p3, p3, p2

    iget v0, p0, Lg/d;->e:F

    mul-float v0, v0, p2

    iget p2, p0, Lg/d;->b:F

    mul-float v1, p3, p1

    add-float/2addr p2, v1

    iput p2, p0, Lg/d;->b:F

    iget p2, p0, Lg/d;->c:F

    mul-float p1, p1, v0

    add-float/2addr p2, p1

    iput p2, p0, Lg/d;->c:F

    iget p1, p0, Lg/d;->f:F

    iget p2, p0, Lg/d;->e:F

    mul-float p2, p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lg/d;->f:F

    iget p1, p0, Lg/d;->e:F

    iget p2, p0, Lg/d;->e:F

    mul-float p2, p2, p3

    sub-float/2addr p1, p2

    iput p1, p0, Lg/d;->e:F

    iget p1, p0, Lg/d;->d:F

    iget p2, p0, Lg/d;->d:F

    mul-float p2, p2, p3

    sub-float/2addr p1, p2

    iput p1, p0, Lg/d;->d:F

    return-void
.end method
