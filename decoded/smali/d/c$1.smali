.class Ld/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/c;->a()V
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

    iput-object p1, p0, Ld/c$1;->a:Ld/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Ld/c$1;->a:Ld/c;

    invoke-static {p1}, Ld/c;->a(Ld/c;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Ld/c$1;->a:Ld/c;

    invoke-static {p1}, Ld/c;->b(Ld/c;)V

    iget-object p1, p0, Ld/c$1;->a:Ld/c;

    iget-object p1, p1, Ld/c;->b:Landroid/app/Activity;

    iget-object v0, p0, Ld/c$1;->a:Ld/c;

    iget-object v0, v0, Ld/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
