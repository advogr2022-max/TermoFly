.class Lc/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a;


# direct methods
.method constructor <init>(Lc/a;)V
    .locals 0

    iput-object p1, p0, Lc/a$4;->a:Lc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/a$4;->a:Lc/a;

    invoke-static {v0}, Lc/a;->c(Lc/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm/g;->a(Ljava/lang/String;)V

    const-string v0, "demo-task.igc"

    iget-object v1, p0, Lc/a$4;->a:Lc/a;

    invoke-static {v1}, Lc/a;->c(Lc/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lk/a;->a:Lk/a;

    if-eqz v0, :cond_0

    sget-object v0, Lk/a;->a:Lk/a;

    iget-object v0, v0, Lk/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lk/a;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lm/e;->a:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lc/a;->a(Z)Z

    return-void
.end method
