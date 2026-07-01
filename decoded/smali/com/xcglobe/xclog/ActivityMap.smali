.class public Lcom/xcglobe/xclog/ActivityMap;
.super Lcom/xcglobe/xclog/a;


# instance fields
.field a:Ljava/lang/String;

.field b:Ldisplay/vmap/ViewVmp;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xcglobe/xclog/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityMap;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(ILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x10

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p1, 0x2

    invoke-static {p1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public clickMap(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMap;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xcglobe/xclog/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090006

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityMap;->setContentView(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xcglobe/xclog/ActivityMap;->S:Z

    const p1, 0x7f070092

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityMap;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ldisplay/vmap/ViewVmp;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityMap;->b:Ldisplay/vmap/ViewVmp;

    const/16 p1, 0x8

    invoke-static {p1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMap;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "igc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityMap;->a:Ljava/lang/String;

    const-string v0, "task"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xcglobe/xclog/ActivityMap;->c:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0c00d3

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x1e

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f0c00a1

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    const/4 v3, 0x2

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v0, 0xa

    const/4 v2, 0x3

    const v3, 0x7f0c0108

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/xcglobe/xclog/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lconfigs/ActivityConfig;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityMap;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xcglobe/xclog/ActivityMain;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xcglobe/xclog/ActivityFlights;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onPause()V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityMap;->b:Ldisplay/vmap/ViewVmp;

    invoke-virtual {v0}, Ldisplay/vmap/ViewVmp;->pause()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xcglobe/xclog/ActivityMain;->b:Z

    invoke-static {}, Lm/g;->b()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onResume()V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityMap;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityMap;->a:Ljava/lang/String;

    invoke-static {v0}, Lm/g;->b(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/xcglobe/xclog/ActivityMap;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lm/g;->j()Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityMap;->b:Ldisplay/vmap/ViewVmp;

    invoke-virtual {v0}, Ldisplay/vmap/ViewVmp;->resume()V

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    invoke-static {v0}, Lb/g;->a(Ltypes/GpsVal;)V

    return-void
.end method
