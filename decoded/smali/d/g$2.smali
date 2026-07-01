.class Ld/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ld/g;


# direct methods
.method constructor <init>(Ld/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld/g$2;->b:Ld/g;

    iput-object p2, p0, Ld/g$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "wait to reconnect..."

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    sget-object v0, Ld/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld/d;->a:Ljava/lang/Object;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Ld/g$2;->b:Ld/g;

    invoke-static {v0}, Ld/g;->b(Ld/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/g$2;->b:Ld/g;

    iget-object v1, p0, Ld/g$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/g;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "no more reconnect."

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
