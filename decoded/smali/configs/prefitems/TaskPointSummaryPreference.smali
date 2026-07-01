.class public Lconfigs/prefitems/TaskPointSummaryPreference;
.super Landroid/preference/Preference;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    iput-object p1, p0, Lconfigs/prefitems/TaskPointSummaryPreference;->a:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lconfigs/prefitems/TaskPointSummaryPreference;->b:Ljava/lang/String;

    const p1, 0x7f090029

    invoke-virtual {p0, p1}, Lconfigs/prefitems/TaskPointSummaryPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    iput-object p1, p0, Lconfigs/prefitems/TaskPointSummaryPreference;->a:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lconfigs/prefitems/TaskPointSummaryPreference;->b:Ljava/lang/String;

    const p1, 0x7f090029

    invoke-virtual {p0, p1}, Lconfigs/prefitems/TaskPointSummaryPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    iput-object p1, p0, Lconfigs/prefitems/TaskPointSummaryPreference;->a:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lconfigs/prefitems/TaskPointSummaryPreference;->b:Ljava/lang/String;

    const p1, 0x7f090029

    invoke-virtual {p0, p1}, Lconfigs/prefitems/TaskPointSummaryPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f07002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lconfigs/prefitems/TaskPointSummaryPreference;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lconfigs/prefitems/TaskPointSummaryPreference;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
