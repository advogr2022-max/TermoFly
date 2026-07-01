.class public Lcom/xcglobe/xclog/i;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x0

.field static b:J = 0x0L

.field private static c:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a()V
    .locals 3

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const-string v1, "MyKeyguardLock"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "MyWakeLock"

    const v2, 0x3000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x2

    sput v0, Lcom/xcglobe/xclog/i;->c:I

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    return-void
.end method

.method public static a(J)V
    .locals 5

    sget v0, Lcom/xcglobe/xclog/i;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-wide v0, Lcom/xcglobe/xclog/i;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x2710

    add-long/2addr p0, v0

    sput-wide p0, Lcom/xcglobe/xclog/i;->b:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/xcglobe/xclog/i;->b:J

    cmp-long v2, p0, v0

    if-lez v2, :cond_2

    invoke-static {}, Lcom/xcglobe/xclog/i;->b()V

    goto :goto_0

    :cond_1
    sget p0, Lcom/xcglobe/xclog/i;->a:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    sget-object p0, Lm/g;->C:Lm/h;

    iget p0, p0, Lm/h;->a:I

    if-lez p0, :cond_2

    invoke-static {}, Lcom/xcglobe/xclog/i;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static b()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/xcglobe/xclog/i;->c:I

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    return-void
.end method
