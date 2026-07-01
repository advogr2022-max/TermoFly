.class public Lconfigs/ActivityConfig;
.super Lconfigs/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lconfigs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-static {}, Lcom/xcglobe/xclog/l;->e()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lconfigs/a;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f0f0000

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfig;->addPreferencesFromResource(I)V

    const-string p1, "demo_flight"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-static {}, Lm/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    new-instance v0, Lconfigs/ActivityConfig$1;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfig$1;-><init>(Lconfigs/ActivityConfig;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "display"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfig$2;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfig$2;-><init>(Lconfigs/ActivityConfig;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "advanced"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfig$3;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfig$3;-><init>(Lconfigs/ActivityConfig;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "data_sources"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfig$4;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfig$4;-><init>(Lconfigs/ActivityConfig;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "livetrack_options"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfig$5;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfig$5;-><init>(Lconfigs/ActivityConfig;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "power_options"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfig$6;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfig$6;-><init>(Lconfigs/ActivityConfig;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tasks"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfig$7;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfig$7;-><init>(Lconfigs/ActivityConfig;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "about"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfig$8;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfig$8;-><init>(Lconfigs/ActivityConfig;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lconfigs/a;->onPause()V

    const-string v0, "general"

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onResume()V

    return-void
.end method
