.class Ldisplay/ViewSwipeButton$GestureListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldisplay/ViewSwipeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Ldisplay/ViewSwipeButton;


# direct methods
.method private constructor <init>(Ldisplay/ViewSwipeButton;)V
    .locals 0

    iput-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldisplay/ViewSwipeButton;Ldisplay/ViewSwipeButton$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ldisplay/ViewSwipeButton$GestureListener;-><init>(Ldisplay/ViewSwipeButton;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    const/4 v0, 0x0

    iput v0, p1, Ldisplay/ViewSwipeButton;->swipeOffset:I

    iget-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iput-boolean v0, p1, Ldisplay/ViewSwipeButton;->swiped:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    invoke-virtual {p1}, Ldisplay/ViewSwipeButton;->invalidate()V

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object p4, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iget p4, p4, Ldisplay/ViewSwipeButton;->itemsWidth:I

    iget-object v0, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iget v0, v0, Ldisplay/ViewSwipeButton;->width:I

    const/4 v1, 0x0

    if-le p4, v0, :cond_4

    iget-object p4, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iget p4, p4, Ldisplay/ViewSwipeButton;->scrollOffset:I

    iget-object v0, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iget v2, v0, Ldisplay/ViewSwipeButton;->scrollOffset:I

    int-to-float v2, v2

    add-float/2addr v2, p3

    float-to-int p3, v2

    iput p3, v0, Ldisplay/ViewSwipeButton;->scrollOffset:I

    iget-object p3, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p3, Ldisplay/ViewSwipeButton;->swipeOffset:I

    iget-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iget p1, p1, Ldisplay/ViewSwipeButton;->swipeOffset:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sget p2, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 p2, p2, 0x2

    if-gt p1, p2, :cond_0

    iget-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iget p1, p1, Ldisplay/ViewSwipeButton;->scrollOffset:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sget p2, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    const/4 p2, 0x1

    iput-boolean p2, p1, Ldisplay/ViewSwipeButton;->swiped:Z

    :cond_1
    iget-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iget p1, p1, Ldisplay/ViewSwipeButton;->itemsWidth:I

    iget-object p2, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iget p2, p2, Ldisplay/ViewSwipeButton;->width:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iget p2, p2, Ldisplay/ViewSwipeButton;->scrollOffset:I

    if-gez p2, :cond_2

    iget-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iput v1, p1, Ldisplay/ViewSwipeButton;->scrollOffset:I

    goto :goto_0

    :cond_2
    iget-object p2, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iget p2, p2, Ldisplay/ViewSwipeButton;->scrollOffset:I

    if-le p2, p1, :cond_3

    iget-object p2, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iput p1, p2, Ldisplay/ViewSwipeButton;->scrollOffset:I

    :cond_3
    :goto_0
    iget-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    iget p1, p1, Ldisplay/ViewSwipeButton;->scrollOffset:I

    if-eq p4, p1, :cond_4

    iget-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    invoke-virtual {p1}, Ldisplay/ViewSwipeButton;->invalidate()V

    :cond_4
    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Ldisplay/ViewSwipeButton$GestureListener;->this$0:Ldisplay/ViewSwipeButton;

    invoke-virtual {p1}, Ldisplay/ViewSwipeButton;->invalidate()V

    const/4 p1, 0x0

    return p1
.end method
