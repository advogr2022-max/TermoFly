.class public Ldisplay/ViewSwipeButton;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldisplay/ViewSwipeButton$GestureListener;,
        Ldisplay/ViewSwipeButton$Callback;,
        Ldisplay/ViewSwipeButton$Item;
    }
.end annotation


# instance fields
.field ITEM_MARGIN_X:I

.field ITEM_MARGIN_Y:I

.field backColor:I

.field callback:Ldisplay/ViewSwipeButton$Callback;

.field final gdt:Landroid/view/GestureDetector;

.field height:I

.field highlightColor:I

.field itemHeight:I

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldisplay/ViewSwipeButton$Item;",
            ">;"
        }
    .end annotation
.end field

.field itemsWidth:I

.field paintFill:Landroid/graphics/Paint;

.field paintGray:Landroid/graphics/Paint;

.field paintTextShadow:Landroid/graphics/Paint;

.field scrollOffset:I

.field selectedCentered:Z

.field selectedIndex:I

.field swipeOffset:I

.field swiped:Z

.field textSize:F

.field public title:Ljava/lang/String;

.field titleHeight:I

.field width:I

.field xLeft:I

.field xRight:I

.field yTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/GestureDetector;

    new-instance v0, Ldisplay/ViewSwipeButton$GestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldisplay/ViewSwipeButton$GestureListener;-><init>(Ldisplay/ViewSwipeButton;Ldisplay/ViewSwipeButton$1;)V

    invoke-direct {p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->gdt:Landroid/view/GestureDetector;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Ldisplay/ViewSwipeButton;->selectedIndex:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->itemsWidth:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->scrollOffset:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->swipeOffset:I

    iput-boolean p1, p0, Ldisplay/ViewSwipeButton;->swiped:Z

    iput-object v1, p0, Ldisplay/ViewSwipeButton;->callback:Ldisplay/ViewSwipeButton$Callback;

    const-string v0, "title"

    iput-object v0, p0, Ldisplay/ViewSwipeButton;->title:Ljava/lang/String;

    sget v0, Lcom/xcglobe/xclog/l;->e:I

    int-to-float v0, v0

    iput v0, p0, Ldisplay/ViewSwipeButton;->textSize:F

    iput-boolean p1, p0, Ldisplay/ViewSwipeButton;->selectedCentered:Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->paintFill:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->paintTextShadow:Landroid/graphics/Paint;

    sget p1, Lcom/xcglobe/xclog/l;->r:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->backColor:I

    const-string p1, "#004080"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ldisplay/ViewSwipeButton;->highlightColor:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->paintGray:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ldisplay/ViewSwipeButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Ldisplay/ViewSwipeButton$GestureListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Ldisplay/ViewSwipeButton$GestureListener;-><init>(Ldisplay/ViewSwipeButton;Ldisplay/ViewSwipeButton$1;)V

    invoke-direct {p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->gdt:Landroid/view/GestureDetector;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Ldisplay/ViewSwipeButton;->selectedIndex:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->itemsWidth:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->scrollOffset:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->swipeOffset:I

    iput-boolean p1, p0, Ldisplay/ViewSwipeButton;->swiped:Z

    iput-object v0, p0, Ldisplay/ViewSwipeButton;->callback:Ldisplay/ViewSwipeButton$Callback;

    const-string p2, "title"

    iput-object p2, p0, Ldisplay/ViewSwipeButton;->title:Ljava/lang/String;

    sget p2, Lcom/xcglobe/xclog/l;->e:I

    int-to-float p2, p2

    iput p2, p0, Ldisplay/ViewSwipeButton;->textSize:F

    iput-boolean p1, p0, Ldisplay/ViewSwipeButton;->selectedCentered:Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->paintFill:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->paintTextShadow:Landroid/graphics/Paint;

    sget p1, Lcom/xcglobe/xclog/l;->r:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->backColor:I

    const-string p1, "#004080"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ldisplay/ViewSwipeButton;->highlightColor:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->paintGray:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ldisplay/ViewSwipeButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Ldisplay/ViewSwipeButton$GestureListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Ldisplay/ViewSwipeButton$GestureListener;-><init>(Ldisplay/ViewSwipeButton;Ldisplay/ViewSwipeButton$1;)V

    invoke-direct {p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->gdt:Landroid/view/GestureDetector;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Ldisplay/ViewSwipeButton;->selectedIndex:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->itemsWidth:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->scrollOffset:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->swipeOffset:I

    iput-boolean p1, p0, Ldisplay/ViewSwipeButton;->swiped:Z

    iput-object p3, p0, Ldisplay/ViewSwipeButton;->callback:Ldisplay/ViewSwipeButton$Callback;

    const-string p2, "title"

    iput-object p2, p0, Ldisplay/ViewSwipeButton;->title:Ljava/lang/String;

    sget p2, Lcom/xcglobe/xclog/l;->e:I

    int-to-float p2, p2

    iput p2, p0, Ldisplay/ViewSwipeButton;->textSize:F

    iput-boolean p1, p0, Ldisplay/ViewSwipeButton;->selectedCentered:Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->paintFill:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->paintTextShadow:Landroid/graphics/Paint;

    sget p1, Lcom/xcglobe/xclog/l;->r:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->backColor:I

    const-string p1, "#004080"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ldisplay/ViewSwipeButton;->highlightColor:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->paintGray:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ldisplay/ViewSwipeButton;->init()V

    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/ViewSwipeButton$Item;

    iget v3, p0, Ldisplay/ViewSwipeButton;->xLeft:I

    iget v4, v2, Ldisplay/ViewSwipeButton$Item;->width:I

    mul-int v4, v4, v1

    add-int/2addr v3, v4

    iget v4, p0, Ldisplay/ViewSwipeButton;->yTop:I

    iget v5, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_Y:I

    add-int/2addr v4, v5

    iget v5, p0, Ldisplay/ViewSwipeButton;->scrollOffset:I

    sub-int/2addr v3, v5

    iput v3, v2, Ldisplay/ViewSwipeButton$Item;->xLast:I

    iget v5, p0, Ldisplay/ViewSwipeButton;->selectedIndex:I

    if-ne v1, v5, :cond_1

    iget-object v5, v2, Ldisplay/ViewSwipeButton$Item;->bmp:Landroid/graphics/Bitmap;

    int-to-float v3, v3

    int-to-float v6, v4

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1, v2, v4}, Ldisplay/ViewSwipeButton;->highlightSelected(Landroid/graphics/Canvas;Ldisplay/ViewSwipeButton$Item;I)V

    goto :goto_1

    :cond_1
    iget-object v2, v2, Ldisplay/ViewSwipeButton$Item;->bmp:Landroid/graphics/Bitmap;

    int-to-float v3, v3

    int-to-float v4, v4

    iget-object v5, p0, Ldisplay/ViewSwipeButton;->paintGray:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Ldisplay/ViewSwipeButton;->selectedCentered:Z

    if-nez p1, :cond_3

    iget p1, p0, Ldisplay/ViewSwipeButton;->selectedIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    iget v0, p0, Ldisplay/ViewSwipeButton;->selectedIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldisplay/ViewSwipeButton$Item;

    invoke-virtual {p0, p1}, Ldisplay/ViewSwipeButton;->centerSelected(Ldisplay/ViewSwipeButton$Item;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;I)V
    .locals 2

    new-instance v0, Ldisplay/ViewSwipeButton$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldisplay/ViewSwipeButton$Item;-><init>(Ldisplay/ViewSwipeButton;Ldisplay/ViewSwipeButton$1;)V

    iput-object p2, v0, Ldisplay/ViewSwipeButton$Item;->title:Ljava/lang/String;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, v0, Ldisplay/ViewSwipeButton$Item;->bmp:Landroid/graphics/Bitmap;

    iput p1, v0, Ldisplay/ViewSwipeButton$Item;->id:I

    iget-object p1, v0, Ldisplay/ViewSwipeButton$Item;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget p2, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_X:I

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    iput p1, v0, Ldisplay/ViewSwipeButton$Item;->width:I

    iget-object p1, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ldisplay/ViewSwipeButton;->itemsWidth:I

    iget p2, v0, Ldisplay/ViewSwipeButton$Item;->width:I

    add-int/2addr p1, p2

    iput p1, p0, Ldisplay/ViewSwipeButton;->itemsWidth:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldisplay/ViewSwipeButton;->selectedCentered:Z

    return-void
.end method

.method public centerSelected(Ldisplay/ViewSwipeButton$Item;)V
    .locals 2

    iget v0, p0, Ldisplay/ViewSwipeButton;->itemsWidth:I

    iget v1, p0, Ldisplay/ViewSwipeButton;->width:I

    if-ge v0, v1, :cond_0

    iget p1, p0, Ldisplay/ViewSwipeButton;->width:I

    iget v0, p0, Ldisplay/ViewSwipeButton;->itemsWidth:I

    sub-int/2addr p1, v0

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_X:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Ldisplay/ViewSwipeButton;->scrollOffset:I

    goto :goto_1

    :cond_0
    iget v0, p1, Ldisplay/ViewSwipeButton$Item;->xLast:I

    iget v1, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_X:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Ldisplay/ViewSwipeButton;->scrollOffset:I

    iget p1, p1, Ldisplay/ViewSwipeButton$Item;->xLast:I

    iget v1, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_X:I

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    :goto_0
    iput v0, p0, Ldisplay/ViewSwipeButton;->scrollOffset:I

    goto :goto_1

    :cond_1
    iget v0, p1, Ldisplay/ViewSwipeButton$Item;->xLast:I

    iget v1, p1, Ldisplay/ViewSwipeButton$Item;->width:I

    add-int/2addr v0, v1

    iget v1, p0, Ldisplay/ViewSwipeButton;->width:I

    if-le v0, v1, :cond_2

    iget v0, p0, Ldisplay/ViewSwipeButton;->scrollOffset:I

    iget v1, p1, Ldisplay/ViewSwipeButton$Item;->xLast:I

    iget p1, p1, Ldisplay/ViewSwipeButton$Item;->width:I

    add-int/2addr v1, p1

    iget p1, p0, Ldisplay/ViewSwipeButton;->width:I

    sub-int/2addr v1, p1

    iget p1, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_X:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ldisplay/ViewSwipeButton;->invalidate()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldisplay/ViewSwipeButton;->selectedCentered:Z

    return-void
.end method

.method public changeDimensions()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/ViewSwipeButton$Item;

    iget-object v3, v2, Ldisplay/ViewSwipeButton$Item;->bmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v2, v2, Ldisplay/ViewSwipeButton$Item;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget v0, p0, Ldisplay/ViewSwipeButton;->titleHeight:I

    iget v2, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_Y:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ldisplay/ViewSwipeButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Ldisplay/ViewSwipeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ldisplay/ViewSwipeButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Ldisplay/ViewSwipeButton;->titleHeight:I

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method clickItem(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput p1, p0, Ldisplay/ViewSwipeButton;->selectedIndex:I

    iget-object p1, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    iget v0, p0, Ldisplay/ViewSwipeButton;->selectedIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldisplay/ViewSwipeButton$Item;

    invoke-virtual {p0, p1}, Ldisplay/ViewSwipeButton;->centerSelected(Ldisplay/ViewSwipeButton$Item;)V

    iget-object v0, p0, Ldisplay/ViewSwipeButton;->callback:Ldisplay/ViewSwipeButton$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/ViewSwipeButton;->callback:Ldisplay/ViewSwipeButton$Callback;

    iget p1, p1, Ldisplay/ViewSwipeButton$Item;->id:I

    invoke-interface {v0, p1}, Ldisplay/ViewSwipeButton$Callback;->call(I)V

    :cond_0
    return-void
.end method

.method protected findPressedItem(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/ViewSwipeButton$Item;

    iget v2, v1, Ldisplay/ViewSwipeButton$Item;->xLast:I

    if-le p1, v2, :cond_0

    iget v2, v1, Ldisplay/ViewSwipeButton$Item;->xLast:I

    iget v1, v1, Ldisplay/ViewSwipeButton$Item;->width:I

    add-int/2addr v2, v1

    if-ge p1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method highlightSelected(Landroid/graphics/Canvas;Ldisplay/ViewSwipeButton$Item;I)V
    .locals 10

    iget v0, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_X:I

    iget v1, p2, Ldisplay/ViewSwipeButton$Item;->xLast:I

    iget-object v2, p2, Ldisplay/ViewSwipeButton$Item;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object p2, p2, Ldisplay/ViewSwipeButton$Item;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    add-int/2addr p2, p3

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v1, v3

    sub-int/2addr p3, v3

    add-int/2addr v2, v3

    add-int/2addr p2, v3

    int-to-float v0, v0

    iget v3, p0, Ldisplay/ViewSwipeButton;->highlightColor:I

    invoke-static {v0, v3}, Lcom/xcglobe/xclog/g;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v5, v1

    int-to-float v6, p3

    int-to-float v7, v2

    int-to-float v8, p2

    move-object v4, p1

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 p1, 0xff

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected init()V
    .locals 2

    iget v0, p0, Ldisplay/ViewSwipeButton;->textSize:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_X:I

    iget v0, p0, Ldisplay/ViewSwipeButton;->textSize:F

    mul-float v0, v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_Y:I

    iget v0, p0, Ldisplay/ViewSwipeButton;->textSize:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Ldisplay/ViewSwipeButton;->titleHeight:I

    iget-object v0, p0, Ldisplay/ViewSwipeButton;->paintTextShadow:Landroid/graphics/Paint;

    invoke-static {}, Lcom/xcglobe/xclog/g;->d()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, p0, Ldisplay/ViewSwipeButton;->paintTextShadow:Landroid/graphics/Paint;

    iget v1, p0, Ldisplay/ViewSwipeButton;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Ldisplay/ViewSwipeButton;->paintTextShadow:Landroid/graphics/Paint;

    iget v1, p0, Ldisplay/ViewSwipeButton;->highlightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/ViewSwipeButton;->paintGray:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Ldisplay/ViewSwipeButton;->paintFill:Landroid/graphics/Paint;

    const-string v1, "#d0d0d0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Ldisplay/ViewSwipeButton$1;

    invoke-direct {v0, p0}, Ldisplay/ViewSwipeButton$1;-><init>(Ldisplay/ViewSwipeButton;)V

    invoke-virtual {p0, v0}, Ldisplay/ViewSwipeButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Ldisplay/ViewSwipeButton;->backColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v0, p0, Ldisplay/ViewSwipeButton;->width:I

    int-to-float v4, v0

    iget v0, p0, Ldisplay/ViewSwipeButton;->titleHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Ldisplay/ViewSwipeButton;->paintFill:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Ldisplay/ViewSwipeButton;->drawItems(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldisplay/ViewSwipeButton;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldisplay/ViewSwipeButton;->title:Ljava/lang/String;

    :goto_0
    iget v1, p0, Ldisplay/ViewSwipeButton;->titleHeight:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/ViewSwipeButton;->textSize:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const v2, 0x3f666666    # 0.9f

    iget v3, p0, Ldisplay/ViewSwipeButton;->textSize:F

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Ldisplay/ViewSwipeButton;->xLeft:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget v3, p0, Ldisplay/ViewSwipeButton;->textSize:F

    const/high16 v4, -0x1000000

    invoke-static {v3, v4}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Ldisplay/ViewSwipeButton;->paintTextShadow:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    iget v3, p0, Ldisplay/ViewSwipeButton;->selectedIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/ViewSwipeButton$Item;

    iget-object v2, v2, Ldisplay/ViewSwipeButton$Item;->title:Ljava/lang/String;

    iget v3, p0, Ldisplay/ViewSwipeButton;->xLeft:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Ldisplay/ViewSwipeButton;->textSize:F

    add-float/2addr v3, v0

    iget-object v0, p0, Ldisplay/ViewSwipeButton;->paintTextShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Ldisplay/ViewSwipeButton;->width:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Ldisplay/ViewSwipeButton;->height:I

    iget p1, p0, Ldisplay/ViewSwipeButton;->width:I

    iget p2, p0, Ldisplay/ViewSwipeButton;->height:I

    invoke-virtual {p0, p1, p2}, Ldisplay/ViewSwipeButton;->setMeasuredDimension(II)V

    iget p1, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_X:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->xLeft:I

    iget p1, p0, Ldisplay/ViewSwipeButton;->width:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->xRight:I

    iget p1, p0, Ldisplay/ViewSwipeButton;->height:I

    iget p2, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_Y:I

    sub-int/2addr p1, p2

    iget p2, p0, Ldisplay/ViewSwipeButton;->textSize:F

    float-to-int p2, p2

    iget v0, p0, Ldisplay/ViewSwipeButton;->ITEM_MARGIN_Y:I

    add-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Ldisplay/ViewSwipeButton;->itemHeight:I

    iget p1, p0, Ldisplay/ViewSwipeButton;->titleHeight:I

    iput p1, p0, Ldisplay/ViewSwipeButton;->yTop:I

    return-void
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public select(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ldisplay/ViewSwipeButton;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/ViewSwipeButton$Item;

    iget v2, v2, Ldisplay/ViewSwipeButton$Item;->id:I

    if-ne v2, p1, :cond_0

    iput v1, p0, Ldisplay/ViewSwipeButton;->selectedIndex:I

    invoke-virtual {p0}, Ldisplay/ViewSwipeButton;->invalidate()V

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public setCallback(Ldisplay/ViewSwipeButton$Callback;)V
    .locals 0

    iput-object p1, p0, Ldisplay/ViewSwipeButton;->callback:Ldisplay/ViewSwipeButton$Callback;

    return-void
.end method
