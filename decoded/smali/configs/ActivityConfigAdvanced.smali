.class public Lconfigs/ActivityConfigAdvanced;
.super Lconfigs/a;


# instance fields
.field a:Landroid/preference/ListPreference;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lconfigs/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lconfigs/ActivityConfigAdvanced;->b:Z

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Ld/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ld/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-static {}, Ld/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0c0041

    :goto_0
    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const v0, 0x7f0c00e7

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lconfigs/ActivityConfigAdvanced;->a:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lconfigs/ActivityConfigAdvanced;)V
    .locals 0

    invoke-direct {p0}, Lconfigs/ActivityConfigAdvanced;->a()V

    return-void
.end method


# virtual methods
.method protected a(ILandroid/content/Intent;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lconfigs/ActivityConfigAdvanced;->a:Landroid/preference/ListPreference;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :pswitch_1
    invoke-direct {p0}, Lconfigs/ActivityConfigAdvanced;->a()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lconfigs/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0001

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigAdvanced;->addPreferencesFromResource(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lconfigs/ActivityConfigAdvanced;->n:Z

    const-string p1, "openair_options"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigAdvanced$1;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigAdvanced$1;-><init>(Lconfigs/ActivityConfigAdvanced;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "glider_options"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigAdvanced$2;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigAdvanced$2;-><init>(Lconfigs/ActivityConfigAdvanced;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "igc_options"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigAdvanced$3;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigAdvanced$3;-><init>(Lconfigs/ActivityConfigAdvanced;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "units_options"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigAdvanced$4;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigAdvanced$4;-><init>(Lconfigs/ActivityConfigAdvanced;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "vario_options"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigAdvanced$5;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigAdvanced$5;-><init>(Lconfigs/ActivityConfigAdvanced;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "show_datalist"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigAdvanced$6;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigAdvanced$6;-><init>(Lconfigs/ActivityConfigAdvanced;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "external_devmodel"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigAdvanced;->a:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lconfigs/ActivityConfigAdvanced;->a()V

    iget-object p1, p0, Lconfigs/ActivityConfigAdvanced;->a:Landroid/preference/ListPreference;

    new-instance v0, Lconfigs/ActivityConfigAdvanced$7;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigAdvanced$7;-><init>(Lconfigs/ActivityConfigAdvanced;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean p1, p0, Lconfigs/ActivityConfigAdvanced;->b:Z

    if-eqz p1, :cond_0

    const-string p1, "advCategory"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    const-string v0, "optimizer_interval"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "enable_map_view"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "sd_card"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "gps_use_filter"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lconfigs/a;->onPause()V

    const-string v0, "advanced"

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;)V

    return-void
.end method
