.class Lf/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/c;->b()V
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

    iput-object p1, p0, Lf/c$4;->a:Lf/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-static {p2}, Lm/g;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lf/c$4;->a:Lf/c;

    iget-object p2, p2, Lf/c;->b:Lcom/xcglobe/xclog/App;

    check-cast p1, Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->a(Z)V

    iget-object p1, p0, Lf/c$4;->a:Lf/c;

    iget-object p1, p1, Lf/c;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
