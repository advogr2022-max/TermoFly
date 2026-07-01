.class public Ldisplay/vmap/boxes/BoxSpeed;
.super Ldisplay/vmap/boxes/InfoBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCaption()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0118

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltypes/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 4

    sget v0, Lm/g;->k:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ltypes/q;->b(F)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    sget-object v1, Ldisplay/vmap/boxes/BoxSpeed;->paintText:Landroid/graphics/Paint;

    iget v2, p0, Ldisplay/vmap/boxes/BoxSpeed;->textSize:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
