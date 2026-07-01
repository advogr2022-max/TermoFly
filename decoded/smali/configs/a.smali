.class public Lconfigs/a;
.super Landroid/preference/PreferenceActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lconfigs/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field protected l:Lcom/xcglobe/xclog/App;

.field protected m:Lconfigs/a;

.field protected n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lconfigs/a;->n:Z

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/xcglobe/xclog/App;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lconfigs/a;->l:Lcom/xcglobe/xclog/App;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lconfigs/a;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/xcglobe/xclog/App;

    iput-object p1, p0, Lconfigs/a;->l:Lcom/xcglobe/xclog/App;

    iput-object p0, p0, Lconfigs/a;->m:Lconfigs/a;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lconfigs/a;->l:Lcom/xcglobe/xclog/App;

    invoke-static {}, Lcom/xcglobe/xclog/App;->h()V

    invoke-direct {p0}, Lconfigs/a;->a()V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-direct {p0}, Lconfigs/a;->a()V

    iget-object v0, p0, Lconfigs/a;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lconfigs/a;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lconfigs/a;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lconfigs/a;->a:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lconfigs/a;->l:Lcom/xcglobe/xclog/App;

    invoke-virtual {v0, p0}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Activity;)V

    iget-boolean v0, p0, Lconfigs/a;->n:Z

    if-eqz v0, :cond_0

    new-instance v0, Lconfigs/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lconfigs/a$a;-><init>(Lconfigs/a;Lconfigs/a$1;)V

    iput-object v0, p0, Lconfigs/a;->a:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lconfigs/a;->a:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xcglobe.action.main"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lconfigs/a;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
