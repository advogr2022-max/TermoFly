.class public Lh/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:[F

.field public b:F

.field public c:F

.field public d:F

.field private final e:I

.field private f:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    iput-object v1, p0, Lh/b;->a:[F

    new-array v0, v0, [I

    iput-object v0, p0, Lh/b;->f:[I

    iput p1, p0, Lh/b;->e:I

    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 7

    int-to-float p1, p1

    const/high16 v0, 0x41000000    # 8.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lh/b;->a:[F

    aget p1, p1, v1

    return p1

    :cond_0
    iget-object v3, p0, Lh/b;->f:[I

    aget v3, v3, v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    return v5

    :cond_1
    iget-object v3, p0, Lh/b;->a:[F

    aget v3, v3, v0

    int-to-float v4, v0

    sub-float/2addr p1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v5

    if-lez v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v1, p0, Lh/b;->a:[F

    aget v0, v1, v0

    cmpl-float v1, v0, v5

    if-nez v1, :cond_3

    return v3

    :cond_3
    mul-float v0, v0, p1

    add-float/2addr v3, v0

    add-float/2addr p1, v4

    div-float/2addr v3, p1

    return v3

    :cond_4
    neg-float p1, p1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_5

    const/4 v0, 0x7

    :cond_5
    iget-object v1, p0, Lh/b;->a:[F

    aget v0, v1, v0

    cmpl-float v1, v0, v5

    if-nez v1, :cond_3

    return v3
.end method

.method protected a(IF)V
    .locals 6

    iget-object v0, p0, Lh/b;->a:[F

    aget v0, v0, p1

    iget-object v1, p0, Lh/b;->f:[I

    aget v1, v1, p1

    iget-object v2, p0, Lh/b;->a:[F

    int-to-float v3, v1

    mul-float v0, v0, v3

    add-float/2addr v0, p2

    add-int/lit8 p2, v1, 0x1

    int-to-float p2, p2

    div-float/2addr v0, p2

    aput v0, v2, p1

    iget p2, p0, Lh/b;->e:I

    if-ge v1, p2, :cond_0

    iget-object p2, p0, Lh/b;->f:[I

    aget v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p1

    :cond_0
    const p1, 0x47c34f80    # 99999.0f

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 p1, 0x0

    const/4 v1, 0x0

    const v2, 0x47c34f80    # 99999.0f

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge p2, v4, :cond_4

    iget-object v4, p0, Lh/b;->a:[F

    aget v4, v4, p2

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_3

    cmpl-float v5, v4, v1

    if-ltz v5, :cond_1

    move v1, v4

    :cond_1
    cmpg-float v5, v4, v2

    if-gtz v5, :cond_2

    move v2, v4

    :cond_2
    add-float/2addr v3, v4

    add-int/lit8 p1, p1, 0x1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    if-lez p1, :cond_5

    iput v2, p0, Lh/b;->c:F

    iput v1, p0, Lh/b;->b:F

    int-to-float p1, p1

    div-float/2addr v3, p1

    iput v3, p0, Lh/b;->d:F

    :cond_5
    return-void
.end method
