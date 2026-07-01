.class final Ld/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/p;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "usb"

    sget-object v2, Lm/g;->O:Ld/e;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v2, v4}, Ld/d;->a(Landroid/content/Context;ILjava/lang/String;Ld/n;Landroid/app/Activity;)V

    return-void
.end method
