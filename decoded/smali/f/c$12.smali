.class Lf/c$12;
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
.field final synthetic a:Z

.field final synthetic b:Lf/c;


# direct methods
.method constructor <init>(Lf/c;Z)V
    .locals 0

    iput-object p1, p0, Lf/c$12;->b:Lf/c;

    iput-boolean p2, p0, Lf/c$12;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lf/c$12;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/c$12;->b:Lf/c;

    iget-object p1, p1, Lf/c;->a:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lf/c$12;->b:Lf/c;

    iget-object v1, v1, Lf/c;->a:Landroid/app/Activity;

    const-class v2, Lcom/xcglobe/xclog/ActivityFlights;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lc/a;->b()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lf/c$12;->b:Lf/c;

    iget-object p1, p1, Lf/c;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->b(Landroid/app/Activity;)V

    :goto_0
    iget-object p1, p0, Lf/c$12;->b:Lf/c;

    iget-object p1, p1, Lf/c;->b:Lcom/xcglobe/xclog/App;

    iget-object p1, p0, Lf/c$12;->b:Lf/c;

    iget-object p1, p1, Lf/c;->c:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    iget-object p1, p0, Lf/c$12;->b:Lf/c;

    invoke-virtual {p1}, Lf/c;->dismiss()V

    return-void
.end method
