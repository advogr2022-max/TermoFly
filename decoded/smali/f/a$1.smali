.class Lf/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/a;


# direct methods
.method constructor <init>(Lf/a;)V
    .locals 0

    iput-object p1, p0, Lf/a$1;->a:Lf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lf/a$1;->a:Lf/a;

    iget-object p1, p1, Lf/a;->b:Ltypes/PoiPoint;

    iget-object v0, p0, Lf/a$1;->a:Lf/a;

    iget-object v0, v0, Lf/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iget-object p1, p0, Lf/a$1;->a:Lf/a;

    iget-object p1, p1, Lf/a;->b:Ltypes/PoiPoint;

    iget-object v0, p0, Lf/a$1;->a:Lf/a;

    iget-object v0, v0, Lf/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ltypes/q;->f(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p1, Ltypes/PoiPoint;->k:S

    iget-object p1, p0, Lf/a$1;->a:Lf/a;

    iget-object p1, p1, Lf/a;->b:Ltypes/PoiPoint;

    iget-object v0, p0, Lf/a$1;->a:Lf/a;

    iget-object v0, v0, Lf/a;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Ltypes/PoiPoint;->i:F

    iget-object p1, p0, Lf/a$1;->a:Lf/a;

    iget-object p1, p1, Lf/a;->b:Ltypes/PoiPoint;

    iget-object v0, p0, Lf/a$1;->a:Lf/a;

    iget-object v0, v0, Lf/a;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Ltypes/PoiPoint;->j:F

    iget-object p1, p0, Lf/a$1;->a:Lf/a;

    iget-object p1, p1, Lf/a;->c:Lf/a$a;

    iget-object v0, p0, Lf/a$1;->a:Lf/a;

    iget-object v0, v0, Lf/a;->b:Ltypes/PoiPoint;

    invoke-interface {p1, v0}, Lf/a$a;->call(Ltypes/PoiPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lf/a$1;->a:Lf/a;

    invoke-virtual {p1}, Lf/a;->dismiss()V

    return-void
.end method
