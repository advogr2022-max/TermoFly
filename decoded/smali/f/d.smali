.class public Lf/d;
.super Landroid/app/Dialog;


# instance fields
.field a:Lk/a;

.field b:Lconfigs/ActivityConfigTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 8

    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lf/d;->setContentView(I)V

    const v0, 0x7f0c0133

    invoke-virtual {p0, v0}, Lf/d;->setTitle(I)V

    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lf/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TimePicker;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v1, p0, Lf/d;->a:Lk/a;

    iget-object v1, v1, Lk/a;->f:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v1, p0, Lf/d;->a:Lk/a;

    iget-object v1, v1, Lk/a;->f:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lf/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Spinner;

    iget-object v1, p0, Lf/d;->a:Lk/a;

    iget-boolean v1, v1, Lk/a;->m:Z

    xor-int/2addr v0, v1

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lf/d;->b:Lconfigs/ActivityConfigTask;

    invoke-virtual {v0}, Lconfigs/ActivityConfigTask;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/xcglobe/xclog/App;

    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lf/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v7, Lf/d$1;

    move-object v1, v7

    move-object v2, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lf/d$1;-><init>(Lf/d;Landroid/widget/TimePicker;Landroid/widget/Spinner;Lcom/xcglobe/xclog/App;Landroid/app/Dialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x50

    invoke-static {p0, v0}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Dialog;I)V

    return-void
.end method

.method public static a(Lconfigs/ActivityConfigTask;Lk/a;)V
    .locals 1

    new-instance v0, Lf/d;

    invoke-direct {v0, p0}, Lf/d;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lf/d;->a:Lk/a;

    iput-object p0, v0, Lf/d;->b:Lconfigs/ActivityConfigTask;

    invoke-direct {v0}, Lf/d;->a()V

    return-void
.end method
