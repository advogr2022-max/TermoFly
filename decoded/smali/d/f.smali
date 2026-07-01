.class public abstract Ld/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ld/n;

.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld/f;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected a(I)V
    .locals 3

    iget v0, p0, Ld/f;->b:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Ld/f;->a:Ld/n;

    invoke-virtual {p0}, Ld/f;->d()I

    move-result v1

    invoke-virtual {p0}, Ld/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ld/n;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Ld/f;->b:I

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Ld/f;->a:Ld/n;

    invoke-virtual {p0}, Ld/f;->d()I

    move-result v1

    invoke-interface {v0, v1}, Ld/n;->a(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Ld/f;->a:Ld/n;

    iput p1, p0, Ld/f;->b:I

    invoke-interface {v0, p1}, Ld/n;->b(I)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract b()Z
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()Z
.end method
