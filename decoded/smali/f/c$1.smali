.class Lf/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ldisplay/ViewSwipeButton$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/c;->b(Ldisplay/vmap/ViewVmp;)V
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

    iput-object p1, p0, Lf/c$1;->b:Lf/c;

    iput-object p2, p0, Lf/c$1;->a:Ldisplay/vmap/ViewVmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(I)V
    .locals 1

    sput p1, Lcom/xcglobe/xclog/l;->ak:I

    const-string v0, "infoboxes_size"

    invoke-static {v0, p1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lf/c$1;->a:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p1}, Ldisplay/vmap/ViewVmp;->initDisplay()V

    return-void
.end method
