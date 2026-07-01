.class public Lf/b;
.super Landroid/app/Dialog;


# instance fields
.field a:Lcom/xcglobe/xclog/App;

.field b:Landroid/app/Dialog;

.field c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 3

    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lf/b;->setContentView(I)V

    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lf/b;->setTitle(I)V

    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lf/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Lf/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lf/b$1;

    invoke-direct {v2, p0, v0}, Lf/b$1;-><init>(Lf/b;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lf/b;->a:Lcom/xcglobe/xclog/App;

    const/16 v0, 0x50

    invoke-static {p0, v0}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Dialog;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lf/b;

    invoke-direct {v0, p0}, Lf/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/xcglobe/xclog/App;

    iput-object v1, v0, Lf/b;->a:Lcom/xcglobe/xclog/App;

    iput-object v0, v0, Lf/b;->b:Landroid/app/Dialog;

    iput-object p0, v0, Lf/b;->c:Landroid/app/Activity;

    invoke-direct {v0}, Lf/b;->a()V

    return-void
.end method
