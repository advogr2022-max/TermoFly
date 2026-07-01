.class public final Landroid/support/v4/a/m;
.super Landroid/support/v4/a/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/m$b;,
        Landroid/support/v4/a/m$d;,
        Landroid/support/v4/a/m$c;,
        Landroid/support/v4/a/m$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/support/v4/a/o$a$a;

.field private static final h:Landroid/support/v4/a/m$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/CharSequence;

.field private final d:[Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Landroid/os/Bundle;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/a/m$b;

    invoke-direct {v0}, Landroid/support/v4/a/m$b;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/a/m;->h:Landroid/support/v4/a/m$a;

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/a/m$d;

    invoke-direct {v0}, Landroid/support/v4/a/m$d;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/a/m$c;

    invoke-direct {v0}, Landroid/support/v4/a/m$c;-><init>()V

    goto :goto_0

    :goto_1
    new-instance v0, Landroid/support/v4/a/m$1;

    invoke-direct {v0}, Landroid/support/v4/a/m$1;-><init>()V

    sput-object v0, Landroid/support/v4/a/m;->a:Landroid/support/v4/a/o$a$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/m;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/m;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/a/m;->g:Ljava/util/Set;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/a/m;->e:Z

    return v0
.end method

.method public f()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/m;->f:Landroid/os/Bundle;

    return-object v0
.end method
