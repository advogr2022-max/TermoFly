.class Lf/c$5;
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
.field final synthetic a:Ldisplay/vmap/ViewVmp;

.field final synthetic b:Lf/c;


# direct methods
.method constructor <init>(Lf/c;Ldisplay/vmap/ViewVmp;)V
    .locals 0

    iput-object p1, p0, Lf/c$5;->b:Lf/c;

    iput-object p2, p0, Lf/c$5;->a:Ldisplay/vmap/ViewVmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ldisplay/vmap/VmpEditor;

    iget-object v0, p0, Lf/c$5;->a:Ldisplay/vmap/ViewVmp;

    invoke-direct {p1, v0}, Ldisplay/vmap/VmpEditor;-><init>(Ldisplay/vmap/ViewVmp;)V

    invoke-virtual {p1}, Ldisplay/vmap/VmpEditor;->addBox()V

    return-void
.end method
