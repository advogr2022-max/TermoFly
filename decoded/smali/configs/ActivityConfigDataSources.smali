.class public Lconfigs/ActivityConfigDataSources;
.super Lconfigs/a;


# instance fields
.field a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lconfigs/a;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    const-string v0, "data-sources.txt"

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "data-sources.txt"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/xcglobe/xclog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    invoke-static {v0}, Lcom/xcglobe/xclog/l;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "region_stored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lconfigs/ActivityConfigDataSources;)V
    .locals 0

    invoke-direct {p0}, Lconfigs/ActivityConfigDataSources;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    const-string v0, "mapset"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigDataSources;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const-string v1, "mapset"

    invoke-static {v1}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c00be

    invoke-static {v3}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb/d;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method a(ILandroid/preference/CheckBoxPreference;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005d

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0129

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes"

    new-instance v2, Lconfigs/ActivityConfigDataSources$3;

    invoke-direct {v2, p0, p1, p2}, Lconfigs/ActivityConfigDataSources$3;-><init>(Lconfigs/ActivityConfigDataSources;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "No"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lconfigs/a;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lconfigs/ActivityConfigDataSources;->a:Landroid/app/Activity;

    const p1, 0x7f0f0002

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigDataSources;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigDataSources;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "unmarkall"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {}, Lb/d;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mapset_managed"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    :cond_0
    const-string v2, "mapset_managed"

    invoke-static {v2, v0}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lb/d;->c()V

    const-string p1, "data-sources.txt"

    const-string v0, ""

    invoke-static {p1, v0, v1}, Lcom/xcglobe/xclog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_2
    invoke-direct {p0}, Lconfigs/ActivityConfigDataSources;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "targetCategory"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigDataSources;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_6

    aget-object v5, p1, v3

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    aget-object v5, p1, v3

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ge v6, v7, :cond_4

    goto :goto_1

    :cond_4
    aget-object v6, v5, v4

    const-string v8, ""

    array-length v9, v5

    if-le v9, v7, :cond_5

    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    aget-object v8, v5, v7

    :cond_5
    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lconfigs/ActivityConfigDataSources;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    new-instance v9, Landroid/preference/CheckBoxPreference;

    invoke-direct {v9, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lconfigs/ActivityConfigDataSources;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v5, Lconfigs/ActivityConfigDataSources$1;

    invoke-direct {v5, p0}, Lconfigs/ActivityConfigDataSources$1;-><init>(Lconfigs/ActivityConfigDataSources;)V

    invoke-virtual {v9, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const-string p1, "mapset"

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigDataSources;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    new-instance v1, Lconfigs/ActivityConfigDataSources$2;

    invoke-direct {v1, p0, v0}, Lconfigs/ActivityConfigDataSources$2;-><init>(Lconfigs/ActivityConfigDataSources;Landroid/preference/PreferenceCategory;)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lconfigs/ActivityConfigDataSources;->b()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lconfigs/a;->onPause()V

    const-string v0, "datasources"

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;)V

    const-string v0, "mapset_managed"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigDataSources;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onResume()V

    invoke-static {}, Lb/l;->a()V

    return-void
.end method
