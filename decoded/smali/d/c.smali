.class public Ld/c;
.super Landroid/app/Dialog;


# instance fields
.field a:Lcom/xcglobe/xclog/App;

.field b:Landroid/app/Activity;

.field c:Landroid/app/Dialog;

.field final d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/bluetooth/BluetoothAdapter;

.field private h:Ld/a;

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ld/n;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/os/Handler;

.field private o:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld/c;->h:Ld/a;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ld/c;->i:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ld/c;->j:Ljava/util/Set;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ld/c;->n:Landroid/os/Handler;

    new-instance p1, Ld/c$5;

    invoke-direct {p1, p0}, Ld/c$5;-><init>(Ld/c;)V

    iput-object p1, p0, Ld/c;->d:Landroid/content/BroadcastReceiver;

    new-instance p1, Ld/c$6;

    invoke-direct {p1, p0}, Ld/c$6;-><init>(Ld/c;)V

    iput-object p1, p0, Ld/c;->o:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Ld/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ld/c;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private a()V
    .locals 4

    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Ld/c;->setContentView(I)V

    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Ld/c;->setTitle(I)V

    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Ld/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ld/c;->e:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Ld/c;->b:Landroid/app/Activity;

    const v2, 0x7f09002b

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Ld/c;->f:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Ld/c;->e:Landroid/widget/ListView;

    iget-object v1, p0, Ld/c;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Ld/c;->e:Landroid/widget/ListView;

    iget-object v1, p0, Ld/c;->o:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Ld/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ld/c;->l:Landroid/widget/Button;

    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Ld/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld/c;->m:Landroid/widget/TextView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Ld/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v1, p0, Ld/c;->a:Lcom/xcglobe/xclog/App;

    invoke-static {p0}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Ld/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Ld/c$1;

    invoke-direct {v0, p0}, Ld/c$1;-><init>(Ld/c;)V

    invoke-virtual {p0, v0}, Ld/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Ld/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Ld/c$2;

    invoke-direct {v1, p0, p0}, Ld/c$2;-><init>(Ld/c;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ld/c;->l:Landroid/widget/Button;

    new-instance v1, Ld/c$3;

    invoke-direct {v1, p0}, Ld/c$3;-><init>(Ld/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ld/c;->b:Landroid/app/Activity;

    iget-object v1, p0, Ld/c;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Ld/c;->b()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ld/n;)V
    .locals 2

    new-instance v0, Ld/c;

    invoke-direct {v0, p0}, Ld/c;-><init>(Landroid/content/Context;)V

    iput-object v0, v0, Ld/c;->c:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/xcglobe/xclog/App;

    iput-object v1, v0, Ld/c;->a:Lcom/xcglobe/xclog/App;

    iput-object p1, v0, Ld/c;->k:Ld/n;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, v0, Ld/c;->g:Landroid/bluetooth/BluetoothAdapter;

    iget-object p1, v0, Ld/c;->g:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_0

    iput-object p0, v0, Ld/c;->b:Landroid/app/Activity;

    invoke-direct {v0}, Ld/c;->a()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Ld/c;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Ld/c;->c()V

    iget-object v0, p0, Ld/c;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Ld/c;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x1388

    const/16 v3, 0x12

    if-lt v0, v3, :cond_0

    new-instance v0, Ld/a;

    invoke-direct {v0, p0}, Ld/a;-><init>(Ld/c;)V

    iput-object v0, p0, Ld/c;->h:Ld/a;

    iget-object v0, p0, Ld/c;->h:Ld/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ld/a;->a(JZ)Z

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/c;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    const-wide/16 v3, 0x64

    :goto_0
    iget-object v0, p0, Ld/c;->n:Landroid/os/Handler;

    new-instance v5, Ld/c$4;

    invoke-direct {v5, p0}, Ld/c$4;-><init>(Ld/c;)V

    add-long/2addr v3, v1

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Ld/c;)V
    .locals 0

    invoke-direct {p0}, Ld/c;->c()V

    return-void
.end method

.method static synthetic c(Ld/c;)Ld/n;
    .locals 0

    iget-object p0, p0, Ld/c;->k:Ld/n;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Ld/c;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/c;->g:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    iget-object v0, p0, Ld/c;->h:Ld/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/c;->h:Ld/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/a;->a(Z)V

    :cond_1
    return-void
.end method

.method static synthetic d(Ld/c;)V
    .locals 0

    invoke-direct {p0}, Ld/c;->b()V

    return-void
.end method

.method static synthetic e(Ld/c;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, Ld/c;->g:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic f(Ld/c;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Ld/c;->l:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic g(Ld/c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Ld/c;->m:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISCOVERED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ld/c;->j:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/c;->j:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ld/c;->f:Landroid/widget/ArrayAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Ld/c;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v0, p0, Ld/c;->i:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ld/c;->j:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/c;->j:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ld/c;->f:Landroid/widget/ArrayAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Ld/c;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
