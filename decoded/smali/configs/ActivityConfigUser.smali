.class public Lconfigs/ActivityConfigUser;
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

    const p1, 0x7f0f000c

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigUser;->addPreferencesFromResource(I)V

    const-string p1, "user.username"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigUser;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    const-string v0, "user.username"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p1, "create_account"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigUser;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigUser$1;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigUser$1;-><init>(Lconfigs/ActivityConfigUser;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lconfigs/a;->onPause()V

    const-string v0, "user"

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onResume()V

    return-void
.end method
