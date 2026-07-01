.class public Lcom/xcglobe/xclog/ActivityMain;
.super Lcom/xcglobe/xclog/a;


# static fields
.field public static b:Z = false

.field private static c:Z = false

.field private static d:Lcom/xcglobe/xclog/ActivityMain; = null

.field private static e:Z = false

.field private static f:Z = true


# instance fields
.field public a:Ldisplay/vmap/ViewVmp;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xcglobe/xclog/a;-><init>()V

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/xcglobe/xclog/ActivityMain;->d:Lcom/xcglobe/xclog/ActivityMain;

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xcglobe/xclog/ActivityMain;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static a(IJ)V
    .locals 2

    sget-object v0, Lcom/xcglobe/xclog/l;->aF:Landroid/os/Handler;

    new-instance v1, Lcom/xcglobe/xclog/ActivityMain$3;

    invoke-direct {v1, p0}, Lcom/xcglobe/xclog/ActivityMain$3;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(ILandroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/xcglobe/xclog/ActivityMain;->d:Lcom/xcglobe/xclog/ActivityMain;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xcglobe.action.main"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string p1, "event"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p0, Lcom/xcglobe/xclog/ActivityMain;->d:Lcom/xcglobe/xclog/ActivityMain;

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityMain;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 5

    sget v0, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit8 v0, v0, 0xc

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    sget-boolean v1, Lcom/xcglobe/xclog/l;->X:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    sget v1, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v1, v1, 0x10

    sget v2, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v2, v2, 0xf

    sget v3, Lcom/xcglobe/xclog/l;->ax:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_2

    sget v2, Lcom/xcglobe/xclog/l;->ax:I

    div-int/lit8 v2, v2, 0x2

    :cond_2
    sget v2, Lcom/xcglobe/xclog/l;->aw:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_3

    sget v1, Lcom/xcglobe/xclog/l;->aw:I

    div-int/lit8 v1, v1, 0x2

    :cond_3
    sget v2, Lcom/xcglobe/xclog/l;->d:I

    mul-int/lit8 v2, v2, 0x18

    const/16 v3, 0x140

    sget v2, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 v2, v2, 0xe

    const/16 v3, 0x34

    invoke-virtual {p0, v3}, Lcom/xcglobe/xclog/ActivityMain;->b(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/xcglobe/xclog/l;->ax:I

    sget v4, Lcom/xcglobe/xclog/l;->aw:I

    if-ge v3, v4, :cond_6

    sget v3, Lcom/xcglobe/xclog/l;->ax:I

    sub-int/2addr v3, v0

    sget v0, Lcom/xcglobe/xclog/l;->aw:I

    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_4

    sget v0, Lcom/xcglobe/xclog/l;->aw:I

    div-int/lit8 v3, v0, 0x2

    :cond_4
    sget v0, Lcom/xcglobe/xclog/l;->aw:I

    sub-int/2addr v0, v3

    if-ge v0, v1, :cond_5

    :goto_0
    sget v0, Lcom/xcglobe/xclog/l;->aw:I

    goto :goto_1

    :cond_5
    sget v0, Lcom/xcglobe/xclog/l;->aw:I

    sub-int/2addr v0, v3

    if-le v0, v2, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "Installing TermoFly files..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "igc"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Z)V

    const-string v0, "tasks"

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Z)V

    const-string v0, "mpt"

    invoke-static {v0, v2}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Z)V

    const-string v0, "vmp"

    invoke-static {v0, v2}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Z)V

    sput-boolean v2, Lcom/xcglobe/xclog/ActivityMain;->b:Z

    return-void
.end method

