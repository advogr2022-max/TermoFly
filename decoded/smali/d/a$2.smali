.class Ld/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/a;


# direct methods
.method constructor <init>(Ld/a;)V
    .locals 0

    iput-object p1, p0, Ld/a$2;->a:Ld/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LESCAN FOUND: : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ld/d;->a(Ljava/lang/String;)V

    iget-object p3, p0, Ld/a$2;->a:Ld/a;

    invoke-static {p3}, Ld/a;->a(Ld/a;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Ld/a$2;->a:Ld/a;

    invoke-static {p3}, Ld/a;->a(Ld/a;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/a$2;->a:Ld/a;

    iget-object p2, p2, Ld/a;->c:Ld/c;

    if-eqz p2, :cond_0

    iget-object p2, p0, Ld/a$2;->a:Ld/a;

    invoke-static {p2}, Ld/a;->b(Ld/a;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Ld/a$2$1;

    invoke-direct {p3, p0, p1}, Ld/a$2$1;-><init>(Ld/a$2;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
