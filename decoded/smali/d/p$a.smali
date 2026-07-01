.class Ld/p$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:[B

.field b:Ld/l;


# direct methods
.method constructor <init>(Ld/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Ld/p$a;->a:[B

    iput-object p1, p0, Ld/p$a;->b:Ld/l;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Starting looper"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/xcglobe/xclog/App;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    sget-boolean v0, Ld/p;->d:Z

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Ld/p$a;->b:Ld/l;

    const-wide/16 v2, 0x1388

    if-nez v0, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ld/p$a;->b:Ld/l;

    if-nez v0, :cond_0

    invoke-static {}, Ld/p;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/p$a;->b:Ld/l;

    iget v0, v0, Ld/l;->d:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Ld/p$a;->b:Ld/l;

    iget-object v0, v0, Ld/l;->f:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Ld/p$a;->b:Ld/l;

    iget-object v2, v2, Ld/l;->e:Landroid/hardware/usb/UsbEndpoint;

    iget-object v3, p0, Ld/p$a;->a:[B

    iget-object v4, p0, Ld/p$a;->a:[B

    array-length v4, v4

    const/16 v5, 0x1388

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v2, p0, Ld/p$a;->b:Ld/l;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Ld/p$a;->a:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v1, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ld/l;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Ld/p;->c:Z

    goto :goto_0

    :cond_2
    const-string v0, "bulkTransfer failed"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/p$a;->b:Ld/l;

    invoke-virtual {v0}, Ld/l;->i()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ld/p$a;->b:Ld/l;

    iget v0, v0, Ld/l;->d:I

    if-nez v0, :cond_4

    const-string v0, "state=disconnected"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Ld/p;->b()V

    goto :goto_1

    :cond_4
    const-string v0, "state=terminated"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    sput-boolean v1, Ld/p;->c:Z

    goto :goto_0

    :cond_5
    sput-boolean v1, Ld/p;->c:Z

    const-string v0, "Terminating looper"

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/p$a;->b:Ld/l;

    sput-object v0, Ld/p;->a:Ld/p$a;

    return-void
.end method
