.class Lcom/xcglobe/xclog/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xcglobe/xclog/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ltypes/PoiPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xcglobe/xclog/h;


# direct methods
.method constructor <init>(Lcom/xcglobe/xclog/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/h$2;->a:Lcom/xcglobe/xclog/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltypes/PoiPoint;Ltypes/PoiPoint;)I
    .locals 0

    iget-object p1, p1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iget-object p2, p2, Ltypes/PoiPoint;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ltypes/PoiPoint;

    check-cast p2, Ltypes/PoiPoint;

    invoke-virtual {p0, p1, p2}, Lcom/xcglobe/xclog/h$2;->a(Ltypes/PoiPoint;Ltypes/PoiPoint;)I

    move-result p1

    return p1
.end method
