.class Lmymenu/b;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lmymenu/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:I

.field c:[Lmymenu/c;

.field d:Lmymenu/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lmymenu/c;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmymenu/b;->c:[Lmymenu/c;

    iput p2, p0, Lmymenu/b;->b:I

    iput-object p1, p0, Lmymenu/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lmymenu/b;->c:[Lmymenu/c;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lmymenu/b;->c:[Lmymenu/c;

    aget-object p1, v0, p1

    if-eqz p2, :cond_0

    iget v0, p1, Lmymenu/c;->a:I

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object p2, p0, Lmymenu/b;->a:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lmymenu/b;->b:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget p3, p1, Lmymenu/c;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    const p3, 0x7f070040

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lmymenu/c;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p1, Lmymenu/c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget p1, p1, Lmymenu/c;->a:I

    iget-object p3, p0, Lmymenu/b;->d:Lmymenu/a;

    iget-object p3, p3, Lmymenu/a;->e:Lmymenu/MenuListView;

    iget p3, p3, Lmymenu/MenuListView;->d:I

    if-ne p1, p3, :cond_2

    const p1, -0xff0001

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-object p2
.end method
