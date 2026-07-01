.class public Ld/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/o$a;
    }
.end annotation


# static fields
.field static a:Ld/o$a; = null

.field static b:Ljava/lang/Thread; = null

.field static c:Z = false

.field static d:Z

.field static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Ld/o;->d:Z

    :try_start_0
    sget-object v0, Ld/o;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Ld/o;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ld/k;I)V
    .locals 2

    invoke-static {}, Ld/o;->a()V

    const-string v0, "external_devmodel"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ld/o;->d:Z

    sget-object v0, Ld/o;->a:Ld/o$a;

    if-nez v0, :cond_1

    sget-boolean v0, Ld/o;->d:Z

    if-eqz v0, :cond_1

    sput p1, Ld/o;->e:I

    new-instance p1, Ld/o$a;

    invoke-direct {p1, p0}, Ld/o$a;-><init>(Ld/k;)V

    sput-object p1, Ld/o;->a:Ld/o$a;

    new-instance p0, Ljava/lang/Thread;

    sget-object p1, Ld/o;->a:Ld/o$a;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Ld/o;->b:Ljava/lang/Thread;

    sget-object p0, Ld/o;->b:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
