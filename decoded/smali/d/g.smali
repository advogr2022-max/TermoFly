.class public Ld/g;
.super Ld/f;


# static fields
.field public static final c:Ljava/util/UUID;


# instance fields
.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:F

.field private i:I

.field private j:J

.field private final k:Lg/a;

.field private l:I

.field private m:I

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ld/g;->c:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/n;)V
    .locals 5

    invoke-direct {p0}, Ld/f;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ld/g;->d:I

    iput-boolean p1, p0, Ld/g;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/g;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/g;->j:J

    new-instance v2, Lg/a;

    const/16 v3, 0x3e8

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v3, v4}, Lg/a;-><init>(IF)V

    iput-object v2, p0, Ld/g;->k:Lg/a;

    iput p1, p0, Ld/g;->l:I

    iput p1, p0, Ld/g;->m:I

    iput-wide v0, p0, Ld/g;->n:J

    iput-object p2, p0, Ld/g;->a:Ld/n;

    return-void
.end method

.method static synthetic a(Ld/g;I)I
    .locals 0

    iput p1, p0, Ld/g;->d:I

    return p1
.end method

.method static synthetic a(Ld/g;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    invoke-direct {p0, p1}, Ld/g;->b(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Ld/g;->d:I

    invoke-virtual {p0, v0}, Ld/g;->a(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ld/g$1;

    invoke-direct {v1, p0, p1}, Ld/g$1;-><init>(Ld/g;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothSocket;)V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x100

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const-wide/16 v3, 0x32

    const-wide/16 v5, 0x0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Ld/g;->e:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Ld/g;->d(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    sub-long v9, v7, v5

    cmp-long v1, v9, v3

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Ld/g;->h:F

    iget-object v9, p0, Ld/g;->k:Lg/a;

    invoke-virtual {v9, v1, v7, v8}, Lg/a;->a(FJ)F

    iget-object v9, p0, Ld/g;->k:Lg/a;

    iget v9, v9, Lg/a;->c:F

    sget-object v10, Lm/g;->A:Lm/e;

    invoke-virtual {v10, v1}, Lm/e;->a(F)F

    move-result v1

    iget-object v10, p0, Ld/g;->a:Ld/n;

    invoke-interface {v10, v1, v9, v7, v8}, Ld/n;->a(FFJ)V

    iget v1, p0, Ld/g;->d:I

    const/4 v9, 0x4

    if-eq v1, v9, :cond_2

    iput v9, p0, Ld/g;->d:I

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ld/g;->a(I)V

    :cond_2
    move-wide v5, v7

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Ld/g;->c(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz p1, :cond_5

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

    if-eqz p1, :cond_5

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_5
    iput v0, p0, Ld/g;->d:I

    return-void

    :goto_2
    if-eqz p1, :cond_6

    :try_start_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_6
    iput v0, p0, Ld/g;->d:I

    throw v1
.end method

.method static synthetic a(Ld/g;)V
    .locals 0

    invoke-direct {p0}, Ld/g;->i()V

    return-void
.end method

.method static synthetic a(Ld/g;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/g;->a(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method static synthetic a(Ld/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ld/g;I)I
    .locals 0

    iput p1, p0, Ld/g;->m:I

    return p1
.end method

.method private b(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-boolean v0, p0, Ld/g;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Ld/g;->c:Ljava/util/UUID;

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
    sget-object v2, Ld/g;->c:Ljava/util/UUID;

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

    new-instance v1, Ld/g$2;

    invoke-direct {v1, p0, p1}, Ld/g$2;-><init>(Ld/g;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Ld/g;)Z
    .locals 0

    iget-boolean p0, p0, Ld/g;->e:Z

    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 14

    const-string v0, "$GPGGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xb

    if-lt v0, v4, :cond_6

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x2

    aget-object v5, p1, v0

    invoke-static {v5, v2, v0}, Li/c;->a(Ljava/lang/String;II)I

    move-result v5

    int-to-float v5, v5

    aget-object v6, p1, v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    const/high16 v6, 0x42700000    # 60.0f

    div-float/2addr v0, v6

    add-float/2addr v5, v0

    const/4 v0, 0x3

    aget-object v7, p1, v0

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    neg-float v5, v5

    :cond_1
    move v8, v5

    const/4 v5, 0x4

    aget-object v7, p1, v5

    aget-object v9, p1, v5

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v7, v2, v0}, Li/c;->a(Ljava/lang/String;II)I

    move-result v2

    int-to-float v2, v2

    aget-object v5, p1, v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v6

    add-float/2addr v2, v0

    const/4 v0, 0x5

    aget-object v0, p1, v0

    const-string v5, "W"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sub-float/2addr v2, v2

    :cond_3
    move v9, v2

    const/4 v0, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v0, p1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v1, p0, Ld/g;->j:J

    sub-long v1, v11, v1

    const-wide/16 v4, 0xbb8

    cmp-long p1, v1, v4

    if-lez p1, :cond_5

    const/4 p1, -0x1

    iput p1, p0, Ld/g;->i:I

    :cond_5
    iget-object v7, p0, Ld/g;->a:Ld/n;

    float-to-int p1, v0

    int-to-short v10, p1

    iget v13, p0, Ld/g;->i:I

    invoke-interface/range {v7 .. v13}, Ld/n;->a(FFSJI)V

    return v3

    :cond_6
    const-string v0, "$GPRMC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_9

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_7

    return v3

    :cond_7
    const/4 v0, 0x7

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    const v1, 0x3fed0e56    # 1.852f

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, p0, Ld/g;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ld/g;->j:J

    :cond_8
    return v3

    :cond_9
    return v2
.end method

.method private d(Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "PRS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x10

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x9

    if-lt v2, v6, :cond_0

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float v0, p1

    iput v1, p0, Ld/g;->l:I

    goto :goto_0

    :cond_0
    const-string v2, "_PRS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v6, 0x3

    const/16 v7, 0xa

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float v0, p1

    iput v6, p0, Ld/g;->l:I

    goto :goto_0

    :cond_1
    const-string v2, "$LK8EX1,"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x2c

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float v0, p1

    iput v5, p0, Ld/g;->l:I

    goto :goto_0

    :cond_2
    const-string v2, "$LXWP0,"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    if-lt v2, v4, :cond_3

    aget-object p1, p1, v6

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ld/g;->h:F

    const/4 p1, 0x2

    iput p1, p0, Ld/g;->l:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :cond_3
    :goto_0
    const-wide v2, 0x40e5a54000000000L    # 44330.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v0

    const-wide v10, 0x40f8bcd000000000L    # 101325.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    const-wide v10, 0x3fc85b9628cbd124L    # 0.190295

    :try_start_1
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const/4 p1, 0x0

    sub-double/2addr v6, v8

    mul-double v6, v6, v2

    double-to-float p1, v6

    iput p1, p0, Ld/g;->h:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return v5

    :catch_0
    :cond_4
    return v1
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
    iget v1, p0, Ld/g;->m:I

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Ld/g;->n:J

    sub-long/2addr v1, v3

    iget v3, p0, Ld/g;->m:I

    const v4, 0xea60

    mul-int v3, v3, v4

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    return-void

    :cond_1
    iget v1, p0, Ld/g;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ld/g;->m:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ld/g;->n:J

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ld/g;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/g;->e:Z

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

    iput-object p1, p0, Ld/g;->f:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ld/g;->i:I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ld/g;->a(I)V

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Ld/g;->a()V

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/g;->a(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Ld/g;->d:I

    const/4 v1, 0x4

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

    iget-object v0, p0, Ld/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ld/g;->l:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "External"

    return-object v0

    :pswitch_0
    const-string v0, "FlyNet"

    return-object v0

    :pswitch_1
    const-string v0, "LXWP0"

    return-object v0

    :pswitch_2
    const-string v0, "LK8EX1"

    return-object v0

    :pswitch_3
    const-string v0, "BlueFlyVario"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
