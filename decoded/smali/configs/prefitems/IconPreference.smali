.class public Lconfigs/prefitems/IconPreference;
.super Landroid/preference/Preference;


# instance fields
.field a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lconfigs/prefitems/IconPreference;->a:I

    const p1, 0x7f090026

    invoke-virtual {p0, p1}, Lconfigs/prefitems/IconPreference;->setLayoutResource(I)V

    invoke-direct {p0}, Lconfigs/prefitems/IconPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lconfigs/prefitems/IconPreference;->a:I

    const p1, 0x7f090026

    invoke-virtual {p0, p1}, Lconfigs/prefitems/IconPreference;->setLayoutResource(I)V

    invoke-direct {p0}, Lconfigs/prefitems/IconPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lconfigs/prefitems/IconPreference;->a:I

    const p1, 0x7f090026

    invoke-virtual {p0, p1}, Lconfigs/prefitems/IconPreference;->setLayoutResource(I)V

    invoke-direct {p0}, Lconfigs/prefitems/IconPreference;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0}, Lconfigs/prefitems/IconPreference;->getOrder()I

    move-result v1

    if-lez v1, :cond_0

    array-length v2, v0

    if-gt v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lconfigs/prefitems/IconPreference;->a:I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f060036
        0x7f060033
        0x7f060031
        0x7f060034
        0x7f060035
        0x7f060032
        0x7f060030
        0x7f06002f
    .end array-data
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f070055

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    iget v0, p0, Lconfigs/prefitems/IconPreference;->a:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lconfigs/prefitems/IconPreference;->a:I

    const v1, 0x7f060036

    if-ne v0, v1, :cond_0

    invoke-static {}, Lm/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060037

    goto :goto_0

    :cond_0
    iget v0, p0, Lconfigs/prefitems/IconPreference;->a:I

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-object p1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method
