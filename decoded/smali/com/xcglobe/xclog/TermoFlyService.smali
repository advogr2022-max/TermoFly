.class public Lcom/xcglobe/xclog/TermoFlyService;
.super Landroid/app/Service;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field private static f:Lcom/xcglobe/xclog/TermoFlyService;


# instance fields
.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0c0105

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/TermoFlyService;->a:Ljava/lang/String;

    const v0, 0x7f0c0158

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/TermoFlyService;->b:Ljava/lang/String;

    const v0, 0x7f0c009d

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/TermoFlyService;->c:Ljava/lang/String;

    const v0, 0x7f0c0157

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/TermoFlyService;->d:Ljava/lang/String;

    const v0, 0x7f0c0042

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/TermoFlyService;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xcglobe/xclog/TermoFlyService;)Landroid/app/Notification;
    .locals 0

    invoke-direct {p0}, Lcom/xcglobe/xclog/TermoFlyService;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 2

    sget v0, Lb/a;->a:I

    if-lez v0, :cond_0

    sget-object p0, Lcom/xcglobe/xclog/TermoFlyService;->e:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {}, Lm/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "REC: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lm/g;->e()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/l;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xcglobe/xclog/TermoFlyService;->a:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_2
    invoke-static {}, Lm/g;->g()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/xcglobe/xclog/TermoFlyService;->b:Ljava/lang/String;

    return-object p0

    :cond_3
    invoke-static {}, Lm/d;->c()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/xcglobe/xclog/TermoFlyService;->c:Ljava/lang/String;

    return-object p0

    :cond_4
    sget-object p0, Lcom/xcglobe/xclog/TermoFlyService;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static a()V
    .locals 4

    sget-object v0, Lcom/xcglobe/xclog/TermoFlyService;->f:Lcom/xcglobe/xclog/TermoFlyService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xcglobe/xclog/TermoFlyService;->f:Lcom/xcglobe/xclog/TermoFlyService;

    iget-object v0, v0, Lcom/xcglobe/xclog/TermoFlyService;->g:Landroid/os/Handler;

    sget-object v1, Lcom/xcglobe/xclog/TermoFlyService;->f:Lcom/xcglobe/xclog/TermoFlyService;

    iget-object v1, v1, Lcom/xcglobe/xclog/TermoFlyService;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private b()Landroid/app/Notification;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xcglobe/xclog/ActivityMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v1}, Lcom/xcglobe/xclog/TermoFlyService;->a(Z)Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const-string v2, "my_channel_01"

    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "TermoFly"

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/xcglobe/xclog/TermoFlyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f060024

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/support/v4/a/e$b;

    invoke-direct {v2, p0}, Landroid/support/v4/a/e$b;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/a/e$b;->a(Z)Landroid/support/v4/a/e$b;

    const v3, 0x7f0c000d

    invoke-virtual {p0, v3}, Lcom/xcglobe/xclog/TermoFlyService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/a/e$b;->a(Ljava/lang/CharSequence;)Landroid/support/v4/a/e$b;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/a/e$b;->b(Ljava/lang/CharSequence;)Landroid/support/v4/a/e$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e$b;->a(Landroid/app/PendingIntent;)Landroid/support/v4/a/e$b;

    move-result-object v0

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e$b;->a(I)Landroid/support/v4/a/e$b;

    invoke-virtual {v2}, Landroid/support/v4/a/e$b;->a()Landroid/app/Notification;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p1, "Service binding..."

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    const-string v0, "TermoFlyService.onCreate()"

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->g(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "TermoFlyService.onDestroy()"

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->g(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    sput-object p0, Lcom/xcglobe/xclog/TermoFlyService;->f:Lcom/xcglobe/xclog/TermoFlyService;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.xcglobe.action.startservice"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xcglobe/xclog/TermoFlyService;->g:Landroid/os/Handler;

    new-instance p1, Lcom/xcglobe/xclog/TermoFlyService$1;

    invoke-direct {p1, p0}, Lcom/xcglobe/xclog/TermoFlyService$1;-><init>(Lcom/xcglobe/xclog/TermoFlyService;)V

    iput-object p1, p0, Lcom/xcglobe/xclog/TermoFlyService;->h:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/xcglobe/xclog/TermoFlyService;->g:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xcglobe/xclog/TermoFlyService;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.xcglobe.action.stopservice"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xcglobe/xclog/TermoFlyService;->g:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xcglobe/xclog/TermoFlyService;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p3}, Lcom/xcglobe/xclog/TermoFlyService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/TermoFlyService;->stopSelf()V

    :cond_1
    :goto_0
    return p3
.end method
