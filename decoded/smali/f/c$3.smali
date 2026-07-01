.class Lf/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/c;->a(Ldisplay/vmap/ViewVmp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldisplay/vmap/ViewVmp;

.field final synthetic b:Lf/c;


# direct methods
.method constructor <init>(Lf/c;Ldisplay/vmap/ViewVmp;)V
    .locals 0

    iput-object p1, p0, Lf/c$3;->b:Lf/c;

    iput-object p2, p0, Lf/c$3;->a:Ldisplay/vmap/ViewVmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p2, Ldisplay/vmap/VmpEditor;

    iget-object v0, p0, Lf/c$3;->a:Ldisplay/vmap/ViewVmp;

    invoke-direct {p2, v0}, Ldisplay/vmap/VmpEditor;-><init>(Ldisplay/vmap/ViewVmp;)V

    invoke-virtual {p2}, Ldisplay/vmap/VmpEditor;->removeAllBoxes()V

    iget-object p2, p0, Lf/c$3;->b:Lf/c;

    iget-object p2, p2, Lf/c;->b:Lcom/xcglobe/xclog/App;

    check-cast p1, Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    return-void
.end method
