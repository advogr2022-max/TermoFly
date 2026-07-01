.class public Ld/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static b:I


# instance fields
.field a:Landroid/bluetooth/BluetoothAdapter;

.field c:Ld/c;

.field private final d:J

.field private final e:Landroid/os/Handler;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ld/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Ld/a;->d:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ld/a;->e:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ld/a;->f:Ljava/util/Set;

    new-instance v0, Ld/a$2;

    invoke-direct {v0, p0}, Ld/a$2;-><init>(Ld/a;)V

    iput-object v0, p0, Ld/a;->g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    iput-object p1, p0, Ld/a;->c:Ld/c;

    return-void
.end method

.method static synthetic a(Ld/a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Ld/a;->f:Ljava/util/Set;

    return-object p0
.end method

.method private a()Z
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Ld/a;->a:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Ld/a;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic b(Ld/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ld/a;->e:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Ld/a;->a:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Ld/a;->g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    :cond_0
    return-void
.end method

.method public a(JZ)Z
    .locals 2

    invoke-direct {p0}, Ld/a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Ld/a;->e:Landroid/os/Handler;

    new-instance p2, Ld/a$1;

    invoke-direct {p2, p0, p3}, Ld/a$1;-><init>(Ld/a;Z)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget p1, Ld/a;->b:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Ld/a;->b:I

    iget-object p1, p0, Ld/a;->a:Landroid/bluetooth/BluetoothAdapter;

    iget-object p2, p0, Ld/a;->g:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p1

    return p1
.end method
