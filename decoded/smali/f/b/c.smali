.class public Lf/b/c;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ltypes/PoiPoint;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field a:Lf/b/b;

.field b:Landroid/content/Context;

.field c:I

.field d:[Ltypes/PoiPoint;

.field e:[I

.field f:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ltypes/PoiPoint;[ILf/b/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput p2, p0, Lf/b/c;->c:I

    iput-object p1, p0, Lf/b/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lf/b/c;->d:[Ltypes/PoiPoint;

    iput-object p4, p0, Lf/b/c;->e:[I

    iput-object p5, p0, Lf/b/c;->a:Lf/b/b;

    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lf/b/c;->f:[I

    const/4 p1, 0x0

    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lf/b/c;->f:[I

    aput p1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ltypes/PoiPoint;
    .locals 1

    iget-object v0, p0, Lf/b/c;->f:[I

    aget p1, v0, p1

    iget-object v0, p0, Lf/b/c;->d:[Ltypes/PoiPoint;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lf/b/c;->f:[I

    array-length v0, v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Lf/b/c$1;

    invoke-direct {v0, p0}, Lf/b/c$1;-><init>(Lf/b/c;)V

    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lf/b/c;->a(I)Ltypes/PoiPoint;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object p2, p0, Lf/b/c;->b:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lf/b/c;->c:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lf/b/a;

    invoke-direct {p3}, Lf/b/a;-><init>()V

    const v0, 0x7f07003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lf/b/a;->a:Landroid/widget/TextView;

    const v0, 0x7f07003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lf/b/a;->b:Landroid/widget/TextView;

    const v0, 0x7f070055

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lf/b/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf/b/a;

    :goto_0
    invoke-virtual {p0, p1}, Lf/b/c;->a(I)Ltypes/PoiPoint;

    move-result-object v0

    iget-object v1, p3, Lf/b/a;->a:Landroid/widget/TextView;

    iget-object v2, v0, Ltypes/PoiPoint;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lf/b/a;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lf/b/c;->e:[I

    aget p1, v3, p1

    int-to-float p1, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr p1, v3

    invoke-static {p1}, Ltypes/q;->a(F)F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f06004d

    iget-char v1, v0, Ltypes/PoiPoint;->m:C

    const/16 v2, 0x63

    if-eq v1, v2, :cond_3

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x73

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const p1, 0x7f06003b

    goto :goto_1

    :cond_2
    const p1, 0x7f06001c

    goto :goto_1

    :cond_3
    const p1, 0x7f060012

    :goto_1
    iget-object v1, p3, Lf/b/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lf/b/c;->a:Lf/b/b;

    iget-object p1, p1, Lf/b/b;->i:Ltypes/PoiPoint;

    invoke-virtual {v0, p1}, Ltypes/PoiPoint;->b(Ltypes/PoiPoint;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p3, Lf/b/a;->a:Landroid/widget/TextView;

    sget v0, Lcom/xcglobe/xclog/l;->j:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p3, Lf/b/a;->b:Landroid/widget/TextView;

    sget p3, Lcom/xcglobe/xclog/l;->j:I

    :goto_2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_4
    iget-object p1, p3, Lf/b/a;->a:Landroid/widget/TextView;

    sget v0, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p3, Lf/b/a;->b:Landroid/widget/TextView;

    sget p3, Lcom/xcglobe/xclog/l;->p:I

    goto :goto_2

    :goto_3
    return-object p2
.end method
