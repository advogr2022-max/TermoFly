.class public Ld/j;
.super Ld/f;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static L:I = 0x0

.field public static c:I = 0x1

.field public static d:I = 0x2

.field public static e:I = 0x3

.field public static f:I = 0x4

.field public static g:I

.field public static h:I

.field public static i:F

.field public static j:F

.field public static k:I

.field public static l:F

.field public static m:F

.field public static n:J

.field private static final t:Ljava/util/UUID;

.field private static final u:Ljava/util/UUID;

.field private static final v:Ljava/util/UUID;

.field private static final w:Ljava/util/UUID;

.field private static final x:Ljava/util/UUID;

.field private static z:I


# instance fields
.field private A:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private B:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private C:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private D:Landroid/bluetooth/BluetoothGatt;

.field private E:Ljava/lang/String;

.field private F:I

.field private G:J

.field private H:J

.field private final I:Landroid/os/Handler;

.field private J:Landroid/content/Context;

.field private K:Z

.field private M:Ljava/lang/Runnable;

.field private final N:Landroid/bluetooth/BluetoothGattCallback;

.field private O:I

.field private P:J

.field private final o:J

.field private final p:J

.field private final q:J

.field private final r:J

.field private final s:J

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "aba27100-143b-4b81-a444-edcd0000f020"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ld/j;->t:Ljava/util/UUID;

    const-string v0, "aba27100-143b-4b81-a444-edcd0000f010"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ld/j;->u:Ljava/util/UUID;

    const-string v0, "aba27100-143b-4b81-a444-edcd0000f022"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ld/j;->v:Ljava/util/UUID;

    const-string v0, "aba27100-143b-4b81-a444-edcd0000f023"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ld/j;->w:Ljava/util/UUID;

    const-string v0, "aba27100-143b-4b81-a444-edcd0000f012"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ld/j;->x:Ljava/util/UUID;

    const/4 v0, 0x0

    sput v0, Ld/j;->z:I

    sput v0, Ld/j;->g:I

    sput v0, Ld/j;->L:I

    sput v0, Ld/j;->h:I

    const-wide/16 v0, 0x0

    sput-wide v0, Ld/j;->n:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/n;)V
    .locals 4

    invoke-direct {p0}, Ld/f;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Ld/j;->o:J

    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Ld/j;->p:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Ld/j;->q:J

    iput-wide v0, p0, Ld/j;->r:J

    iput-wide v0, p0, Ld/j;->s:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/j;->y:Z

    iput v0, p0, Ld/j;->F:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ld/j;->G:J

    iput-wide v1, p0, Ld/j;->H:J

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Ld/j;->I:Landroid/os/Handler;

    iput-boolean v0, p0, Ld/j;->K:Z

    new-instance v3, Ld/j$1;

    invoke-direct {v3, p0}, Ld/j$1;-><init>(Ld/j;)V

    iput-object v3, p0, Ld/j;->M:Ljava/lang/Runnable;

    new-instance v3, Ld/j$2;

    invoke-direct {v3, p0}, Ld/j$2;-><init>(Ld/j;)V

    iput-object v3, p0, Ld/j;->N:Landroid/bluetooth/BluetoothGattCallback;

    iput v0, p0, Ld/j;->O:I

    iput-wide v1, p0, Ld/j;->P:J

    iput-object p2, p0, Ld/j;->a:Ld/n;

    iput-object p1, p0, Ld/j;->J:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Ld/j;I)I
    .locals 0

    iput p1, p0, Ld/j;->F:I

    return p1
.end method

.method static synthetic a(Ld/j;J)J
    .locals 0

    iput-wide p1, p0, Ld/j;->H:J

    return-wide p1
.end method

