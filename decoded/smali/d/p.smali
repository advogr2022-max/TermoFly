.class public Ld/p;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/p$a;
    }
.end annotation


# static fields
.field static a:Ld/p$a; = null

.field static b:Ljava/lang/Thread; = null

.field static c:Z = false

.field static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Ld/p;->d:Z

    :try_start_0
    sget-object v0, Ld/p;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Ld/p;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Ld/l;)V
    .locals 2

    const-string v0, "external_devmodel"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ld/p;->d:Z

    sget-object v0, Ld/p;->a:Ld/p$a;

    if-nez v0, :cond_1

    sget-boolean v0, Ld/p;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ld/p$a;

    invoke-direct {v0, p0}, Ld/p$a;-><init>(Ld/l;)V

    sput-object v0, Ld/p;->a:Ld/p$a;

    new-instance p0, Ljava/lang/Thread;

    sget-object v0, Ld/p;->a:Ld/p$a;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Ld/p;->b:Ljava/lang/Thread;

    sget-object p0, Ld/p;->b:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method static synthetic b()V
    .locals 0

    invoke-static {}, Ld/p;->c()V

    return-void
.end method

.method public static b(Ld/l;)V
    .locals 0

    invoke-static {p0}, Ld/p;->a(Ld/l;)V

    return-void
.end method

.method private static c()V
    .locals 2

    invoke-static {}, Lcom/xcglobe/xclog/ActivityMain;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ld/p$1;

    invoke-direct {v1}, Ld/p$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
