.class public Lconfigs/ActivityConfigIgc;
.super Lconfigs/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lconfigs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lconfigs/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0005

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigIgc;->addPreferencesFromResource(I)V

    const-string p1, "user.fullname"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigIgc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigIgc$1;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigIgc$1;-><init>(Lconfigs/ActivityConfigIgc;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "user.civlid"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigIgc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigIgc$2;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigIgc$2;-><init>(Lconfigs/ActivityConfigIgc;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "user.email_igc"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigIgc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigIgc$3;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigIgc$3;-><init>(Lconfigs/ActivityConfigIgc;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "logging_interval"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigIgc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigIgc$4;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigIgc$4;-><init>(Lconfigs/ActivityConfigIgc;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "movement_detection_type"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigIgc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigIgc$5;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigIgc$5;-><init>(Lconfigs/ActivityConfigIgc;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onPause()V

    invoke-virtual {p0}, Lconfigs/ActivityConfigIgc;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lconfigs/a;->onResume()V

    const-string v0, "user.fullname"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigIgc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "user.fullname"

    invoke-static {v1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "user.civlid"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigIgc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "user.civlid"

    invoke-static {v1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "user.email_igc"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f0c0131

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "user.email_igc"

    invoke-virtual {p0, v1}, Lconfigs/ActivityConfigIgc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "logging_interval"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigIgc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logging_interval"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v0, 0x7f010016

    const v1, 0x7f010017

    const-string v2, "movement_detection_type"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xcglobe/xclog/l;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "movement_detection_type"

    invoke-virtual {p0, v1}, Lconfigs/ActivityConfigIgc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c00e0

    invoke-static {v3}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
