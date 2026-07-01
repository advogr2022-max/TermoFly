.class public Ldisplay/ViewDataList;
.super Landroid/view/View;


# static fields
.field private static final MAX_CLICK_DURATION:I = 0xc8

.field public static colorBack:I

.field public static colorDivider:I

.field public static colorText:I

.field public static colorTextValue:I

.field static itemHeight:I

.field public static paint:Landroid/graphics/Paint;

.field public static sideOffset:I

.field static textSize:I

.field static width:I


# instance fields
.field activityDataList:Lcom/xcglobe/xclog/ActivityDataList;

.field public isTitle:Z

.field label:Ljava/lang/String;

.field private startClickTime:J

.field public stateOpened:Z

.field unit:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ldisplay/ViewDataList;->value:Ljava/lang/String;

    iput-object v0, p0, Ldisplay/ViewDataList;->unit:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldisplay/ViewDataList;->isTitle:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldisplay/ViewDataList;->stateOpened:Z

    check-cast p1, Lcom/xcglobe/xclog/ActivityDataList;

    iput-object p1, p0, Ldisplay/ViewDataList;->activityDataList:Lcom/xcglobe/xclog/ActivityDataList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ldisplay/ViewDataList;->value:Ljava/lang/String;

    iput-object p1, p0, Ldisplay/ViewDataList;->unit:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldisplay/ViewDataList;->isTitle:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldisplay/ViewDataList;->stateOpened:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Ldisplay/ViewDataList;->value:Ljava/lang/String;

    iput-object p1, p0, Ldisplay/ViewDataList;->unit:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldisplay/ViewDataList;->isTitle:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldisplay/ViewDataList;->stateOpened:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ldisplay/ViewDataList;->value:Ljava/lang/String;

    iput-object v0, p0, Ldisplay/ViewDataList;->unit:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldisplay/ViewDataList;->isTitle:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldisplay/ViewDataList;->stateOpened:Z

    check-cast p1, Lcom/xcglobe/xclog/ActivityDataList;

    iput-object p1, p0, Ldisplay/ViewDataList;->activityDataList:Lcom/xcglobe/xclog/ActivityDataList;

    invoke-virtual {p0, p2}, Ldisplay/ViewDataList;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ldisplay/ViewDataList;->value:Ljava/lang/String;

    iput-object v0, p0, Ldisplay/ViewDataList;->unit:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldisplay/ViewDataList;->isTitle:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldisplay/ViewDataList;->stateOpened:Z

    check-cast p1, Lcom/xcglobe/xclog/ActivityDataList;

    iput-object p1, p0, Ldisplay/ViewDataList;->activityDataList:Lcom/xcglobe/xclog/ActivityDataList;

    invoke-virtual {p0, p2}, Ldisplay/ViewDataList;->init(Ljava/lang/String;)V

    iput-object p3, p0, Ldisplay/ViewDataList;->unit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method init(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldisplay/ViewDataList;->label:Ljava/lang/String;

    iput-boolean v0, p0, Ldisplay/ViewDataList;->isTitle:Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ldisplay/ViewDataList;->label:Ljava/lang/String;

    :goto_0
    sget-object p1, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/xcglobe/xclog/g;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    sget-object v0, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-boolean v0, p0, Ldisplay/ViewDataList;->isTitle:Z

    if-eqz v0, :cond_0

    sget v0, Ldisplay/ViewDataList;->colorDivider:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    sget-object v0, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    sget v1, Ldisplay/ViewDataList;->colorBack:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_0
    sget-object v0, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    sget v1, Ldisplay/ViewDataList;->colorText:I

    goto :goto_0

    :goto_1
    sget v0, Ldisplay/ViewDataList;->itemHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    sget v2, Ldisplay/ViewDataList;->textSize:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Ldisplay/ViewDataList;->label:Ljava/lang/String;

    sget v2, Ldisplay/ViewDataList;->sideOffset:I

    int-to-float v2, v2

    int-to-float v0, v0

    sget-object v3, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Ldisplay/ViewDataList;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v1, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    sget v2, Ldisplay/ViewDataList;->colorTextValue:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Ldisplay/ViewDataList;->value:Ljava/lang/String;

    sget v2, Ldisplay/ViewDataList;->width:I

    int-to-float v2, v2

    sget-object v3, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-boolean v0, p0, Ldisplay/ViewDataList;->isTitle:Z

    if-nez v0, :cond_2

    sget v0, Ldisplay/ViewDataList;->itemHeight:I

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    sget v2, Ldisplay/ViewDataList;->colorDivider:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    int-to-float v7, v0

    sget v0, Ldisplay/ViewDataList;->width:I

    sget v1, Ldisplay/ViewDataList;->sideOffset:I

    sub-int/2addr v0, v1

    int-to-float v6, v0

    sget-object v8, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_2
    sget v0, Ldisplay/ViewDataList;->itemHeight:I

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    sget v2, Lcom/xcglobe/xclog/l;->x:I

    goto :goto_2

    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sput p1, Ldisplay/ViewDataList;->width:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    div-int/lit8 p1, p1, 0x10

    sput p1, Ldisplay/ViewDataList;->textSize:I

    sget p1, Ldisplay/ViewDataList;->textSize:I

    sget p2, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_0

    sget p1, Lcom/xcglobe/xclog/l;->c:I

    mul-int/lit8 p1, p1, 0x2

    sput p1, Ldisplay/ViewDataList;->textSize:I

    :cond_0
    const/high16 p1, 0x3fc00000    # 1.5f

    sget p2, Ldisplay/ViewDataList;->textSize:I

    add-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    sput p1, Ldisplay/ViewDataList;->itemHeight:I

    sget-object p1, Ldisplay/ViewDataList;->paint:Landroid/graphics/Paint;

    sget p2, Ldisplay/ViewDataList;->textSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget p1, Ldisplay/ViewDataList;->width:I

    div-int/lit8 p1, p1, 0x64

    sput p1, Ldisplay/ViewDataList;->sideOffset:I

    sget p1, Ldisplay/ViewDataList;->width:I

    sget p2, Ldisplay/ViewDataList;->itemHeight:I

    invoke-virtual {p0, p1, p2}, Ldisplay/ViewDataList;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Ldisplay/ViewDataList;->isTitle:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Ldisplay/ViewDataList;->startClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    iget-boolean p1, p0, Ldisplay/ViewDataList;->stateOpened:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Ldisplay/ViewDataList;->stateOpened:Z

    iget-object p1, p0, Ldisplay/ViewDataList;->activityDataList:Lcom/xcglobe/xclog/ActivityDataList;

    invoke-virtual {p1, p0}, Lcom/xcglobe/xclog/ActivityDataList;->a(Ldisplay/ViewDataList;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ldisplay/ViewDataList;->startClickTime:J

    :cond_1
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(F)V
    .locals 3

    sget-object v0, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldisplay/ViewDataList;->update(Ljava/lang/String;)V

    return-void
.end method

.method public update(FI)V
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/xcglobe/xclog/l;->F:Ljava/text/DecimalFormat;

    :goto_0
    float-to-double v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/xcglobe/xclog/l;->G:Ljava/text/DecimalFormat;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Ldisplay/ViewDataList;->update(Ljava/lang/String;)V

    return-void
.end method

.method public update(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldisplay/ViewDataList;->update(Ljava/lang/String;)V

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ldisplay/ViewDataList;->value:Ljava/lang/String;

    iget-object p1, p0, Ldisplay/ViewDataList;->unit:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ldisplay/ViewDataList;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldisplay/ViewDataList;->unit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldisplay/ViewDataList;->value:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Ldisplay/ViewDataList;->invalidate()V

    return-void
.end method
