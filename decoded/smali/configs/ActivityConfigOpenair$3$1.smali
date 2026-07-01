.class Lconfigs/ActivityConfigOpenair$3$1;
.super Lmymenu/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigOpenair$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/preference/CheckBoxPreference;

.field final synthetic b:Lconfigs/ActivityConfigOpenair$3;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigOpenair$3;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigOpenair$3$1;->b:Lconfigs/ActivityConfigOpenair$3;

    iput-object p4, p0, Lconfigs/ActivityConfigOpenair$3$1;->a:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, p2, p3}, Lmymenu/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lconfigs/ActivityConfigOpenair$3$1;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lconfigs/ActivityConfigOpenair$3$1;->b:Lconfigs/ActivityConfigOpenair$3;

    iget-object v1, v1, Lconfigs/ActivityConfigOpenair$3;->b:Lconfigs/ActivityConfigOpenair;

    iput-boolean v0, v1, Lconfigs/ActivityConfigOpenair;->b:Z

    sget-object v1, Lcom/xcglobe/xclog/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1}, Lconfigs/ActivityConfigOpenair;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1}, Lb/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lconfigs/ActivityConfigOpenair$3$1;->b:Lconfigs/ActivityConfigOpenair$3;

    iget-object p1, p1, Lconfigs/ActivityConfigOpenair$3;->b:Lconfigs/ActivityConfigOpenair;

    iget-object p1, p1, Lconfigs/ActivityConfigOpenair;->d:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lconfigs/ActivityConfigOpenair$3$1;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return v0
.end method
