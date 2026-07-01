.class Ld/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field b:J

.field final synthetic c:Ld/i;


# direct methods
.method constructor <init>(Ld/i;)V
    .locals 2

    iput-object p1, p0, Ld/i$1;->c:Ld/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Ld/i$1;->a:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Ld/i$1;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting looper..., state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/i;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-wide v0, p0, Ld/i$1;->b:J

    iget-object v2, p0, Ld/i$1;->c:Ld/i;

    invoke-static {v2}, Ld/i;->f(Ld/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "terminating, mTerminate=true!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ld/i;->j()I

    move-result v2

    const/4 v3, 0x3

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x0

    if-ne v2, v3, :cond_2

    iget-object v0, p0, Ld/i$1;->c:Ld/i;

    invoke-static {v0}, Ld/i;->g(Ld/i;)J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ld/i$1;->c:Ld/i;

    invoke-static {v2}, Ld/i;->g(Ld/i;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    const-string v0, "disconnecting (timeLastUpdate>MAX_UNRESPONSIVE_TIME"

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-wide v0, p0, Ld/i$1;->a:J

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Ld/i;->j()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    invoke-static {}, Ld/i;->j()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Ld/i;->j()I

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/i;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/i$1;->c:Ld/i;

    iget-object v1, p0, Ld/i$1;->c:Ld/i;

    invoke-static {v1}, Ld/i;->i(Ld/i;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ld/i;->a(Ld/i;Ljava/lang/String;Z)V

    const-wide/32 v0, 0xea60

    goto :goto_3

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/i;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-wide v0, p0, Ld/i$1;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, p0, Ld/i$1;->c:Ld/i;

    invoke-static {v8}, Ld/i;->h(Ld/i;)J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-lez v10, :cond_5

    iget-object v6, p0, Ld/i$1;->c:Ld/i;

    invoke-static {v6}, Ld/i;->h(Ld/i;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    const-string v0, "disconnecting (timeStartSearching>MAX_SEARCHING_TIME"

    :goto_2
    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/i$1;->c:Ld/i;

    invoke-static {v0}, Ld/i;->d(Ld/i;)V

    goto/16 :goto_0

    :cond_5
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/i;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Ld/i$1;->c:Ld/i;

    invoke-static {v2}, Ld/i;->j(Ld/i;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
