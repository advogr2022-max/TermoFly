.class Lconfigs/ActivityConfigOpenair$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigOpenair;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lconfigs/ActivityConfigOpenair;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigOpenair;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigOpenair$2;->b:Lconfigs/ActivityConfigOpenair;

    iput-object p2, p0, Lconfigs/ActivityConfigOpenair$2;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iget-object p2, p0, Lconfigs/ActivityConfigOpenair$2;->b:Lconfigs/ActivityConfigOpenair;

    iget-wide v0, p2, Lconfigs/ActivityConfigOpenair;->c:J

    const/4 p2, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lconfigs/ActivityConfigOpenair$2;->b:Lconfigs/ActivityConfigOpenair;

    iget-wide v4, v4, Lconfigs/ActivityConfigOpenair;->c:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    iget-object p1, p0, Lconfigs/ActivityConfigOpenair$2;->b:Lconfigs/ActivityConfigOpenair;

    iput-wide v2, p1, Lconfigs/ActivityConfigOpenair;->c:J

    return p2

    :cond_0
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lconfigs/ActivityConfigOpenair$2;->b:Lconfigs/ActivityConfigOpenair;

    iput-boolean v1, p1, Lconfigs/ActivityConfigOpenair;->b:Z

    sget-object p1, Lcom/xcglobe/xclog/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {v0}, Lconfigs/ActivityConfigOpenair;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lconfigs/ActivityConfigOpenair$2;->b:Lconfigs/ActivityConfigOpenair;

    iput-boolean v1, p1, Lconfigs/ActivityConfigOpenair;->b:Z

    iget-object p1, p0, Lconfigs/ActivityConfigOpenair$2;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {v0}, Lconfigs/ActivityConfigOpenair;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    goto :goto_0

    :goto_1
    return v1
.end method
