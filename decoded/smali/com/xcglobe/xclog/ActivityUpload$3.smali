.class Lcom/xcglobe/xclog/ActivityUpload$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xcglobe/xclog/ActivityUpload;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xcglobe/xclog/ActivityUpload;


# direct methods
.method constructor <init>(Lcom/xcglobe/xclog/ActivityUpload;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityUpload$3;->b:Lcom/xcglobe/xclog/ActivityUpload;

    iput-object p2, p0, Lcom/xcglobe/xclog/ActivityUpload$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityUpload$3;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityUpload$3;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p2, p0, Lcom/xcglobe/xclog/ActivityUpload$3;->b:Lcom/xcglobe/xclog/ActivityUpload;

    invoke-virtual {p2, p1}, Lcom/xcglobe/xclog/ActivityUpload;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
