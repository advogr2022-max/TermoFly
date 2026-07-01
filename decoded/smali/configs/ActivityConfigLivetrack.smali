.class public Lconfigs/ActivityConfigLivetrack;
.super Lconfigs/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lconfigs/a;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const-string v0, "test_livetrack"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigLivetrack;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0c00b5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const v1, 0x7f0c0139

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lj/a;->a(Z)V

    return-void
.end method

.method protected a(ILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    const-string p1, "error"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "test_livetrack"

    invoke-virtual {p0, p2}, Lconfigs/ActivityConfigLivetrack;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    if-nez p1, :cond_0

    const-string p1, "Test: OK"

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Test: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0c0081

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method b()V
    .locals 4

    const-string v0, "user.username"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigLivetrack;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "user.username"

    invoke-static {v1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "livetrack_server"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigLivetrack;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "livetrack_server"

    invoke-static {v1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f01000d

    const v3, 0x7f01000e

    invoke-static {v2, v3, v1}, Lcom/xcglobe/xclog/l;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "test_livetrack"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigLivetrack;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0c0138

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const v1, 0x7f0c0139

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    const-string v0, "livetrack_time_interval"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigLivetrack;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "livetrack_time_interval"

    invoke-static {v1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f01000c

    const v3, 0x7f01000f

    invoke-static {v2, v3, v1}, Lcom/xcglobe/xclog/l;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lconfigs/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0006

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigLivetrack;->addPreferencesFromResource(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lconfigs/ActivityConfigLivetrack;->n:Z

    const-string p1, "user.username"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigLivetrack;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    const-string v0, "user.username"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p1, "create_account"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigLivetrack;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigLivetrack$1;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigLivetrack$1;-><init>(Lconfigs/ActivityConfigLivetrack;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "test_livetrack"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigLivetrack;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigLivetrack$2;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigLivetrack$2;-><init>(Lconfigs/ActivityConfigLivetrack;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "user.username"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigLivetrack;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigLivetrack$3;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigLivetrack$3;-><init>(Lconfigs/ActivityConfigLivetrack;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "livetrack_time_interval"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigLivetrack;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigLivetrack$4;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigLivetrack$4;-><init>(Lconfigs/ActivityConfigLivetrack;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigLivetrack;->b()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lconfigs/a;->onPause()V

    const-string v0, "livetrack"

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigLivetrack;->finish()V

    return-void
.end method
