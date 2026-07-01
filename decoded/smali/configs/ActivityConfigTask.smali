.class public Lconfigs/ActivityConfigTask;
.super Lconfigs/a;


# instance fields
.field a:Lconfigs/ActivityConfigTask;

.field b:Lk/a;

.field c:Landroid/preference/PreferenceCategory;

.field public d:I

.field e:Landroid/preference/Preference;

.field f:Lk/c;

.field g:I

.field h:Landroid/preference/Preference;

.field i:Landroid/preference/Preference;

.field j:Landroid/preference/CheckBoxPreference;

.field k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lconfigs/a;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Lconfigs/ActivityConfigTask;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lconfigs/ActivityConfigTask;->e:Landroid/preference/Preference;

    iput-object v0, p0, Lconfigs/ActivityConfigTask;->f:Lk/c;

    const/4 v0, -0x1

    iput v0, p0, Lconfigs/ActivityConfigTask;->g:I

    return-void
.end method


# virtual methods
.method a(Ltypes/PoiPoint;F)Lk/c;
    .locals 1

    new-instance v0, Lk/c;

    invoke-direct {v0}, Lk/c;-><init>()V

    invoke-virtual {v0, p1}, Lk/c;->a(Ltypes/PoiPoint;)V

    iput p2, v0, Lk/c;->a:F

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object p1, p1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-boolean v0, v0, Lk/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "ENTER"

    goto :goto_0

    :cond_0
    const-string v0, "EXIT"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->e:Landroid/text/format/Time;

    const-string v2, "%H:%M"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->h:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-boolean v0, v0, Lk/a;->m:Z

    if-eqz v0, :cond_1

    const-string v0, "LINE"

    goto :goto_1

    :cond_1
    const-string v0, "CYLINDER"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->f:Landroid/text/format/Time;

    const-string v2, "%H:%M"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->i:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method a(I)V
    .locals 2

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    new-instance v1, Lcom/xcglobe/xclog/k;

    invoke-direct {v1, p0}, Lcom/xcglobe/xclog/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lk/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xcglobe/xclog/k;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lconfigs/ActivityConfigTask;->a(ILcom/xcglobe/xclog/k;)V

    new-instance p1, Lconfigs/ActivityConfigTask$8;

    invoke-direct {p1, p0}, Lconfigs/ActivityConfigTask$8;-><init>(Lconfigs/ActivityConfigTask;)V

    invoke-virtual {v1, p1}, Lcom/xcglobe/xclog/k;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->c:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method a(ILcom/xcglobe/xclog/k;)V
    .locals 4

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    const-string v1, " "

    iget-object v2, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-boolean v2, v2, Lk/a;->n:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lk/c;->f:Z

    if-eqz v2, :cond_0

    const-string v1, "SSS"

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lk/c;->g:Z

    if-eqz v2, :cond_1

    const-string v1, "ESS"

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v2, v2, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_2

    const-string v1, "Goal"

    :cond_2
    :goto_0
    iput-object v1, p2, Lcom/xcglobe/xclog/k;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x461c4000    # 10000.0f

    iget v3, v0, Lk/c;->a:F

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/xcglobe/xclog/k;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leg: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    iget v2, v0, Lk/c;->c:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " km"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/xcglobe/xclog/k;->c:Ljava/lang/String;

    iget-object p1, v0, Lk/c;->l:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/xcglobe/xclog/k;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method a(Z)V
    .locals 1

    const-string v0, "titleCategory"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigTask;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->h:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->i:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->g()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object p1, p1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object p1, p1, Lk/a;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/c;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lk/c;->f:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lconfigs/ActivityConfigTask;->h:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->i:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    invoke-virtual {v0}, Lk/a;->i()V

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-boolean v0, v0, Lk/a;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->p()V

    :cond_0
    iget-object v0, p0, Lconfigs/ActivityConfigTask;->c:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v1, v1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigTask;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->j()V

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->k()V

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->c()V

    return-void
.end method

