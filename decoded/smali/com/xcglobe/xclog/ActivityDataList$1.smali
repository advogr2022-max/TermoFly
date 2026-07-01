.class Lcom/xcglobe/xclog/ActivityDataList$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xcglobe/xclog/ActivityDataList;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xcglobe/xclog/ActivityDataList;


# direct methods
.method constructor <init>(Lcom/xcglobe/xclog/ActivityDataList;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityDataList$1;->a:Lcom/xcglobe/xclog/ActivityDataList;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList$1;->a:Lcom/xcglobe/xclog/ActivityDataList;

    new-instance v1, Lcom/xcglobe/xclog/ActivityDataList$1$1;

    invoke-direct {v1, p0}, Lcom/xcglobe/xclog/ActivityDataList$1$1;-><init>(Lcom/xcglobe/xclog/ActivityDataList$1;)V

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/ActivityDataList;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
