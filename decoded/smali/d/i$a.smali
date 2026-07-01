.class Ld/i$a;
.super Landroid/bluetooth/BluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ld/i;


# direct methods
.method constructor <init>(Ld/i;)V
    .locals 0

    iput-object p1, p0, Ld/i$a;->a:Ld/i;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x24

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v3}, Ld/i;->e(Ld/i;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Ld/i$a;->a:Ld/i;

    iget-object v4, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v4}, Ld/i;->e(Ld/i;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ld/i;->a(Ld/i;Ljava/lang/String;)V

    iget-object v3, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v3}, Ld/i;->e(Ld/i;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    iget-object v3, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v3}, Ld/i;->e(Ld/i;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v2}, Ld/i;->e(Ld/i;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Ld/i$a;->a:Ld/i;

    iget-object v3, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v3}, Ld/i;->e(Ld/i;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ld/i;->a(Ld/i;Ljava/lang/String;)V

    iget-object v2, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v2}, Ld/i;->e(Ld/i;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GATT Connection state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ld/d;->a(Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    invoke-static {p2}, Ld/i;->b(I)I

    iget-object p3, p0, Ld/i$a;->a:Ld/i;

    invoke-virtual {p3, p2}, Ld/i;->a(I)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    const-string p1, "Connected to GATT server."

    :goto_0
    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    iget-object p1, p0, Ld/i$a;->a:Ld/i;

    invoke-static {p1}, Ld/i;->d(Ld/i;)V

    const-string p1, "Disconnected from GATT server."

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service discovered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    if-nez p2, :cond_a

    iget-object p2, p0, Ld/i$a;->a:Ld/i;

    invoke-static {p2}, Ld/i;->a(Ld/i;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p2, p0, Ld/i$a;->a:Ld/i;

    invoke-static {p2}, Ld/i;->a(Ld/i;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00035b03-58e6-07dd-021a-08123a000300"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00035b03-58e6-07dd-021a-08123a000301"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v2, v1}, Ld/i;->a(Ld/i;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    const-string v2, "  Found MLDP data characteristics"

    invoke-static {v2}, Ld/d;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v3, "00035b03-58e6-07dd-021a-08123a0003ff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v3, v2, 0x10

    const/4 v4, 0x1

    if-lez v3, :cond_5

    iget-object v3, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v3}, Ld/i;->a(Ld/i;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    const-string v3, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v3

    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    iget-object v5, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v5}, Ld/i;->a(Ld/i;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    :cond_5
    and-int/lit8 v3, v2, 0x20

    if-lez v3, :cond_6

    iget-object v3, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v3}, Ld/i;->a(Ld/i;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    const-string v3, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v3

    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    iget-object v5, p0, Ld/i$a;->a:Ld/i;

    invoke-static {v5}, Ld/i;->a(Ld/i;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    :cond_6
    and-int/lit8 v3, v2, 0x8

    if-lez v3, :cond_7

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    :cond_7
    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_3

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    goto/16 :goto_1

    :cond_8
    iget-object p2, p0, Ld/i$a;->a:Ld/i;

    invoke-static {p2}, Ld/i;->b(Ld/i;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 p1, 0x5

    invoke-static {p1}, Ld/i;->b(I)I

    goto :goto_3

    :cond_9
    const/4 p1, 0x3

    invoke-static {p1}, Ld/i;->b(I)I

    iget-object p1, p0, Ld/i$a;->a:Ld/i;

    invoke-static {p1}, Ld/i;->c(Ld/i;)V

    :cond_a
    :goto_3
    return-void
.end method
