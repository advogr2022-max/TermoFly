.class public Ldisplay/vmap/ViewVmp;
.super Landroid/view/View;

# interfaces
.implements Lvmaps/core/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation


# static fields
.field private static final ENABLE_AUTO_CENTER_AFTER_ZOOM:Z = false

.field public static final FLAG_EMULATOR_START:I = 0x4

.field public static final FLAG_NORTH_UP:I = 0x20

.field public static final FLAG_POI_RELOAD:I = 0x2

.field public static final FLAG_REINIT:I = 0x1

.field public static final FLAG_ROTATING:I = 0x40

.field public static final FLAG_STATIC_MAP:I = 0x8

.field public static final FLAG_TOGGLE:I = 0x10

.field public static final MODE_NORTH_UP:I = 0x2

.field public static final MODE_PREVIOUS:I = 0x0

.field public static final MODE_ROTATING:I = 0x1

.field public static final MODE_STATIC:I = 0x3

.field public static final MODE_TOGGLE:I = 0x4

.field private static final RECENTER_CHANGE_MODE:I = 0x4

.field private static final RECENTER_GONE_OUTSIDE:I = 0x1

.field private static final RECENTER_ZOOMIN:I = 0x2

.field private static final RECENTER_ZOOMOUT:I = 0x3

.field public static bmpGlider:Landroid/graphics/Bitmap;

.field public static lastTouchTimeMs:J

.field private static oldrotation:Z

.field private static oldthermailing:Z

.field public static paintOutline:Landroid/graphics/Paint;

.field private static panelBkColor:I

.field static registeredView:Ldisplay/vmap/ViewVmp;

.field private static reqFlag:I

.field private static thermalingMode:Z


# instance fields
.field bmpGliderCenterX:I

.field bmpGliderCenterY:I

.field private bottomPanelRect:Landroid/graphics/Rect;

.field boxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;"
        }
    .end annotation
.end field

.field public directionAngle:I

.field eventManager:Ldisplay/vmap/VmpEventManager;

.field public gMatrix:Landroid/graphics/Matrix;

