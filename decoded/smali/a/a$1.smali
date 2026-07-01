.class La/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "La/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a;


# direct methods
.method constructor <init>(La/a;)V
    .locals 0

    iput-object p1, p0, La/a$1;->a:La/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/b;La/b;)I
    .locals 2

    iget v0, p1, La/b;->k:I

    iget v1, p2, La/b;->k:I

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p1, La/b;->k:I

    iget v1, p2, La/b;->k:I

    if-ge v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p1, La/b;->f:Ltypes/g;

    invoke-virtual {v0}, Ltypes/g;->f()F

    move-result v0

    iget-object p1, p1, La/b;->f:Ltypes/g;

    invoke-virtual {p1}, Ltypes/g;->g()F

    move-result p1

    mul-float v0, v0, p1

    iget-object p1, p2, La/b;->f:Ltypes/g;

    invoke-virtual {p1}, Ltypes/g;->f()F

    move-result p1

    iget-object p2, p2, La/b;->f:Ltypes/g;

    invoke-virtual {p2}, Ltypes/g;->g()F

    move-result p2

    mul-float p1, p1, p2

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, La/b;

    check-cast p2, La/b;

    invoke-virtual {p0, p1, p2}, La/a$1;->a(La/b;La/b;)I

    move-result p1

    return p1
.end method
