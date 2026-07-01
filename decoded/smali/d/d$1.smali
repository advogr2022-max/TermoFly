.class final Ld/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/d;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/xcglobe/xclog/App;

.field final synthetic c:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(JLcom/xcglobe/xclog/App;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-wide p1, p0, Ld/d$1;->a:J

    iput-object p3, p0, Ld/d$1;->b:Lcom/xcglobe/xclog/App;

    iput-object p4, p0, Ld/d$1;->c:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ld/d$1;->a:J

    sub-long/2addr v0, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x1388

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ld/d;->h()Ld/f;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ld/d;->h()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v0, "xxx:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    iget-object v0, p0, Ld/d$1;->b:Lcom/xcglobe/xclog/App;

    iget-object v0, p0, Ld/d$1;->c:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    return-void

    :cond_3
    invoke-static {}, Ld/d;->i()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
