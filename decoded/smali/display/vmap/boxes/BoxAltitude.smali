.class public Ldisplay/vmap/boxes/BoxAltitude;
.super Ldisplay/vmap/boxes/InfoBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Ldisplay/vmap/boxes/BoxAltitude;->textLength:I

    const v0, 0x3fd9999a    # 1.7f

    iput v0, p0, Ldisplay/vmap/boxes/BoxAltitude;->aspectRatio:F

    return-void
.end method


# virtual methods
.method protected getCaption()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c000c

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltypes/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 4

    sget v0, Lm/g;->s:I

    invoke-static {v0}, Ltypes/q;->e(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    sget-object v1, Ldisplay/vmap/boxes/BoxAltitude;->paintText:Landroid/graphics/Paint;

    iget v2, p0, Ldisplay/vmap/boxes/BoxAltitude;->textSize:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
