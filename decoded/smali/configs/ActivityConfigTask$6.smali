.class Lconfigs/ActivityConfigTask$6;
.super Lmymenu/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigTask;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigTask;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigTask$6;->a:Lconfigs/ActivityConfigTask;

    invoke-direct {p0, p2, p3}, Lmymenu/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget-object p1, p0, Lconfigs/ActivityConfigTask$6;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->f()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lconfigs/ActivityConfigTask$6;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->e()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lconfigs/ActivityConfigTask$6;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->i()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lconfigs/ActivityConfigTask$6;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->o()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lconfigs/ActivityConfigTask$6;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->n()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lconfigs/ActivityConfigTask$6;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->m()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
