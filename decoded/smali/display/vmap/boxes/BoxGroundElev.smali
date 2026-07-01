.class public Ldisplay/vmap/boxes/BoxGroundElev;
.super Ldisplay/vmap/boxes/InfoBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundElev;->textLength:I

    const v0, 0x3fd9999a    # 1.7f

    iput v0, p0, Ldisplay/vmap/boxes/BoxGroundElev;->aspectRatio:F

    return-void
.end method


# virtual methods
.method protected getCaption()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c006e

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
    .locals 1

    sget v0, Lm/g;->u:I

    invoke-static {v0}, Ltypes/q;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
