.class Lcom/xcglobe/xclog/ActivityInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xcglobe/xclog/ActivityInfo;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xcglobe/xclog/ActivityInfo;


# direct methods
.method constructor <init>(Lcom/xcglobe/xclog/ActivityInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo$1;->b:Lcom/xcglobe/xclog/ActivityInfo;

    iput-object p2, p0, Lcom/xcglobe/xclog/ActivityInfo$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo$1;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityInfo$1;->b:Lcom/xcglobe/xclog/ActivityInfo;

    invoke-virtual {p1}, Lcom/xcglobe/xclog/ActivityInfo;->finish()V

    return-void
.end method
