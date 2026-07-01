.class Ld/c$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/c;


# direct methods
.method constructor <init>(Ld/c;)V
    .locals 0

    iput-object p1, p0, Ld/c$6;->a:Ld/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Ld/c$6;->a:Ld/c;

    invoke-static {p1}, Ld/c;->b(Ld/c;)V

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x11

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "external_devmodel"

    invoke-static {p2}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;)I

    move-result p2

    iget-object p3, p0, Ld/c$6;->a:Ld/c;

    iget-object p3, p3, Ld/c;->b:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Ld/c$6;->a:Ld/c;

    invoke-static {p4}, Ld/c;->c(Ld/c;)Ld/n;

    move-result-object p4

    iget-object p5, p0, Ld/c$6;->a:Ld/c;

    iget-object p5, p5, Ld/c;->b:Landroid/app/Activity;

    invoke-static {p3, p2, p1, p4, p5}, Ld/d;->a(Landroid/content/Context;ILjava/lang/String;Ld/n;Landroid/app/Activity;)V

    iget-object p1, p0, Ld/c$6;->a:Ld/c;

    iget-object p1, p1, Ld/c;->a:Lcom/xcglobe/xclog/App;

    iget-object p1, p0, Ld/c$6;->a:Ld/c;

    iget-object p1, p1, Ld/c;->c:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    return-void
.end method
