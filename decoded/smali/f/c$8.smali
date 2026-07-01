.class Lf/c$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/c;->b(Ldisplay/vmap/ViewVmp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/c;


# direct methods
.method constructor <init>(Lf/c;)V
    .locals 0

    iput-object p1, p0, Lf/c$8;->a:Lf/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lf/c$8;->a:Lf/c;

    iget-object p1, p1, Lf/c;->a:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lf/c$8;->a:Lf/c;

    iget-object v1, v1, Lf/c;->a:Landroid/app/Activity;

    const-class v2, Lcom/xcglobe/xclog/ActivityPocket;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lf/c$8;->a:Lf/c;

    iget-object p1, p1, Lf/c;->b:Lcom/xcglobe/xclog/App;

    iget-object p1, p0, Lf/c$8;->a:Lf/c;

    iget-object p1, p1, Lf/c;->c:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    iget-object p1, p0, Lf/c$8;->a:Lf/c;

    invoke-virtual {p1}, Lf/c;->dismiss()V

    return-void
.end method
