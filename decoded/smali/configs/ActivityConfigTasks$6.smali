.class Lconfigs/ActivityConfigTasks$6;
.super Lmymenu/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigTasks;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigTasks;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigTasks;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    invoke-direct {p0, p2, p3}, Lmymenu/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x14

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    iget-object p1, p1, Lconfigs/ActivityConfigTasks;->b:Ljava/lang/String;

    invoke-static {p1}, Lk/a;->a(Ljava/lang/String;)V

    sget-object p1, Lk/a;->a:Lk/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    iget-object p1, p1, Lconfigs/ActivityConfigTasks;->m:Lconfigs/a;

    invoke-static {p1}, Lb/i;->a(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object p1, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    iget-object p1, p1, Lconfigs/ActivityConfigTasks;->b:Ljava/lang/String;

    invoke-static {p1}, Lk/a;->a(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    iget-object v0, v0, Lconfigs/ActivityConfigTasks;->m:Lconfigs/a;

    const-class v2, Lcom/xcglobe/xclog/ActivityMap;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "task"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    iget-object v0, v0, Lconfigs/ActivityConfigTasks;->m:Lconfigs/a;

    invoke-virtual {v0, p1}, Lconfigs/a;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_3
    iget-object p1, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    invoke-static {p1}, Lconfigs/ActivityConfigTasks;->c(Lconfigs/ActivityConfigTasks;)V

    return v1

    :cond_4
    sget-object p1, Lk/a;->a:Lk/a;

    if-eqz p1, :cond_5

    sget-object p1, Lk/a;->a:Lk/a;

    iget-object p1, p1, Lk/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    iget-object v0, v0, Lconfigs/ActivityConfigTasks;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    iget-object p1, p1, Lconfigs/ActivityConfigTasks;->b:Ljava/lang/String;

    :goto_1
    invoke-static {p1}, Lk/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTasks;->a()V

    return v1

    :cond_6
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    iget-object v0, v0, Lconfigs/ActivityConfigTasks;->m:Lconfigs/a;

    const-class v2, Lconfigs/ActivityConfigTask;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "taskname"

    iget-object v2, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    iget-object v2, v2, Lconfigs/ActivityConfigTasks;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lconfigs/ActivityConfigTasks$6;->a:Lconfigs/ActivityConfigTasks;

    iget-object v0, v0, Lconfigs/ActivityConfigTasks;->m:Lconfigs/a;

    invoke-virtual {v0, p1}, Lconfigs/a;->startActivity(Landroid/content/Intent;)V

    return v1
.end method
