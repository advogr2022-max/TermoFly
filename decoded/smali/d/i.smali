.class public Ld/i;
.super Ld/f;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/i$a;
    }
.end annotation


# static fields
.field private static j:I

.field private static q:Ld/b;


# instance fields
.field c:Landroid/content/Context;

.field d:Ld/i$a;

.field private final e:J

.field private final f:J

.field private final g:J

.field private h:Ljava/lang/String;

.field private i:Landroid/bluetooth/BluetoothGatt;

.field private k:J

.field private final l:Landroid/os/Handler;

.field private m:Z

.field private n:J

.field private o:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private p:Ljava/lang/StringBuilder;

.field private r:I

.field private s:J

.field private t:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/b;

    invoke-direct {v0}, Ld/b;-><init>()V

    sput-object v0, Ld/i;->q:Ld/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/n;)V
    .locals 4

    invoke-direct {p0}, Ld/f;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Ld/i;->e:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Ld/i;->f:J

    iput-wide v0, p0, Ld/i;->g:J

    new-instance v0, Ld/i$a;

    invoke-direct {v0, p0}, Ld/i$a;-><init>(Ld/i;)V

    iput-object v0, p0, Ld/i;->d:Ld/i$a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/i;->k:J

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Ld/i;->l:Landroid/os/Handler;

    const/4 v2, 0x0

    iput-boolean v2, p0, Ld/i;->m:Z

    iput-wide v0, p0, Ld/i;->n:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Ld/i;->p:Ljava/lang/StringBuilder;

    iput v2, p0, Ld/i;->r:I

    iput-wide v0, p0, Ld/i;->s:J

    new-instance v0, Ld/i$1;

    invoke-direct {v0, p0}, Ld/i$1;-><init>(Ld/i;)V

    iput-object v0, p0, Ld/i;->t:Ljava/lang/Runnable;

    iput-boolean v2, p0, Ld/i;->m:Z

    const-string v0, "constructor SensDeviceFlysys"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iput-object p2, p0, Ld/i;->a:Ld/n;

    iput-object p1, p0, Ld/i;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Ld/i;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    iget-object p0, p0, Ld/i;->i:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic a(Ld/i;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    iput-object p1, p0, Ld/i;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic a(Ld/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/i;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ld/i;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    iput-object p1, p0, Ld/i;->h:Ljava/lang/String;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ld/i;->k:J

    const/4 v0, 0x0

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Ld/i;->c:Landroid/content/Context;

    iget-object v1, p0, Ld/i;->d:Ld/i$a;

    invoke-virtual {p1, v0, p2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Ld/i;->l()V

    goto :goto_0

    :cond_1
    iput p2, p0, Ld/i;->r:I

    iget-object v1, p0, Ld/i;->i:Landroid/bluetooth/BluetoothGatt;

    if-eq v1, v0, :cond_2

    invoke-virtual {p0}, Ld/i;->i()V

    :cond_2
    iput-object v0, p0, Ld/i;->i:Landroid/bluetooth/BluetoothGatt;

    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connecting. device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  gatt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ld/i;->a(I)V

    const/4 p1, 0x1

    sput p1, Ld/i;->j:I

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2}, Ld/i;->a(I)V

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ld/i;->a(I)V

    const-string p1, "BT disabled"

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic b(I)I
    .locals 0

    sput p0, Ld/i;->j:I

    return p0
.end method

.method static synthetic b(Ld/i;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    iget-object p0, p0, Ld/i;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROCESSING LINE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    sget-object v0, Ld/i;->q:Ld/b;

    invoke-virtual {v0, p1}, Ld/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Ld/i;->q:Ld/b;

    iget-boolean p1, p1, Ld/b;->m:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld/i;->a:Ld/n;

    sget-object v0, Ld/i;->q:Ld/b;

    iget v0, v0, Ld/b;->d:F

    sget-object v1, Ld/i;->q:Ld/b;

    iget v1, v1, Ld/b;->g:F

    sget-object v2, Ld/i;->q:Ld/b;

    iget-wide v2, v2, Ld/b;->h:J

    invoke-interface {p1, v0, v1, v2, v3}, Ld/n;->a(FFJ)V

    :cond_1
    sget-object p1, Ld/i;->q:Ld/b;

    iget-wide v0, p1, Ld/b;->h:J

    iput-wide v0, p0, Ld/i;->n:J

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Ld/i;->a(I)V

    return-void
.end method

.method static synthetic c(Ld/i;)V
    .locals 0

    invoke-direct {p0}, Ld/i;->k()V

    return-void
.end method

.method static synthetic d(Ld/i;)V
    .locals 0

    invoke-direct {p0}, Ld/i;->m()V

    return-void
.end method

.method static synthetic e(Ld/i;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Ld/i;->p:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic f(Ld/i;)Z
    .locals 0

    iget-boolean p0, p0, Ld/i;->m:Z

    return p0
.end method

.method static synthetic g(Ld/i;)J
    .locals 2

    iget-wide v0, p0, Ld/i;->n:J

    return-wide v0
.end method

.method static synthetic h(Ld/i;)J
    .locals 2

    iget-wide v0, p0, Ld/i;->k:J

    return-wide v0
.end method

.method static synthetic i(Ld/i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld/i;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j()I
    .locals 1

    sget v0, Ld/i;->j:I

    return v0
.end method

.method static synthetic j(Ld/i;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ld/i;->l:Landroid/os/Handler;

    return-object p0
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Ld/i;->l:Landroid/os/Handler;

    iget-object v1, p0, Ld/i;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ld/i;->l:Landroid/os/Handler;

    iget-object v1, p0, Ld/i;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private l()V
    .locals 5

    iget v0, p0, Ld/i;->r:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ld/i;->s:J

    sub-long/2addr v0, v2

    iget v2, p0, Ld/i;->r:I

    const v3, 0xea60

    mul-int v2, v2, v3

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ld/i;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/i;->r:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ld/i;->s:J

    new-instance v0, Ld/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/a;-><init>(Ld/c;)V

    const-wide/16 v1, 0x1388

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ld/a;->a(JZ)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start scan devices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Ld/i;->j:I

    invoke-virtual {p0}, Ld/i;->i()V

    const/4 v1, 0x0

    iput-object v1, p0, Ld/i;->o:Landroid/bluetooth/BluetoothGattCharacteristic;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ld/i;->n:J

    iput-wide v1, p0, Ld/i;->k:J

    invoke-virtual {p0, v0}, Ld/i;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "Terminating ble device."

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Ld/i;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/i;->m:Z

    const/4 v0, 0x4

    sput v0, Ld/i;->j:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Z
    .locals 2

    sget v0, Ld/i;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "FlySys"

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Ld/i;->i:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    const-string v0, "closing GATT"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/i;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/i;->i:Landroid/bluetooth/BluetoothGatt;

    :cond_0
    return-void
.end method
