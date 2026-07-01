.class public Lcom/xcglobe/xclog/ActivityDataList;
.super Lcom/xcglobe/xclog/a;


# instance fields
.field A:Ldisplay/ViewDataList;

.field B:Ldisplay/ViewDataList;

.field C:Ldisplay/ViewDataList;

.field D:Ldisplay/ViewDataList;

.field E:Ldisplay/ViewDataList;

.field F:Ldisplay/ViewDataList;

.field G:Ldisplay/ViewDataList;

.field H:Ldisplay/ViewDataList;

.field I:Ldisplay/ViewDataList;

.field J:Ldisplay/ViewDataList;

.field K:Ldisplay/ViewDataList;

.field L:Ldisplay/ViewDataList;

.field M:Ldisplay/ViewDataList;

.field N:Ldisplay/ViewDataList;

.field O:Ljava/util/Timer;

.field P:Ljava/util/TimerTask;

.field a:Landroid/app/Activity;

.field b:Z

.field c:Ldisplay/ViewDataList;

.field d:Ldisplay/ViewDataList;

.field e:Ldisplay/ViewDataList;

.field f:Ldisplay/ViewDataList;

.field g:Ldisplay/ViewDataList;

.field h:Ldisplay/ViewDataList;

.field i:Ldisplay/ViewDataList;

.field j:Ldisplay/ViewDataList;

.field k:Ldisplay/ViewDataList;

.field l:Ldisplay/ViewDataList;

.field m:Ldisplay/ViewDataList;

.field n:Ldisplay/ViewDataList;

.field o:Ldisplay/ViewDataList;

.field p:Ldisplay/ViewDataList;

.field q:Ldisplay/ViewDataList;

.field r:Ldisplay/ViewDataList;

.field s:Ldisplay/ViewDataList;

.field t:Ldisplay/ViewDataList;

.field u:Ldisplay/ViewDataList;

.field v:Ldisplay/ViewDataList;

.field w:Ldisplay/ViewDataList;

.field x:Ldisplay/ViewDataList;

.field y:Ldisplay/ViewDataList;

.field z:Ldisplay/ViewDataList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xcglobe/xclog/a;-><init>()V

    iput-object p0, p0, Lcom/xcglobe/xclog/ActivityDataList;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/xcglobe/xclog/ActivityDataList;)V
    .locals 0

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityDataList;->b()V

    return-void
.end method

