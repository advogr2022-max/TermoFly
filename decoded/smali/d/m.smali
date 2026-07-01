.class public Ld/m;
.super Ld/f;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/m$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/util/UUID;

.field private static final j:Ljava/util/UUID;

.field private static final k:Ljava/util/UUID;

.field private static m:I

.field private static v:Ld/b;


# instance fields
.field c:Ld/m$a;

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:J

.field private l:Z

.field private n:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private o:Landroid/bluetooth/BluetoothGatt;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:J

.field private final s:Landroid/os/Handler;

.field private t:Landroid/content/Context;

.field private u:Ljava/lang/StringBuilder;

.field private w:Ljava/lang/Runnable;

.field private x:I

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000ffe0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ld/m;->i:Ljava/util/UUID;

    const-string v0, "0000ffe1-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ld/m;->j:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ld/m;->k:Ljava/util/UUID;

    const/4 v0, 0x0

    sput v0, Ld/m;->m:I

    new-instance v0, Ld/b;

    invoke-direct {v0}, Ld/b;-><init>()V

    sput-object v0, Ld/m;->v:Ld/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/n;)V
    .locals 4

    invoke-direct {p0}, Ld/f;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Ld/m;->d:J

    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Ld/m;->e:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Ld/m;->f:J

    iput-wide v0, p0, Ld/m;->g:J

    iput-wide v0, p0, Ld/m;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/m;->l:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ld/m;->q:J

    iput-wide v1, p0, Ld/m;->r:J

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Ld/m;->s:Landroid/os/Handler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Ld/m;->u:Ljava/lang/StringBuilder;

    new-instance v3, Ld/m$a;

    invoke-direct {v3, p0}, Ld/m$a;-><init>(Ld/m;)V

    iput-object v3, p0, Ld/m;->c:Ld/m$a;

    new-instance v3, Ld/m$1;

    invoke-direct {v3, p0}, Ld/m$1;-><init>(Ld/m;)V

    iput-object v3, p0, Ld/m;->w:Ljava/lang/Runnable;

    iput v0, p0, Ld/m;->x:I

    iput-wide v1, p0, Ld/m;->y:J

    iput-object p2, p0, Ld/m;->a:Ld/n;

    iput-object p1, p0, Ld/m;->t:Landroid/content/Context;

    sput v0, Ld/m;->m:I

    return-void
.end method

