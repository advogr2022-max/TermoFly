.class public Lconfigs/ActivityConfigOpenair;
.super Lconfigs/a;


# instance fields
.field a:Landroid/app/Activity;

.field b:Z

.field c:J

.field d:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lconfigs/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lconfigs/ActivityConfigOpenair;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lconfigs/ActivityConfigOpenair;->c:J

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openair_checked_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lconfigs/ActivityConfigOpenair;->d:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    sget-object v0, Lcom/xcglobe/xclog/j;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/io/File;

    const-string v2, "Openair"

    invoke-static {v2}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lconfigs/ActivityConfigOpenair;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    new-instance v6, Landroid/preference/CheckBoxPreference;

    invoke-direct {v6, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v4, Lconfigs/ActivityConfigOpenair$2;

    invoke-direct {v4, p0, v0}, Lconfigs/ActivityConfigOpenair$2;-><init>(Lconfigs/ActivityConfigOpenair;Landroid/content/SharedPreferences;)V

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lconfigs/ActivityConfigOpenair;->d:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lconfigs/ActivityConfigOpenair;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lconfigs/ActivityConfigOpenair$3;

    invoke-direct {v1, p0, v0}, Lconfigs/ActivityConfigOpenair$3;-><init>(Lconfigs/ActivityConfigOpenair;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lconfigs/a;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lconfigs/ActivityConfigOpenair;->a:Landroid/app/Activity;

    const p1, 0x7f0f0007

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigOpenair;->addPreferencesFromResource(I)V

    const-string p1, "targetCategory"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigOpenair;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lconfigs/ActivityConfigOpenair;->d:Landroid/preference/PreferenceCategory;

    const-string p1, "load_airspace_cloud"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigOpenair;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lconfigs/ActivityConfigOpenair$1;

    invoke-direct {v0, p0}, Lconfigs/ActivityConfigOpenair$1;-><init>(Lconfigs/ActivityConfigOpenair;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lconfigs/a;->onPause()V

    iget-boolean v0, p0, Lconfigs/ActivityConfigOpenair;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "airspace_set"

    const-string v1, "openair"

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lb/a;->a()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onResume()V

    invoke-static {}, Lb/l;->a()V

    invoke-direct {p0}, Lconfigs/ActivityConfigOpenair;->a()V

    return-void
.end method
