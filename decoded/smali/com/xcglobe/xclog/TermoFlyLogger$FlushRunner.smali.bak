.class Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;
.super Ljava/lang/Object;
.source "TermoFlyLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xcglobe/xclog/TermoFlyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlushRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xcglobe/xclog/TermoFlyLogger;


# direct methods
.method private constructor <init>(Lcom/xcglobe/xclog/TermoFlyLogger;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;->this$0:Lcom/xcglobe/xclog/TermoFlyLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xcglobe/xclog/TermoFlyLogger;Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;-><init>(Lcom/xcglobe/xclog/TermoFlyLogger;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;->this$0:Lcom/xcglobe/xclog/TermoFlyLogger;

    invoke-static {v0}, Lcom/xcglobe/xclog/TermoFlyLogger;->-$$Nest$fgetlock(Lcom/xcglobe/xclog/TermoFlyLogger;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;->this$0:Lcom/xcglobe/xclog/TermoFlyLogger;

    invoke-static {v1}, Lcom/xcglobe/xclog/TermoFlyLogger;->-$$Nest$fgetisLogging(Lcom/xcglobe/xclog/TermoFlyLogger;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;->this$0:Lcom/xcglobe/xclog/TermoFlyLogger;

    invoke-static {v1}, Lcom/xcglobe/xclog/TermoFlyLogger;->-$$Nest$fgetcsvWriter(Lcom/xcglobe/xclog/TermoFlyLogger;)Ljava/io/BufferedWriter;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;->this$0:Lcom/xcglobe/xclog/TermoFlyLogger;

    invoke-static {v1}, Lcom/xcglobe/xclog/TermoFlyLogger;->-$$Nest$fgetcsvWriter(Lcom/xcglobe/xclog/TermoFlyLogger;)Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    :try_start_2
    const-string v2, "TF_LOG"

    const-string v3, "Flush failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    iget-object v0, p0, Lcom/xcglobe/xclog/TermoFlyLogger$FlushRunner;->this$0:Lcom/xcglobe/xclog/TermoFlyLogger;

    invoke-static {v0}, Lcom/xcglobe/xclog/TermoFlyLogger;->-$$Nest$fgetioHandler(Lcom/xcglobe/xclog/TermoFlyLogger;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    return-void

    .line 207
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
