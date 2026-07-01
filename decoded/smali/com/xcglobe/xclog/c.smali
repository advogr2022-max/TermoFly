.class public Lcom/xcglobe/xclog/c;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xcglobe/xclog/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:I

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xcglobe/xclog/c;->c:Ljava/util/List;

    iput p2, p0, Lcom/xcglobe/xclog/c;->b:I

    iput-object p1, p0, Lcom/xcglobe/xclog/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xcglobe/xclog/c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/xcglobe/xclog/c;->a:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/xcglobe/xclog/c;->b:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/xcglobe/xclog/c$a;

    invoke-direct {p3}, Lcom/xcglobe/xclog/c$a;-><init>()V

    const v0, 0x7f07004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xcglobe/xclog/c$a;->a:Landroid/widget/TextView;

    const v0, 0x7f07004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xcglobe/xclog/c$a;->b:Landroid/widget/TextView;

    const v0, 0x7f07004b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xcglobe/xclog/c$a;->c:Landroid/widget/TextView;

    const v0, 0x7f07004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xcglobe/xclog/c$a;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xcglobe/xclog/c$a;

    :goto_0
    iget-object v0, p0, Lcom/xcglobe/xclog/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p3, Lcom/xcglobe/xclog/c$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/xcglobe/xclog/l;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/xcglobe/xclog/c$a;->b:Landroid/widget/TextView;

    const-string v1, "recording"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/xcglobe/xclog/c$a;->b:Landroid/widget/TextView;

    sget v1, Lcom/xcglobe/xclog/l;->j:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_1
    const-string v0, "uploaded"

    invoke-static {p1, v0}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/xcglobe/xclog/c$a;->b:Landroid/widget/TextView;

    const-string v1, "uploaded"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/xcglobe/xclog/c$a;->b:Landroid/widget/TextView;

    sget v1, Lcom/xcglobe/xclog/l;->m:I

    goto :goto_1

    :cond_2
    iget-object v0, p3, Lcom/xcglobe/xclog/c$a;->b:Landroid/widget/TextView;

    const-string v1, "not uploaded"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/xcglobe/xclog/c$a;->b:Landroid/widget/TextView;

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    goto :goto_1

    :goto_2
    iget-object v0, p3, Lcom/xcglobe/xclog/c$a;->c:Landroid/widget/TextView;

    const-string v1, "duration"

    invoke-static {p1, v1}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "kmmax"

    invoke-static {p1, v0}, Lcom/xcglobe/xclog/j;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ltypes/q;->a(F)F

    move-result p1

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_3
    const-string p1, "-"

    :goto_3
    iget-object p3, p3, Lcom/xcglobe/xclog/c$a;->d:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
