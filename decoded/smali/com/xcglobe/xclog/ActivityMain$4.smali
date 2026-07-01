.class Lcom/xcglobe/xclog/ActivityMain$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xcglobe/xclog/ActivityMain;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xcglobe/xclog/ActivityMain;


# direct methods
.method constructor <init>(Lcom/xcglobe/xclog/ActivityMain;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityMain$4;->a:Lcom/xcglobe/xclog/ActivityMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/xcglobe/xclog/ActivityMain$4;->a:Lcom/xcglobe/xclog/ActivityMain;

    iget-object p2, p2, Lcom/xcglobe/xclog/ActivityMain;->Q:Lcom/xcglobe/xclog/App;

    check-cast p1, Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object p2

    const-class v0, Lconfigs/ActivityConfigDataSources;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "unmarkall"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/xcglobe/xclog/ActivityMain$4;->a:Lcom/xcglobe/xclog/ActivityMain;

    invoke-virtual {p2, p1}, Lcom/xcglobe/xclog/ActivityMain;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
