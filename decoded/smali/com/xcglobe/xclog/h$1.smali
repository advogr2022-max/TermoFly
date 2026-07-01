.class Lcom/xcglobe/xclog/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xcglobe/xclog/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/xcglobe/xclog/h$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xcglobe/xclog/h;


# direct methods
.method constructor <init>(Lcom/xcglobe/xclog/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/h$1;->a:Lcom/xcglobe/xclog/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xcglobe/xclog/h$a;Lcom/xcglobe/xclog/h$a;)I
    .locals 0

    iget p1, p1, Lcom/xcglobe/xclog/h$a;->b:I

    iget p2, p2, Lcom/xcglobe/xclog/h$a;->b:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/xcglobe/xclog/h$a;

    check-cast p2, Lcom/xcglobe/xclog/h$a;

    invoke-virtual {p0, p1, p2}, Lcom/xcglobe/xclog/h$1;->a(Lcom/xcglobe/xclog/h$a;Lcom/xcglobe/xclog/h$a;)I

    move-result p1

    return p1
.end method
