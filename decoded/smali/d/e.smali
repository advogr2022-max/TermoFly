.class public Ld/e;
.super Ljava/lang/Object;

# interfaces
.implements Ld/n;


# static fields
.field public static a:I = 0x0

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ZZ)V
    .locals 2

    invoke-static {}, Lcom/xcglobe/xclog/App;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sput-boolean v0, Lm/g;->L:Z

    :cond_1
    if-eqz p0, :cond_2

    sput-boolean v0, Lm/g;->M:Z

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xcglobe/xclog/App;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ld/e$1;

    invoke-direct {v1, p1, p0}, Ld/e$1;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b(ZZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sput-boolean v0, Lm/g;->L:Z

    :cond_0
    if-eqz p0, :cond_1

    sput-boolean v0, Lm/g;->M:Z

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xcglobe/xclog/App;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ld/e$2;

    invoke-direct {v1, p1, p0}, Ld/e$2;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xcglobe/xclog/l;->J:Z

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "external_devmode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xcglobe.action.main"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "event"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xcglobe/xclog/App;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public a(FFJ)V
    .locals 1

    invoke-static {}, Lc/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lm/g;->a(FFJ)V

    :cond_0
    return-void
.end method

.method public a(FFSJI)V
    .locals 1

    invoke-static {}, Lc/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Ld/e;->b:Z

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lm/b;->a(FF)I

    move-result v0

    sput v0, Ld/e;->a:I

    invoke-static {}, Lm/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Ld/e;->b:Z

    :cond_0
    invoke-static/range {p1 .. p6}, Lm/g;->a(FFSJI)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v1}, Ld/e;->a(ZZ)V

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v1}, Ld/e;->a(ZZ)V

    :goto_0
    invoke-static {}, Lm/g;->l()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    const-string v0, "external_device_address"

    invoke-static {v0, p2}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "external_device_model"

    invoke-static {p2, p1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;I)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p2, v0}, Ld/e;->b(ZZ)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v0}, Ld/e;->b(ZZ)V

    :goto_0
    invoke-static {}, Lm/g;->l()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public b(I)V
    .locals 2

    invoke-static {}, Lcom/xcglobe/xclog/App;->f()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sput-boolean p1, Ld/e;->b:Z

    invoke-static {}, Lcom/xcglobe/xclog/TermoFlyService;->a()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xcglobe.action.main"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "event"

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xcglobe/xclog/App;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
