.class Ld/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ld/c;


# direct methods
.method constructor <init>(Ld/c;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Ld/c$2;->b:Ld/c;

    iput-object p2, p0, Ld/c$2;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Ld/d;->a()V

    iget-object p1, p0, Ld/c$2;->b:Ld/c;

    invoke-static {p1}, Ld/c;->c(Ld/c;)Ld/n;

    move-result-object p1

    invoke-interface {p1}, Ld/n;->a()V

    iget-object p1, p0, Ld/c$2;->b:Ld/c;

    iget-object p1, p1, Ld/c;->a:Lcom/xcglobe/xclog/App;

    iget-object p1, p0, Ld/c$2;->a:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    return-void
.end method
