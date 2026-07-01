.class public Ldisplay/vmap/VmpEventManager;
.super Ljava/lang/Object;


# static fields
.field public static ZOOM_MINUS:I = 0x1

.field public static ZOOM_PLUS:I = 0x2


# instance fields
.field private downX:F

.field private downY:F

.field private fingerDragging:Z

.field private fingerGps:[F

.field handler:Landroid/os/Handler;

.field pressedBox:Ldisplay/vmap/boxes/InfoBox;

.field private touchEmptySpace:Z

.field view:Ldisplay/vmap/ViewVmp;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ldisplay/vmap/ViewVmp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldisplay/vmap/VmpEventManager;->fingerDragging:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldisplay/vmap/VmpEventManager;->fingerGps:[F

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Ldisplay/vmap/VmpEventManager;->handler:Landroid/os/Handler;

    iput-object v0, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    iput-object p1, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    return-void
.end method

.method private cancelTouch()V
    .locals 3

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Ldisplay/vmap/VmpEventManager;->fingerGps:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldisplay/vmap/VmpEventManager;->fingerDragging:Z

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    sget v2, Ldisplay/vmap/boxes/InfoBox;->STATE_NONE:I

    invoke-virtual {v0, v2}, Ldisplay/vmap/boxes/InfoBox;->setState(I)V

    iput-object v1, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    invoke-virtual {v0}, Ldisplay/vmap/ViewVmp;->invalidate()V

    return-void
.end method

.method private getBox(II)Ldisplay/vmap/boxes/InfoBox;
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-object v2, v2, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v2, p1, p2}, Ldisplay/vmap/boxes/InfoBox;->isInside(II)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getZoomIcon(II)I
    .locals 6

    int-to-double v0, p2

    sget p2, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconSize:I

    int-to-double v2, p2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    cmpg-double p2, v0, v2

    if-gez p2, :cond_1

    int-to-double v0, p1

    sget p2, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconSize:I

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    sget p1, Ldisplay/vmap/VmpEventManager;->ZOOM_MINUS:I

    return p1

    :cond_0
    int-to-float p1, p1

    iget-object p2, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-object p2, p2, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget p2, p2, Lvmaps/core/VmpWorld;->f:F

    sget v0, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconSize:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    iget-object p2, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-object p2, p2, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget p2, p2, Lvmaps/core/VmpWorld;->f:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    sget p1, Ldisplay/vmap/VmpEventManager;->ZOOM_PLUS:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public action(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    iput-boolean v3, p0, Ldisplay/vmap/VmpEventManager;->fingerDragging:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Ldisplay/vmap/VmpEventManager;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Ldisplay/vmap/VmpEventManager;->downY:F

    iget p1, p0, Ldisplay/vmap/VmpEventManager;->downX:F

    float-to-int p1, p1

    iget v0, p0, Ldisplay/vmap/VmpEventManager;->downY:F

    float-to-int v0, v0

    iput-boolean v3, p0, Ldisplay/vmap/VmpEventManager;->touchEmptySpace:Z

    invoke-direct {p0, p1, v0}, Ldisplay/vmap/VmpEventManager;->getZoomIcon(II)I

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    sget v0, Ldisplay/vmap/VmpEventManager;->ZOOM_PLUS:I

    if-ne v5, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p1, v3}, Ldisplay/vmap/ViewVmp;->clickZoomIcon(Z)V

    return v4

    :cond_1
    invoke-direct {p0, p1, v0}, Ldisplay/vmap/VmpEventManager;->getBox(II)Ldisplay/vmap/boxes/InfoBox;

    move-result-object p1

    iput-object p1, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    sget v0, Ldisplay/vmap/boxes/InfoBox;->STATE_PRESSED:I

    invoke-virtual {p1, v0}, Ldisplay/vmap/boxes/InfoBox;->setState(I)V

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Ldisplay/vmap/VmpEventManager;->touchEmptySpace:Z

    invoke-static {v4}, Ldisplay/vmap/features/ZoomIconPainter;->initZoomIcons(Z)V

    new-array p1, v2, [F

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v0, v0, Ltypes/d;->b:F

    aput v0, p1, v3

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v0, v0, Ltypes/d;->c:F

    aput v0, p1, v4

    iput-object p1, p0, Ldisplay/vmap/VmpEventManager;->fingerGps:[F

    :goto_0
    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p1}, Ldisplay/vmap/ViewVmp;->invalidate()V

    invoke-virtual {p0}, Ldisplay/vmap/VmpEventManager;->startLongPress()V

    return v4

    :cond_3
    if-ne v0, v4, :cond_7

    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {p1}, Ldisplay/vmap/boxes/InfoBox;->onClick()Z

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Ldisplay/vmap/VmpEventManager;->touchEmptySpace:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Ldisplay/vmap/VmpEventManager;->fingerDragging:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-boolean p1, p1, Ldisplay/vmap/ViewVmp;->optStatic:Z

    if-nez p1, :cond_5

    const/16 p1, 0x10

    invoke-static {p1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    :cond_5
    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p1}, Ldisplay/vmap/ViewVmp;->performClick()Z

    :cond_6
    :goto_1
    invoke-direct {p0}, Ldisplay/vmap/VmpEventManager;->cancelTouch()V

    goto/16 :goto_3

    :cond_7
    if-ne v0, v2, :cond_a

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    iget-object v1, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v2, p1}, Ldisplay/vmap/boxes/InfoBox;->isInside(II)Z

    move-result p1

    if-eqz p1, :cond_8

    sget p1, Ldisplay/vmap/boxes/InfoBox;->STATE_PRESSED:I

    goto :goto_2

    :cond_8
    sget p1, Ldisplay/vmap/boxes/InfoBox;->STATE_NONE:I

    :goto_2
    invoke-virtual {v0, p1}, Ldisplay/vmap/boxes/InfoBox;->setState(I)V

    return v4

    :cond_9
    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-boolean v0, v0, Ldisplay/vmap/ViewVmp;->optDraggable:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->fingerGps:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v5, p0, Ldisplay/vmap/VmpEventManager;->downX:F

    sub-float/2addr v2, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v5, p0, Ldisplay/vmap/VmpEventManager;->downY:F

    sub-float/2addr p1, v5

    iget-object v5, p0, Ldisplay/vmap/VmpEventManager;->fingerGps:[F

    aget v5, v5, v3

    iget-object v6, p0, Ldisplay/vmap/VmpEventManager;->fingerGps:[F

    aget v6, v6, v4

    invoke-virtual {v0, v2, p1, v5, v6}, Ldisplay/vmap/ViewVmp;->fingerMove(FFFF)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v4, p0, Ldisplay/vmap/VmpEventManager;->fingerDragging:Z

    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p1}, Ldisplay/vmap/ViewVmp;->invalidate()V

    goto :goto_3

    :cond_a
    const/4 p1, 0x3

    if-eq v0, p1, :cond_b

    if-ne v0, v4, :cond_c

    :cond_b
    iget-boolean p1, p0, Ldisplay/vmap/VmpEventManager;->fingerDragging:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->fingerGps:[F

    if-eqz p1, :cond_6

    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-object p1, p1, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v0, v0, Ltypes/d;->b:F

    iget-object v1, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-object v1, v1, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v1, v1, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v1, v1, Ltypes/d;->c:F

    iget-object v2, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    iget-object v2, v2, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v2}, Lvmaps/core/VmpWorld;->c()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lvmaps/core/VmpWorld;->a(FFF)V

    iget-object p1, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p1}, Ldisplay/vmap/ViewVmp;->invalidate()V

    goto/16 :goto_1

    :cond_c
    :goto_3
    return v3
.end method

.method public isDraggingMap()Z
    .locals 1

    iget-boolean v0, p0, Ldisplay/vmap/VmpEventManager;->fingerDragging:Z

    return v0
.end method

.method protected longClick()V
    .locals 2

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v0}, Ldisplay/vmap/boxes/InfoBox;->getState()I

    move-result v0

    sget v1, Ldisplay/vmap/boxes/InfoBox;->STATE_PRESSED:I

    if-ne v0, v1, :cond_1

    new-instance v0, Ldisplay/vmap/VmpEditor;

    iget-object v1, p0, Ldisplay/vmap/VmpEventManager;->view:Ldisplay/vmap/ViewVmp;

    invoke-direct {v0, v1}, Ldisplay/vmap/VmpEditor;-><init>(Ldisplay/vmap/ViewVmp;)V

    iget-object v1, p0, Ldisplay/vmap/VmpEventManager;->pressedBox:Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v0, v1}, Ldisplay/vmap/VmpEditor;->editBox(Ldisplay/vmap/boxes/InfoBox;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Ldisplay/vmap/VmpEventManager;->cancelTouch()V

    return-void
.end method

.method public startLongPress()V
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager;->handler:Landroid/os/Handler;

    new-instance v1, Ldisplay/vmap/VmpEventManager$1;

    invoke-direct {v1, p0}, Ldisplay/vmap/VmpEventManager$1;-><init>(Ldisplay/vmap/VmpEventManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
