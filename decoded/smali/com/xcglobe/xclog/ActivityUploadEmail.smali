.class public Lcom/xcglobe/xclog/ActivityUploadEmail;
.super Lcom/xcglobe/xclog/a;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/app/ProgressDialog;

.field c:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xcglobe/xclog/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityUploadEmail;->b:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "user.civlid"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xcglobe/xclog/ActivityUploadEmail;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".igc"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityUploadEmail;->a:Ljava/lang/String;

    :goto_0
    const v1, 0x7f070053

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityUploadEmail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityUploadEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "user.email_igc"

    invoke-static {v1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "user.email_igc"

    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityUploadEmail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clickCancel(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityUploadEmail;->finish()V

    return-void
.end method

.method public clickOk(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityUploadEmail;->b()V

    const-string p1, "user.email_igc"

    invoke-static {p1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f070052

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityUploadEmail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f070053

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityUploadEmail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f070054

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityUploadEmail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    iget-object v3, p0, Lcom/xcglobe/xclog/ActivityUploadEmail;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lb/f;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xcglobe/xclog/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09000a

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityUploadEmail;->setContentView(I)V

    iput-object p0, p0, Lcom/xcglobe/xclog/ActivityUploadEmail;->c:Landroid/app/Activity;

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onPause()V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityUploadEmail;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onResume()V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityUploadEmail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "igc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityUploadEmail;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityUploadEmail;->finish()V

    :goto_0
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityUploadEmail;->a()V

    return-void
.end method
