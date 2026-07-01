.class public Lconfigs/ActivityConfigVario;
.super Lconfigs/a;


# instance fields
.field a:Landroid/preference/ListPreference;

.field b:Landroid/preference/ListPreference;

.field c:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lconfigs/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lconfigs/ActivityConfigVario$4;

    invoke-direct {v2, p0, v0}, Lconfigs/ActivityConfigVario$4;-><init>(Lconfigs/ActivityConfigVario;Landroid/content/SharedPreferences;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lconfigs/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f000d

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigVario;->addPreferencesFromResource(I)V

    const-string p1, "vario_volume"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigVario;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigVario;->b:Landroid/preference/ListPreference;

    const-string p1, "vario_interval"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigVario;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigVario;->a:Landroid/preference/ListPreference;

    const-string p1, "sink_tone"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigVario;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iput-object p1, p0, Lconfigs/ActivityConfigVario;->c:Landroid/preference/EditTextPreference;

    iget-object p1, p0, Lconfigs/ActivityConfigVario;->b:Landroid/preference/ListPreference;

    new-instance v0, Lconfigs/ActivityConfigVario$1;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigVario$1;-><init>(Lconfigs/ActivityConfigVario;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigVario;->a:Landroid/preference/ListPreference;

    new-instance v0, Lconfigs/ActivityConfigVario$2;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigVario$2;-><init>(Lconfigs/ActivityConfigVario;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lconfigs/ActivityConfigVario;->c:Landroid/preference/EditTextPreference;

    new-instance v0, Lconfigs/ActivityConfigVario$3;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigVario$3;-><init>(Lconfigs/ActivityConfigVario;)V

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lconfigs/a;->onPause()V

    const-string v0, "vario"

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigVario;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onResume()V

    invoke-virtual {p0}, Lconfigs/ActivityConfigVario;->a()V

    return-void
.end method
