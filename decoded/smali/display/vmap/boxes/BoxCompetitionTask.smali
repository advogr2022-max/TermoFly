.class public Ldisplay/vmap/boxes/BoxCompetitionTask;
.super Ldisplay/vmap/boxes/InfoBox;


# static fields
.field private static final MODE_BLACK:I = 0x0

.field private static final MODE_GREEN:I = 0x2

.field private static final MODE_RED:I = 0x1

.field private static final SMALL_TEXT_SIZE_FACTOR:F = 0.6f

.field private static final UPDATE_INTERVAL_MS:J = 0x3e8L

.field private static msg:Ljava/lang/String;

.field private static msgRight:Ljava/lang/String;

.field private static msgRightUnit:Ljava/lang/String;

.field private static msgUnit:Ljava/lang/String;

.field private static picHeight:I

.field private static picWidth:I


# instance fields
.field private clickTask:Ljava/lang/String;

.field private colorMode:I

.field private currentFlag:I

.field private markerOpened:Z

.field private measuredBigTextWidth:I

.field private measuredMsgWidth:I

.field private measuredRightUnit:I

.field private nextUpdateTimeMs:J

.field private picBmp:Landroid/graphics/Bitmap;

.field private picY:I

.field private prevMsgRightLength:I

.field private previousNeededTimeToSSS:J

.field private previousNeededTimeToSSSPerfTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->markerOpened:Z

    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->currentFlag:I

    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->colorMode:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->nextUpdateTimeMs:J

    const/4 v3, 0x0

    iput-object v3, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picBmp:Landroid/graphics/Bitmap;

    iput-wide v1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->previousNeededTimeToSSS:J

    iput-wide v1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->previousNeededTimeToSSSPerfTimeMs:J

    iput-boolean v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->showCaption:Z

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->sizeFactor:F

    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->aspectRatio:F

    const v0, 0x7f0c0052

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->clickTask:Ljava/lang/String;

    return-void
.end method

.method private measure()V
    .locals 4

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->prevMsgRightLength:I

    if-eq v0, v1, :cond_0

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->prevMsgRightLength:I

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    sget-object v1, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->measuredBigTextWidth:I

    :cond_0
    iget v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->measuredRightUnit:I

    const v1, 0x3f8ccccd    # 1.1f

    const v2, 0x3f19999a    # 0.6f

    if-nez v0, :cond_1

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRightUnit:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    sget-object v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRightUnit:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    mul-float v0, v0, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->measuredRightUnit:I

    :cond_1
    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msg:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    sget-object v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->msg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    mul-float v0, v0, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->measuredMsgWidth:I

    :cond_2
    return-void
.end method

