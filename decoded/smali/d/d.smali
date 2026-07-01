.class public Ld/d;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/Object;

.field private static final b:Landroid/os/Handler;

.field private static c:I

.field private static d:Ld/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld/d;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Ld/d;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    sput v0, Ld/d;->c:I

    const/4 v0, 0x0

    sput-object v0, Ld/d;->d:Ld/f;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Ld/d;->d:Ld/f;

    if-eqz v0, :cond_0

    sget-object v0, Ld/d;->d:Ld/f;

    invoke-virtual {v0}, Ld/f;->a()V

    const/4 v0, 0x0

    sput-object v0, Ld/d;->d:Ld/f;

    :cond_0
    return-void
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/xcglobe/xclog/App;

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string p0, "Connecting..."

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Dialog;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object p0, Ld/d;->b:Landroid/os/Handler;

    new-instance v4, Ld/d$1;

    invoke-direct {v4, v2, v3, v0, v1}, Ld/d$1;-><init>(JLcom/xcglobe/xclog/App;Landroid/app/ProgressDialog;)V

    invoke-virtual {p0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ld/n;Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting external device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    sput p1, Ld/d;->c:I

    invoke-static {p0, p3, p2}, Ld/d;->a(Landroid/content/Context;Ld/n;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p4, :cond_0

    sget-object p0, Ld/d;->d:Ld/f;

    invoke-virtual {p0}, Ld/f;->h()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p4}, Ld/d;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static a(Landroid/content/Context;Ld/n;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "createDevice()"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    invoke-static {}, Ld/d;->a()V

    sget v0, Ld/d;->c:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    new-instance v0, Ld/h;

    invoke-direct {v0, p0, p1}, Ld/h;-><init>(Landroid/content/Context;Ld/n;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ld/k;

    invoke-direct {v0, p0, p1}, Ld/k;-><init>(Landroid/content/Context;Ld/n;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ld/l;

    invoke-direct {v0, p0, p1}, Ld/l;-><init>(Landroid/content/Context;Ld/n;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ld/i;

    invoke-direct {v0, p0, p1}, Ld/i;-><init>(Landroid/content/Context;Ld/n;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ld/m;

    invoke-direct {v0, p0, p1}, Ld/m;-><init>(Landroid/content/Context;Ld/n;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Ld/g;

    invoke-direct {v0, p0, p1}, Ld/g;-><init>(Landroid/content/Context;Ld/n;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Ld/j;

    invoke-direct {v0, p0, p1}, Ld/j;-><init>(Landroid/content/Context;Ld/n;)V

    :goto_0
    sput-object v0, Ld/d;->d:Ld/f;

    sget-object p0, Ld/d;->d:Ld/f;

    invoke-virtual {p0, p2}, Ld/f;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Ld/d;->d:Ld/f;

    if-eqz v0, :cond_0

    sget-object v0, Ld/d;->d:Ld/f;

    invoke-virtual {v0}, Ld/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Ld/d;->d:Ld/f;

    if-eqz v0, :cond_0

    sget-object v0, Ld/d;->d:Ld/f;

    invoke-virtual {v0}, Ld/f;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "-"

    :goto_0
    return-object v0
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

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

.method public static e()Z
    .locals 1

    invoke-static {}, Ld/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ld/d;->d:Ld/f;

    invoke-virtual {v0}, Ld/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()Z
    .locals 1

    invoke-static {}, Ld/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ld/d;->d:Ld/f;

    invoke-virtual {v0}, Ld/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g()V
    .locals 8

    const-string v0, "config/external.cfg"

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    const-string v5, "btCfgUseEgm96="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const/16 v5, 0xe

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v4, v5, v7}, Ltypes/r;->a(Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    sput-boolean v5, Lcom/xcglobe/xclog/l;->am:Z

    :cond_1
    const-string v5, "btCfgIgnoreGeoid="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v4, v5, v7}, Ltypes/r;->a(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    sput-boolean v6, Lcom/xcglobe/xclog/l;->an:Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic h()Ld/f;
    .locals 1

    sget-object v0, Ld/d;->d:Ld/f;

    return-object v0
.end method

.method static synthetic i()Landroid/os/Handler;
    .locals 1

    sget-object v0, Ld/d;->b:Landroid/os/Handler;

    return-object v0
.end method
