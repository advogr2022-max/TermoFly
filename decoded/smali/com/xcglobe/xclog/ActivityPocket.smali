.class public Lcom/xcglobe/xclog/ActivityPocket;
.super Lcom/xcglobe/xclog/a;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# instance fields
.field private e:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0c0105

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/ActivityPocket;->a:Ljava/lang/String;

    const v0, 0x7f0c0158

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/ActivityPocket;->b:Ljava/lang/String;

    const v0, 0x7f0c0157

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/ActivityPocket;->c:Ljava/lang/String;

    const v0, 0x7f0c009d

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/ActivityPocket;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xcglobe/xclog/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lm/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lm/g;->e()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xcglobe/xclog/ActivityPocket;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xcglobe/xclog/l;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lm/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xcglobe/xclog/ActivityPocket;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lm/d;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xcglobe/xclog/ActivityPocket;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xcglobe/xclog/ActivityPocket;->c:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityPocket;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(ILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityPocket;->a()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lm/g;->h()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/xcglobe/xclog/ActivityPocket;->R:Lcom/xcglobe/xclog/a;

    invoke-static {p1, p2}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityPocket;->finish()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public btnNormalMode(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/xcglobe/xclog/l;->e()V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityPocket;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-static {}, Lcom/xcglobe/xclog/l;->e()V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityPocket;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xcglobe/xclog/a;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xcglobe/xclog/ActivityPocket;->S:Z

    const p1, 0x7f090008

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityPocket;->setContentView(I)V

    const p1, 0x7f07006c

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityPocket;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityPocket;->e:Landroid/widget/TextView;

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onResume()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->a(Z)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityPocket;->a()V

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityPocket;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/xcglobe/xclog/l;->Z:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    sget-boolean v1, Lcom/xcglobe/xclog/l;->ac:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/xcglobe/xclog/ActivityPocket$1;

    invoke-direct {v1, p0}, Lcom/xcglobe/xclog/ActivityPocket$1;-><init>(Lcom/xcglobe/xclog/ActivityPocket;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method
