.class Lf/c$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/c;->b(Ldisplay/vmap/ViewVmp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/c;


# direct methods
.method constructor <init>(Lf/c;)V
    .locals 0

    iput-object p1, p0, Lf/c$11;->a:Lf/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lm/f;->b()V

    iget-object p1, p0, Lf/c$11;->a:Lf/c;

    iget-object p1, p1, Lf/c;->b:Lcom/xcglobe/xclog/App;

    iget-object p1, p0, Lf/c$11;->a:Lf/c;

    iget-object p1, p1, Lf/c;->c:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    iget-object p1, p0, Lf/c$11;->a:Lf/c;

    invoke-virtual {p1}, Lf/c;->dismiss()V

    return-void
.end method
