.class public Landroid/support/v4/a/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field A:Landroid/os/Bundle;

.field B:I

.field C:I

.field D:Landroid/app/Notification;

.field E:Landroid/widget/RemoteViews;

.field F:Landroid/widget/RemoteViews;

.field G:Landroid/widget/RemoteViews;

.field H:Ljava/lang/String;

.field I:I

.field J:Ljava/lang/String;

.field K:J

.field public L:Landroid/app/Notification;

.field public M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private N:I

.field public a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/CharSequence;

.field public i:I

.field j:I

.field k:Z

.field public l:Z

.field public m:Landroid/support/v4/a/e$l;

.field public n:Ljava/lang/CharSequence;

.field public o:[Ljava/lang/CharSequence;

.field p:I

.field q:I

.field r:Z

.field s:Ljava/lang/String;

.field t:Z

.field u:Ljava/lang/String;

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/a/e$a;",
            ">;"
        }
    .end annotation
.end field

.field w:Z

.field x:Z

.field y:Z

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/a/e$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/e$b;->k:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/e$b;->v:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/e$b;->w:Z

    iput v0, p0, Landroid/support/v4/a/e$b;->B:I

    iput v0, p0, Landroid/support/v4/a/e$b;->C:I

    iput v0, p0, Landroid/support/v4/a/e$b;->I:I

    iput v0, p0, Landroid/support/v4/a/e$b;->N:I

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Landroid/support/v4/a/e$b;->L:Landroid/app/Notification;

    iput-object p1, p0, Landroid/support/v4/a/e$b;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/a/e$b;->H:Ljava/lang/String;

    iget-object p1, p0, Landroid/support/v4/a/e$b;->L:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/app/Notification;->when:J

    iget-object p1, p0, Landroid/support/v4/a/e$b;->L:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    iput v0, p0, Landroid/support/v4/a/e$b;->j:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/a/e$b;->M:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/a/e$b;)I
    .locals 0

    iget p0, p0, Landroid/support/v4/a/e$b;->N:I

    return p0
.end method

.method private a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v4/a/e$b;->L:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    :goto_0
    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_1

    :cond_0
    iget-object p2, p0, Landroid/support/v4/a/e$b;->L:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method protected static c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 2

    sget-object v0, Landroid/support/v4/a/e;->a:Landroid/support/v4/a/e$k;

    invoke-virtual {p0}, Landroid/support/v4/a/e$b;->b()Landroid/support/v4/a/e$c;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/a/e$k;->a(Landroid/support/v4/a/e$b;Landroid/support/v4/a/e$c;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/v4/a/e$b;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/e$b;->L:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroid/support/v4/a/e$b;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/a/e$b;->d:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/a/e$b;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/a/e$b;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/a/e$b;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Z)Landroid/support/v4/a/e$b;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/a/e$b;->a(IZ)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/a/e$b;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/a/e$b;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/a/e$b;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected b()Landroid/support/v4/a/e$c;
    .locals 1

    new-instance v0, Landroid/support/v4/a/e$c;

    invoke-direct {v0}, Landroid/support/v4/a/e$c;-><init>()V

    return-object v0
.end method
