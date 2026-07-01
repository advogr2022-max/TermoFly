.class Lconfigs/ActivityConfigDataSources$1;
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
.field final synthetic a:Lconfigs/ActivityConfigDataSources;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigDataSources;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigDataSources$1;->a:Lconfigs/ActivityConfigDataSources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    invoke-static {p2, v1, v0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lconfigs/ActivityConfigDataSources$1;->a:Lconfigs/ActivityConfigDataSources;

    invoke-virtual {v0, p2, p1}, Lconfigs/ActivityConfigDataSources;->a(ILandroid/preference/CheckBoxPreference;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lconfigs/ActivityConfigDataSources$1;->a:Lconfigs/ActivityConfigDataSources;

    iget-object v0, v0, Lconfigs/ActivityConfigDataSources;->a:Landroid/app/Activity;

    invoke-static {p2}, Lconfigs/ActivityConfigDataSources;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lb/d;->a(ILandroid/app/Activity;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