.method private c(I)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xcglobe/xclog/ActivityMain;->e:Z

    invoke-static {}, Lb/d;->c()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/xcglobe/xclog/ActivityMain$4;

    invoke-direct {v0, p0}, Lcom/xcglobe/xclog/ActivityMain$4;-><init>(Lcom/xcglobe/xclog/ActivityMain;)V

    const v1, 0x7f0c0160

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0c00e6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityMain;->Q:Lcom/xcglobe/xclog/App;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method private d()V
    .locals 7

    sget-boolean v0, Lcom/xcglobe/xclog/ActivityMain;->c:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/xcglobe/xclog/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "install_last_splash_time"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v0, v2, v0

    const-wide/32 v4, 0x15180

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xcglobe/xclog/ActivityMain;->c:Z

    const-string v0, "install_last_splash_time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xcglobe/xclog/f;->e()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c00ad

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0c005a

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0c00aa

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/xcglobe/xclog/f;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0045

    new-instance v2, Lcom/xcglobe/xclog/ActivityMain$2;

    invoke-direct {v2, p0}, Lcom/xcglobe/xclog/ActivityMain$2;-><init>(Lcom/xcglobe/xclog/ActivityMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ec

    new-instance v2, Lcom/xcglobe/xclog/ActivityMain$1;

    invoke-direct {v2, p0}, Lcom/xcglobe/xclog/ActivityMain$1;-><init>(Lcom/xcglobe/xclog/ActivityMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityMain;->Q:Lcom/xcglobe/xclog/App;

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Dialog;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private e()V
    .locals 5

    sget-boolean v0, Lb/g;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xcglobe/xclog/l;->ar:Lcom/xcglobe/xclog/h;

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/h;->a(Ltypes/GpsVal;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v0, Lb/g;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/xcglobe/xclog/l;->ar:Lcom/xcglobe/xclog/h;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xcglobe/xclog/h;->a(FLtypes/GpsVal;ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    invoke-static {v0}, Lb/g;->a(Ltypes/GpsVal;)V

    :cond_2
    return-void
.end method

.method private f()V
    .locals 1

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityMain;->e()V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityMain;->a:Ldisplay/vmap/ViewVmp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityMain;->a:Ldisplay/vmap/ViewVmp;

    invoke-virtual {v0}, Ldisplay/vmap/ViewVmp;->invalidate()V

    :cond_0
    return-void
.end method

.method private g()Z
    .locals 8

    invoke-static {}, Lcom/xcglobe/xclog/f;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "ask_upgrade_time"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/xcglobe/xclog/ActivityMain;->d:Lcom/xcglobe/xclog/ActivityMain;

    if-nez v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/xcglobe/xclog/ActivityMain;->d:Lcom/xcglobe/xclog/ActivityMain;

    invoke-static {v0}, Lb/j;->a(Landroid/app/Activity;)V

    const-string v0, "ask_upgrade_time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private h()Z
    .locals 3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    const-class v2, Lcom/xcglobe/xclog/TermoFlyService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected a(ILandroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/xcglobe/xclog/App;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x80

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    const/4 p1, 0x1

    invoke-static {p1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityMain;->R:Lcom/xcglobe/xclog/a;

    iget-object p2, p0, Lcom/xcglobe/xclog/ActivityMain;->a:Ldisplay/vmap/ViewVmp;

    invoke-static {p1, p2}, Lf/c;->a(Landroid/app/Activity;Ldisplay/vmap/ViewVmp;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityMain;->a:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p1}, Ldisplay/vmap/ViewVmp;->startThermalAssistant()V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityMain;->f()V

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityMain;->a:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p1}, Ldisplay/vmap/ViewVmp;->invalidate()V

    sget-boolean p1, Lcom/xcglobe/xclog/ActivityMain;->f:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/xcglobe/xclog/f;->n()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityMain;->g()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    sget-boolean p1, Lcom/xcglobe/xclog/ActivityMain;->e:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lvmaps/core/i;->r:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lm/f;->d()Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f0c002c

    invoke-direct {p0, p1}, Lcom/xcglobe/xclog/ActivityMain;->c(I)V

    :cond_2
    sget-boolean p1, Lcom/xcglobe/xclog/ActivityMain;->f:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/xcglobe/xclog/f;->p()Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f0c002b

    invoke-direct {p0, p1}, Lcom/xcglobe/xclog/ActivityMain;->c(I)V

    :cond_3
    sput-boolean p2, Lcom/xcglobe/xclog/ActivityMain;->f:Z

    goto :goto_3

    :pswitch_7
    invoke-static {v1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityMain;->a:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p1}, Ldisplay/vmap/ViewVmp;->invalidate()V

    goto :goto_3

    :pswitch_8
    invoke-static {v1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityMain;->f()V

    const/4 p1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p1, "igc"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Lm/g;->a(J)V

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lm/g;->h()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/xcglobe/xclog/ActivityMain;->R:Lcom/xcglobe/xclog/a;

    invoke-static {p1, p2}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_3

    :pswitch_9
    invoke-static {v1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    :goto_2
    :pswitch_a
    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityMain;->f()V

    :goto_3
    :pswitch_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_9
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method b(I)I
    .locals 1

    int-to-float p1, p1

    sget v0, Lcom/xcglobe/xclog/l;->aq:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityMain;->a:Ldisplay/vmap/ViewVmp;

    invoke-static {p0, v0}, Lf/c;->a(Landroid/app/Activity;Ldisplay/vmap/ViewVmp;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    sput-object p0, Lcom/xcglobe/xclog/ActivityMain;->d:Lcom/xcglobe/xclog/ActivityMain;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xcglobe/xclog/App;->a(Lcom/xcglobe/xclog/ActivityMain;)V

    invoke-super {p0, p1}, Lcom/xcglobe/xclog/a;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xcglobe/xclog/ActivityMain;->S:Z

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityMain;->h()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/xcglobe/xclog/l;->a()V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/a/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/a/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/xcglobe/xclog/l;->H:Z

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/a/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lm/d;->f:Z

    sget-boolean v0, Lcom/xcglobe/xclog/l;->H:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lm/d;->f:Z

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/xcglobe/xclog/f;->i()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_run_version"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/xcglobe/xclog/l;->a()V

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityMain;->c()V

    invoke-static {}, Lcom/xcglobe/xclog/App;->d()V

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v2, Lcom/xcglobe/xclog/l;->H:Z

    if-nez v2, :cond_4

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v2, Lm/d;->f:Z

    if-nez v2, :cond_5

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v2, 0x7b

    invoke-static {p0, v0, v2}, Landroid/support/v4/a/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_6
    :goto_3
    invoke-static {}, Lcom/xcglobe/xclog/e;->a()V

    invoke-static {p0}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Activity;)V

    sput-boolean p1, Lcom/xcglobe/xclog/ActivityMain;->f:Z

    sput-boolean v1, Lcom/xcglobe/xclog/ActivityMain;->c:Z

    sput-boolean v1, Lcom/xcglobe/xclog/ActivityMain;->e:Z

    :cond_7
    invoke-static {}, Lcom/xcglobe/xclog/App;->c()V

    const p1, 0x7f090005

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityMain;->setContentView(I)V

    const p1, 0x7f070093

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityMain;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ldisplay/vmap/ViewVmp;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityMain;->a:Ldisplay/vmap/ViewVmp;

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityMain;->b()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/xcglobe/xclog/ActivityMain;->d:Lcom/xcglobe/xclog/ActivityMain;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const-string v0, "demo.igc"

    invoke-static {v0}, Lc/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lc/a;->b()V

    goto :goto_0

    :pswitch_2
    const v0, 0x186a0

    invoke-static {v0, v0}, Lcom/xcglobe/xclog/l;->b(II)Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->finish()V

    goto :goto_0

    :pswitch_4
    const v1, 0x42386666    # 46.1f

    const v2, 0x41728f5c    # 15.16f

    const/16 v3, 0x12c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lm/g;->a(FFSJI)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/xcglobe/xclog/l;->b(Landroid/app/Activity;)V

    :goto_0
    :pswitch_5
    invoke-super {p0, p1}, Lcom/xcglobe/xclog/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lconfigs/ActivityConfig;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityMain;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xcglobe/xclog/ActivityPocket;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xcglobe/xclog/ActivityFlights;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onPause()V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityMain;->a:Ldisplay/vmap/ViewVmp;

    invoke-virtual {v0}, Ldisplay/vmap/ViewVmp;->pause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    sget-object p1, Lcom/xcglobe/xclog/ActivityMain;->d:Lcom/xcglobe/xclog/ActivityMain;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xcglobe/xclog/ActivityMain;->d:Lcom/xcglobe/xclog/ActivityMain;

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityMain;->a:Ldisplay/vmap/ViewVmp;

    invoke-static {p1, v0}, Lf/c;->a(Landroid/app/Activity;Ldisplay/vmap/ViewVmp;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget-object v1, p2, v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    aget v1, p3, p1

    if-nez v1, :cond_1

    sput-boolean v2, Lm/d;->f:Z

    invoke-static {}, Lm/d;->d()V

    :cond_1
    aget-object v1, p2, v0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, p3, p1

    if-nez v1, :cond_2

    sput-boolean v2, Lcom/xcglobe/xclog/l;->H:Z

    invoke-static {}, Lcom/xcglobe/xclog/l;->a()V

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityMain;->c()V

    invoke-static {}, Lcom/xcglobe/xclog/App;->d()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onResume()V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityMain;->a:Ldisplay/vmap/ViewVmp;

    invoke-virtual {v0}, Ldisplay/vmap/ViewVmp;->resume()V

    invoke-static {}, Lm/g;->c()V

    sget v0, Lcom/xcglobe/xclog/l;->af:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget v0, Lcom/xcglobe/xclog/l;->af:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityMain;->setRequestedOrientation(I)V

    :cond_1
    sget v0, Lcom/xcglobe/xclog/i;->a:I

    const/16 v3, 0x80

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    :goto_1
    sget-boolean v0, Lcom/xcglobe/xclog/l;->ae:Z

    const/16 v3, 0x400

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    :goto_2
    sget-boolean v0, Lcom/xcglobe/xclog/ActivityMain;->b:Z

    if-eqz v0, :cond_4

    sput-boolean v2, Lcom/xcglobe/xclog/ActivityMain;->b:Z

    :cond_4
    sget v0, Lcom/xcglobe/xclog/l;->ap:I

    add-int/2addr v0, v1

    sput v0, Lcom/xcglobe/xclog/l;->ap:I

    const/4 v0, 0x2

    invoke-static {v0}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityMain;->f()V

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    invoke-static {v2}, Lcom/xcglobe/xclog/l;->a(Z)V

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityMain;->d()V

    invoke-static {}, Lcom/xcglobe/xclog/App;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->finish()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "quit"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(Z)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->finish()V

    :cond_6
    return-void
.end method
