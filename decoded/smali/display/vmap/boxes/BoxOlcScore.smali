.class public Ldisplay/vmap/boxes/BoxOlcScore;
.super Ldisplay/vmap/boxes/InfoBox;


# static fields
.field private static BIG_PIC_MIN_REC_HEIGHT:I = 0x0

.field private static final UPDATE_INTERVAL_MS:J = 0xbb8L

.field private static final picBigIds:[I

.field private static final picIds:[I


# instance fields
.field private bmpStype:Landroid/graphics/Bitmap;

.field private distanceStr:Ljava/lang/String;

.field private kmMaxType:I

.field private measuredTextSize:I

.field private nextUpdateTimeMs:J

.field private picHeight:I

.field private picType:I

.field private picWidth:I

.field private smallTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Ldisplay/vmap/boxes/BoxOlcScore;->picBigIds:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ldisplay/vmap/boxes/BoxOlcScore;->picIds:[I

    const/4 v0, 0x0

    sput v0, Ldisplay/vmap/boxes/BoxOlcScore;->BIG_PIC_MIN_REC_HEIGHT:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060043
        0x7f060045
        0x7f060047
    .end array-data

    :array_1
    .array-data 4
        0x7f060042
        0x7f060044
        0x7f060046
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->nextUpdateTimeMs:J

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->kmMaxType:I

    iput v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->picType:I

    iput v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->picWidth:I

    iput v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->picHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Ldisplay/vmap/boxes/BoxOlcScore;->bmpStype:Landroid/graphics/Bitmap;

    iput-object v1, p0, Ldisplay/vmap/boxes/BoxOlcScore;->distanceStr:Ljava/lang/String;

    const v1, 0x3fd9999a    # 1.7f

    iput v1, p0, Ldisplay/vmap/boxes/BoxOlcScore;->aspectRatio:F

    iput v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->textLength:I

    return-void
.end method

.method private updateContent()V
    .locals 5

    sget v0, Ldisplay/vmap/boxes/BoxOlcScore;->BIG_PIC_MIN_REC_HEIGHT:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldisplay/vmap/boxes/BoxOlcScore;->calcpicMinRecHeight()V

    :cond_0
    invoke-static {}, Lm/g;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Ldisplay/vmap/boxes/BoxOlcScore;->distanceStr:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Ldisplay/vmap/boxes/BoxOlcScore;->kmMaxType:I

    if-eqz v0, :cond_3

    invoke-static {}, Lm/f;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "kmmaxtype"

    invoke-static {v0, v2}, Lcom/xcglobe/xclog/j;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    iget v3, p0, Ldisplay/vmap/boxes/BoxOlcScore;->picType:I

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxOlcScore;->rec:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Ldisplay/vmap/boxes/BoxOlcScore;->BIG_PIC_MIN_REC_HEIGHT:I

    if-ge v3, v4, :cond_1

    sget-object v3, Ldisplay/vmap/boxes/BoxOlcScore;->picIds:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    goto :goto_0

    :cond_1
    sget-object v3, Ldisplay/vmap/boxes/BoxOlcScore;->picBigIds:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    :goto_0
    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Ldisplay/vmap/boxes/BoxOlcScore;->bmpStype:Landroid/graphics/Bitmap;

    iput v2, p0, Ldisplay/vmap/boxes/BoxOlcScore;->picType:I

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxOlcScore;->bmpStype:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Ldisplay/vmap/boxes/BoxOlcScore;->picWidth:I

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxOlcScore;->bmpStype:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Ldisplay/vmap/boxes/BoxOlcScore;->picHeight:I

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "km"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ltypes/q;->a(F)F

    move-result v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    if-lez v0, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->distanceStr:Ljava/lang/String;

    sget-object v0, Ldisplay/vmap/boxes/BoxOlcScore;->paintText:Landroid/graphics/Paint;

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxOlcScore;->distanceStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    sget v3, Lcom/xcglobe/xclog/l;->d:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->measuredTextSize:I

    iput v2, p0, Ldisplay/vmap/boxes/BoxOlcScore;->kmMaxType:I

    :cond_3
    iget-object v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->distanceStr:Ljava/lang/String;

    if-nez v0, :cond_4

    iput v1, p0, Ldisplay/vmap/boxes/BoxOlcScore;->measuredTextSize:I

    const-string v0, "---"

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->distanceStr:Ljava/lang/String;

    :cond_4
    return-void
.end method


# virtual methods
.method calcpicMinRecHeight()V
    .locals 3

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Ldisplay/vmap/boxes/BoxOlcScore;->picBigIds:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ff33333    # 1.9f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Ldisplay/vmap/boxes/BoxOlcScore;->BIG_PIC_MIN_REC_HEIGHT:I

    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 5

    sget-wide v0, Ldisplay/vmap/boxes/BoxOlcScore;->timeMs:J

    iget-wide v2, p0, Ldisplay/vmap/boxes/BoxOlcScore;->nextUpdateTimeMs:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxOlcScore;->updateContent()V

    sget-wide v0, Ldisplay/vmap/boxes/BoxOlcScore;->timeMs:J

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->nextUpdateTimeMs:J

    :cond_0
    iget v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->kmMaxType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->bmpStype:Landroid/graphics/Bitmap;

    iget v1, p0, Ldisplay/vmap/boxes/BoxOlcScore;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxOlcScore;->textY:I

    iget v3, p0, Ldisplay/vmap/boxes/BoxOlcScore;->picHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->textX:I

    iget v1, p0, Ldisplay/vmap/boxes/BoxOlcScore;->picWidth:I

    add-int/2addr v0, v1

    sget v1, Lcom/xcglobe/xclog/l;->d:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxOlcScore;->text:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldisplay/vmap/boxes/BoxOlcScore;->text:Ljava/lang/String;

    int-to-float v2, v0

    iget v3, p0, Ldisplay/vmap/boxes/BoxOlcScore;->textY:I

    int-to-float v3, v3

    sget-object v4, Ldisplay/vmap/boxes/BoxOlcScore;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, p0, Ldisplay/vmap/boxes/BoxOlcScore;->measuredTextSize:I

    if-lez v1, :cond_2

    sget-object v1, Ldisplay/vmap/boxes/BoxOlcScore;->paintText:Landroid/graphics/Paint;

    iget v2, p0, Ldisplay/vmap/boxes/BoxOlcScore;->smallTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Ldisplay/vmap/boxes/BoxOlcScore;->paintText:Landroid/graphics/Paint;

    sget v2, Lcom/xcglobe/xclog/l;->s:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Ltypes/q;->a:Ljava/lang/String;

    iget v2, p0, Ldisplay/vmap/boxes/BoxOlcScore;->measuredTextSize:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Ldisplay/vmap/boxes/BoxOlcScore;->textY:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxOlcScore;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object p1, Ldisplay/vmap/boxes/BoxOlcScore;->paintText:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    return-void
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 1

    const-string v0, "OLC"

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->distanceStr:Ljava/lang/String;

    return-object v0
.end method

.method protected onPosition()V
    .locals 2

    iget v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->textSize:F

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->textSize:F

    iget v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->textSize:F

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    iput v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->smallTextSize:F

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->picType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldisplay/vmap/boxes/BoxOlcScore;->nextUpdateTimeMs:J

    return-void
.end method
