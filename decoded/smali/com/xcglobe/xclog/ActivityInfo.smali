.class public Lcom/xcglobe/xclog/ActivityInfo;
.super Lcom/xcglobe/xclog/a;


# static fields
.field static a:Landroid/app/Activity;


# instance fields
.field b:I

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/ImageView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xcglobe/xclog/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    const-string v0, "-"

    const-string v1, "-"

    const-string v2, "-"

    iget-object v3, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v4, "km1"

    invoke-static {v3, v4}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v5, "km2"

    invoke-static {v4, v5}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v6, "km3"

    invoke-static {v5, v6}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v7, "kmmaxtype"

    invoke-static {v6, v7}, Lcom/xcglobe/xclog/j;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-lez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ltypes/q;->a(F)F

    move-result v3

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-int v3, v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityInfo;->f:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/xcglobe/xclog/ActivityInfo;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v3, "-"

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ltypes/q;->a(F)F

    move-result v4

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-int v4, v12

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityInfo;->g:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityInfo;->g:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ltypes/q;->a(F)F

    move-result v5

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-int v5, v12

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityInfo;->h:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityInfo;->h:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-static {}, Lc/c;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v8, "kmmax"

    invoke-static {v7, v8}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    const v3, 0x7f0c0046

    invoke-virtual {p0, v3}, Lcom/xcglobe/xclog/ActivityInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    :cond_3
    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v7, "altmin"

    invoke-static {v1, v7}, Lcom/xcglobe/xclog/j;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Ltypes/q;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v7, "altmax"

    invoke-static {v1, v7}, Lcom/xcglobe/xclog/j;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ltypes/q;->e(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ltypes/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [min/max]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v7, "speed"

    invoke-static {v1, v7}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    invoke-static {v1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ltypes/q;->b(F)F

    move-result v1

    float-to-double v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltypes/q;->c:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [OLC task]"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    const-string v1, "-"

    :goto_3
    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v8, "starttime"

    invoke-static {v7, v8}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xcglobe/xclog/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v8, "duration"

    invoke-static {v7, v8}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityInfo;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/xcglobe/xclog/ActivityInfo;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/xcglobe/xclog/ActivityInfo;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/xcglobe/xclog/ActivityInfo;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    packed-switch v6, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->e:Landroid/widget/TextView;

    goto :goto_5

    :pswitch_1
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->d:Landroid/widget/TextView;

    goto :goto_5

    :pswitch_2
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->c:Landroid/widget/TextView;

    :goto_5
    sget v1, Lcom/xcglobe/xclog/l;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(ILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xcglobe/xclog/l;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityInfo;->b()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    array-length v2, v1

    sub-int/2addr v2, v0

    aget-object v2, v1, v2

    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge p1, v3, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object p1

    const-string v3, "com.xcglobe.flyme.provider"

    invoke-static {p1, v3, v2}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/xcglobe/xclog/ActivityInfo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/xcglobe/xclog/l;->c(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0c0044

    invoke-virtual {p0, v2}, Lcom/xcglobe/xclog/ActivityInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "igc"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/xcglobe/xclog/f;->f()Z

    move-result v1

    const v2, 0x7f070047

    invoke-virtual {p0, v2}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const v2, 0x7f07007b

    invoke-virtual {p0, v2}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityInfo;->a()V

    invoke-static {}, Lm/f;->d()Z

    move-result v2

    const v4, 0x7f07001e

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v2, "kmmax"

    invoke-static {v0, v2}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lc/c;

    iget-object v2, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lc/c;-><init>(Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    const-string v2, "demo.igc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v4}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0, v4}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    return-void

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityInfo;->finish()V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c012b

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xcglobe/xclog/ActivityInfo$1;

    invoke-direct {v1, p0, p1}, Lcom/xcglobe/xclog/ActivityInfo$1;-><init>(Lcom/xcglobe/xclog/ActivityInfo;Ljava/lang/String;)V

    const p1, 0x7f0c0160

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0c00e6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public clickBack(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityInfo;->finish()V

    return-void
.end method

.method public clickDelete(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->b(Ljava/lang/String;)V

    return-void
.end method

.method public clickMap(Landroid/view/View;)V
    .locals 2

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0c00b5

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "igc"

    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xcglobe/xclog/ActivityMap;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public clickSimulation(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-static {p1}, Lc/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xcglobe/xclog/l;->e()V

    const/16 p1, 0x20

    invoke-static {p1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    return-void
.end method

.method public clickUpload(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "igc"

    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xcglobe/xclog/ActivityUpload;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public exportIgc(Landroid/view/View;)V
    .locals 6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xcglobe/xclog/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xcglobe/xclog/l;->d()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c004a

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/xcglobe/xclog/l;->c(Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/igc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/igc/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {p1, v0}, Lcom/xcglobe/xclog/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f0c0088

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/xcglobe/igc/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/xcglobe/xclog/l;->c(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/xcglobe/xclog/l;->c(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityInfo;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->setTheme(I)V

    sput-object p0, Lcom/xcglobe/xclog/ActivityInfo;->a:Landroid/app/Activity;

    invoke-super {p0, p1}, Lcom/xcglobe/xclog/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090004

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->setContentView(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->S:Z

    const p1, 0x7f070082

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->c:Landroid/widget/TextView;

    const p1, 0x7f070083

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->d:Landroid/widget/TextView;

    const p1, 0x7f070084

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->e:Landroid/widget/TextView;

    const p1, 0x7f07007d

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->f:Landroid/widget/ImageView;

    const p1, 0x7f07007e

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->g:Landroid/widget/ImageView;

    const p1, 0x7f07007f

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->h:Landroid/widget/ImageView;

    const p1, 0x7f070081

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->i:Landroid/widget/TextView;

    const p1, 0x7f070085

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->j:Landroid/widget/TextView;

    const p1, 0x7f070086

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo;->k:Landroid/widget/TextView;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityInfo;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onResume()V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityInfo;->b()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onStart()V

    return-void
.end method

.method public openEarth(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    const v0, 0x7f0c0057

    invoke-static {v0, p1}, Lcom/xcglobe/xclog/l;->a(IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xcglobe/xclog/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li/f;->a(Ljava/lang/String;Li/a;)Li/b;

    move-result-object v0

    new-instance v1, Li/g;

    invoke-direct {v1}, Li/g;-><init>()V

    iget-object v2, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Li/g;->a(Li/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kml/flyme.kml"

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "kml/flyme.kml"

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0c004a

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lcom/xcglobe/xclog/l;->c(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public sendToMail(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "igc"

    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xcglobe/xclog/ActivityUploadEmail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityInfo;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
