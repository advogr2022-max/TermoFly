.class public Lg/g;
.super Ljava/lang/Object;

# interfaces
.implements Lg/b;


# instance fields
.field public a:I

.field public b:F

.field private c:I

.field private d:[F

.field private e:[J

.field private f:[F

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lg/g;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lg/g;->g:I

    iput v0, p0, Lg/g;->h:I

    const/4 v1, 0x0

    iput v1, p0, Lg/g;->i:F

    iput v0, p0, Lg/g;->j:I

    invoke-virtual {p0, p1}, Lg/g;->a(I)V

    return-void
.end method


# virtual methods
.method public a(FJ)F
    .locals 5

    iget v0, p0, Lg/g;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/g;->j:I

    iget v0, p0, Lg/g;->i:F

    add-float/2addr v0, p1

    iget v1, p0, Lg/g;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lg/g;->b:F

    iget v0, p0, Lg/g;->a:I

    int-to-long v0, v0

    iget v2, p0, Lg/g;->b:F

    iget v3, p0, Lg/g;->k:F

    sub-float/2addr v2, v3

    iget v3, p0, Lg/g;->b:F

    const/4 v4, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    cmpl-float v3, v2, v4

    if-gtz v3, :cond_1

    :cond_0
    iget v3, p0, Lg/g;->b:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    :cond_1
    iget v2, p0, Lg/g;->k:F

    iput v2, p0, Lg/g;->b:F

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    :cond_2
    const/4 v2, 0x0

    sub-long v0, p2, v0

    iget-object v2, p0, Lg/g;->d:[F

    iget v3, p0, Lg/g;->h:I

    aput p1, v2, v3

    iget-object v2, p0, Lg/g;->e:[J

    iget v3, p0, Lg/g;->h:I

    aput-wide p2, v2, v3

    :cond_3
    :goto_0
    iget-object p2, p0, Lg/g;->e:[J

    iget p3, p0, Lg/g;->g:I

    aget-wide v2, p2, p3

    const/4 p2, 0x0

    cmp-long p3, v2, v0

    if-gez p3, :cond_4

    iget p3, p0, Lg/g;->i:F

    iget-object v2, p0, Lg/g;->d:[F

    iget v3, p0, Lg/g;->g:I

    aget v2, v2, v3

    sub-float/2addr p3, v2

    iput p3, p0, Lg/g;->i:F

    iget p3, p0, Lg/g;->j:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lg/g;->j:I

    iget p3, p0, Lg/g;->g:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lg/g;->g:I

    iget v2, p0, Lg/g;->c:I

    if-ne p3, v2, :cond_3

    iput p2, p0, Lg/g;->g:I

    goto :goto_0

    :cond_4
    iget p3, p0, Lg/g;->i:F

    add-float/2addr p3, p1

    iput p3, p0, Lg/g;->i:F

    iget-object p1, p0, Lg/g;->f:[F

    iget p3, p0, Lg/g;->h:I

    iget v0, p0, Lg/g;->b:F

    aput v0, p1, p3

    iget p1, p0, Lg/g;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/g;->h:I

    iget p3, p0, Lg/g;->c:I

    if-ne p1, p3, :cond_5

    iput p2, p0, Lg/g;->h:I

    :cond_5
    iget p1, p0, Lg/g;->h:I

    iget p3, p0, Lg/g;->g:I

    if-ne p1, p3, :cond_6

    iget p1, p0, Lg/g;->i:F

    iget-object p3, p0, Lg/g;->d:[F

    iget v0, p0, Lg/g;->g:I

    aget p3, p3, v0

    sub-float/2addr p1, p3

    iput p1, p0, Lg/g;->i:F

    iget p1, p0, Lg/g;->j:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lg/g;->j:I

    iget p1, p0, Lg/g;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/g;->g:I

    iget p3, p0, Lg/g;->c:I

    if-ne p1, p3, :cond_6

    iput p2, p0, Lg/g;->g:I

    :cond_6
    iget p1, p0, Lg/g;->b:F

    iput p1, p0, Lg/g;->k:F

    iget p1, p0, Lg/g;->b:F

    return p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg/g;->g:I

    iput v0, p0, Lg/g;->h:I

    const/4 v1, 0x0

    iput v1, p0, Lg/g;->i:F

    iput v0, p0, Lg/g;->j:I

    iput v1, p0, Lg/g;->b:F

    iput v1, p0, Lg/g;->k:F

    return-void
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lg/g;->a:I

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lg/g;->c:I

    iget p1, p0, Lg/g;->c:I

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    iput v0, p0, Lg/g;->c:I

    :cond_0
    iget p1, p0, Lg/g;->c:I

    new-array p1, p1, [F

    iput-object p1, p0, Lg/g;->d:[F

    iget p1, p0, Lg/g;->c:I

    new-array p1, p1, [J

    iput-object p1, p0, Lg/g;->e:[J

    iget p1, p0, Lg/g;->c:I

    new-array p1, p1, [F

    iput-object p1, p0, Lg/g;->f:[F

    invoke-virtual {p0}, Lg/g;->a()V

    return-void
.end method
