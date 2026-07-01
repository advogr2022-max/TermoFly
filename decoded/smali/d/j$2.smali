.class Ld/j$2;
.super Landroid/bluetooth/BluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/j;


# direct methods
.method constructor <init>(Ld/j;)V
    .locals 0

    iput-object p1, p0, Ld/j$2;->a:Ld/j;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    const-string p1, "CARACTERISTIC Changed...."

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 7

    if-nez p3, :cond_4

    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p1}, Ld/j;->h(Ld/j;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    const/16 p3, 0x8

    const/16 v0, 0x24

    const/16 v1, 0x22

    if-ne p2, p1, :cond_1

    const/16 p1, 0x10

    invoke-virtual {p2, v1, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    sput p1, Ld/j;->m:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Ld/j;->n:J

    const/16 p1, 0xe

    invoke-virtual {p2, v1, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    sput p1, Ld/j;->l:F

    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    iget-object p1, p1, Ld/j;->a:Ld/n;

    sget v2, Ld/j;->l:F

    sget v3, Ld/j;->m:F

    sget-wide v4, Ld/j;->n:J

    invoke-interface {p1, v2, v3, v4, v5}, Ld/n;->a(FFJ)V

    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p1}, Ld/j;->j(Ld/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p2, v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x4b189680    # 1.0E7f

    div-float/2addr p1, v2

    sput p1, Ld/j;->i:F

    invoke-virtual {p2, v0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    sput p1, Ld/j;->j:F

    const/16 p1, 0xc

    invoke-virtual {p2, v1, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Ld/j;->k:I

    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    iget-object v0, p1, Ld/j;->a:Ld/n;

    sget v1, Ld/j;->i:F

    sget v2, Ld/j;->j:F

    sget p1, Ld/j;->k:I

    int-to-short v3, p1

    sget-wide v4, Ld/j;->n:J

    invoke-static {}, Ld/j;->p()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Ld/n;->a(FFSJI)V

    :cond_0
    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p1}, Ld/j;->k(Ld/j;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iget-object p2, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p2}, Ld/j;->i(Ld/j;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    sget-wide p2, Ld/j;->n:J

    invoke-static {p1, p2, p3}, Ld/j;->a(Ld/j;J)J

    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ld/j;->a(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p1}, Ld/j;->i(Ld/j;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-ne p2, p1, :cond_3

    const/16 p1, 0x21

    const/16 v2, 0x12

    invoke-virtual {p2, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x6

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    invoke-virtual {p2, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x24

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ld/j;->c(I)I

    invoke-virtual {p2, v1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    sput p1, Ld/j;->h:I

    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p1}, Ld/j;->j(Ld/j;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    const/4 p2, 0x1

    :goto_0
    invoke-static {p1, p2}, Ld/j;->a(Ld/j;Z)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p1}, Ld/j;->l(Ld/j;)Landroid/bluetooth/BluetoothGattCharacteristic;

    :cond_4
    :goto_1
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    if-nez p3, :cond_2

    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p1}, Ld/j;->l(Ld/j;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-ne p2, p1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v0, "BLE_UseQNH_Nav"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    iget-object v0, p0, Ld/j$2;->a:Ld/j;

    invoke-static {v0}, Ld/j;->b(Ld/j;)I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ld/j;->a(Ld/j;I)I

    goto :goto_0

    :cond_0
    const-string v0, "BLE_UseQNH_Mov"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/j$2;->a:Ld/j;

    iget-object v1, p0, Ld/j$2;->a:Ld/j;

    invoke-static {v1}, Ld/j;->b(Ld/j;)I

    move-result v1

    or-int/2addr p1, v1

    invoke-static {v0, p1}, Ld/j;->a(Ld/j;I)I

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  \t sw="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p3}, Ld/j;->b(Ld/j;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p1}, Ld/j;->k(Ld/j;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

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

    invoke-static {p2}, Ld/j;->b(I)I

    iget-object p3, p0, Ld/j$2;->a:Ld/j;

    invoke-virtual {p3, p2}, Ld/j;->a(I)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    const-string p1, "Connected to GATT server."

    :goto_0
    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    iget-object p1, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p1}, Ld/j;->d(Ld/j;)V

    const-string p1, "Disconnected from GATT server."

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service discovered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    if-nez p2, :cond_2

    invoke-static {}, Ld/j;->l()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Ld/j$2;->a:Ld/j;

    invoke-static {}, Ld/j;->m()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-static {v0, v1}, Ld/j;->a(Ld/j;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v0, p0, Ld/j$2;->a:Ld/j;

    invoke-static {}, Ld/j;->n()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-static {v0, v1}, Ld/j;->b(Ld/j;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v0, p0, Ld/j$2;->a:Ld/j;

    invoke-static {}, Ld/j;->o()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-static {v0, p2}, Ld/j;->c(Ld/j;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object p2, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p2}, Ld/j;->h(Ld/j;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p2}, Ld/j;->i(Ld/j;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Ld/j$2;->a:Ld/j;

    invoke-static {p2, p1}, Ld/j;->a(Ld/j;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x3

    invoke-static {p1}, Ld/j;->b(I)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 p1, 0x5

    invoke-static {p1}, Ld/j;->b(I)I

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServicesDiscovered status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    :goto_0
    const-string p1, "Service discovery: unknown"

    invoke-static {p1}, Ld/d;->a(Ljava/lang/String;)V

    return-void
.end method
