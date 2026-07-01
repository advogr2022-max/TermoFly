.class Lmymenu/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmymenu/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmymenu/a;

.field final synthetic b:Lmymenu/b;

.field final synthetic c:Lmymenu/a;


# direct methods
.method constructor <init>(Lmymenu/a;Lmymenu/a;Lmymenu/b;)V
    .locals 0

    iput-object p1, p0, Lmymenu/a$1;->c:Lmymenu/a;

    iput-object p2, p0, Lmymenu/a$1;->a:Lmymenu/a;

    iput-object p3, p0, Lmymenu/a$1;->b:Lmymenu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lmymenu/a$1;->a:Lmymenu/a;

    iget-object p2, p0, Lmymenu/a$1;->b:Lmymenu/b;

    iget-object p2, p2, Lmymenu/b;->c:[Lmymenu/c;

    aget-object p2, p2, p3

    iget p2, p2, Lmymenu/c;->a:I

    invoke-virtual {p1, p2}, Lmymenu/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmymenu/a$1;->a:Lmymenu/a;

    invoke-virtual {p1}, Lmymenu/a;->dismiss()V

    :cond_0
    return-void
.end method
