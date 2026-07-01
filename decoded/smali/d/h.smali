.class public Ld/h;
.super Ld/f;


# static fields
.field public static final c:Ljava/util/UUID;


# instance fields
.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:J

.field private final i:Lg/a;

.field private j:Ld/b;

.field private k:I

.field private l:I

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ld/h;->c:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/n;)V
    .locals 5

    invoke-direct {p0}, Ld/f;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/h;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/h;->f:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/h;->h:J

    new-instance v2, Lg/a;

    const/16 v3, 0x3e8

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v3, v4}, Lg/a;-><init>(IF)V

    iput-object v2, p0, Ld/h;->i:Lg/a;

    const/4 v2, 0x0

    iput-object v2, p0, Ld/h;->j:Ld/b;

    iput p1, p0, Ld/h;->k:I

    iput p1, p0, Ld/h;->l:I

    iput-wide v0, p0, Ld/h;->m:J

    iput-object p2, p0, Ld/h;->a:Ld/n;

    return-void
.end method

.method static synthetic a(Ld/h;I)I
    .locals 0

    iput p1, p0, Ld/h;->l:I

    return p1
.end method

.method static synthetic a(Ld/h;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    invoke-direct {p0, p1}, Ld/h;->b(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ld/h;->a(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ld/h$1;

    invoke-direct {v1, p0, p1}, Ld/h$1;-><init>(Ld/h;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothSocket;)V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x100

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v1, Ld/b;

    sget-boolean v3, Lcom/xcglobe/xclog/l;->an:Z

    invoke-direct {v1, v3}, Ld/b;-><init>(Z)V

    iput-object v1, p0, Ld/h;->j:Ld/b;

    :cond_0
    :goto_0
    iget-boolean v1, p0, Ld/h;->d:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v3, p0, Ld/h;->j:Ld/b;

    invoke-virtual {v3, v1}, Ld/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ld/h;->j:Ld/b;

    iget-boolean v1, v1, Ld/b;->m:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Ld/h;->j:Ld/b;

    iget v1, v1, Ld/b;->d:F

    iget-object v3, p0, Ld/h;->a:Ld/n;

    iget-object v4, p0, Ld/h;->j:Ld/b;

    iget v4, v4, Ld/b;->g:F

    iget-object v5, p0, Ld/h;->j:Ld/b;

    iget-wide v5, v5, Ld/b;->h:J

    invoke-interface {v3, v1, v4, v5, v6}, Ld/n;->a(FFJ)V

    :cond_2
    iget-object v1, p0, Ld/h;->j:Ld/b;

    iget-boolean v1, v1, Ld/b;->l:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Ld/h;->j:Ld/b;

    iget v1, v1, Ld/b;->e:I

    sget-boolean v3, Lcom/xcglobe/xclog/l;->am:Z

    if-eqz v3, :cond_3

    sget v3, Ld/e;->a:I

    sub-int/2addr v1, v3

    :cond_3
    iget-object v3, p0, Ld/h;->a:Ld/n;

    iget-object v4, p0, Ld/h;->j:Ld/b;

    iget v4, v4, Ld/b;->b:F

    iget-object v5, p0, Ld/h;->j:Ld/b;

    iget v5, v5, Ld/b;->c:F

    int-to-short v6, v1

    iget-object v1, p0, Ld/h;->j:Ld/b;

    iget-wide v7, v1, Ld/b;->h:J

    iget-object v1, p0, Ld/h;->j:Ld/b;

    iget v9, v1, Ld/b;->f:I

    invoke-interface/range {v3 .. v9}, Ld/n;->a(FFSJI)V

    :cond_4
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ld/h;->a(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    const-string v1, "Finishing readingLoop"

    invoke-static {v1}, Ld/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_6

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_2
    :try_start_3
    const-string v1, "temp sockets not created"

    invoke-static {v1}, Ld/d;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_6

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_6
    invoke-virtual {p0, v0}, Ld/h;->a(I)V

    return-void

    :goto_2
    if-eqz p1, :cond_7

    :try_start_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_7
    invoke-virtual {p0, v0}, Ld/h;->a(I)V

    throw v1
.end method

.method static synthetic a(Ld/h;)V
    .locals 0

    invoke-direct {p0}, Ld/h;->i()V

    return-void
.end method

.method static synthetic a(Ld/h;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/h;->a(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method static synthetic a(Ld/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-boolean v0, p0, Ld/h;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Ld/h;->c:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    const-string v0, "socket pairing failed"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_4

    :try_start_3
    sget-object v2, Ld/h;->c:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz p1, :cond_5

    :try_start_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-object v0, p1

    :catch_4
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_3
    const-string p1, "secket no-pairing failed"

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_2

    :cond_4
    move-object p1, v0

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    const-string v0, "secket created"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    :cond_6
    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ld/h$2;

    invoke-direct {v1, p0, p1}, Ld/h$2;-><init>(Ld/h;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Ld/h;)Z
    .locals 0

    iget-boolean p0, p0, Ld/h;->d:Z

    return p0
.end method

.method private i()V
    .locals 6

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Ld/h;->l:I

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Ld/h;->m:J

    sub-long/2addr v1, v3

    iget v3, p0, Ld/h;->l:I

    const v4, 0xea60

    mul-int v3, v3, v4

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    return-void

    :cond_1
    iget v1, p0, Ld/h;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ld/h;->l:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ld/h;->m:J

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ld/h;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/h;->d:Z

    sget-object v0, Ld/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld/d;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Ld/h;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ld/h;->g:I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ld/h;->a(I)V

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Ld/h;->a()V

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/h;->a(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Ld/h;->b:I

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

    iget-object v0, p0, Ld/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "External BT"

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
