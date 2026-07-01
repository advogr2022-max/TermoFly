.class Lf/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TimePicker;

.field final synthetic b:Landroid/widget/Spinner;

.field final synthetic c:Lcom/xcglobe/xclog/App;

.field final synthetic d:Landroid/app/Dialog;

.field final synthetic e:Lf/d;


# direct methods
.method constructor <init>(Lf/d;Landroid/widget/TimePicker;Landroid/widget/Spinner;Lcom/xcglobe/xclog/App;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lf/d$1;->e:Lf/d;

    iput-object p2, p0, Lf/d$1;->a:Landroid/widget/TimePicker;

    iput-object p3, p0, Lf/d$1;->b:Landroid/widget/Spinner;

    iput-object p4, p0, Lf/d$1;->c:Lcom/xcglobe/xclog/App;

    iput-object p5, p0, Lf/d$1;->d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lf/d$1;->e:Lf/d;

    iget-object p1, p1, Lf/d;->a:Lk/a;

    iget-object p1, p1, Lk/a;->f:Landroid/text/format/Time;

    iget-object v0, p0, Lf/d$1;->a:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->hour:I

    iget-object p1, p0, Lf/d$1;->e:Lf/d;

    iget-object p1, p1, Lf/d;->a:Lk/a;

    iget-object p1, p1, Lk/a;->f:Landroid/text/format/Time;

    iget-object v0, p0, Lf/d$1;->a:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->minute:I

    iget-object p1, p0, Lf/d$1;->e:Lf/d;

    iget-object p1, p1, Lf/d;->a:Lk/a;

    iget-object v0, p0, Lf/d$1;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lk/a;->m:Z

    iget-object p1, p0, Lf/d$1;->e:Lf/d;

    iget-object p1, p1, Lf/d;->b:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->a()V

    iget-object p1, p0, Lf/d$1;->e:Lf/d;

    iget-object p1, p1, Lf/d;->b:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lf/d$1;->c:Lcom/xcglobe/xclog/App;

    iget-object p1, p0, Lf/d$1;->d:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    iget-object p1, p0, Lf/d$1;->e:Lf/d;

    invoke-virtual {p1}, Lf/d;->dismiss()V

    return-void
.end method
