.class public Lf/c;
.super Landroid/app/Dialog;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lcom/xcglobe/xclog/App;

.field c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ldisplay/vmap/ViewVmp;)V
    .locals 2

    new-instance v0, Lf/c;

    invoke-direct {v0, p0}, Lf/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/xcglobe/xclog/App;

    iput-object v1, v0, Lf/c;->b:Lcom/xcglobe/xclog/App;

    iput-object v0, v0, Lf/c;->c:Landroid/app/Dialog;

    iput-object p0, v0, Lf/c;->a:Landroid/app/Activity;

    invoke-direct {v0, p1}, Lf/c;->b(Ldisplay/vmap/ViewVmp;)V

    return-void
.end method

.method static synthetic a(Lf/c;)V
    .locals 0

    invoke-direct {p0}, Lf/c;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lm/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lf/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0126

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0160

    new-instance v2, Lf/c$4;

    invoke-direct {v2, p0}, Lf/c$4;-><init>(Lf/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(Z)V

    iget-object v0, p0, Lf/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private b(Ldisplay/vmap/ViewVmp;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/c;->requestWindowFeature(I)Z

    const v1, 0x7f09000e

    invoke-virtual {p0, v1}, Lf/c;->setContentView(I)V

    invoke-virtual {p0, v0}, Lf/c;->setCanceledOnTouchOutside(Z)V

    const v1, 0x7f070078

    invoke-virtual {p0, v1}, Lf/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ldisplay/ViewSwipeButton;

    const v2, 0x7f0c00a2

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ldisplay/ViewSwipeButton;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ldisplay/ViewSwipeButton;->changeDimensions()V

    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lf/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ldisplay/ViewSwipeButton;

    const-string v2, "1"

    const v3, 0x7f06003c

    invoke-virtual {v1, v0, v2, v3}, Ldisplay/ViewSwipeButton;->add(ILjava/lang/String;I)V

    const-string v2, "2"

    const/4 v3, 0x2

    const v4, 0x7f06003d

    invoke-virtual {v1, v3, v2, v4}, Ldisplay/ViewSwipeButton;->add(ILjava/lang/String;I)V

    const-string v2, "3"

    const/4 v3, 0x3

    const v4, 0x7f06003e

    invoke-virtual {v1, v3, v2, v4}, Ldisplay/ViewSwipeButton;->add(ILjava/lang/String;I)V

    const-string v2, "4"

    const/4 v3, 0x4

    const v4, 0x7f06003f

    invoke-virtual {v1, v3, v2, v4}, Ldisplay/ViewSwipeButton;->add(ILjava/lang/String;I)V

    const-string v2, "5"

    const/4 v4, 0x5

    const v5, 0x7f060040

    invoke-virtual {v1, v4, v2, v5}, Ldisplay/ViewSwipeButton;->add(ILjava/lang/String;I)V

    const v2, 0x7f0c00a3

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ldisplay/ViewSwipeButton;->title:Ljava/lang/String;

    sget v2, Lcom/xcglobe/xclog/l;->ak:I

    invoke-virtual {v1, v2}, Ldisplay/ViewSwipeButton;->select(I)Z

    invoke-virtual {v1}, Ldisplay/ViewSwipeButton;->changeDimensions()V

    new-instance v2, Lf/c$1;

    invoke-direct {v2, p0, p1}, Lf/c$1;-><init>(Lf/c;Ldisplay/vmap/ViewVmp;)V

    invoke-virtual {v1, v2}, Ldisplay/ViewSwipeButton;->setCallback(Ldisplay/ViewSwipeButton$Callback;)V

    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lf/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lf/c$5;

    invoke-direct {v2, p0, p1}, Lf/c$5;-><init>(Lf/c;Ldisplay/vmap/ViewVmp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Lf/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lf/c$6;

    invoke-direct {v2, p0, p1}, Lf/c$6;-><init>(Lf/c;Ldisplay/vmap/ViewVmp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07001c

    invoke-virtual {p0, p1}, Lf/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lf/c$7;

    invoke-direct {v1, p0}, Lf/c$7;-><init>(Lf/c;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07001a

    invoke-virtual {p0, p1}, Lf/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lf/c$8;

    invoke-direct {v1, p0}, Lf/c$8;-><init>(Lf/c;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070017

    invoke-virtual {p0, p1}, Lf/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lf/c$9;

    invoke-direct {v1, p0}, Lf/c$9;-><init>(Lf/c;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070011

    invoke-virtual {p0, p1}, Lf/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lf/c$10;

    invoke-direct {v1, p0}, Lf/c$10;-><init>(Lf/c;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070013

    invoke-virtual {p0, p1}, Lf/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sget v1, Lcom/xcglobe/xclog/l;->ai:I

    if-ne v1, v3, :cond_3

    invoke-static {}, Lm/f;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lm/g;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lm/g;->z:Z

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/xcglobe/xclog/TermoFlyService;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    new-instance v1, Lf/c$11;

    invoke-direct {v1, p0}, Lf/c$11;-><init>(Lf/c;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    const p1, 0x7f070019

    invoke-virtual {p0, p1}, Lf/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-static {}, Lm/f;->d()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    const v1, 0x7f0c0108

    goto :goto_2

    :cond_4
    invoke-static {}, Lc/a;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0c0125

    goto :goto_2

    :cond_5
    const v1, 0x7f0c0126

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lf/c$12;

    invoke-direct {v1, p0, v0}, Lf/c$12;-><init>(Lf/c;Z)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lf/c;->b:Lcom/xcglobe/xclog/App;

    const/16 p1, -0x5a

    invoke-static {p0, p1}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Dialog;I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    iget-object v0, p0, Lf/c;->a:Landroid/app/Activity;

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v1

    sget-object v2, Ltypes/f;->a:Ltypes/PoiPoint;

    new-instance v3, Lf/c$2;

    invoke-direct {v3, p0}, Lf/c$2;-><init>(Lf/c;)V

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lf/b/b;->a(Landroid/app/Activity;Ltypes/GpsVal;Ltypes/PoiPoint;ZLf/b/b$a;)V

    return-void
.end method

.method a(Ldisplay/vmap/ViewVmp;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lf/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c012e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lf/c$3;

    invoke-direct {v1, p0, p1}, Lf/c$3;-><init>(Lf/c;Ldisplay/vmap/ViewVmp;)V

    const p1, 0x7f0c0160

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0c00e6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iget-object v0, p0, Lf/c;->b:Lcom/xcglobe/xclog/App;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    iget-object p1, p0, Lf/c;->b:Lcom/xcglobe/xclog/App;

    iget-object p1, p0, Lf/c;->c:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    const/4 p1, 0x0

    return p1
.end method
