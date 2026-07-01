.class public Ldisplay/vmap/boxes/BoxSet;
.super Ldisplay/vmap/boxes/InfoBox;


# static fields
.field private static final ROTATE_TIME:J = 0xbb8L


# instance fields
.field public boxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;"
        }
    .end annotation
.end field

.field index:I

.field nextRotateTimeMs:J

.field outRec:Landroid/graphics/Rect;

.field takeChildSize:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->outRec:Landroid/graphics/Rect;

    iput-boolean v0, p0, Ldisplay/vmap/boxes/BoxSet;->takeChildSize:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ldisplay/vmap/boxes/BoxSet;->nextRotateTimeMs:J

    iput-boolean v0, p0, Ldisplay/vmap/boxes/BoxSet;->showCaption:Z

    return-void
.end method

.method private rotateIndex()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldisplay/vmap/boxes/BoxSet;->nextRotateTimeMs:J

    iget v0, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    :cond_0
    iget v0, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    invoke-direct {p0, v0}, Ldisplay/vmap/boxes/BoxSet;->setIndex(I)V

    return-void
.end method

.method private setIndex(I)V
    .locals 0

    iput p1, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxSet;->setRec()V

    return-void
.end method

.method private setRec()V
    .locals 6

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ldisplay/vmap/boxes/BoxSet;->takeChildSize:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    iget v1, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldisplay/vmap/boxes/InfoBox;

    iget-object v0, v0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->rec:Landroid/graphics/Rect;

    :goto_0
    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->outRec:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x2

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v1, p0, Ldisplay/vmap/boxes/BoxSet;->takeChildSize:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->rec:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private timeRotation()V
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    iget v1, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v0}, Ldisplay/vmap/boxes/InfoBox;->isTimeRotatable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldisplay/vmap/boxes/BoxSet;->nextRotateTimeMs:J

    return-void

    :cond_0
    iget v0, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    iget-object v3, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v3}, Ldisplay/vmap/boxes/InfoBox;->isTimeRotatable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxSet;->rotateIndex()V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public add(Ldisplay/vmap/boxes/InfoBox;)V
    .locals 2

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Ldisplay/vmap/boxes/BoxSet;->setIndex(I)V

    iget-boolean v0, p1, Ldisplay/vmap/boxes/InfoBox;->customWidth:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ldisplay/vmap/boxes/BoxSet;->customWidth:Z

    :cond_0
    iput-object p0, p1, Ldisplay/vmap/boxes/InfoBox;->parentSet:Ldisplay/vmap/boxes/BoxSet;

    return-void
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleBox()Ldisplay/vmap/boxes/InfoBox;
    .locals 2

    iget v0, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    iget v1, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldisplay/vmap/boxes/InfoBox;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public hasCustomPosition()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/vmap/boxes/InfoBox;

    iget-boolean v2, v2, Ldisplay/vmap/boxes/InfoBox;->customPosition:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public initPosition(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->rec:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldisplay/vmap/boxes/InfoBox;

    iget-object v4, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v3, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-boolean v6, p0, Ldisplay/vmap/boxes/BoxSet;->takeChildSize:Z

    if-eqz v6, :cond_0

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxSet;->rec:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Ldisplay/vmap/boxes/BoxSet;->rec:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    invoke-virtual {v3, v4, v6}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    goto :goto_1

    :cond_0
    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v5, v1, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, p1

    add-int/2addr v5, p2

    invoke-virtual {v3, v4, v5}, Ldisplay/vmap/boxes/InfoBox;->initPosition(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public initSize(F)V
    .locals 6

    invoke-super {p0, p1}, Ldisplay/vmap/boxes/InfoBox;->initSize(F)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v4, p1}, Ldisplay/vmap/boxes/InfoBox;->initSize(F)V

    iget-object v5, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v4, v4, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v5, v2, :cond_0

    move v2, v5

    :cond_0
    if-le v4, v3, :cond_1

    move v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ldisplay/vmap/boxes/BoxSet;->rec:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public isInside(II)Z
    .locals 2

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    iget v1, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldisplay/vmap/boxes/InfoBox;

    iget-object v0, v0, Ldisplay/vmap/boxes/InfoBox;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public onClick()Z
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    iget v1, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v0}, Ldisplay/vmap/boxes/InfoBox;->onClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxSet;->rotateIndex()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldisplay/vmap/boxes/BoxSet;->nextRotateTimeMs:J

    const/4 v0, 0x1

    return v0
.end method

.method public onFinalized(Ldisplay/vmap/boxes/LayoutManager;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v1, p1}, Ldisplay/vmap/boxes/InfoBox;->onFinalized(Ldisplay/vmap/boxes/LayoutManager;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ldisplay/vmap/boxes/InfoBox;->onFinalized(Ldisplay/vmap/boxes/LayoutManager;)V

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxSet;->setRec()V

    return-void
.end method

.method public onModeChanged(ZZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v1, p1, p2}, Ldisplay/vmap/boxes/InfoBox;->onModeChanged(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPosition()V
    .locals 2

    invoke-super {p0}, Ldisplay/vmap/boxes/InfoBox;->onPosition()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v1}, Ldisplay/vmap/boxes/InfoBox;->onPosition()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxSet;->setRec()V

    return-void
.end method

.method public setState(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v1, p1}, Ldisplay/vmap/boxes/InfoBox;->setState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Ldisplay/vmap/boxes/BoxSet;->state:I

    return-void
.end method

.method public update(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ldisplay/vmap/boxes/BoxSet;->nextRotateTimeMs:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxSet;->timeRotation()V

    :cond_0
    iget v0, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    iget v1, p0, Ldisplay/vmap/boxes/BoxSet;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldisplay/vmap/boxes/InfoBox;

    sget-object v1, Ldisplay/vmap/boxes/BoxSet;->paintBack:Landroid/graphics/Paint;

    iget v2, p0, Ldisplay/vmap/boxes/BoxSet;->state:I

    sget v3, Ldisplay/vmap/boxes/BoxSet;->STATE_PRESSED:I

    if-ne v2, v3, :cond_2

    sget v2, Lcom/xcglobe/xclog/l;->j:I

    goto :goto_0

    :cond_2
    const-string v2, "#ffffe8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxSet;->rec:Landroid/graphics/Rect;

    sget-object v2, Ldisplay/vmap/boxes/BoxSet;->paintBack:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0, p1}, Ldisplay/vmap/boxes/InfoBox;->update(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Ldisplay/vmap/boxes/BoxSet;->drawFrame(Landroid/graphics/Canvas;)V

    sget-boolean v0, Ldisplay/vmap/boxes/BoxSet;->alwaysDrawRect:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxSet;->rec:Landroid/graphics/Rect;

    invoke-static {}, Lcom/xcglobe/xclog/g;->b()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method