.method c()V
    .locals 3

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->c:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lconfigs/ActivityConfigTask;->c:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/xcglobe/xclog/k;

    invoke-virtual {p0, v1, v2}, Lconfigs/ActivityConfigTask;->a(ILcom/xcglobe/xclog/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method d()V
    .locals 5

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->f:Lk/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lconfigs/ActivityConfigTask$6;

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->f:Lk/c;

    iget-object v1, v1, Lk/c;->l:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1}, Lconfigs/ActivityConfigTask$6;-><init>(Lconfigs/ActivityConfigTask;Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0x14

    const v2, 0x7f0c013f

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(ILjava/lang/String;)V

    const/16 v1, 0x1e

    const v2, 0x7f0c0069

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(ILjava/lang/String;)V

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c0102

    invoke-static {v3}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x447a0000    # 1000.0f

    iget-object v4, p0, Lconfigs/ActivityConfigTask;->f:Lk/c;

    iget v4, v4, Lk/c;->a:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-boolean v1, v1, Lk/a;->n:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x33

    const v2, 0x7f0c011c

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(ILjava/lang/String;)V

    const/16 v1, 0x34

    const v2, 0x7f0c0084

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(ILjava/lang/String;)V

    :cond_1
    const/16 v1, 0xa

    const v2, 0x7f0c005d

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Lmymenu/a;->a()V

    return-void
.end method

.method e()V
    .locals 5

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->g()I

    move-result v0

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->h()I

    move-result v1

    iget v2, p0, Lconfigs/ActivityConfigTask;->g:I

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v4, p0, Lconfigs/ActivityConfigTask;->g:I

    if-lt v4, v1, :cond_1

    iget-object v4, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v4, v4, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/c;

    iput-boolean v2, v1, Lk/c;->g:Z

    :cond_1
    if-eq v0, v3, :cond_2

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v1, v1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iput-boolean v2, v0, Lk/c;->f:Z

    :cond_2
    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lconfigs/ActivityConfigTask;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lk/c;->f:Z

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->b()V

    return-void
.end method

.method f()V
    .locals 6

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->g()I

    move-result v0

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->h()I

    move-result v1

    iget v2, p0, Lconfigs/ActivityConfigTask;->g:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lconfigs/ActivityConfigTask;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iget-boolean v1, v0, Lk/c;->g:Z

    xor-int/2addr v1, v3

    iput-boolean v1, v0, Lk/c;->g:Z

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2

    iget v5, p0, Lconfigs/ActivityConfigTask;->g:I

    if-gt v5, v0, :cond_2

    iget v5, p0, Lconfigs/ActivityConfigTask;->g:I

    if-nez v5, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v5, v5, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iput-boolean v4, v0, Lk/c;->f:Z

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iput-boolean v3, v0, Lk/c;->f:Z

    :cond_2
    if-eq v1, v2, :cond_3

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iput-boolean v4, v0, Lk/c;->g:Z

    :cond_3
    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lconfigs/ActivityConfigTask;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iput-boolean v3, v0, Lk/c;->g:Z

    :goto_0
    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->b()V

    return-void
.end method

.method g()I
    .locals 3

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v2, v2, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/c;

    iget-boolean v2, v2, Lk/c;->f:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method h()I
    .locals 3

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v2, v2, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/c;

    iget-boolean v2, v2, Lk/c;->g:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method i()V
    .locals 4

    new-instance v0, Lconfigs/ActivityConfigTask$7;

    const v1, 0x7f0c0102

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lconfigs/ActivityConfigTask$7;-><init>(Lconfigs/ActivityConfigTask;Landroid/content/Context;Ljava/lang/String;)V

    const/16 v1, 0x64

    :goto_0
    const v2, 0x186a0

    if-gt v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x64

    goto :goto_0

    :cond_0
    const v1, 0x3f333333    # 0.7f

    sget v2, Lcom/xcglobe/xclog/l;->ax:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const v2, 0x3f733333    # 0.95f

    sget v3, Lcom/xcglobe/xclog/l;->aw:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(II)V

    const/high16 v1, 0x447a0000    # 1000.0f

    iget-object v2, p0, Lconfigs/ActivityConfigTask;->f:Lk/c;

    iget v2, v2, Lk/c;->a:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lmymenu/a;->b(I)V

    const v1, 0x7f090013

    iput v1, v0, Lmymenu/a;->f:I

    invoke-virtual {v0}, Lmymenu/a;->a()V

    return-void
.end method

.method j()V
    .locals 5

    const-string v0, "point_summary"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigTask;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lconfigs/prefitems/TaskPointSummaryPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget v3, v3, Lk/a;->y:F

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lconfigs/prefitems/TaskPointSummaryPreference;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget v3, v3, Lk/a;->x:F

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lconfigs/prefitems/TaskPointSummaryPreference;->a:Ljava/lang/String;

    return-void
.end method

.method k()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lconfigs/ActivityConfigTask;->e:Landroid/preference/Preference;

    const/4 v1, -0x1

    iput v1, p0, Lconfigs/ActivityConfigTask;->g:I

    iput-object v0, p0, Lconfigs/ActivityConfigTask;->f:Lk/c;

    return-void
.end method

.method l()I
    .locals 4

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->c:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lconfigs/ActivityConfigTask;->c:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lconfigs/ActivityConfigTask;->e:Landroid/preference/Preference;

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method m()V
    .locals 2

    iget v0, p0, Lconfigs/ActivityConfigTask;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lconfigs/ActivityConfigTask;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->b()V

    :cond_0
    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->k()V

    return-void
.end method

.method n()V
    .locals 3

    iget v0, p0, Lconfigs/ActivityConfigTask;->g:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lconfigs/ActivityConfigTask;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v1, v1, Lk/a;->c:Ljava/util/ArrayList;

    iget v2, p0, Lconfigs/ActivityConfigTask;->g:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v1, v1, Lk/a;->c:Ljava/util/ArrayList;

    iget v2, p0, Lconfigs/ActivityConfigTask;->g:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->k()V

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->b()V

    :cond_0
    return-void
.end method

.method o()V
    .locals 3

    iget v0, p0, Lconfigs/ActivityConfigTask;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Lconfigs/ActivityConfigTask;->g:I

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v1, v1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lconfigs/ActivityConfigTask;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v1, v1, Lk/a;->c:Ljava/util/ArrayList;

    iget v2, p0, Lconfigs/ActivityConfigTask;->g:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v1, v1, Lk/a;->c:Ljava/util/ArrayList;

    iget v2, p0, Lconfigs/ActivityConfigTask;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->k()V

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->b()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lconfigs/a;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lconfigs/ActivityConfigTask;->a:Lconfigs/ActivityConfigTask;

    const p1, 0x7f0f0009

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigTask;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "taskname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lconfigs/ActivityConfigTask;->k:Ljava/lang/String;

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->k:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->k:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lconfigs/ActivityConfigTask;->k:Ljava/lang/String;

    invoke-static {p1}, Lk/d;->a(Ljava/lang/String;)Lk/a;

    move-result-object p1

    iput-object p1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    if-nez p1, :cond_1

    new-instance p1, Lk/a;

    invoke-direct {p1}, Lk/a;-><init>()V

    iput-object p1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->k:Ljava/lang/String;

    iput-object v0, p1, Lk/a;->b:Ljava/lang/String;

    :cond_1
    const-string p1, "task_name"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigTask;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    new-instance v0, Lconfigs/ActivityConfigTask$1;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigTask$1;-><init>(Lconfigs/ActivityConfigTask;)V

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "task_start"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigTask;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lconfigs/ActivityConfigTask;->h:Landroid/preference/Preference;

    const-string p1, "task_end"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigTask;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lconfigs/ActivityConfigTask;->i:Landroid/preference/Preference;

    const-string p1, "competition_task"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigTask;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigTask;->j:Landroid/preference/CheckBoxPreference;

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->j:Landroid/preference/CheckBoxPreference;

    new-instance v0, Lconfigs/ActivityConfigTask$2;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigTask$2;-><init>(Lconfigs/ActivityConfigTask;)V

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->j:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-boolean v0, v0, Lk/a;->n:Z

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->a()V

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->h:Landroid/preference/Preference;

    new-instance v0, Lconfigs/ActivityConfigTask$3;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigTask$3;-><init>(Lconfigs/ActivityConfigTask;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->i:Landroid/preference/Preference;

    new-instance v0, Lconfigs/ActivityConfigTask$4;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigTask$4;-><init>(Lconfigs/ActivityConfigTask;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "task_insert_point"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigTask;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    const v0, 0x7f0c0004

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    const v0, 0x7f0c0005

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    new-instance v0, Lconfigs/ActivityConfigTask$5;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigTask$5;-><init>(Lconfigs/ActivityConfigTask;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "targetCategory"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigTask;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lconfigs/ActivityConfigTask;->c:Landroid/preference/PreferenceCategory;

    iget-object p1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-boolean p1, p1, Lk/a;->n:Z

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigTask;->a(Z)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->b()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lconfigs/a;->onPause()V

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lk/a;->a:Lk/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->b:Ljava/lang/String;

    sget-object v1, Lk/a;->a:Lk/a;

    iget-object v1, v1, Lk/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lk/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lconfigs/ActivityConfigTask;->finish()V

    return-void
.end method

.method p()V
    .locals 8

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v0, :cond_3

    iget-object v6, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v6, v6, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/c;

    iget-boolean v7, v6, Lk/c;->f:Z

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    iget-boolean v6, v6, Lk/c;->g:Z

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    iget-object v2, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v2, v2, Lk/a;->c:Ljava/util/ArrayList;

    sub-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iput-boolean v5, v0, Lk/c;->g:Z

    :cond_4
    if-nez v4, :cond_5

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iput-boolean v5, v0, Lk/c;->f:Z

    :cond_5
    return-void
.end method

.method q()Z
    .locals 11

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tasks"

    invoke-static {v1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    iget-object v0, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v5, v5, Lk/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\",\"\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name,code,country,lat,lon,elev,style,rwdir,rwlen,freq,desc\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v5, v5, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v5, v5, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/c;

    const v7, 0x461c4000    # 10000.0f

    iget v8, v5, Lk/c;->a:F

    mul-float v8, v8, v7

    float-to-int v7, v8

    div-int/lit8 v7, v7, 0xa

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lk/c;->l:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\",,,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lk/c;->i:F

    float-to-double v9, v9

    invoke-static {v9, v10, v6}, Lcom/xcglobe/xclog/l;->a(DZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lk/c;->j:F

    float-to-double v9, v6

    invoke-static {v9, v10, v1}, Lcom/xcglobe/xclog/l;->a(DZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v6, v5, Lk/c;->k:S

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "m,,,,,\n"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lk/c;->l:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ObsZone="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",R1="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v5, Lk/c;->f:Z

    if-eqz v6, :cond_3

    const-string v6, ",sss=True"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v5, v5, Lk/c;->g:Z

    if-eqz v5, :cond_4

    const-string v5, ",ess=True"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    const-string v1, "-----Related Tasks-----\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "\"\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nOptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-boolean v1, v1, Lk/a;->d:Z

    if-eqz v1, :cond_6

    const-string v1, ",StartOnEntry=True"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-boolean v1, v1, Lk/a;->m:Z

    if-eqz v1, :cond_7

    const-string v1, ",GoalIsLine=True"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-boolean v1, v1, Lk/a;->n:Z

    if-eqz v1, :cond_8

    const-string v1, ",Competition=True"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",NoStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v2, v2, Lk/a;->e:Landroid/text/format/Time;

    const-string v4, "%H:%M"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",NoEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v2, v2, Lk/a;->f:Landroid/text/format/Time;

    const-string v4, "%H:%M"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tasks"

    invoke-static {v2}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v2, v2, Lk/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/xcglobe/xclog/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v6
.end method
