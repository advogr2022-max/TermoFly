.class Lf/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lf/b;


# direct methods
.method constructor <init>(Lf/b;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lf/b$1;->b:Lf/b;

    iput-object p2, p0, Lf/b$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lf/b$1;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xcglobe/xclog/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xcglobe/xclog/f;->a(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xcglobe.action.main"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "event"

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lf/b$1;->b:Lf/b;

    iget-object v0, v0, Lf/b;->c:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/b$1;->b:Lf/b;

    iget-object p1, p1, Lf/b;->c:Landroid/app/Activity;

    const v0, 0x7f0c0081

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c015e

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/xcglobe/xclog/l;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget-object p1, p0, Lf/b$1;->b:Lf/b;

    iget-object p1, p1, Lf/b;->a:Lcom/xcglobe/xclog/App;

    iget-object p1, p0, Lf/b$1;->b:Lf/b;

    iget-object p1, p1, Lf/b;->b:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    return-void
.end method
