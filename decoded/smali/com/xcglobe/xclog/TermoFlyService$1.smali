.class Lcom/xcglobe/xclog/TermoFlyService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xcglobe/xclog/TermoFlyService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xcglobe/xclog/TermoFlyService;


# direct methods
.method constructor <init>(Lcom/xcglobe/xclog/TermoFlyService;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/TermoFlyService$1;->a:Lcom/xcglobe/xclog/TermoFlyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyService$1;->a:Lcom/xcglobe/xclog/TermoFlyService;

    iget-object v1, p0, Lcom/xcglobe/xclog/TermoFlyService$1;->a:Lcom/xcglobe/xclog/TermoFlyService;

    invoke-static {v1}, Lcom/xcglobe/xclog/TermoFlyService;->a(Lcom/xcglobe/xclog/TermoFlyService;)Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/xcglobe/xclog/TermoFlyService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
