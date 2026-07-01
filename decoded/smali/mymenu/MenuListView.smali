.class public Lmymenu/MenuListView;
.super Landroid/widget/ListView;


# instance fields
.field a:I

.field b:I

.field c:Lmymenu/b;

.field public d:I

.field e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lmymenu/MenuListView;->d:I

    iput p1, p0, Lmymenu/MenuListView;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmymenu/MenuListView;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lmymenu/MenuListView;->d:I

    iput p1, p0, Lmymenu/MenuListView;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmymenu/MenuListView;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lmymenu/MenuListView;->d:I

    iput p1, p0, Lmymenu/MenuListView;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmymenu/MenuListView;->e:Z

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmymenu/MenuListView;->e:Z

    iget v1, p0, Lmymenu/MenuListView;->b:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lmymenu/MenuListView;->c:Lmymenu/b;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p0}, Lmymenu/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lmymenu/MenuListView;->setSelectionFromTop(II)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, Lmymenu/MenuListView;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmymenu/MenuListView;->c:Lmymenu/b;

    iget-object v0, v0, Lmymenu/b;->c:[Lmymenu/c;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lmymenu/MenuListView;->c:Lmymenu/b;

    iget-object v2, v2, Lmymenu/b;->c:[Lmymenu/c;

    aget-object v2, v2, v1

    iget v2, v2, Lmymenu/c;->a:I

    iget v3, p0, Lmymenu/MenuListView;->d:I

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lmymenu/MenuListView;->setItemChecked(IZ)V

    invoke-virtual {p0, v1}, Lmymenu/MenuListView;->setSelection(I)V

    iput v1, p0, Lmymenu/MenuListView;->f:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lmymenu/b;)V
    .locals 1

    iput-object p1, p0, Lmymenu/MenuListView;->c:Lmymenu/b;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmymenu/MenuListView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Lmymenu/MenuListView;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0, p1}, Lmymenu/MenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmymenu/MenuListView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lmymenu/MenuListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0, p1}, Lmymenu/MenuListView;->setClickable(Z)V

    invoke-virtual {p0, p1}, Lmymenu/MenuListView;->setChoiceMode(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    iput p1, p0, Lmymenu/MenuListView;->a:I

    iput p2, p0, Lmymenu/MenuListView;->b:I

    iget p1, p0, Lmymenu/MenuListView;->d:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget p1, p0, Lmymenu/MenuListView;->f:I

    if-eq p1, p2, :cond_0

    iget p1, p0, Lmymenu/MenuListView;->f:I

    invoke-direct {p0, p1}, Lmymenu/MenuListView;->a(I)V

    :cond_0
    return-void
.end method
