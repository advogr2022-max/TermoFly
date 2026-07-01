.class Lcom/xcglobe/xclog/ActivityMain$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xcglobe/xclog/ActivityMain;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xcglobe/xclog/ActivityMain;


# direct methods
.method constructor <init>(Lcom/xcglobe/xclog/ActivityMain;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityMain$1;->a:Lcom/xcglobe/xclog/ActivityMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/xcglobe/xclog/ActivityMain$1;->a:Lcom/xcglobe/xclog/ActivityMain;

    iget-object p2, p2, Lcom/xcglobe/xclog/ActivityMain;->Q:Lcom/xcglobe/xclog/App;

    check-cast p1, Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    return-void
.end method
