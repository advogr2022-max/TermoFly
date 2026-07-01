.class Lcom/xcglobe/xclog/a$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xcglobe/xclog/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xcglobe/xclog/a;


# direct methods
.method private constructor <init>(Lcom/xcglobe/xclog/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/a$a;->a:Lcom/xcglobe/xclog/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xcglobe/xclog/a;Lcom/xcglobe/xclog/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xcglobe/xclog/a$a;-><init>(Lcom/xcglobe/xclog/a;)V

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
    iget-object p1, p0, Lcom/xcglobe/xclog/a$a;->a:Lcom/xcglobe/xclog/a;

    iget-object p1, p1, Lcom/xcglobe/xclog/a;->R:Lcom/xcglobe/xclog/a;

    const-string v0, "event"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/xcglobe/xclog/a;->a(ILandroid/content/Intent;)V

    return-void
.end method