.method private b()V
    .locals 10

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Ltypes/GpsVal;->d:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityDataList;->G:Ldisplay/ViewDataList;

    invoke-static {}, Lm/c;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ldisplay/ViewDataList;->update(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityDataList;->c:Ldisplay/ViewDataList;

    sget v8, Lm/g;->i:F

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ldisplay/ViewDataList;->update(FI)V

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityDataList;->d:Ldisplay/ViewDataList;

    iget-short v8, v0, Ltypes/GpsVal;->c:S

    invoke-virtual {v7, v8}, Ldisplay/ViewDataList;->update(I)V

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityDataList;->e:Ldisplay/ViewDataList;

    sget v8, Lm/g;->t:F

    invoke-virtual {v7, v8}, Ldisplay/ViewDataList;->update(F)V

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityDataList;->f:Ldisplay/ViewDataList;

    sget v8, Lm/g;->v:I

    invoke-virtual {v7, v8}, Ldisplay/ViewDataList;->update(I)V

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityDataList;->g:Ldisplay/ViewDataList;

    sget v8, Lm/g;->u:I

    invoke-virtual {v7, v8}, Ldisplay/ViewDataList;->update(I)V

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityDataList;->j:Ldisplay/ViewDataList;

    sget v8, Lm/g;->n:F

    invoke-virtual {v7, v8}, Ldisplay/ViewDataList;->update(F)V

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityDataList;->k:Ldisplay/ViewDataList;

    sget v8, Lm/g;->k:F

    invoke-virtual {v7, v8}, Ldisplay/ViewDataList;->update(F)V

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityDataList;->J:Ldisplay/ViewDataList;

    iget-boolean v7, v7, Ldisplay/ViewDataList;->stateOpened:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityDataList;->h:Ldisplay/ViewDataList;

    iget v8, v0, Ltypes/GpsVal;->a:F

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Ldisplay/ViewDataList;->update(FI)V

    iget-object v7, p0, Lcom/xcglobe/xclog/ActivityDataList;->i:Ldisplay/ViewDataList;

    iget v0, v0, Ltypes/GpsVal;->b:F

    invoke-virtual {v7, v0, v9}, Ldisplay/ViewDataList;->update(FI)V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->m:Ldisplay/ViewDataList;

    sget v7, Lm/g;->l:F

    invoke-virtual {v0, v7}, Ldisplay/ViewDataList;->update(F)V

    sget v0, Lm/g;->K:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->o:Ldisplay/ViewDataList;

    sget v7, Lm/g;->J:I

    sget v8, Lm/g;->K:I

    div-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-virtual {v0, v7}, Ldisplay/ViewDataList;->update(F)V

    :cond_0
    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->l:Ldisplay/ViewDataList;

    long-to-float v3, v3

    invoke-virtual {v0, v3}, Ldisplay/ViewDataList;->update(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->l:Ldisplay/ViewDataList;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ldisplay/ViewDataList;->update(Ljava/lang/String;)V

    :goto_0
    sget-boolean v0, Lm/d;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->n:Ldisplay/ViewDataList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[b] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lm/d;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ldisplay/ViewDataList;->update(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->n:Ldisplay/ViewDataList;

    sget v3, Lm/d;->a:I

    invoke-virtual {v0, v3}, Ldisplay/ViewDataList;->update(I)V

    :goto_1
    sget-boolean v0, Lm/g;->z:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->p:Ldisplay/ViewDataList;

    const-string v3, "Yes"

    :goto_2
    invoke-virtual {v0, v3}, Ldisplay/ViewDataList;->update(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->p:Ldisplay/ViewDataList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lm/g;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->q:Ldisplay/ViewDataList;

    sget v3, Lm/d;->c:I

    invoke-virtual {v0, v3}, Ldisplay/ViewDataList;->update(I)V

    :cond_4
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->K:Ldisplay/ViewDataList;

    iget-boolean v0, v0, Ldisplay/ViewDataList;->stateOpened:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->t:Ldisplay/ViewDataList;

    sget-object v3, Lm/g;->P:Lg/a;

    invoke-virtual {v3}, Lg/a;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ldisplay/ViewDataList;->update(I)V

    :cond_5
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->y:Ldisplay/ViewDataList;

    sget-object v3, Lj/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ldisplay/ViewDataList;->update(I)V

    sget-wide v3, Lj/a;->c:J

    sub-long/2addr v1, v3

    div-long/2addr v1, v5

    cmp-long v0, v1, v5

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->u:Ldisplay/ViewDataList;

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->update(I)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->u:Ldisplay/ViewDataList;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->update(Ljava/lang/String;)V

    :goto_4
    sget-object v0, Lj/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->b:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->v:Ldisplay/ViewDataList;

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->b:Z

    :cond_7
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->v:Ldisplay/ViewDataList;

    sget-object v1, Lj/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->update(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    iget-boolean v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->b:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->v:Ldisplay/ViewDataList;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ldisplay/ViewDataList;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/xcglobe/xclog/ActivityDataList;->b:Z

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->w:Ldisplay/ViewDataList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lj/a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lj/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->update(Ljava/lang/String;)V

    sget-wide v0, Lj/a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v5

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    iget-object v2, p0, Lcom/xcglobe/xclog/ActivityDataList;->x:Ldisplay/ViewDataList;

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ldisplay/ViewDataList;->update(I)V

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->x:Ldisplay/ViewDataList;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->update(Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->z:Ldisplay/ViewDataList;

    sget-object v1, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->update(I)V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->A:Ldisplay/ViewDataList;

    sget v1, Lc/c;->a:I

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->update(I)V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->C:Ldisplay/ViewDataList;

    sget v1, Lc/b;->a:I

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->update(I)V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->D:Ldisplay/ViewDataList;

    sget v1, Lb/b;->d:I

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->update(I)V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->F:Ldisplay/ViewDataList;

    sget v1, Lcom/xcglobe/xclog/l;->ap:I

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->update(I)V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->E:Ldisplay/ViewDataList;

    sget v1, Lb/g;->a:I

    invoke-virtual {v0, v1}, Ldisplay/ViewDataList;->update(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->O:Ljava/util/Timer;

    new-instance v0, Lcom/xcglobe/xclog/ActivityDataList$1;

    invoke-direct {v0, p0}, Lcom/xcglobe/xclog/ActivityDataList$1;-><init>(Lcom/xcglobe/xclog/ActivityDataList;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->P:Ljava/util/TimerTask;

    iget-object v1, p0, Lcom/xcglobe/xclog/ActivityDataList;->O:Ljava/util/Timer;

    iget-object v2, p0, Lcom/xcglobe/xclog/ActivityDataList;->P:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method protected a(ILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityDataList;->b()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lm/g;->h()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/xcglobe/xclog/ActivityDataList;->a:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityDataList;->finish()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ldisplay/ViewDataList;)V
    .locals 7

    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityDataList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p1, Ldisplay/ViewDataList;->stateOpened:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ldisplay/ViewDataList;

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    check-cast v4, Ldisplay/ViewDataList;

    iget-boolean v5, v4, Ldisplay/ViewDataList;->isTitle:Z

    if-eqz v5, :cond_3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    if-ne v4, p1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v4, v1}, Ldisplay/ViewDataList;->setVisibility(I)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityDataList;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/xcglobe/xclog/a;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xcglobe/xclog/ActivityDataList;->S:Z

    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityDataList;->setContentView(I)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityDataList;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0xff00ff

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sput v3, Ldisplay/ViewDataList;->colorText:I

    sput v1, Ldisplay/ViewDataList;->colorDivider:I

    sput p1, Ldisplay/ViewDataList;->colorTextValue:I

    sput v2, Ldisplay/ViewDataList;->colorBack:I

    sget p1, Lcom/xcglobe/xclog/l;->s:I

    sput p1, Ldisplay/ViewDataList;->colorText:I

    sget p1, Lcom/xcglobe/xclog/l;->s:I

    sput p1, Ldisplay/ViewDataList;->colorDivider:I

    sget p1, Lcom/xcglobe/xclog/l;->p:I

    sput p1, Ldisplay/ViewDataList;->colorTextValue:I

    sget p1, Lcom/xcglobe/xclog/l;->q:I

    sput p1, Ldisplay/ViewDataList;->colorBack:I

    const p1, 0x7f070024

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityDataList;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Vario"

    const-string v2, "m/s"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->c:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Alt. GPS"

    const-string v2, "m"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->d:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Alt. Baro"

    const-string v2, "m"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->e:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Alt. AGL"

    const-string v2, "m"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->f:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Elevation"

    const-string v2, "m"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->g:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Speed point"

    const-string v2, "km/h"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->j:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Speed avg."

    const-string v2, "km/h"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->k:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Debug"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->G:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "#GPS"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->J:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Latitude"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->h:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Longitude"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->i:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Accuracy"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->m:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "AVG interval"

    const-string v2, "s"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->o:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Idle"

    const-string v2, "s"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->l:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "EGM96"

    const-string v2, "m"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->n:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Is steady"

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->p:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Satellites"

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->q:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "#Vario"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->K:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "AVG interval"

    const-string v2, "s"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->r:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Range points"

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->s:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Alt. range points"

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->t:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "#LiveTrack"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->I:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Pilots"

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->y:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Livetrack idle"

    const-string v2, "s"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->u:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Next update"

    const-string v2, "s"

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->x:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Success/Error"

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->w:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->v:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "#Speed Ring"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->L:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Turn/Strght"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->H:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "#Counters"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->M:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Vmp"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->B:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Ground"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->C:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Air"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->D:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "POI"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->E:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Session"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->F:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "#Number of points"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->N:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Track"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->z:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ldisplay/ViewDataList;

    const-string v1, "Optimizer"

    invoke-direct {v0, p0, v1}, Ldisplay/ViewDataList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->A:Ldisplay/ViewDataList;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010031
        0x1010036
        0x1010212
        0x1010212
    .end array-data
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onPause()V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->O:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityDataList;->O:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/xcglobe/xclog/a;->onResume()V

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityDataList;->b()V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityDataList;->a()V

    return-void
.end method