.method private updateAfterStart()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->markerOpened:Z

    sget-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    const v1, 0x7f060017

    invoke-virtual {p0, v1}, Ldisplay/vmap/boxes/BoxCompetitionTask;->loadFlag(I)V

    sget-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    iget-short v1, v1, Ltypes/PoiPoint;->k:S

    if-nez v1, :cond_0

    invoke-static {}, Lc/a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lk/a;->a:Lk/a;

    iget-object v1, v1, Lk/a;->h:Lk/c;

    iget-short v1, v1, Lk/c;->k:S

    :cond_0
    if-nez v1, :cond_1

    sput-object v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    sput-object v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRightUnit:Ljava/lang/String;

    goto :goto_2

    :cond_1
    sget-object v3, Lm/g;->W:Lh/a;

    sget v4, Ltypes/f;->c:I

    invoke-virtual {v3, v4}, Lh/a;->a(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    const v3, 0x3a83126f    # 0.001f

    :cond_2
    const/high16 v4, 0x45610000    # 3600.0f

    sget v5, Ltypes/f;->b:F

    mul-float v5, v5, v4

    div-float/2addr v5, v3

    sget v3, Lcom/xcglobe/xclog/l;->N:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    sget v4, Lm/g;->s:I

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    if-lez v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ltypes/q;->e(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->colorMode:I

    goto :goto_1

    :cond_3
    const/16 v3, -0x3e8

    if-le v4, v3, :cond_4

    invoke-static {v4}, Ltypes/q;->e(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Ldisplay/vmap/boxes/BoxCompetitionTask;->loadFlag(I)V

    iput v2, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->colorMode:I

    invoke-static {v1}, Ltypes/q;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    :goto_1
    sget-object v0, Ltypes/q;->b:Ljava/lang/String;

    sput-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRightUnit:Ljava/lang/String;

    :goto_2
    sget-object v0, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    sget v1, Ltypes/f;->b:F

    invoke-static {v1}, Ltypes/q;->a(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msg:Ljava/lang/String;

    sget-object v0, Ltypes/q;->a:Ljava/lang/String;

    sput-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgUnit:Ljava/lang/String;

    goto :goto_3

    :cond_5
    sget-object v0, Lk/a;->a:Lk/a;

    if-eqz v0, :cond_6

    sget-object v0, Lk/a;->a:Lk/a;

    iget-boolean v0, v0, Lk/a;->l:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0c0134

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msg:Ljava/lang/String;

    sput-object v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    sput-object v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRightUnit:Ljava/lang/String;

    sput-object v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgUnit:Ljava/lang/String;

    iput v2, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->prevMsgRightLength:I

    invoke-virtual {p0, v2}, Ldisplay/vmap/boxes/BoxCompetitionTask;->loadFlag(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method private updateBeforeStat()V
    .locals 9

    const/4 v0, 0x0

    sput-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRightUnit:Ljava/lang/String;

    sput-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgUnit:Ljava/lang/String;

    sget-object v0, Lk/a;->a:Lk/a;

    iget-wide v0, v0, Lk/a;->u:J

    invoke-static {}, Lm/f;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-wide v2, Lm/g;->q:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    const/4 v4, 0x0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->markerOpened:Z

    long-to-int v5, v0

    invoke-static {v5, v4}, Lcom/xcglobe/xclog/l;->a(II)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Ldisplay/vmap/boxes/BoxCompetitionTask;->msg:Ljava/lang/String;

    iget-boolean v5, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->markerOpened:Z

    if-eqz v5, :cond_2

    const v5, 0x7f060016

    goto :goto_2

    :cond_2
    const v5, 0x7f060038

    :goto_2
    invoke-virtual {p0, v5}, Ldisplay/vmap/boxes/BoxCompetitionTask;->loadFlag(I)V

    sget-object v5, Lk/a;->a:Lk/a;

    iget v5, v5, Lk/a;->k:I

    sget-object v6, Lk/a;->a:Lk/a;

    iget v6, v6, Lk/a;->g:I

    if-le v5, v6, :cond_3

    invoke-virtual {p0}, Ldisplay/vmap/boxes/BoxCompetitionTask;->calcNeededTimeSecToSSS()J

    move-result-wide v5

    :goto_3
    sub-long/2addr v0, v5

    goto :goto_4

    :cond_3
    sget-object v5, Lm/g;->W:Lh/a;

    sget v6, Ltypes/f;->c:I

    invoke-virtual {v5, v6}, Lh/a;->a(I)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v5, v6

    if-gez v7, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_4
    const/high16 v7, 0x45610000    # 3600.0f

    sget v8, Ltypes/f;->b:F

    mul-float v8, v8, v7

    div-float/2addr v8, v5

    mul-float v8, v8, v6

    float-to-long v5, v8

    goto :goto_3

    :goto_4
    const/4 v5, 0x3

    const-wide/16 v6, 0xe10

    cmp-long v8, v0, v2

    if-lez v8, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v3, v0

    cmp-long v8, v0, v6

    if-gez v8, :cond_5

    const/4 v4, 0x3

    :cond_5
    invoke-static {v3, v4}, Lcom/xcglobe/xclog/l;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->colorMode:I

    goto :goto_8

    :cond_6
    const-wide/16 v2, -0x2a30

    cmp-long v8, v0, v2

    if-gez v8, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    sput-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    goto :goto_7

    :cond_7
    long-to-int v2, v0

    cmp-long v3, v0, v6

    if-gez v3, :cond_8

    goto :goto_6

    :cond_8
    const/4 v5, 0x1

    :goto_6
    invoke-static {v2, v5}, Lcom/xcglobe/xclog/l;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_7
    iput v4, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->colorMode:I

    :goto_8
    return-void
.end method

.method private updateContent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->captionVisible:Z

    sget-object v0, Lk/a;->a:Lk/a;

    iget-boolean v0, v0, Lk/a;->s:Z

    if-nez v0, :cond_0

    sget-object v0, Lk/a;->a:Lk/a;

    iget-boolean v0, v0, Lk/a;->n:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxCompetitionTask;->updateBeforeStat()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxCompetitionTask;->updateAfterStart()V

    :goto_0
    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxCompetitionTask;->measure()V

    return-void
.end method


# virtual methods
.method calcNeededTimeSecToSSS()J
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->previousNeededTimeToSSSPerfTimeMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget-wide v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->previousNeededTimeToSSS:J

    return-wide v0

    :cond_0
    iput-wide v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->previousNeededTimeToSSSPerfTimeMs:J

    new-instance v0, Ltypes/l;

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v1

    iget v1, v1, Ltypes/GpsVal;->a:F

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v2

    iget v2, v2, Ltypes/GpsVal;->b:F

    invoke-direct {v0, v1, v2}, Ltypes/l;-><init>(FF)V

    const-wide/16 v1, 0x0

    sget-object v3, Lk/a;->a:Lk/a;

    iget v3, v3, Lk/a;->g:I

    :goto_0
    sget-object v4, Lk/a;->a:Lk/a;

    iget v4, v4, Lk/a;->j:I

    if-gt v3, v4, :cond_2

    sget-object v4, Lk/a;->a:Lk/a;

    iget-object v4, v4, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/c;

    iget v5, v0, Ltypes/l;->a:F

    iget v6, v0, Ltypes/l;->b:F

    iget v7, v4, Lk/c;->i:F

    iget v8, v4, Lk/c;->j:F

    invoke-static {v5, v6, v7, v8}, Ltypes/i;->a(FFFF)I

    move-result v5

    iget v6, v0, Ltypes/l;->a:F

    iget v7, v0, Ltypes/l;->b:F

    iget v8, v4, Lk/c;->i:F

    iget v9, v4, Lk/c;->j:F

    invoke-static {v6, v7, v8, v9}, Ltypes/i;->b(FFFF)F

    move-result v6

    sget-object v7, Lm/g;->W:Lh/a;

    invoke-virtual {v7, v5}, Lh/a;->a(I)F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v8, v5, v7

    if-gez v8, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_1
    const/high16 v8, 0x45610000    # 3600.0f

    mul-float v6, v6, v8

    div-float/2addr v6, v5

    mul-float v6, v6, v7

    float-to-long v5, v6

    add-long/2addr v1, v5

    iget v5, v4, Lk/c;->i:F

    iget v4, v4, Lk/c;->j:F

    invoke-virtual {v0, v5, v4}, Ltypes/l;->a(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-wide v1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->previousNeededTimeToSSS:J

    return-wide v1
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 8

    sget-object v0, Lk/a;->a:Lk/a;

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->captionVisible:Z

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    sget-object v2, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->clickTask:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->textX:I

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->textY:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    sget-wide v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->timeMs:J

    iget-wide v5, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->nextUpdateTimeMs:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    invoke-direct {p0}, Ldisplay/vmap/boxes/BoxCompetitionTask;->updateContent()V

    sget-wide v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->timeMs:J

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    iput-wide v3, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->nextUpdateTimeMs:J

    :cond_1
    sget v0, Lcom/xcglobe/xclog/l;->d:I

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->rec:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    sget-object v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    if-eqz v4, :cond_5

    sget-object v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRightUnit:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget v4, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->measuredRightUnit:I

    sub-int/2addr v3, v4

    :cond_2
    iget v4, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->colorMode:I

    if-nez v4, :cond_3

    sget-object v2, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    int-to-float v4, v3

    iget v5, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->textY:I

    int-to-float v5, v5

    sget-object v6, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    sget-object v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3d4ccccd    # 0.05f

    iget v7, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->textSize:F

    mul-float v7, v7, v6

    add-float/2addr v7, v5

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    int-to-float v5, v3

    iget v6, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->textY:I

    int-to-float v6, v6

    sget-object v7, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    iget v6, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->colorMode:I

    if-ne v6, v2, :cond_4

    sget v2, Lcom/xcglobe/xclog/l;->l:I

    goto :goto_0

    :cond_4
    sget v2, Lcom/xcglobe/xclog/l;->m:I

    :goto_0
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    iget v4, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->textY:I

    int-to-float v4, v4

    sget-object v6, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v2, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    sget v4, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget v2, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->measuredBigTextWidth:I

    sub-int/2addr v3, v2

    :cond_5
    iget-object v2, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picBmp:Landroid/graphics/Bitmap;

    sget v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->picWidth:I

    sub-int/2addr v3, v4

    sget v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->picWidth:I

    div-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picY:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_6
    sget-object v2, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    sget-object v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    mul-float v2, v2, v1

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRightUnit:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRightUnit:Ljava/lang/String;

    iget-object v3, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->rec:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    iget v3, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->textY:I

    int-to-float v3, v3

    sget-object v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msg:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msg:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->textX:I

    int-to-float v1, v1

    iget v3, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->textY:I

    int-to-float v3, v3

    sget-object v4, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgUnit:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    const v1, 0x3f333333    # 0.7f

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgUnit:Ljava/lang/String;

    iget v1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->textX:I

    iget v2, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->measuredMsgWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->textY:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/vmap/boxes/BoxCompetitionTask;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method protected getCaption()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0c0054

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->msgRight:Ljava/lang/String;

    return-object v0
.end method

.method loadFlag(I)V
    .locals 1

    iget v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->currentFlag:I

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iput p1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->currentFlag:I

    iget-object p1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sput p1, Ldisplay/vmap/boxes/BoxCompetitionTask;->picWidth:I

    iget-object p1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sput p1, Ldisplay/vmap/boxes/BoxCompetitionTask;->picHeight:I

    iget-object p1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->rec:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->rec:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    sget v0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picY:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picBmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->picBmp:Landroid/graphics/Bitmap;

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->currentFlag:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick()Z
    .locals 1

    sget-object v0, Lk/a;->a:Lk/a;

    if-nez v0, :cond_0

    const-class v0, Lconfigs/ActivityConfigTasks;

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/Class;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPosition()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->nextUpdateTimeMs:J

    const/4 v0, 0x0

    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->measuredBigTextWidth:I

    iput v0, p0, Ldisplay/vmap/boxes/BoxCompetitionTask;->measuredRightUnit:I

    return-void
.end method
