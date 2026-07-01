.class public Ldisplay/vmap/features/StatusMsg;
.super Ljava/lang/Object;


# static fields
.field private static final MARGIN_LEFT:I

.field public static final height:I

.field protected static rec:Landroid/graphics/Rect;

.field private static textX:I

.field private static textX2:I

.field private static textY:I

.field private static view:Ldisplay/vmap/ViewVmp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Ldisplay/vmap/features/StatusMsg;->rec:Landroid/graphics/Rect;

    sget v0, Lcom/xcglobe/xclog/l;->d:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Ldisplay/vmap/features/StatusMsg;->MARGIN_LEFT:I

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Ldisplay/vmap/features/StatusMsg;->height:I

    const/4 v0, 0x0

    sput-object v0, Ldisplay/vmap/features/StatusMsg;->view:Ldisplay/vmap/ViewVmp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ldisplay/vmap/ViewVmp;)V
    .locals 3

    sput-object p0, Ldisplay/vmap/features/StatusMsg;->view:Ldisplay/vmap/ViewVmp;

    sget p0, Ldisplay/vmap/features/StatusMsg;->height:I

    mul-int/lit8 p0, p0, 0xa

    sget-object v0, Ldisplay/vmap/features/StatusMsg;->rec:Landroid/graphics/Rect;

    sget v1, Ldisplay/vmap/features/StatusMsg;->height:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p0, v1}, Landroid/graphics/Rect;->set(IIII)V

    sget-object p0, Ldisplay/vmap/features/StatusMsg;->rec:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sub-int/2addr p0, v0

    sput p0, Ldisplay/vmap/features/StatusMsg;->textY:I

    sget p0, Ldisplay/vmap/features/StatusMsg;->MARGIN_LEFT:I

    sput p0, Ldisplay/vmap/features/StatusMsg;->textX:I

    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xcglobe/xclog/TermoFlyService;->a(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ldisplay/vmap/features/StatusMsg;->view:Ldisplay/vmap/ViewVmp;

    iget-object v1, v1, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    invoke-virtual {v1}, Lvmaps/core/VmpWorld;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [updating]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/xcglobe/xclog/g;->d()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    sget v3, Ldisplay/vmap/features/StatusMsg;->MARGIN_LEFT:I

    add-int/2addr v2, v3

    invoke-static {}, Ld/d;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    sput v2, Ldisplay/vmap/features/StatusMsg;->textX2:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v2, v2

    sget v5, Ldisplay/vmap/features/StatusMsg;->MARGIN_LEFT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sget-object v4, Ldisplay/vmap/features/StatusMsg;->rec:Landroid/graphics/Rect;

    sget-object v5, Ldisplay/vmap/features/StatusMsg;->rec:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/xcglobe/xclog/l;->q:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v2, Ldisplay/vmap/features/StatusMsg;->rec:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget v2, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget v2, Ldisplay/vmap/features/StatusMsg;->textX:I

    int-to-float v2, v2

    sget v4, Ldisplay/vmap/features/StatusMsg;->textY:I

    int-to-float v4, v4

    invoke-virtual {p0, v0, v2, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v3, :cond_2

    sget v0, Lcom/xcglobe/xclog/l;->o:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Ldisplay/vmap/features/StatusMsg;->textX2:I

    int-to-float v0, v0

    sget v2, Ldisplay/vmap/features/StatusMsg;->textY:I

    int-to-float v2, v2

    invoke-virtual {p0, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method
