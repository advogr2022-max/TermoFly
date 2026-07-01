.class Ld/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/m;


# direct methods
.method constructor <init>(Ld/m;)V
    .locals 0

    iput-object p1, p0, Ld/m$1;->a:Ld/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting looper..., state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/m;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/m$1;->a:Ld/m;

    invoke-static {v0}, Ld/m;->a(Ld/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "terminating"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ld/m;->j()I

    move-result v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2710

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ld/m$1;->a:Ld/m;

    invoke-static {v0}, Ld/m;->b(Ld/m;)J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ld/m$1;->a:Ld/m;

    invoke-static {v2}, Ld/m;->b(Ld/m;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_6

    const-string v0, "disconnecting (timeLastUpdate>MAX_UNRESPONSIVE_TIME"

    :goto_0
    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/m$1;->a:Ld/m;

    invoke-static {v0}, Ld/m;->c(Ld/m;)V

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Ld/m;->j()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v6, 0x3e8

    if-eq v0, v1, :cond_4

    invoke-static {}, Ld/m;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Ld/m;->j()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/m;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/m$1;->a:Ld/m;

    iget-object v1, p0, Ld/m$1;->a:Ld/m;

    invoke-static {v1}, Ld/m;->e(Ld/m;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ld/m;->a(Ld/m;Ljava/lang/String;Z)V

    const-wide/32 v4, 0xea60

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0xc8

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/m;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v8, p0, Ld/m$1;->a:Ld/m;

    invoke-static {v8}, Ld/m;->d(Ld/m;)J

    move-result-wide v8

    cmp-long v10, v8, v2

    if-lez v10, :cond_5

    iget-object v2, p0, Ld/m$1;->a:Ld/m;

    invoke-static {v2}, Ld/m;->d(Ld/m;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_5

    const-string v0, "disconnecting (timeStartSearching>MAX_SEARCHING_TIME"

    goto/16 :goto_0

    :cond_5
    move-wide v4, v6

    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waiting for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/m;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/m$1;->a:Ld/m;

    invoke-static {v0}, Ld/m;->f(Ld/m;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
