.class Lconfigs/a$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lconfigs/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lconfigs/a;


# direct methods
.method private constructor <init>(Lconfigs/a;)V
    .locals 0

    iput-object p1, p0, Lconfigs/a$a;->a:Lconfigs/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lconfigs/a;Lconfigs/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lconfigs/a$a;-><init>(Lconfigs/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "com.xcglobe.action.main"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lconfigs/a$a;->a:Lconfigs/a;

    iget-object p1, p1, Lconfigs/a;->m:Lconfigs/a;

    const-string v0, "event"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lconfigs/a;->a(ILandroid/content/Intent;)V

    return-void
.end method
