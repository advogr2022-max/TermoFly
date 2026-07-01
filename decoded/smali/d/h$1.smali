.class Ld/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h;->a(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field final synthetic b:Ld/h;


# direct methods
.method constructor <init>(Ld/h;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Ld/h$1;->b:Ld/h;

    iput-object p2, p0, Ld/h$1;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/h$1;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/h$1;->b:Ld/h;

    iget-object v1, p0, Ld/h$1;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Ld/h;->a(Ld/h;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "socket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/d;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld/h$1;->b:Ld/h;

    invoke-static {v1, v0}, Ld/h;->a(Ld/h;Landroid/bluetooth/BluetoothSocket;)V

    iget-object v0, p0, Ld/h$1;->b:Ld/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/h;->a(I)V

    iget-object v0, p0, Ld/h$1;->b:Ld/h;

    invoke-static {v0, v1}, Ld/h;->a(Ld/h;I)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/h$1;->b:Ld/h;

    invoke-static {v0}, Ld/h;->a(Ld/h;)V

    :goto_0
    const-string v0, "finish running."

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/h$1;->b:Ld/h;

    invoke-static {v0}, Ld/h;->b(Ld/h;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/h$1;->b:Ld/h;

    iget-object v1, p0, Ld/h$1;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/h;->a(Ld/h;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
