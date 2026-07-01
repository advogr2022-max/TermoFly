.class public Lconfigs/ActivityConfigUnits;
.super Lconfigs/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lconfigs/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const-string v0, "unit_distance"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigUnits;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sget-object v1, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "unit_speed"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigUnits;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sget-object v1, Ltypes/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "unit_altitude"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigUnits;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sget-object v1, Ltypes/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "unit_vario"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigUnits;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sget-object v1, Ltypes/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xcglobe/xclog/l;->f()V

    invoke-virtual {p0}, Lconfigs/ActivityConfigUnits;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lconfigs/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f000b

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigUnits;->addPreferencesFromResource(I)V

    const-string p1, "unit_distance"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigUnits;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigUnits$1;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigUnits$1;-><init>(Lconfigs/ActivityConfigUnits;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "unit_speed"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigUnits;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigUnits$2;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigUnits$2;-><init>(Lconfigs/ActivityConfigUnits;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "unit_altitude"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigUnits;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigUnits$3;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigUnits$3;-><init>(Lconfigs/ActivityConfigUnits;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "unit_vario"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigUnits;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigUnits$4;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigUnits$4;-><init>(Lconfigs/ActivityConfigUnits;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onPause()V

    invoke-static {}, Lcom/xcglobe/xclog/l;->f()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onResume()V

    invoke-virtual {p0}, Lconfigs/ActivityConfigUnits;->a()V

    return-void
.end method
