.class public Ld/l;
.super Ld/f;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static m:Ld/b;


# instance fields
.field c:Landroid/content/Context;

.field protected d:I

.field e:Landroid/hardware/usb/UsbEndpoint;

.field f:Landroid/hardware/usb/UsbDeviceConnection;

.field private final g:J

.field private h:Z

.field private final i:Landroid/os/Handler;

.field private j:Landroid/hardware/usb/UsbManager;

.field private k:Landroid/hardware/usb/UsbDevice;

.field private l:Landroid/hardware/usb/UsbInterface;

.field private final n:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/b;

    invoke-direct {v0}, Ld/b;-><init>()V

    sput-object v0, Ld/l;->m:Ld/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/n;)V
    .locals 2

    invoke-direct {p0}, Ld/f;-><init>()V

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Ld/l;->g:J

    const/4 v0, 0x0

    iput v0, p0, Ld/l;->d:I

    iput-boolean v0, p0, Ld/l;->h:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Ld/l;->i:Landroid/os/Handler;

    new-instance v1, Ld/l$1;

    invoke-direct {v1, p0}, Ld/l$1;-><init>(Ld/l;)V

    iput-object v1, p0, Ld/l;->n:Landroid/content/BroadcastReceiver;

    iput v0, p0, Ld/l;->d:I

    iput-boolean v0, p0, Ld/l;->h:Z

    iput-object p2, p0, Ld/l;->a:Ld/n;

    iput-object p1, p0, Ld/l;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/hardware/usb/UsbInterface;)Landroid/hardware/usb/UsbEndpoint;
    .locals 5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;
    .locals 5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Ld/l;)V
    .locals 0

    invoke-direct {p0}, Ld/l;->m()V

    return-void
.end method

.method static synthetic b(Ld/l;)Ld/l;
    .locals 0

    invoke-direct {p0}, Ld/l;->l()Ld/l;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Ld/l;->m:Ld/b;

    invoke-virtual {v0, p1}, Ld/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Ld/l;->m:Ld/b;

    iget-boolean p1, p1, Ld/b;->m:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld/l;->a:Ld/n;

    sget-object v0, Ld/l;->m:Ld/b;

    iget v0, v0, Ld/b;->d:F

    sget-object v1, Ld/l;->m:Ld/b;

    iget v1, v1, Ld/b;->g:F

    sget-object v2, Ld/l;->m:Ld/b;

    iget-wide v2, v2, Ld/b;->h:J

    invoke-interface {p1, v0, v1, v2, v3}, Ld/n;->a(FFJ)V

    :cond_1
    sget-object p1, Ld/l;->m:Ld/b;

    iget-boolean p1, p1, Ld/b;->l:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Ld/l;->a:Ld/n;

    sget-object p1, Ld/l;->m:Ld/b;

    iget v1, p1, Ld/b;->b:F

    sget-object p1, Ld/l;->m:Ld/b;

    iget v2, p1, Ld/b;->c:F

    sget-object p1, Ld/l;->m:Ld/b;

    iget p1, p1, Ld/b;->e:I

    int-to-short v3, p1

    sget-object p1, Ld/l;->m:Ld/b;

    iget-wide v4, p1, Ld/b;->h:J

    sget-object p1, Ld/l;->m:Ld/b;

    iget v6, p1, Ld/b;->f:I

    invoke-interface/range {v0 .. v6}, Ld/n;->a(FFSJI)V

    :cond_2
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Ld/l;->a(I)V

    return-void
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Ld/l;->k:Landroid/hardware/usb/UsbDevice;

    iput-object v0, p0, Ld/l;->e:Landroid/hardware/usb/UsbEndpoint;

    iget-object v1, p0, Ld/l;->f:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ld/l;->f:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Ld/l;->l:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    iget-object v1, p0, Ld/l;->f:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    iput-object v0, p0, Ld/l;->f:Landroid/hardware/usb/UsbDeviceConnection;

    const-string v0, "bt: ###Close device"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private k()Landroid/hardware/usb/UsbDevice;
    .locals 6

    iget-object v0, p0, Ld/l;->j:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found USB device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ld/d;->a(Ljava/lang/String;)V

    const/16 v4, 0x16d0

    if-ne v2, v4, :cond_1

    const/16 v4, 0xba9

    if-ne v3, v4, :cond_1

    const-string v0, "Found GpdBipBip"

    :goto_0
    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/16 v4, 0x16c0

    if-ne v2, v4, :cond_2

    const/16 v4, 0x483

    if-ne v3, v4, :cond_2

    const-string v0, "Found XCTracer"

    goto :goto_0

    :cond_2
    const/16 v4, 0x1b4f

    if-ne v2, v4, :cond_3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    const-string v0, "Found IOIO-OTG board"

    goto :goto_0

    :cond_3
    const/16 v4, 0x1209

    if-ne v2, v4, :cond_0

    const/16 v2, 0x6667

    if-ne v3, v2, :cond_0

    const-string v0, "Found XCTracer II"

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private l()Ld/l;
    .locals 0

    return-object p0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Ld/l;->j:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Ld/l;->k:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iput-object v0, p0, Ld/l;->f:Landroid/hardware/usb/UsbDeviceConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bt: ###Open device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/l;->f:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/l;->f:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld/l;->k:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0, v0}, Ld/l;->a(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Ld/l;->l:Landroid/hardware/usb/UsbInterface;

    iget-object v0, p0, Ld/l;->l:Landroid/hardware/usb/UsbInterface;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ld/l;->f:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Ld/l;->l:Landroid/hardware/usb/UsbInterface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Ld/l;->l:Landroid/hardware/usb/UsbInterface;

    invoke-direct {p0, v0}, Ld/l;->a(Landroid/hardware/usb/UsbInterface;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Ld/l;->e:Landroid/hardware/usb/UsbEndpoint;

    iget-object v0, p0, Ld/l;->e:Landroid/hardware/usb/UsbEndpoint;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Ld/l;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Ld/p;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/l;->h:Z

    invoke-virtual {p0}, Ld/l;->i()V

    const-string v0, "Terminating usb device."

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object p1

    const-string v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Ld/l;->j:Landroid/hardware/usb/UsbManager;

    invoke-direct {p0}, Ld/l;->k()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    iput-object v0, p0, Ld/l;->k:Landroid/hardware/usb/UsbDevice;

    iget-object v0, p0, Ld/l;->k:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Ld/l;->d:I

    invoke-static {p0}, Ld/p;->a(Ld/l;)V

    return-void

    :cond_0
    iget-object v0, p0, Ld/l;->j:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Ld/l;->k:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xcglobe.USB_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xcglobe.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ld/l;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Ld/l;->j:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Ld/l;->k:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ld/l;->m()V

    invoke-static {p0}, Ld/p;->b(Ld/l;)V

    :goto_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x24

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ld/l;->c(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/l;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Ld/l;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-boolean v0, Ld/p;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "usb"

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "USB device"

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method i()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld/l;->d:I

    invoke-direct {p0}, Ld/l;->j()V

    invoke-virtual {p0, v0}, Ld/l;->a(I)V

    return-void
.end method
