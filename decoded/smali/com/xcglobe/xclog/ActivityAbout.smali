.class public Lcom/xcglobe/xclog/ActivityAbout;
.super Lcom/xcglobe/xclog/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xcglobe/xclog/a;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xcglobe/xclog/f;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xcglobe/xclog/f;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityAbout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {}, Lcom/xcglobe/xclog/f;->n()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/xcglobe/xclog/f;->q()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c0140

    invoke-static {v3}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xcglobe/xclog/f;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/xcglobe/xclog/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityAbout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v3, 0x7f070005

    invoke-virtual {p0, v3}, Lcom/xcglobe/xclog/ActivityAbout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f070004

    invoke-virtual {p0, v4}, Lcom/xcglobe/xclog/ActivityAbout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/xcglobe/xclog/f;->h()Z

    move-result v5

    if-eqz v5, :cond_2

    const v0, 0x7f0c00ab

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/xcglobe/xclog/f;->l()Z

    move-result v4

    if-nez v4, :cond_3

    const v0, 0x7f0c00ae

    :goto_0
    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {}, Lcom/xcglobe/xclog/f;->e()I

    move-result v0

    if-lez v0, :cond_4

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const v0, 0x7f0c00aa

    goto :goto_0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected a(ILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0xf

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityAbout;->a()V

    :cond_0
    return-void
.end method

.method public clickBuyLicence(Landroid/view/View;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xcglobe/xclog/f;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "flyme/buy?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/xcglobe/xclog/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityAbout;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public clickEnterLicence(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lf/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public clickUpgrade(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lb/j;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xcglobe/xclog/a;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xcglobe/xclog/ActivityAbout;->S:Z

    const/high16 p1, 0x7f090000

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityAbout;->setContentView(I)V

    invoke-static {}, Lb/l;->a()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onResume()V

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityAbout;->a()V

    return-void
.end method
