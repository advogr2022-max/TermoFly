.class public Landroid/support/v4/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/e$a;,
        Landroid/support/v4/a/e$l;,
        Landroid/support/v4/a/e$b;,
        Landroid/support/v4/a/e$i;,
        Landroid/support/v4/a/e$h;,
        Landroid/support/v4/a/e$g;,
        Landroid/support/v4/a/e$f;,
        Landroid/support/v4/a/e$e;,
        Landroid/support/v4/a/e$d;,
        Landroid/support/v4/a/e$j;,
        Landroid/support/v4/a/e$c;,
        Landroid/support/v4/a/e$k;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/a/e$k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/a/e$i;

    invoke-direct {v0}, Landroid/support/v4/a/e$i;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/e$k;

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/a/e$h;

    invoke-direct {v0}, Landroid/support/v4/a/e$h;-><init>()V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/a/e$g;

    invoke-direct {v0}, Landroid/support/v4/a/e$g;-><init>()V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/a/e$f;

    invoke-direct {v0}, Landroid/support/v4/a/e$f;-><init>()V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/a/e$e;

    invoke-direct {v0}, Landroid/support/v4/a/e$e;-><init>()V

    goto :goto_0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/a/e$d;

    invoke-direct {v0}, Landroid/support/v4/a/e$d;-><init>()V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/support/v4/a/e$j;

    invoke-direct {v0}, Landroid/support/v4/a/e$j;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Landroid/support/v4/a/k;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/support/v4/a/c;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/c;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/a/e$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/e$a;

    invoke-interface {p0, v0}, Landroid/support/v4/a/c;->a(Landroid/support/v4/a/j$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