.field gPoint:[I

.field handler:Landroid/os/Handler;

.field isWholeTrackZoomed:Z

.field protected mapClip:Landroid/graphics/Rect;

.field public matrix:Landroid/graphics/Matrix;

.field optCenter:Z

.field optDraggable:Z

.field optRotate:Z

.field optRotateBeforeThermaling:Z

.field optStatic:Z

.field paintPath:Landroid/graphics/Paint;

.field public poiRecDst:Landroid/graphics/Rect;

.field recDst:Landroid/graphics/Rect;

.field recSrc:Landroid/graphics/Rect;

.field private rightPanelRect:Landroid/graphics/Rect;

.field private safeWindow:Ltypes/c;

.field viewRealHeight:I

.field viewRealWidth:I

.field public world:Lvmaps/core/VmpWorld;

.field xy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/xcglobe/xclog/l;->q:I

    sput v0, Ldisplay/vmap/ViewVmp;->panelBkColor:I

    const/4 v0, 0x0

    sput v0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Ldisplay/vmap/ViewVmp;->paintOutline:Landroid/graphics/Paint;

    const/4 v1, 0x0

    sput-object v1, Ldisplay/vmap/ViewVmp;->registeredView:Ldisplay/vmap/ViewVmp;

    const-wide/16 v1, 0x0

    sput-wide v1, Ldisplay/vmap/ViewVmp;->lastTouchTimeMs:J

    sput-boolean v0, Ldisplay/vmap/ViewVmp;->oldrotation:Z

    sput-boolean v0, Ldisplay/vmap/ViewVmp;->oldthermailing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optCenter:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldisplay/vmap/ViewVmp;->optStatic:Z

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optDraggable:Z

    const/16 p1, 0x5a

    iput p1, p0, Ldisplay/vmap/ViewVmp;->directionAngle:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->paintPath:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->poiRecDst:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->recSrc:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->recDst:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->gMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->mapClip:Landroid/graphics/Rect;

    new-instance p1, Ltypes/c;

    invoke-direct {p1}, Ltypes/c;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->safeWindow:Ltypes/c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->rightPanelRect:Landroid/graphics/Rect;

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->bottomPanelRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Ldisplay/vmap/ViewVmp;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optCenter:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Ldisplay/vmap/ViewVmp;->optStatic:Z

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optDraggable:Z

    const/16 p1, 0x5a

    iput p1, p0, Ldisplay/vmap/ViewVmp;->directionAngle:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->paintPath:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->poiRecDst:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->recSrc:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->recDst:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->gMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->mapClip:Landroid/graphics/Rect;

    new-instance p1, Ltypes/c;

    invoke-direct {p1}, Ltypes/c;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->safeWindow:Ltypes/c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->rightPanelRect:Landroid/graphics/Rect;

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->bottomPanelRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Ldisplay/vmap/ViewVmp;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optCenter:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Ldisplay/vmap/ViewVmp;->optStatic:Z

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optDraggable:Z

    const/16 p1, 0x5a

    iput p1, p0, Ldisplay/vmap/ViewVmp;->directionAngle:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->paintPath:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->poiRecDst:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->recSrc:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->recDst:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->gMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->mapClip:Landroid/graphics/Rect;

    new-instance p1, Ltypes/c;

    invoke-direct {p1}, Ltypes/c;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->safeWindow:Ltypes/c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->rightPanelRect:Landroid/graphics/Rect;

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->bottomPanelRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ldisplay/vmap/ViewVmp;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Ldisplay/vmap/ViewVmp;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private calcIsWholeTrackZoomed(F)V
    .locals 8

    sget-object v0, Lm/g;->f:Ltypes/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lm/g;->f:Ltypes/g;

    invoke-virtual {v0}, Ltypes/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sget-object v2, Lm/g;->f:Ltypes/g;

    iget v2, v2, Ltypes/g;->a:F

    sget-object v3, Lm/g;->f:Ltypes/g;

    iget v3, v3, Ltypes/g;->c:F

    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    invoke-virtual {v0, v2, v3, v4}, Lvmaps/core/VmpWorld;->a(FF[I)V

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    aget v0, v0, v1

    iget-object v2, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sget-object v5, Lm/g;->f:Ltypes/g;

    iget v5, v5, Ltypes/g;->b:F

    sget-object v6, Lm/g;->f:Ltypes/g;

    iget v6, v6, Ltypes/g;->d:F

    iget-object v7, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    invoke-virtual {v4, v5, v6, v7}, Lvmaps/core/VmpWorld;->a(FF[I)V

    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    aget v4, v4, v1

    sub-int/2addr v4, v0

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    aget v0, v0, v3

    sub-int/2addr v0, v2

    int-to-float v2, v4

    mul-float v2, v2, p1

    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget v4, v4, Lvmaps/core/VmpWorld;->f:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget v0, v0, Lvmaps/core/VmpWorld;->g:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Ldisplay/vmap/ViewVmp;->isWholeTrackZoomed:Z

    return-void
.end method

.method private changeThermalingMode(Z)V
    .locals 0

    sput-boolean p1, Ldisplay/vmap/ViewVmp;->thermalingMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-static {p1}, Ldisplay/vmap/features/ThermalPainter;->setWorld(Lvmaps/core/VmpWorld;)V

    iget-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optRotateBeforeThermaling:Z

    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, p1}, Ldisplay/vmap/ViewVmp;->setRotation(Z)V

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optRotateBeforeThermaling:Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private changeZoom(F)V
    .locals 1

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v0}, Lvmaps/core/VmpWorld;->c()F

    move-result v0

    cmpg-float v0, p1, v0

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v0, p1}, Lvmaps/core/VmpWorld;->a(F)V

    const p1, 0x3fa66666    # 1.3f

    invoke-direct {p0, p1}, Ldisplay/vmap/ViewVmp;->calcIsWholeTrackZoomed(F)V

    const/4 p1, 0x1

    invoke-static {p1}, Ldisplay/vmap/features/ZoomIconPainter;->initZoomIcons(Z)V

    const/4 p1, 0x2

    invoke-static {p1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    invoke-virtual {p0}, Ldisplay/vmap/ViewVmp;->invalidate()V

    return-void
.end method

.method private drawBoxes(Landroid/graphics/Canvas;)V
    .locals 2

    sget-object v0, Ldisplay/vmap/boxes/InfoBox;->paintBack:Landroid/graphics/Paint;

    sget v1, Ldisplay/vmap/ViewVmp;->panelBkColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->rightPanelRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->rightPanelRect:Landroid/graphics/Rect;

    sget-object v1, Ldisplay/vmap/boxes/InfoBox;->paintBack:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->bottomPanelRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->bottomPanelRect:Landroid/graphics/Rect;

    sget-object v1, Ldisplay/vmap/boxes/InfoBox;->paintBack:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    sget-object v0, Ldisplay/vmap/boxes/InfoBox;->paintBack:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ldisplay/vmap/boxes/InfoBox;->timeMs:J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v1, p1}, Ldisplay/vmap/boxes/InfoBox;->update(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleReqFlag()V
    .locals 5

    sget v0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-static {}, Ldisplay/vmap/features/PoiPainter;->reloadLocalPoints()V

    :cond_0
    sget v0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ldisplay/vmap/ViewVmp;->optStatic:Z

    iput-boolean v1, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    iput-boolean v1, p0, Ldisplay/vmap/ViewVmp;->optCenter:Z

    invoke-static {}, Ldisplay/vmap/features/TrackPainter;->recreate()V

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Lvmaps/core/VmpWorld;->a(F)V

    :cond_1
    sget v0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    and-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Ldisplay/vmap/ViewVmp;->optStatic:Z

    iput-boolean v1, p0, Ldisplay/vmap/ViewVmp;->optCenter:Z

    iput-boolean v1, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    invoke-virtual {p0}, Ldisplay/vmap/ViewVmp;->initDisplay()V

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sget-object v3, Lm/g;->f:Ltypes/g;

    const v4, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v3, v4}, Lvmaps/core/VmpWorld;->a(Ltypes/g;F)V

    :cond_2
    sget v0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Ldisplay/vmap/ViewVmp;->setRotation(Z)V

    :cond_3
    sget v0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    invoke-direct {p0, v1}, Ldisplay/vmap/ViewVmp;->setRotation(Z)V

    :cond_4
    sget v0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    invoke-direct {p0, v2}, Ldisplay/vmap/ViewVmp;->setRotation(Z)V

    :cond_5
    sget v0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ldisplay/vmap/ViewVmp;->initDisplay()V

    :cond_6
    sput v1, Ldisplay/vmap/ViewVmp;->reqFlag:I

    return-void
