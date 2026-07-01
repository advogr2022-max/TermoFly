.class Lconfigs/ActivityConfigTasks$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigTasks;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigTasks;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigTasks;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigTasks$9;->a:Lconfigs/ActivityConfigTasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lconfigs/ActivityConfigTasks$9;->a:Lconfigs/ActivityConfigTasks;

    iget-object p1, p1, Lconfigs/ActivityConfigTasks;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "waypoints/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lconfigs/ActivityConfigTasks$9;->a:Lconfigs/ActivityConfigTasks;

    iget-object p2, p2, Lconfigs/ActivityConfigTasks;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "active_wpfiles"

    iget-object p2, p0, Lconfigs/ActivityConfigTasks$9;->a:Lconfigs/ActivityConfigTasks;

    iget-object p2, p2, Lconfigs/ActivityConfigTasks;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lconfigs/ActivityConfigTasks$9;->a:Lconfigs/ActivityConfigTasks;

    const/4 p2, 0x0

    iput-object p2, p1, Lconfigs/ActivityConfigTasks;->c:Ljava/lang/String;

    iget-object p1, p0, Lconfigs/ActivityConfigTasks$9;->a:Lconfigs/ActivityConfigTasks;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTasks;->a()V

    :cond_0
    return-void
.end method
