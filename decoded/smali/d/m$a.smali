.class Ld/m$a;
.super Landroid/bluetooth/BluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ld/m;


# direct methods
.method constructor <init>(Ld/m;)V
    .locals 0

    iput-object p1, p0, Ld/m$a;->a:Ld/m;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    iget-object v0, p0, Ld/m$a;->a:Ld/m;

    invoke-static {v0, p1, p2}, Ld/m;->a(Ld/m;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p1, p0, Ld/m$a;->a:Ld/m;

    invoke-static {p1}, Ld/m;->g(Ld/m;)Landroid/bluetooth/BluetoothGattCharacteristic;

    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    const-string p1, "GATTCBACK onCharacteristicWrite"

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    iget-object v0, p0, Ld/m$a;->a:Ld/m;

    invoke-static {v0, p1, p2, p3}, Ld/m;->a(Ld/m;Landroid/bluetooth/BluetoothGatt;II)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    iget-object v0, p0, Ld/m$a;->a:Ld/m;

    invoke-static {v0, p1, p2}, Ld/m;->a(Ld/m;Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method