.end method

.method private informBoxesOnModeChanged()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v2, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    sget-boolean v3, Ldisplay/vmap/ViewVmp;->thermalingMode:Z

    invoke-virtual {v1, v2, v3}, Ldisplay/vmap/boxes/InfoBox;->onModeChanged(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private init()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "InlinedApi"
        }
    .end annotation

    new-instance v0, Lvmaps/core/VmpWorld;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lvmaps/core/VmpWorld;-><init>(Z)V

    iput-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    const/4 v0, 0x0

    sput v0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    sput-boolean v0, Ldisplay/vmap/ViewVmp;->thermalingMode:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Ldisplay/vmap/ViewVmp;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    sget v0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    sget-object v1, Ldisplay/vmap/ViewVmp;->paintOutline:Landroid/graphics/Paint;

    invoke-static {}, Lcom/xcglobe/xclog/g;->d()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    sget-object v1, Ldisplay/vmap/ViewVmp;->paintOutline:Landroid/graphics/Paint;

    const-string v2, "#f0fff0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Ldisplay/vmap/ViewVmp;->paintOutline:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Ldisplay/vmap/ViewVmp;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Ldisplay/vmap/ViewVmp;->paintOutline:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Ldisplay/vmap/ViewVmp;->bmpGlider:Landroid/graphics/Bitmap;

    sget-object v0, Ldisplay/vmap/ViewVmp;->bmpGlider:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ldisplay/vmap/ViewVmp;->bmpGliderCenterX:I

    sget-object v0, Ldisplay/vmap/ViewVmp;->bmpGlider:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Ldisplay/vmap/ViewVmp;->bmpGliderCenterY:I

    new-instance v0, Ldisplay/vmap/VmpEventManager;

    invoke-direct {v0, p0}, Ldisplay/vmap/VmpEventManager;-><init>(Ldisplay/vmap/ViewVmp;)V

    iput-object v0, p0, Ldisplay/vmap/ViewVmp;->eventManager:Ldisplay/vmap/VmpEventManager;

    return-void
.end method

