.class Ld/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/j;


# direct methods
.method constructor <init>(Ld/j;)V
    .locals 0

    iput-object p1, p0, Ld/j$1;->a:Ld/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "starting looper..."

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v0}, Ld/j;->a(Ld/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "terminating"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ld/j;->k()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x2710

    const-wide/16 v10, 0xc8

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v0}, Ld/j;->b(Ld/j;)I

    move-result v0

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v0}, Ld/j;->b(Ld/j;)I

    move-result v0

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    const-string v3, "BLE_UseQNH_Nav=1"

    :goto_0
    invoke-virtual {v0, v3}, Ld/j;->b(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v0}, Ld/j;->b(Ld/j;)I

    move-result v0

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    const-string v3, "BLE_UseQNH_Mov=1"

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writting setings: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v3}, Ld/j;->b(Ld/j;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    invoke-virtual {v0}, Ld/j;->j()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move-wide v6, v10

    :goto_3
    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v0}, Ld/j;->c(Ld/j;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v2}, Ld/j;->c(Ld/j;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-lez v2, :cond_5

    const-string v0, "disconnecting (timeLastUpdate>MAX_UNRESPONSIVE_TIME"

    :goto_4
    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v0}, Ld/j;->d(Ld/j;)V

    goto/16 :goto_6

    :cond_5
    move-wide v8, v6

    goto/16 :goto_6

    :cond_6
    invoke-static {}, Ld/j;->k()I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-static {}, Ld/j;->k()I

    move-result v0

    if-ne v0, v3, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {}, Ld/j;->k()I

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/j;->k()I

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

    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    iget-object v1, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v1}, Ld/j;->f(Ld/j;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ld/j;->a(Ld/j;Ljava/lang/String;Z)V

    const-wide/32 v8, 0xea60

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    move-wide v8, v10

    goto :goto_6

    :cond_9
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/j;->k()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v0}, Ld/j;->e(Ld/j;)J

    move-result-wide v10

    cmp-long v0, v10, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v0}, Ld/j;->e(Ld/j;)J

    move-result-wide v0

    sub-long/2addr v3, v0

    cmp-long v0, v3, v8

    if-lez v0, :cond_5

    const-string v0, "disconnecting (timeStartSearching>MAX_SEARCHING_TIME"

    goto/16 :goto_4

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waiting for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/j$1;->a:Ld/j;

    invoke-static {v0}, Ld/j;->g(Ld/j;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