.method private declared-synchronized a(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    monitor-enter p0

    if-eqz p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GATTCBACK Service discovered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/d;->a(Ljava/lang/String;)V

    sget-object v1, Ld/m;->j:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Ld/m;->o:Landroid/bluetooth/BluetoothGatt;

    iput-object v0, p0, Ld/m;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object p2, Ld/m;->k:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    const/4 p1, 0x3

    sput p1, Ld/m;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 p1, 0x5

    sput p1, Ld/m;->m:I

    const-string p1, "Service discovery: unknown"

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GATTCBACK Connection state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ld/d;->a(Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    sput p2, Ld/m;->m:I

    invoke-virtual {p0, p2}, Ld/m;->a(I)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    const-string p1, "Connected to GATT server."

    :goto_0
    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    invoke-direct {p0}, Ld/m;->l()V

    const-string p1, "Disconnected from GATT server."
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x24

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Ld/m;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Ld/m;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ld/m;->b(Ljava/lang/String;)V

    iget-object v4, p0, Ld/m;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    iget-object v4, p0, Ld/m;->u:Ljava/lang/StringBuilder;

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, p0, Ld/m;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Ld/m;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ld/m;->b(Ljava/lang/String;)V

    iget-object v3, p0, Ld/m;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GATTCBACK CharacteristicChanged, len="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ld/m;->u:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ld/m;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/m;->a(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method

.method static synthetic a(Ld/m;Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ld/m;->a(Landroid/bluetooth/BluetoothGatt;II)V

    return-void
.end method

.method static synthetic a(Ld/m;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/m;->a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic a(Ld/m;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/m;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    iput-object p1, p0, Ld/m;->p:Ljava/lang/String;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ld/m;->q:J

    const/4 v1, 0x0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Ld/m;->t:Landroid/content/Context;

    iget-object v2, p0, Ld/m;->c:Ld/m$a;

    invoke-virtual {p1, v1, v0, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Ld/m;->m()V

    goto :goto_0

    :cond_1
    iput v0, p0, Ld/m;->x:I

    iget-object v2, p0, Ld/m;->o:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v1, v2}, Ld/m;->a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGatt;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ld/m;->i()V

    :cond_2
    iput-object v1, p0, Ld/m;->o:Landroid/bluetooth/BluetoothGatt;

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting. device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  gatt="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ld/m;->a(I)V

    const/4 p1, 0x1

    sput p1, Ld/m;->m:I

    if-eqz p2, :cond_6

    invoke-direct {p0}, Ld/m;->k()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Ld/m;->a(I)V

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ld/m;->a(I)V

    const-string p1, "BT disabled"

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method static synthetic a(Ld/m;)Z
    .locals 0

    iget-boolean p0, p0, Ld/m;->l:Z

    return p0
.end method

.method static synthetic b(Ld/m;)J
    .locals 2

    iget-wide v0, p0, Ld/m;->r:J

    return-wide v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Ld/m;->v:Ld/b;

    invoke-virtual {v0, p1}, Ld/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Ld/m;->v:Ld/b;

    iget-boolean p1, p1, Ld/b;->m:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld/m;->a:Ld/n;

    sget-object v0, Ld/m;->v:Ld/b;

    iget v0, v0, Ld/b;->d:F

    sget-object v1, Ld/m;->v:Ld/b;

    iget v1, v1, Ld/b;->g:F

    sget-object v2, Ld/m;->v:Ld/b;

    iget-wide v2, v2, Ld/b;->h:J

    invoke-interface {p1, v0, v1, v2, v3}, Ld/n;->a(FFJ)V

    :cond_1
    sget-object p1, Ld/m;->v:Ld/b;

    iget-boolean p1, p1, Ld/b;->l:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Ld/m;->a:Ld/n;

    sget-object p1, Ld/m;->v:Ld/b;

    iget v1, p1, Ld/b;->b:F

    sget-object p1, Ld/m;->v:Ld/b;

    iget v2, p1, Ld/b;->c:F

    sget-object p1, Ld/m;->v:Ld/b;

    iget p1, p1, Ld/b;->e:I

    int-to-short v3, p1

    sget-object p1, Ld/m;->v:Ld/b;

    iget-wide v4, p1, Ld/b;->h:J

    sget-object p1, Ld/m;->v:Ld/b;

    iget v6, p1, Ld/b;->f:I

    invoke-interface/range {v0 .. v6}, Ld/n;->a(FFSJI)V

    :cond_2
    sget-object p1, Ld/m;->v:Ld/b;

    iget-wide v0, p1, Ld/b;->h:J

    iput-wide v0, p0, Ld/m;->r:J

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Ld/m;->a(I)V

    return-void
.end method

.method static synthetic c(Ld/m;)V
    .locals 0

    invoke-direct {p0}, Ld/m;->l()V

    return-void
.end method

.method static synthetic d(Ld/m;)J
    .locals 2

    iget-wide v0, p0, Ld/m;->q:J

    return-wide v0
.end method

.method static synthetic e(Ld/m;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld/m;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Ld/m;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ld/m;->s:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Ld/m;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    iget-object p0, p0, Ld/m;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method static synthetic j()I
    .locals 1

    sget v0, Ld/m;->m:I

    return v0
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Ld/m;->s:Landroid/os/Handler;

    iget-object v1, p0, Ld/m;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ld/m;->s:Landroid/os/Handler;

    iget-object v1, p0, Ld/m;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Ld/m;->m:I

    invoke-virtual {p0}, Ld/m;->i()V

    const/4 v1, 0x0

    iput-object v1, p0, Ld/m;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ld/m;->r:J

    iput-wide v1, p0, Ld/m;->q:J

    invoke-virtual {p0, v0}, Ld/m;->a(I)V

    return-void
.end method

.method private m()V
    .locals 5

    iget v0, p0, Ld/m;->x:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ld/m;->y:J

    sub-long/2addr v0, v2

    iget v2, p0, Ld/m;->x:I

    const v3, 0xea60

    mul-int v2, v2, v3

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ld/m;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/m;->x:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ld/m;->y:J

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


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ld/m;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/m;->l:Z

    const/4 v0, 0x4

    sput v0, Ld/m;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ld/m;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Z
    .locals 2

    sget v0, Ld/m;->m:I

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

    iget-object v0, p0, Ld/m;->p:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "XCTracer"

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
    .locals 3

    iget-object v0, p0, Ld/m;->o:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    const-string v0, "closing GATT"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/m;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/m;->o:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Ld/m;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Ld/m;->o:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    iget-object v0, p0, Ld/m;->o:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Ld/m;->o:Landroid/bluetooth/BluetoothGatt;

    :cond_1
    return-void
.end method