.method private initBoxes(II)V
    .locals 8

    iget-boolean v0, p0, Ldisplay/vmap/ViewVmp;->optStatic:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-static {v0}, Ldisplay/vmap/boxes/InfoBox;->initStatic(Lvmaps/core/VmpWorld;)V

    const-string v0, "boxes"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "BoxSpeed BoxSet BoxAirspace-BoxNearThermal-BoxWind-BoxOlcScore BoxVario BoxAltitude BoxGroundProfile"

    :cond_1
    :try_start_0
    new-instance v2, Ldisplay/vmap/VmpEditor;

    invoke-direct {v2, p0}, Ldisplay/vmap/VmpEditor;-><init>(Ldisplay/vmap/ViewVmp;)V

    invoke-virtual {v2, v0}, Ldisplay/vmap/VmpEditor;->loadBoxes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ldisplay/vmap/VmpEditor;

    invoke-direct {v0, p0}, Ldisplay/vmap/VmpEditor;-><init>(Ldisplay/vmap/ViewVmp;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ldisplay/vmap/VmpEditor;->loadBoxes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    :goto_0
    new-instance v0, Ldisplay/vmap/boxes/LayoutManager;

    invoke-direct {v0}, Ldisplay/vmap/boxes/LayoutManager;-><init>()V

    iget-object v2, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1, p2}, Ldisplay/vmap/boxes/LayoutManager;->create(Ljava/util/ArrayList;II)V

    iget-boolean v2, v0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelNeeded:Z

    if-eqz v2, :cond_2

    iget v2, v0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelHeight:I

    sub-int v2, p2, v2

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    invoke-virtual {v0}, Ldisplay/vmap/boxes/LayoutManager;->isHorizontalTerrainMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget v3, v0, Ldisplay/vmap/boxes/LayoutManager;->rightPanelWidth:I

    sub-int v3, p1, v3

    div-int/lit8 v3, v3, 0x2

    sget v5, Ldisplay/vmap/features/ZoomIconPainter;->zoomIconSize:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    neg-int v3, v3

    iput v3, v0, Ldisplay/vmap/boxes/LayoutManager;->pivotDx:I

    iget v3, v0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelHeight:I

    sub-int v3, p2, v3

    sget v5, Ldisplay/vmap/boxes/BoxGroundProfile;->recHeightOnCustomPosition:I

    sub-int/2addr v3, v5

    sget v5, Ldisplay/vmap/boxes/BoxGroundProfile;->recHeightOnCustomPosition:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v5, v3

    iput v5, v0, Ldisplay/vmap/boxes/LayoutManager;->pivotDy:I

    const/16 v3, 0x5a

    iput v3, p0, Ldisplay/vmap/ViewVmp;->directionAngle:I

    goto :goto_2

    :cond_3
    iput v4, p0, Ldisplay/vmap/ViewVmp;->directionAngle:I

    :goto_2
    if-le p1, p2, :cond_4

    iget v3, v0, Ldisplay/vmap/boxes/LayoutManager;->pivotDy:I

    sub-int v2, p2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    iput v3, v0, Ldisplay/vmap/boxes/LayoutManager;->pivotDy:I

    move v2, p2

    :cond_4
    iget v3, v0, Ldisplay/vmap/boxes/LayoutManager;->rightPanelWidth:I

    sub-int v3, p1, v3

    iget v5, v0, Ldisplay/vmap/boxes/LayoutManager;->pivotDx:I

    iget v6, v0, Ldisplay/vmap/boxes/LayoutManager;->pivotDy:I

    invoke-direct {p0, v3, v2, v5, v6}, Ldisplay/vmap/ViewVmp;->initWorld(IIII)V

    iget v2, p0, Ldisplay/vmap/ViewVmp;->bmpGliderCenterX:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Ldisplay/vmap/ViewVmp;->safeWindow:Ltypes/c;

    invoke-virtual {v3}, Ltypes/c;->a()V

    iget-object v3, p0, Ldisplay/vmap/ViewVmp;->safeWindow:Ltypes/c;

    invoke-virtual {v3, v2, v2}, Ltypes/c;->a(II)V

    iget-object v3, p0, Ldisplay/vmap/ViewVmp;->safeWindow:Ltypes/c;

    sub-int v5, p1, v2

    iget v6, v0, Ldisplay/vmap/boxes/LayoutManager;->rightPanelWidth:I

    sub-int/2addr v5, v6

    sub-int v6, p2, v2

    iget v7, v0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelExtendedHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ltypes/c;->a(II)V

    iget-object v3, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v5, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    invoke-virtual {v3, v5}, Lvmaps/core/VmpWorld;->b([I)V

    iget-object v3, p0, Ldisplay/vmap/ViewVmp;->safeWindow:Ltypes/c;

    iget-object v5, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    aget v5, v5, v4

    add-int/2addr v5, v2

    iget-object v6, p0, Ldisplay/vmap/ViewVmp;->xy:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v6, v2

    invoke-virtual {v3, v5, v6}, Ltypes/c;->a(II)V

    iget-object v2, p0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ldisplay/vmap/boxes/LayoutManager;->finalize(Ljava/util/ArrayList;)V

    iget v2, v0, Ldisplay/vmap/boxes/LayoutManager;->rightPanelWidth:I

    if-lez v2, :cond_5

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Ldisplay/vmap/boxes/LayoutManager;->rightPanelWidth:I

    sub-int v3, p1, v3

    invoke-direct {v2, v3, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Ldisplay/vmap/ViewVmp;->rightPanelRect:Landroid/graphics/Rect;

    goto :goto_3

    :cond_5
    iput-object v1, p0, Ldisplay/vmap/ViewVmp;->rightPanelRect:Landroid/graphics/Rect;

    :goto_3
    iget-boolean v2, v0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelNeeded:Z

    if-eqz v2, :cond_6

    if-le p2, p1, :cond_6

    new-instance v1, Landroid/graphics/Rect;

    iget v0, v0, Ldisplay/vmap/boxes/LayoutManager;->bottomPanelHeight:I

    sub-int v0, p2, v0

    invoke-direct {v1, v4, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_6
    iput-object v1, p0, Ldisplay/vmap/ViewVmp;->bottomPanelRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ldisplay/vmap/ViewVmp;->invalidate()V

    return-void
.end method

.method private initFeatures()V
    .locals 2

    invoke-static {p0}, Ldisplay/vmap/features/PoiPainter;->create(Ldisplay/vmap/ViewVmp;)V

    invoke-static {p0}, Ldisplay/vmap/features/ZoomIconPainter;->create(Ldisplay/vmap/ViewVmp;)V

    invoke-static {p0}, Ldisplay/vmap/features/RingPainter;->create(Ldisplay/vmap/ViewVmp;)V

    invoke-static {p0}, Ldisplay/vmap/features/ThermalPainter;->create(Ldisplay/vmap/ViewVmp;)V

    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ldisplay/vmap/features/TrackPainter;->create(Ldisplay/vmap/ViewVmp;Ljava/util/ArrayList;I)V

    invoke-static {p0}, Ldisplay/vmap/features/TaskPainter;->create(Ldisplay/vmap/ViewVmp;)V

    invoke-static {p0}, Ldisplay/vmap/features/AirspacePainter;->create(Ldisplay/vmap/ViewVmp;)V

    invoke-static {p0}, Ldisplay/vmap/features/FaiAssistant;->create(Ldisplay/vmap/ViewVmp;)V

    invoke-static {p0}, Ldisplay/vmap/features/StatusMsg;->create(Ldisplay/vmap/ViewVmp;)V

    return-void
.end method

.method private initWorld(IIII)V
    .locals 6

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    new-instance v3, Lvmaps/e;

    invoke-direct {v3}, Lvmaps/e;-><init>()V

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lvmaps/core/VmpWorld;->a(IILvmaps/core/e;II)V

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object p1

    iget-object p2, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {p2}, Lvmaps/core/VmpWorld;->c()F

    move-result p2

    float-to-double p3, p2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p3, v0

    if-gez v2, :cond_0

    const/high16 p2, 0x41200000    # 10.0f

    :cond_0
    iget-object p3, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget p4, p1, Ltypes/GpsVal;->a:F

    iget p1, p1, Ltypes/GpsVal;->b:F

    invoke-virtual {p3, p4, p1, p2}, Lvmaps/core/VmpWorld;->a(FFF)V

    iget-object p1, p0, Ldisplay/vmap/ViewVmp;->mapClip:Landroid/graphics/Rect;

    iget-object p2, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget p2, p2, Lvmaps/core/VmpWorld;->f:F

    float-to-int p2, p2

    iget-object p3, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget p3, p3, Lvmaps/core/VmpWorld;->g:F

    float-to-int p3, p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static isRotating()Z
    .locals 1

    sget-object v0, Ldisplay/vmap/ViewVmp;->registeredView:Ldisplay/vmap/ViewVmp;

    if-eqz v0, :cond_0

    sget-object v0, Ldisplay/vmap/ViewVmp;->registeredView:Ldisplay/vmap/ViewVmp;

    iget-boolean v0, v0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThermailing()Z
    .locals 1

    sget-boolean v0, Ldisplay/vmap/ViewVmp;->thermalingMode:Z

    return v0
.end method

.method private reCenterWorld(Ltypes/GpsVal;I)V
    .locals 2

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->eventManager:Ldisplay/vmap/VmpEventManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->eventManager:Ldisplay/vmap/VmpEventManager;

    invoke-virtual {v0}, Ldisplay/vmap/VmpEventManager;->isDraggingMap()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ldisplay/vmap/ViewVmp;->isWholeTrackZoomed:Z

    if-eqz v0, :cond_2

    sget-object v0, Lm/g;->f:Ltypes/g;

    invoke-virtual {v0}, Ltypes/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sget-object v0, Lm/g;->f:Ltypes/g;

    invoke-virtual {v0}, Ltypes/g;->d()F

    move-result v0

    sget-object v1, Lm/g;->f:Ltypes/g;

    invoke-virtual {v1}, Ltypes/g;->e()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lvmaps/core/VmpWorld;->a(FF)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {p1}, Lvmaps/core/VmpWorld;->c()F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    mul-float p1, p1, p2

    goto :goto_0

    :cond_1
    float-to-double p1, p1

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    double-to-float p1, p1

    :goto_0
    iget-object p2, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {p2, p1}, Lvmaps/core/VmpWorld;->a(F)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget v0, p1, Ltypes/GpsVal;->a:F

    iget p1, p1, Ltypes/GpsVal;->b:F

    invoke-virtual {p2, v0, p1}, Lvmaps/core/VmpWorld;->a(FF)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static setFlag(I)V
    .locals 1

    sget v0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    or-int/2addr p0, v0

    sput p0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    sget-object p0, Ldisplay/vmap/ViewVmp;->registeredView:Ldisplay/vmap/ViewVmp;

    if-eqz p0, :cond_0

    sget-object p0, Ldisplay/vmap/ViewVmp;->registeredView:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p0}, Ldisplay/vmap/ViewVmp;->invalidate()V

    :cond_0
    return-void
.end method

.method private setRotation(Z)V
    .locals 1

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    iput-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optCenter:Z

    iget-boolean p1, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Ldisplay/vmap/ViewVmp;->calcIsWholeTrackZoomed(F)V

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Ldisplay/vmap/ViewVmp;->reCenterWorld(Ltypes/GpsVal;I)V

    :cond_0
    return-void
.end method

.method private stopThermalAssistant()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldisplay/vmap/ViewVmp;->changeThermalingMode(Z)V

    return-void
.end method


# virtual methods
.method protected clickZoomIcon(Z)V
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v0}, Lvmaps/core/VmpWorld;->c()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3fc00000    # 1.5f

    :goto_0
    const v2, 0x45a64000    # 5320.0f

    const v3, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_1

    div-float v2, v0, v1

    cmpg-float p1, v2, v3

    if-gez p1, :cond_3

    const v2, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_1
    mul-float p1, v0, v1

    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, p1

    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Ldisplay/vmap/ViewVmp;->changeZoom(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget v0, Ldisplay/vmap/ViewVmp;->reqFlag:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldisplay/vmap/ViewVmp;->handleReqFlag()V

    :cond_0
    sget-boolean v0, Ldisplay/vmap/ViewVmp;->thermalingMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Ldisplay/vmap/ViewVmp;->drawBoxes(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->mapClip:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v4

    iget-boolean v5, p0, Ldisplay/vmap/ViewVmp;->optStatic:Z

    if-eqz v5, :cond_3

    sget-object v4, Lm/g;->f:Ltypes/g;

    invoke-virtual {v4}, Ltypes/g;->c()Ltypes/GpsVal;

    move-result-object v4

    iget-boolean v5, p0, Ldisplay/vmap/ViewVmp;->optDraggable:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v5, v5, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v5, v5, Ltypes/d;->b:F

    iput v5, v4, Ltypes/GpsVal;->a:F

    iget-object v5, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v5, v5, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v5, v5, Ltypes/d;->c:F

    iput v5, v4, Ltypes/GpsVal;->b:F

    :cond_3
    iget-boolean v5, p0, Ldisplay/vmap/ViewVmp;->optCenter:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget v6, v4, Ltypes/GpsVal;->a:F

    iget v7, v4, Ltypes/GpsVal;->b:F

    invoke-virtual {v5, v6, v7}, Lvmaps/core/VmpWorld;->a(FF)V

    :cond_4
    iget-object v5, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget v6, v4, Ltypes/GpsVal;->a:F

    iget v7, v4, Ltypes/GpsVal;->b:F

    iget-object v8, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    invoke-virtual {v5, v6, v7, v8}, Lvmaps/core/VmpWorld;->a(FF[I)V

    sget v5, Lm/g;->k:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    iget-object v5, p0, Ldisplay/vmap/ViewVmp;->safeWindow:Ltypes/c;

    iget-object v6, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    invoke-virtual {v5, v6}, Ltypes/c;->a([I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0, v4, v2}, Ldisplay/vmap/ViewVmp;->reCenterWorld(Ltypes/GpsVal;I)V

    iget-object v5, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget v6, v4, Ltypes/GpsVal;->a:F

    iget v7, v4, Ltypes/GpsVal;->b:F

    iget-object v8, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    invoke-virtual {v5, v6, v7, v8}, Lvmaps/core/VmpWorld;->a(FF[I)V

    :cond_5
    iget-boolean v5, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget v6, Lm/g;->m:I

    neg-int v6, v6

    iget v7, p0, Ldisplay/vmap/ViewVmp;->directionAngle:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    aget v7, v7, v1

    int-to-float v7, v7

    iget-object v8, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    aget v8, v8, v2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    sget v5, Lm/g;->m:I

    neg-int v5, v5

    iget v6, p0, Ldisplay/vmap/ViewVmp;->directionAngle:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    aget v6, v6, v1

    int-to-float v6, v6

    iget-object v7, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_6
    sget-boolean v5, Ldisplay/vmap/ViewVmp;->thermalingMode:Z

    if-eqz v5, :cond_7

    sget-object v5, Lm/g;->C:Lm/h;

    iget v5, v5, Lm/h;->a:I

    if-nez v5, :cond_7

    invoke-direct {p0}, Ldisplay/vmap/ViewVmp;->stopThermalAssistant()V

    :cond_7
    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Ldisplay/vmap/ViewVmp;->drawMap(Landroid/graphics/Canvas;)V

    :cond_8
    iget-boolean v5, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    if-eqz v5, :cond_9

    invoke-static {p1}, Ldisplay/vmap/features/RingPainter;->drawRing(Landroid/graphics/Canvas;)V

    sget-boolean v5, Ldisplay/vmap/ViewVmp;->thermalingMode:Z

    if-eqz v5, :cond_9

    invoke-static {p1}, Ldisplay/vmap/features/ThermalPainter;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    iget-boolean v5, p0, Ldisplay/vmap/ViewVmp;->optStatic:Z

    if-nez v5, :cond_a

    invoke-static {v4}, Ldisplay/vmap/features/TrackPainter;->moveTo(Ltypes/GpsVal;)V

    :cond_a
    if-nez v0, :cond_b

    iget-boolean v4, p0, Ldisplay/vmap/ViewVmp;->optStatic:Z

    invoke-static {p1, v4}, Ldisplay/vmap/features/TrackPainter;->draw(Landroid/graphics/Canvas;Z)V

    :cond_b
    iget-boolean v4, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    if-eqz v4, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    if-nez v0, :cond_e

    sget-object v4, Lk/a;->a:Lk/a;

    if-nez v4, :cond_d

    invoke-static {p1}, Ldisplay/vmap/features/FaiAssistant;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    invoke-static {p1}, Ldisplay/vmap/features/PoiPainter;->drawPoi(Landroid/graphics/Canvas;)V

    invoke-static {p1}, Ldisplay/vmap/features/AirspacePainter;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    iget-boolean v4, p0, Ldisplay/vmap/ViewVmp;->optStatic:Z

    if-nez v4, :cond_14

    iget-boolean v4, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_12

    sget-object v4, Lm/g;->W:Lh/a;

    invoke-virtual {v4}, Lh/a;->c()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {p1}, Ldisplay/vmap/features/RingPainter;->drawSock(Landroid/graphics/Canvas;)V

    :cond_f
    sget-object v4, Ltypes/f;->a:Ltypes/PoiPoint;

    if-eqz v4, :cond_11

    invoke-static {}, Lk/a;->g()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-boolean v4, Ldisplay/vmap/ViewVmp;->thermalingMode:Z

    if-nez v4, :cond_10

    invoke-static {p1}, Ldisplay/vmap/features/TaskPainter;->drawGoalLine(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_10
    invoke-static {p1}, Ldisplay/vmap/features/RingPainter;->drawGoal(Landroid/graphics/Canvas;)V

    :cond_11
    :goto_1
    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->gMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Ldisplay/vmap/ViewVmp;->directionAngle:I

    int-to-float v6, v6

    iget v7, p0, Ldisplay/vmap/ViewVmp;->bmpGliderCenterX:I

    int-to-float v7, v7

    iget v8, p0, Ldisplay/vmap/ViewVmp;->bmpGliderCenterY:I

    int-to-float v8, v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->gMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    aget v1, v6, v1

    iget v6, p0, Ldisplay/vmap/ViewVmp;->bmpGliderCenterX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget-object v6, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    aget v2, v6, v2

    goto :goto_2

    :cond_12
    sget-object v4, Ltypes/f;->a:Ltypes/PoiPoint;

    if-eqz v4, :cond_13

    invoke-static {}, Lk/a;->g()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {p1}, Ldisplay/vmap/features/TaskPainter;->drawGoalLine(Landroid/graphics/Canvas;)V

    :cond_13
    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->gMatrix:Landroid/graphics/Matrix;

    sget v6, Lm/g;->m:I

    int-to-float v6, v6

    iget v7, p0, Ldisplay/vmap/ViewVmp;->bmpGliderCenterX:I

    int-to-float v7, v7

    iget v8, p0, Ldisplay/vmap/ViewVmp;->bmpGliderCenterY:I

    int-to-float v8, v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->gMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    aget v1, v6, v1

    iget v6, p0, Ldisplay/vmap/ViewVmp;->bmpGliderCenterX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget-object v6, p0, Ldisplay/vmap/ViewVmp;->gPoint:[I

    aget v2, v6, v2

    :goto_2
    iget v6, p0, Ldisplay/vmap/ViewVmp;->bmpGliderCenterY:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v1, Ldisplay/vmap/ViewVmp;->bmpGlider:Landroid/graphics/Bitmap;

    iget-object v2, p0, Ldisplay/vmap/ViewVmp;->gMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_14
    invoke-static {p1}, Ldisplay/vmap/features/TrackPainter;->drawEndPoints(Landroid/graphics/Canvas;)V

    sget-object v1, Lk/a;->a:Lk/a;

    if-eqz v1, :cond_15

    invoke-static {p1}, Ldisplay/vmap/features/TaskPainter;->drawTask(Landroid/graphics/Canvas;)V

    :cond_15
    :goto_3
    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-boolean v1, p0, Ldisplay/vmap/ViewVmp;->optStatic:Z

    if-nez v1, :cond_16

    if-nez v0, :cond_16

    invoke-direct {p0, p1}, Ldisplay/vmap/ViewVmp;->drawBoxes(Landroid/graphics/Canvas;)V

    :cond_16
    if-nez v0, :cond_17

    invoke-static {p1}, Ldisplay/vmap/features/ZoomIconPainter;->draw(Landroid/graphics/Canvas;)V

    :cond_17
    sget-boolean v0, Ldisplay/vmap/ViewVmp;->oldrotation:Z

    iget-boolean v1, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    if-ne v0, v1, :cond_18

    sget-boolean v0, Ldisplay/vmap/ViewVmp;->oldthermailing:Z

    sget-boolean v1, Ldisplay/vmap/ViewVmp;->thermalingMode:Z

    if-eq v0, v1, :cond_19

    :cond_18
    iget-boolean v0, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    sput-boolean v0, Ldisplay/vmap/ViewVmp;->oldrotation:Z

    sget-boolean v0, Ldisplay/vmap/ViewVmp;->thermalingMode:Z

    sput-boolean v0, Ldisplay/vmap/ViewVmp;->oldthermailing:Z

    invoke-direct {p0}, Ldisplay/vmap/ViewVmp;->informBoxesOnModeChanged()V

    :cond_19
    invoke-static {p1}, Ldisplay/vmap/features/StatusMsg;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawMap(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v0}, Lvmaps/core/VmpWorld;->b()Lvmaps/core/e;

    move-result-object v0

    check-cast v0, Lvmaps/e;

    iget-object v1, v0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ldisplay/vmap/ViewVmp;->recSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v2, v2, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v2, v2, Ltypes/c;->a:I

    iget-object v3, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v3, v3, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v3, v3, Ltypes/c;->b:I

    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v4, v4, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v4, v4, Ltypes/c;->c:I

    iget-object v5, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v5, v5, Lvmaps/core/VmpWorld;->m:Ltypes/c;

    iget v5, v5, Ltypes/c;->d:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Ldisplay/vmap/ViewVmp;->recDst:Landroid/graphics/Rect;

    iget-object v2, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v2, v2, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v2, v2, Ltypes/c;->a:I

    iget-object v3, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v3, v3, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v3, v3, Ltypes/c;->b:I

    iget-object v4, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v4, v4, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v4, v4, Ltypes/c;->c:I

    iget-object v5, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v5, v5, Lvmaps/core/VmpWorld;->n:Ltypes/c;

    iget v5, v5, Ltypes/c;->d:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v0, Lvmaps/e;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ldisplay/vmap/ViewVmp;->recSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Ldisplay/vmap/ViewVmp;->recDst:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method fingerMove(FFFF)Z
    .locals 3

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v0, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Ldisplay/vmap/ViewVmp;->optRotate:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Ldisplay/vmap/ViewVmp;->setRotation(Z)V

    :cond_1
    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v0}, Lvmaps/core/VmpWorld;->c()F

    move-result v0

    iget-object v1, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget v1, v1, Lvmaps/core/VmpWorld;->f:F

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    mul-float p2, p2, v0

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    invoke-virtual {v0, p2}, Ltypes/d;->c(F)F

    move-result p2

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v0, v0, Ltypes/d;->b:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    invoke-virtual {v0, p1}, Ltypes/d;->d(F)F

    move-result p1

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v0, v0, Ltypes/d;->c:F

    sub-float/2addr p1, v0

    add-float/2addr p3, p2

    sub-float/2addr p4, p1

    iget-object p1, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {p1, p3, p4}, Lvmaps/core/VmpWorld;->a(FF)V

    invoke-static {}, Ldisplay/vmap/features/TrackPainter;->recreate()V

    const/4 p1, 0x1

    return p1
.end method

.method public initDisplay()V
    .locals 3

    iget v0, p0, Ldisplay/vmap/ViewVmp;->viewRealWidth:I

    iget v1, p0, Ldisplay/vmap/ViewVmp;->viewRealHeight:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Ldisplay/vmap/ViewVmp;->initWorld(IIII)V

    iget v0, p0, Ldisplay/vmap/ViewVmp;->viewRealWidth:I

    iget v1, p0, Ldisplay/vmap/ViewVmp;->viewRealHeight:I

    invoke-direct {p0, v0, v1}, Ldisplay/vmap/ViewVmp;->initBoxes(II)V

    invoke-direct {p0}, Ldisplay/vmap/ViewVmp;->initFeatures()V

    return-void
.end method

.method public onMapUpdate()V
    .locals 1

    invoke-static {}, Ldisplay/vmap/features/TrackPainter;->recreate()V

    invoke-static {}, Ldisplay/vmap/features/PoiPainter;->reloadLocalPoints()V

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ldisplay/vmap/ViewVmp;->setMeasuredDimension(II)V

    if-lez p1, :cond_1

    iget v0, p0, Ldisplay/vmap/ViewVmp;->viewRealWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Ldisplay/vmap/ViewVmp;->viewRealHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Ldisplay/vmap/ViewVmp;->viewRealWidth:I

    iput p2, p0, Ldisplay/vmap/ViewVmp;->viewRealHeight:I

    invoke-virtual {p0}, Ldisplay/vmap/ViewVmp;->initDisplay()V

    sget-object p1, Lm/g;->C:Lm/h;

    iget p1, p1, Lm/h;->a:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    invoke-virtual {p0}, Ldisplay/vmap/ViewVmp;->startThermalAssistant()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->eventManager:Ldisplay/vmap/VmpEventManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->eventManager:Ldisplay/vmap/VmpEventManager;

    invoke-virtual {v0, p1}, Ldisplay/vmap/VmpEventManager;->action(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onZoom()V
    .locals 0

    invoke-static {}, Ldisplay/vmap/features/TrackPainter;->recreate()V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ldisplay/vmap/ViewVmp;->registeredView:Ldisplay/vmap/ViewVmp;

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v0, p0}, Lvmaps/core/VmpWorld;->b(Lvmaps/core/g;)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 1

    sput-object p0, Ldisplay/vmap/ViewVmp;->registeredView:Ldisplay/vmap/ViewVmp;

    iget-object v0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v0, p0}, Lvmaps/core/VmpWorld;->a(Lvmaps/core/g;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    return-void
.end method

.method public startThermalAssistant()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldisplay/vmap/ViewVmp;->changeThermalingMode(Z)V

    return-void
.end method
