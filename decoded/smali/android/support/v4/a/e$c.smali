.class public Landroid/support/v4/a/e$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/e$b;Landroid/support/v4/a/d;)Landroid/app/Notification;
    .locals 3

    iget-object v0, p1, Landroid/support/v4/a/e$b;->m:Landroid/support/v4/a/e$l;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/a/e$b;->m:Landroid/support/v4/a/e$l;

    invoke-virtual {v0, p2}, Landroid/support/v4/a/e$l;->b(Landroid/support/v4/a/d;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Landroid/support/v4/a/d;->a()Landroid/app/Notification;

    move-result-object v1

    if-eqz v0, :cond_1

    :goto_1
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_2

    :cond_1
    iget-object v0, p1, Landroid/support/v4/a/e$b;->E:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/support/v4/a/e$b;->E:Landroid/widget/RemoteViews;

    goto :goto_1

    :cond_2
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    iget-object v0, p1, Landroid/support/v4/a/e$b;->m:Landroid/support/v4/a/e$l;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/support/v4/a/e$b;->m:Landroid/support/v4/a/e$l;

    invoke-virtual {v0, p2}, Landroid/support/v4/a/e$l;->c(Landroid/support/v4/a/d;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    iget-object v0, p1, Landroid/support/v4/a/e$b;->m:Landroid/support/v4/a/e$l;

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/support/v4/a/e$b;->m:Landroid/support/v4/a/e$l;

    invoke-virtual {p1, p2}, Landroid/support/v4/a/e$l;->d(Landroid/support/v4/a/d;)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object p1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_4
    return-object v1
.end method
