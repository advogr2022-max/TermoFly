.class public Lconfigs/ActivityConfigGlider;
.super Lconfigs/a;


# instance fields
.field a:Landroid/preference/EditTextPreference;

.field b:Landroid/preference/EditTextPreference;

.field c:Landroid/preference/EditTextPreference;

.field d:Landroid/preference/EditTextPreference;

.field e:Landroid/preference/EditTextPreference;

.field f:Landroid/preference/EditTextPreference;

.field g:Landroid/preference/ListPreference;

.field h:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lconfigs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lconfigs/ActivityConfigGlider;->a:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glider_min_speed"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " km/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lconfigs/ActivityConfigGlider;->b:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glider_min_speed_sink"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " m/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lconfigs/ActivityConfigGlider;->c:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glider_optimal_speed"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " km/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lconfigs/ActivityConfigGlider;->d:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glider_optimal_speed_sink"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " m/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lconfigs/ActivityConfigGlider;->e:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glider_max_speed"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " km/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lconfigs/ActivityConfigGlider;->f:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glider_max_speed_sink"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " m/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "user.gtype"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f010006

    const v2, 0x7f010007

    invoke-static {v1, v2, v0}, Lcom/xcglobe/xclog/l;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lconfigs/ActivityConfigGlider;->g:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lconfigs/ActivityConfigGlider;->h:Landroid/preference/EditTextPreference;

    const-string v1, "user.glider"

    invoke-static {v1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lconfigs/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0004

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigGlider;->addPreferencesFromResource(I)V

    const-string p1, "glider_min_speed"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigGlider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigGlider;->a:Landroid/preference/EditTextPreference;

    const-string p1, "glider_min_speed_sink"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigGlider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigGlider;->b:Landroid/preference/EditTextPreference;

    const-string p1, "glider_optimal_speed"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigGlider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigGlider;->c:Landroid/preference/EditTextPreference;

    const-string p1, "glider_optimal_speed_sink"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigGlider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigGlider;->d:Landroid/preference/EditTextPreference;

    const-string p1, "glider_max_speed"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigGlider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigGlider;->e:Landroid/preference/EditTextPreference;

    const-string p1, "glider_max_speed_sink"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigGlider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigGlider;->f:Landroid/preference/EditTextPreference;

    const-string p1, "user.gtype"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigGlider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigGlider;->g:Landroid/preference/ListPreference;

    const-string p1, "user.glider"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigGlider;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigGlider;->h:Landroid/preference/EditTextPreference;

    iget-object p1, p0, Lconfigs/ActivityConfigGlider;->a:Landroid/preference/EditTextPreference;

    new-instance v0, Lconfigs/ActivityConfigGlider$1;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigGlider$1;-><init>(Lconfigs/ActivityConfigGlider;)V

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigGlider;->b:Landroid/preference/EditTextPreference;

    new-instance v0, Lconfigs/ActivityConfigGlider$2;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigGlider$2;-><init>(Lconfigs/ActivityConfigGlider;)V

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigGlider;->c:Landroid/preference/EditTextPreference;

    new-instance v0, Lconfigs/ActivityConfigGlider$3;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigGlider$3;-><init>(Lconfigs/ActivityConfigGlider;)V

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigGlider;->d:Landroid/preference/EditTextPreference;

    new-instance v0, Lconfigs/ActivityConfigGlider$4;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigGlider$4;-><init>(Lconfigs/ActivityConfigGlider;)V

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigGlider;->e:Landroid/preference/EditTextPreference;

    new-instance v0, Lconfigs/ActivityConfigGlider$5;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigGlider$5;-><init>(Lconfigs/ActivityConfigGlider;)V

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigGlider;->f:Landroid/preference/EditTextPreference;

    new-instance v0, Lconfigs/ActivityConfigGlider$6;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigGlider$6;-><init>(Lconfigs/ActivityConfigGlider;)V

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigGlider;->g:Landroid/preference/ListPreference;

    new-instance v0, Lconfigs/ActivityConfigGlider$7;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigGlider$7;-><init>(Lconfigs/ActivityConfigGlider;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigGlider;->h:Landroid/preference/EditTextPreference;

    new-instance v0, Lconfigs/ActivityConfigGlider$8;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigGlider$8;-><init>(Lconfigs/ActivityConfigGlider;)V

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lconfigs/a;->onPause()V

    const-string v0, "glider"

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigGlider;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onResume()V

    invoke-virtual {p0}, Lconfigs/ActivityConfigGlider;->a()V

    return-void
.end method
