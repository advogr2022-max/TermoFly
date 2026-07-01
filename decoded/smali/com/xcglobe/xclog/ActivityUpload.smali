.class public Lcom/xcglobe/xclog/ActivityUpload;
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

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityUpload;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/xcglobe/xclog/ActivityUpload;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xcglobe/xclog/ActivityUpload;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    const v0, 0x7f070074

    const v1, 0x7f01001f

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/xcglobe/xclog/l;->a(IIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "user.server_id"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xcglobe/xclog/l;->a(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    move-object v0, v2

    :goto_0
    const-string v2, ""

    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    const-string v4, "leo_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f01000b

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const-string v2, "user.leo_server_id"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/xcglobe/xclog/l;->a(ILjava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_2
    :goto_1
    const-string p1, "user.glider"

    invoke-static {p1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f07004f

    invoke-virtual {p0, v3}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    const-string v4, "user.gtype"

    invoke-static {v4}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f070089

    invoke-virtual {p0, v3}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xcglobe/xclog/ActivityUpload;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityUpload;->a()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f01001e

    invoke-static {v4, v1, v0}, Lcom/xcglobe/xclog/l;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "leo_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f01000a

    invoke-static {v1, v5, v2}, Lcom/xcglobe/xclog/l;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c014c

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070090

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0097

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07008e

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityUpload;->clickChangeData(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private b()V
    .locals 5

    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f01001f

    invoke-static {v2, v0, v1}, Lcom/xcglobe/xclog/l;->a(IIZ)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user.server_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    const-string v3, "leo_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v2, 0x7f070059

    invoke-virtual {p0, v2}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const v3, 0x7f01000b

    invoke-static {v3, v2, v1}, Lcom/xcglobe/xclog/l;->a(IIZ)Ljava/lang/String;

    move-result-object v2

    const-string v1, "user.leo_server_id"

    invoke-static {v1, v2}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f07004f

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const-string v3, ""

    const-string v4, "xcglobe"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v0, "user.gtype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.username"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070091

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.password"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user.glider"

    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 7

    const v0, 0x7f0c0141

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0145

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityUpload;->b:Landroid/app/ProgressDialog;

    new-instance v0, Lb/k;

    invoke-direct {v0}, Lb/k;-><init>()V

    const v1, 0x7f07008a

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f07008d

    invoke-virtual {p0, v4}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    new-array v3, v3, [Lb/k$a;

    new-instance v5, Lb/k$a;

    iget-object v6, p0, Lcom/xcglobe/xclog/ActivityUpload;->a:Ljava/lang/String;

    invoke-direct {v5, p0, v6, v1, v4}, Lb/k$a;-><init>(Lcom/xcglobe/xclog/ActivityUpload;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v5, v3, v2

    invoke-virtual {v0, v3}, Lb/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 5

    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f01001f

    invoke-static {v2, v0, v1}, Lcom/xcglobe/xclog/l;->a(IIZ)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    const-string v3, "leo_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v2, 0x7f070059

    invoke-virtual {p0, v2}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const v3, 0x7f01000b

    invoke-static {v3, v2, v1}, Lcom/xcglobe/xclog/l;->a(IIZ)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v1, ""

    const-string v3, "xcglobe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.username"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f07006a

    invoke-virtual {p0, v2}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user.password"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f070091

    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityUpload;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c0144

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityUpload;->a:Ljava/lang/String;

    const-string v2, "uploaded"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const v1, 0x7f0c0141

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0, v1, v0, p1}, Lcom/xcglobe/xclog/l;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0c0160

    new-instance p3, Lcom/xcglobe/xclog/ActivityUpload$3;

    invoke-direct {p3, p0, p4}, Lcom/xcglobe/xclog/ActivityUpload$3;-><init>(Lcom/xcglobe/xclog/ActivityUpload;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0c00e6

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    invoke-static {v0, v2}, Lcom/xcglobe/xclog/l;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public clickCancel(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityUpload;->finish()V

    return-void
.end method

.method public clickChangeData(Landroid/view/View;)V
    .locals 1

    const p1, 0x7f07008c

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f07008b

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public clickOk(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityUpload;->b()V

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityUpload;->c()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/xcglobe/xclog/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090009

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityUpload;->setContentView(I)V

    iput-object p0, p0, Lcom/xcglobe/xclog/ActivityUpload;->c:Landroid/app/Activity;

    const p1, 0x7f070074

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    new-instance v0, Lcom/xcglobe/xclog/ActivityUpload$1;

    invoke-direct {v0, p0}, Lcom/xcglobe/xclog/ActivityUpload$1;-><init>(Lcom/xcglobe/xclog/ActivityUpload;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f070059

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityUpload;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    new-instance v0, Lcom/xcglobe/xclog/ActivityUpload$2;

    invoke-direct {v0, p0}, Lcom/xcglobe/xclog/ActivityUpload$2;-><init>(Lcom/xcglobe/xclog/ActivityUpload;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onPause()V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityUpload;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onResume()V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityUpload;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "igc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityUpload;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityUpload;->finish()V

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xcglobe/xclog/ActivityUpload;->a(Z)V

    invoke-static {}, Lb/l;->a()V

    return-void
.end method
