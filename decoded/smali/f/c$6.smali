.class Lf/c$6;
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

    iput-object p1, p0, Lf/c$6;->b:Lf/c;

    iput-object p2, p0, Lf/c$6;->a:Ldisplay/vmap/ViewVmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lf/c$6;->b:Lf/c;

    iget-object v0, p0, Lf/c$6;->a:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p1, v0}, Lf/c;->a(Ldisplay/vmap/ViewVmp;)V

    return-void
.end method
