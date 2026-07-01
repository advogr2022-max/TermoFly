.class public Ltypes/b;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ltypes/b;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ltypes/b;->e:I

    const/4 v0, 0x0

    iput v0, p0, Ltypes/b;->d:F

    iput v0, p0, Ltypes/b;->c:F

    iput v0, p0, Ltypes/b;->b:F

    iput v0, p0, Ltypes/b;->a:F

    return-void
.end method

.method public a(FF)Z
    .locals 2

    iget v0, p0, Ltypes/b;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltypes/b;->e:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Ltypes/b;->a:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Ltypes/b;->a:F

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Ltypes/b;->c:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iput p1, p0, Ltypes/b;->c:F

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Ltypes/b;->b:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Ltypes/b;->d:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    iput p2, p0, Ltypes/b;->d:F

    goto :goto_3

    :cond_3
    move v1, p1

    goto :goto_3

    :cond_4
    iput p1, p0, Ltypes/b;->a:F

    iput p1, p0, Ltypes/b;->c:F

    iput p2, p0, Ltypes/b;->d:F

    :goto_2
    iput p2, p0, Ltypes/b;->b:F

    :goto_3
    return v1
.end method
