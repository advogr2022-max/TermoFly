.class Lconfigs/ActivityConfigTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigTask;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigTask;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigTask;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigTask$1;->a:Lconfigs/ActivityConfigTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lconfigs/ActivityConfigTask$1;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, v0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    check-cast p2, Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {p2, v1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lk/a;->b:Ljava/lang/String;

    iget-object p2, p0, Lconfigs/ActivityConfigTask$1;->a:Lconfigs/ActivityConfigTask;

    iget-object p2, p2, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object p2, p2, Lk/a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Landroid/preference/EditTextPreference;

    iget-object p2, p0, Lconfigs/ActivityConfigTask$1;->a:Lconfigs/ActivityConfigTask;

    iget-object p2, p2, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object p2, p2, Lk/a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
