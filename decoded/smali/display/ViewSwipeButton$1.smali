.class Ldisplay/ViewSwipeButton$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldisplay/ViewSwipeButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldisplay/ViewSwipeButton;


# direct methods
.method constructor <init>(Ldisplay/ViewSwipeButton;)V
    .locals 0

    iput-object p1, p0, Ldisplay/ViewSwipeButton$1;->this$0:Ldisplay/ViewSwipeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ldisplay/ViewSwipeButton$1;->this$0:Ldisplay/ViewSwipeButton;

    iget-boolean p1, p1, Ldisplay/ViewSwipeButton;->swiped:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ldisplay/ViewSwipeButton$1;->this$0:Ldisplay/ViewSwipeButton;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Ldisplay/ViewSwipeButton;->findPressedItem(I)I

    move-result p1

    iget-object v0, p0, Ldisplay/ViewSwipeButton$1;->this$0:Ldisplay/ViewSwipeButton;

    iget v0, v0, Ldisplay/ViewSwipeButton;->selectedIndex:I

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Ldisplay/ViewSwipeButton$1;->this$0:Ldisplay/ViewSwipeButton;

    invoke-virtual {v0, p1}, Ldisplay/ViewSwipeButton;->clickItem(I)V

    :cond_0
    iget-object p1, p0, Ldisplay/ViewSwipeButton$1;->this$0:Ldisplay/ViewSwipeButton;

    const/4 v0, 0x0

    iput v0, p1, Ldisplay/ViewSwipeButton;->swipeOffset:I

    iget-object p1, p0, Ldisplay/ViewSwipeButton$1;->this$0:Ldisplay/ViewSwipeButton;

    iput-boolean v0, p1, Ldisplay/ViewSwipeButton;->swiped:Z

    :cond_1
    iget-object p1, p0, Ldisplay/ViewSwipeButton$1;->this$0:Ldisplay/ViewSwipeButton;

    iget-object p1, p1, Ldisplay/ViewSwipeButton;->gdt:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
