.class Ld/a$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a$2;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field final synthetic b:Ld/a$2;


# direct methods
.method constructor <init>(Ld/a$2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Ld/a$2$1;->b:Ld/a$2;

    iput-object p2, p0, Ld/a$2$1;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/a$2$1;->b:Ld/a$2;

    iget-object v0, v0, Ld/a$2;->a:Ld/a;

    iget-object v0, v0, Ld/a;->c:Ld/c;

    iget-object v1, p0, Ld/a$2$1;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ld/c;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
