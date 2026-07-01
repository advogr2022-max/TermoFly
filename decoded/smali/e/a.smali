.class public Le/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field final b:I

.field c:I

.field d:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Le/a;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/a;->d:Z

    new-array v1, p1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Le/a;->a:[Ljava/lang/Object;

    iput p1, p0, Le/a;->b:I

    :goto_0
    if-ge v0, p1, :cond_0

    :try_start_0
    iget-object v1, p0, Le/a;->a:[Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Le/a;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Le/a;->c:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    iget p1, p0, Le/a;->b:I

    if-lt v0, p1, :cond_0

    iget p1, p0, Le/a;->b:I

    sub-int/2addr v0, p1

    :cond_0
    iget-object p1, p0, Le/a;->a:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    iget-object v0, p0, Le/a;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/a;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Le/a;->c:I

    return-void
.end method

.method public b()I
    .locals 1

    iget-boolean v0, p0, Le/a;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Le/a;->b:I

    goto :goto_0

    :cond_0
    iget v0, p0, Le/a;->c:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public b(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Le/a;->c:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Le/a;->a:[Ljava/lang/Object;

    iget v1, p0, Le/a;->c:I

    sub-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Le/a;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Le/a;->c:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_1

    iget p1, p0, Le/a;->b:I

    add-int/2addr v0, p1

    :cond_1
    iget-object p1, p0, Le/a;->a:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Le/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Le/a;->b:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Le/a;->b:I

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Le/a;->a:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public d()V
    .locals 3

    iget v0, p0, Le/a;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Le/a;->b:I

    if-lt v0, v2, :cond_0

    iget v2, p0, Le/a;->b:I

    sub-int/2addr v0, v2

    iget-boolean v2, p0, Le/a;->d:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Le/a;->d:Z

    :cond_0
    iput v0, p0, Le/a;->c:I

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Le/a;->c:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Le/a;->a:[Ljava/lang/Object;

    iget v1, p0, Le/a;->c:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Le/a;->a:[Ljava/lang/Object;

    iget v1, p0, Le/a;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method
