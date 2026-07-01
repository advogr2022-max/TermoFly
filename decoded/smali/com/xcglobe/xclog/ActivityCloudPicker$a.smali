.class Lcom/xcglobe/xclog/ActivityCloudPicker$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xcglobe/xclog/ActivityCloudPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xcglobe/xclog/ActivityCloudPicker;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/xcglobe/xclog/ActivityCloudPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityCloudPicker$a;->a:Lcom/xcglobe/xclog/ActivityCloudPicker;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xcglobe/xclog/ActivityCloudPicker$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xcglobe/xclog/ActivityCloudPicker;Lcom/xcglobe/xclog/ActivityCloudPicker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xcglobe/xclog/ActivityCloudPicker$a;-><init>(Lcom/xcglobe/xclog/ActivityCloudPicker;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-boolean p2, p0, Lcom/xcglobe/xclog/ActivityCloudPicker$a;->b:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/xcglobe/xclog/ActivityCloudPicker$a;->b:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://xcglobe.com/tools/cloudapi/picker/domains/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityCloudPicker$a;->a:Lcom/xcglobe/xclog/ActivityCloudPicker;

    iget v0, v0, Lcom/xcglobe/xclog/ActivityCloudPicker;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "#pick"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityCloudPicker$a;->a:Lcom/xcglobe/xclog/ActivityCloudPicker;

    iget p1, p1, Lcom/xcglobe/xclog/ActivityCloudPicker;->a:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "waypoints/"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityCloudPicker$a;->a:Lcom/xcglobe/xclog/ActivityCloudPicker;

    iget p1, p1, Lcom/xcglobe/xclog/ActivityCloudPicker;->a:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const-string p1, "tasks/"

    const-string v0, "?"

    const-string v2, "?a=flyme-task&"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityCloudPicker$a;->a:Lcom/xcglobe/xclog/ActivityCloudPicker;

    iget p1, p1, Lcom/xcglobe/xclog/ActivityCloudPicker;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "Openair/"

    :goto_0
    new-instance v0, Lb/e;

    invoke-direct {v0}, Lb/e;-><init>()V

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lb/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
