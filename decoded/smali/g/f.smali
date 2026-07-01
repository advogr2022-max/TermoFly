.class public Lg/f;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:F

.field private c:I

.field private d:[F

.field private e:[J

.field private f:I

.field private g:I

.field private h:F

.field private i:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lg/f;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lg/f;->f:I

    iput v0, p0, Lg/f;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lg/f;->h:F

    iput v0, p0, Lg/f;->i:I

    invoke-virtual {p0, p1}, Lg/f;->a(I)V

    return-void
.end method


# virtual methods
.method public a(FJ)F
    .locals 4

    iget-object v0, p0, Lg/f;->d:[F

    iget v1, p0, Lg/f;->g:I

    aput p1, v0, v1

    iget-object v0, p0, Lg/f;->e:[J

    iget v1, p0, Lg/f;->g:I

    aput-wide p2, v0, v1

    iget v0, p0, Lg/f;->h:F

    add-float/2addr v0, p1

    iput v0, p0, Lg/f;->h:F

    iget v0, p0, Lg/f;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/f;->i:I

    iget v0, p0, Lg/f;->a:I

    int-to-long v0, v0

    sub-long/2addr p2, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/f;->e:[J

    iget v1, p0, Lg/f;->f:I

    aget-wide v1, v0, v1

    const/4 v0, 0x0

    cmp-long v3, v1, p2

    if-gez v3, :cond_1

    iget v1, p0, Lg/f;->h:F

    iget-object v2, p0, Lg/f;->d:[F

    iget v3, p0, Lg/f;->f:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lg/f;->h:F

    iget v1, p0, Lg/f;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lg/f;->i:I

    iget v1, p0, Lg/f;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lg/f;->f:I

    iget v2, p0, Lg/f;->c:I

    if-ne v1, v2, :cond_0

    iput v0, p0, Lg/f;->f:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lg/f;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lg/f;->g:I

    iget p3, p0, Lg/f;->c:I

    if-ne p2, p3, :cond_2

    iput v0, p0, Lg/f;->g:I

    :cond_2
    iget p2, p0, Lg/f;->g:I

    iget p3, p0, Lg/f;->f:I

    if-ne p2, p3, :cond_3

    iget p2, p0, Lg/f;->h:F

    iget-object p3, p0, Lg/f;->d:[F

    iget v1, p0, Lg/f;->f:I

    aget p3, p3, v1

    sub-float/2addr p2, p3

    iput p2, p0, Lg/f;->h:F

    iget p2, p0, Lg/f;->i:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lg/f;->i:I

    iget p2, p0, Lg/f;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lg/f;->f:I

    iget p3, p0, Lg/f;->c:I

    if-ne p2, p3, :cond_3

    iput v0, p0, Lg/f;->f:I

    :cond_3
    iget p2, p0, Lg/f;->h:F

    add-float/2addr p2, p1

    iget p1, p0, Lg/f;->i:I

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lg/f;->b:F

    iget p1, p0, Lg/f;->b:F

    return p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg/f;->f:I

    iput v0, p0, Lg/f;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lg/f;->h:F

    iput v0, p0, Lg/f;->i:I

    return-void
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lg/f;->a:I

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lg/f;->c:I

    iget p1, p0, Lg/f;->c:I

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    iput v0, p0, Lg/f;->c:I

    :cond_0
    iget p1, p0, Lg/f;->c:I

    new-array p1, p1, [F

    iput-object p1, p0, Lg/f;->d:[F

    iget p1, p0, Lg/f;->c:I

    new-array p1, p1, [J

    iput-object p1, p0, Lg/f;->e:[J

    invoke-virtual {p0}, Lg/f;->a()V

    return-void
.end method
