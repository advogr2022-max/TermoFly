.class Lconfigs/ActivityConfigTasks$7;
.super Lmymenu/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigTasks;->a(Lconfigs/prefitems/b;)V
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

    iput-object p1, p0, Lconfigs/ActivityConfigTasks$7;->a:Lconfigs/ActivityConfigTasks;

    invoke-direct {p0, p2, p3}, Lmymenu/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lconfigs/ActivityConfigTasks$7;->a:Lconfigs/ActivityConfigTasks;

    invoke-static {p1}, Lconfigs/ActivityConfigTasks;->d(Lconfigs/ActivityConfigTasks;)V

    return v1

    :cond_1
    const-string p1, "active_wpfiles"

    iget-object v0, p0, Lconfigs/ActivityConfigTasks$7;->a:Lconfigs/ActivityConfigTasks;

    iget-object v0, v0, Lconfigs/ActivityConfigTasks;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xcglobe/xclog/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "active_wpfiles"

    iget-object v0, p0, Lconfigs/ActivityConfigTasks$7;->a:Lconfigs/ActivityConfigTasks;

    iget-object v0, v0, Lconfigs/ActivityConfigTasks;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lconfigs/ActivityConfigTasks$7;->a:Lconfigs/ActivityConfigTasks;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTasks;->a()V

    :goto_1
    return v1
.end method
