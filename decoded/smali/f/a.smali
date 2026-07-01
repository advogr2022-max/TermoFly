.class public Lf/a;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field b:Ltypes/PoiPoint;

.field c:Lf/a$a;

.field d:Landroid/widget/EditText;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/EditText;

.field g:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Ltypes/PoiPoint;

    invoke-direct {v0}, Ltypes/PoiPoint;-><init>()V

    iput-object v0, p0, Lf/a;->b:Ltypes/PoiPoint;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lf/a;->a:Landroid/app/Activity;

    return-void
.end method

.method private a()V
    .locals 4

    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lf/a;->setContentView(I)V

    const v0, 0x7f0c00fc

    invoke-virtual {p0, v0}, Lf/a;->setTitle(I)V

    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lf/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c006e

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ltypes/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lf/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lf/a;->d:Landroid/widget/EditText;

    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lf/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lf/a;->e:Landroid/widget/EditText;

    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lf/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lf/a;->f:Landroid/widget/EditText;

    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lf/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lf/a;->g:Landroid/widget/EditText;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lf/a;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lf/a;->b:Ltypes/PoiPoint;

    iget v2, v2, Ltypes/PoiPoint;->i:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lf/a;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lf/a;->b:Ltypes/PoiPoint;

    iget v2, v2, Ltypes/PoiPoint;->j:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lf/a;->b:Ltypes/PoiPoint;

    iget-short v1, v1, Ltypes/PoiPoint;->k:S

    invoke-static {v1}, Ltypes/q;->e(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lf/a;->b:Ltypes/PoiPoint;

    iget-object v1, v1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lf/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lf/a$1;

    invoke-direct {v1, p0}, Lf/a$1;-><init>(Lf/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lf/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lf/a$2;

    invoke-direct {v1, p0}, Lf/a$2;-><init>(Lf/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lf/a;->show()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ltypes/PoiPoint;Lf/a$a;)V
    .locals 1

    new-instance v0, Lf/a;

    invoke-direct {v0, p0}, Lf/a;-><init>(Landroid/content/Context;)V

    iput-object p2, v0, Lf/a;->c:Lf/a$a;

    if-eqz p1, :cond_0

    iget-object p0, v0, Lf/a;->b:Ltypes/PoiPoint;

    invoke-virtual {p0, p1}, Ltypes/PoiPoint;->a(Ltypes/PoiPoint;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object p0

    iget-object p1, v0, Lf/a;->b:Ltypes/PoiPoint;

    iget p2, p0, Ltypes/GpsVal;->a:F

    iput p2, p1, Ltypes/PoiPoint;->i:F

    iget-object p1, v0, Lf/a;->b:Ltypes/PoiPoint;

    iget p0, p0, Ltypes/GpsVal;->b:F

    iput p0, p1, Ltypes/PoiPoint;->j:F

    iget-object p0, v0, Lf/a;->b:Ltypes/PoiPoint;

    sget p1, Lm/g;->s:I

    int-to-short p1, p1

    iput-short p1, p0, Ltypes/PoiPoint;->k:S

    iget-object p0, v0, Lf/a;->b:Ltypes/PoiPoint;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/xcglobe/xclog/l;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/xcglobe/xclog/l;->h:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/xcglobe/xclog/l;->h:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltypes/PoiPoint;->l:Ljava/lang/String;

    :goto_0
    invoke-direct {v0}, Lf/a;->a()V

    return-void
.end method
