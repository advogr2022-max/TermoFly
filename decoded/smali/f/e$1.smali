.class Lf/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/e;->a()V
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

.field final synthetic e:Lf/e;


# direct methods
.method constructor <init>(Lf/e;Landroid/widget/TimePicker;Landroid/widget/Spinner;Lcom/xcglobe/xclog/App;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lf/e$1;->e:Lf/e;

    iput-object p2, p0, Lf/e$1;->a:Landroid/widget/TimePicker;

    iput-object p3, p0, Lf/e$1;->b:Landroid/widget/Spinner;

    iput-object p4, p0, Lf/e$1;->c:Lcom/xcglobe/xclog/App;

    iput-object p5, p0, Lf/e$1;->d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lf/e$1;->e:Lf/e;

    iget-object p1, p1, Lf/e;->a:Lk/a;

    iget-object p1, p1, Lk/a;->e:Landroid/text/format/Time;

    iget-object v0, p0, Lf/e$1;->a:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->hour:I

    iget-object p1, p0, Lf/e$1;->e:Lf/e;

    iget-object p1, p1, Lf/e;->a:Lk/a;

    iget-object p1, p1, Lk/a;->e:Landroid/text/format/Time;

    iget-object v0, p0, Lf/e$1;->a:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->minute:I

    iget-object p1, p0, Lf/e$1;->e:Lf/e;

    iget-object p1, p1, Lf/e;->a:Lk/a;

    iget-object v0, p0, Lf/e$1;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lk/a;->d:Z

    iget-object p1, p0, Lf/e$1;->e:Lf/e;

    iget-object p1, p1, Lf/e;->b:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->a()V

    iget-object p1, p0, Lf/e$1;->e:Lf/e;

    iget-object p1, p1, Lf/e;->b:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lf/e$1;->c:Lcom/xcglobe/xclog/App;

    iget-object p1, p0, Lf/e$1;->d:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->b(Landroid/app/Dialog;)V

    return-void
.end method
