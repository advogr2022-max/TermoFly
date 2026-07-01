.class public Ldisplay/vmap/boxes/BoxFinesse;
.super Ldisplay/vmap/boxes/InfoBox;


# static fields
.field private static final UNAVAILABLE:Ljava/lang/String; = "\u221e"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxFinesse;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lm/g;->W:Lh/a;

    invoke-virtual {v0}, Lh/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldisplay/vmap/boxes/BoxFinesse;->paintText:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxFinesse;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxFinesse;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxFinesse;->textY:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxFinesse;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object p1, Ldisplay/vmap/boxes/BoxFinesse;->paintText:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxFinesse;->text:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxFinesse;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxFinesse;->textY:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxFinesse;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0c0089

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lm/c;->a()V

    sget-object v0, Lm/g;->W:Lh/a;

    invoke-virtual {v0}, Lh/a;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "\u221e"

    :goto_0
    return-object v0
.end method