.method static synthetic a(Ld/j;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    iput-object p1, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic a(Ld/j;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    iput-object p1, p0, Ld/j;->A:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic a(Ld/j;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/j;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    iput-object p1, p0, Ld/j;->E:Ljava/lang/String;

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

    iput-wide v1, p0, Ld/j;->G:J

    const/4 v1, 0x0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Ld/j;->J:Landroid/content/Context;

    iget-object v2, p0, Ld/j;->N:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v1, v0, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Ld/j;->s()V

    goto :goto_0

    :cond_1
    iput v0, p0, Ld/j;->O:I

    iget-object v2, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Ld/j;->i()V

    :cond_2
    iput-object v1, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

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

    invoke-virtual {p0, p1}, Ld/j;->a(I)V

    if-eqz p2, :cond_6

    invoke-direct {p0}, Ld/j;->q()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Ld/j;->a(I)V

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ld/j;->a(I)V

    const-string p1, "BT disabled"

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic a(Ld/j;)Z
    .locals 0

    iget-boolean p0, p0, Ld/j;->y:Z

    return p0
.end method

.method static synthetic a(Ld/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Ld/j;->K:Z

    return p1
.end method

.method static synthetic b(I)I
    .locals 0

    sput p0, Ld/j;->z:I

    return p0
.end method

.method static synthetic b(Ld/j;)I
    .locals 0

    iget p0, p0, Ld/j;->F:I

    return p0
.end method

.method static synthetic b(Ld/j;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    iput-object p1, p0, Ld/j;->B:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic c(I)I
    .locals 0

    sput p0, Ld/j;->L:I

    return p0
.end method

.method static synthetic c(Ld/j;)J
    .locals 2

    iget-wide v0, p0, Ld/j;->H:J

    return-wide v0
.end method

.method static synthetic c(Ld/j;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    iput-object p1, p0, Ld/j;->C:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic d(Ld/j;)V
    .locals 0

    invoke-direct {p0}, Ld/j;->r()V

    return-void
.end method

.method static synthetic e(Ld/j;)J
    .locals 2

    iget-wide v0, p0, Ld/j;->G:J

    return-wide v0
.end method

.method static synthetic f(Ld/j;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld/j;->E:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Ld/j;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ld/j;->I:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Ld/j;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    iget-object p0, p0, Ld/j;->A:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method static synthetic i(Ld/j;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    iget-object p0, p0, Ld/j;->B:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method static synthetic j(Ld/j;)Z
    .locals 0

    iget-boolean p0, p0, Ld/j;->K:Z

    return p0
.end method

.method static synthetic k()I
    .locals 1

    sget v0, Ld/j;->z:I

    return v0
.end method

.method static synthetic k(Ld/j;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    iget-object p0, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic l(Ld/j;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    iget-object p0, p0, Ld/j;->C:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method static synthetic l()Ljava/util/UUID;
    .locals 1

    sget-object v0, Ld/j;->t:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic m()Ljava/util/UUID;
    .locals 1

    sget-object v0, Ld/j;->v:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic n()Ljava/util/UUID;
    .locals 1

    sget-object v0, Ld/j;->w:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic o()Ljava/util/UUID;
    .locals 1

    sget-object v0, Ld/j;->x:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic p()I
    .locals 1

    sget v0, Ld/j;->L:I

    return v0
.end method

.method private q()V
    .locals 4

    iget-object v0, p0, Ld/j;->I:Landroid/os/Handler;

    iget-object v1, p0, Ld/j;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ld/j;->I:Landroid/os/Handler;

    iget-object v1, p0, Ld/j;->M:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private r()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Ld/j;->z:I

    invoke-virtual {p0}, Ld/j;->i()V

    const/4 v1, 0x0

    iput-object v1, p0, Ld/j;->B:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object v1, p0, Ld/j;->A:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object v1, p0, Ld/j;->C:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput v0, p0, Ld/j;->F:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ld/j;->H:J

    iput-wide v1, p0, Ld/j;->G:J

    invoke-virtual {p0, v0}, Ld/j;->a(I)V

    return-void
.end method

.method private s()V
    .locals 5

    iget v0, p0, Ld/j;->O:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ld/j;->P:J

    sub-long/2addr v0, v2

    iget v2, p0, Ld/j;->O:I

    const v3, 0xea60

    mul-int v2, v2, v3

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ld/j;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/j;->O:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ld/j;->P:J

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
.method public a()V
    .locals 1

    invoke-direct {p0}, Ld/j;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/j;->y:Z

    const/4 v0, 0x4

    sput v0, Ld/j;->z:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ld/j;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Z
    .locals 2

    sget v0, Ld/j;->z:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ld/j;->C:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

    sget-object v2, Ld/j;->u:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v2, Ld/j;->x:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Ld/j;->C:Landroid/bluetooth/BluetoothGattCharacteristic;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x3

    add-int/2addr v0, v2

    new-array v0, v0, [B

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    const/4 v2, 0x0

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    add-int/lit8 v4, v2, 0x2

    aget-byte v5, p1, v2

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length p1, v0

    sub-int/2addr p1, v3

    aput-byte v1, v0, p1

    iget-object p1, p0, Ld/j;->C:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    iget-object p1, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Ld/j;->C:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld/j;->E:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "SensBox"

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

    iget-object v0, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    const-string v0, "closing GATT"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Ld/j;->A:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    sget v0, Ld/j;->z:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld/j;->D:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Ld/j;->A:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
