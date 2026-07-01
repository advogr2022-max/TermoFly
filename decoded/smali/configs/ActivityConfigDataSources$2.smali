.class Lconfigs/ActivityConfigDataSources$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigDataSources;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/preference/PreferenceCategory;

.field final synthetic b:Lconfigs/ActivityConfigDataSources;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigDataSources;Landroid/preference/PreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigDataSources$2;->b:Lconfigs/ActivityConfigDataSources;

    iput-object p2, p0, Lconfigs/ActivityConfigDataSources$2;->a:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const-string p1, "mapset"

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lconfigs/ActivityConfigDataSources$2;->b:Lconfigs/ActivityConfigDataSources;

    invoke-static {p1}, Lconfigs/ActivityConfigDataSources;->a(Lconfigs/ActivityConfigDataSources;)V

    iget-object p1, p0, Lconfigs/ActivityConfigDataSources$2;->a:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lconfigs/ActivityConfigDataSources$2;->a:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
