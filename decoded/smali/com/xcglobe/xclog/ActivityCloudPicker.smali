.class public Lcom/xcglobe/xclog/ActivityCloudPicker;
.super Lcom/xcglobe/xclog/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xcglobe/xclog/ActivityCloudPicker$a;
    }
.end annotation


# instance fields
.field a:I

.field private b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xcglobe/xclog/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(ILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/xcglobe/xclog/ActivityCloudPicker;->a:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "file"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".cup"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cup"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk/a;->a(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityCloudPicker;->R:Lcom/xcglobe/xclog/a;

    invoke-virtual {p1}, Lcom/xcglobe/xclog/a;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/xcglobe/xclog/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09002c

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityCloudPicker;->setContentView(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xcglobe/xclog/ActivityCloudPicker;->S:Z

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityCloudPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xcglobe/xclog/ActivityCloudPicker;->a:I

    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityCloudPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityCloudPicker;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityCloudPicker;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityCloudPicker;->b:Landroid/webkit/WebView;

    new-instance v0, Lcom/xcglobe/xclog/ActivityCloudPicker$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xcglobe/xclog/ActivityCloudPicker$a;-><init>(Lcom/xcglobe/xclog/ActivityCloudPicker;Lcom/xcglobe/xclog/ActivityCloudPicker$1;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityCloudPicker;->b:Landroid/webkit/WebView;

    const-string v0, "<html><body>Connecting to cloud...</body></html>"

    const-string v2, "text/html; charset=UTF-8"

    invoke-virtual {p1, v0, v2, v1}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    return-void
.end method
