.class Lconfigs/ActivityConfigLivetrack$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigLivetrack;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigLivetrack;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigLivetrack;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigLivetrack$1;->a:Lconfigs/ActivityConfigLivetrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://xcglobe.com/register"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lconfigs/ActivityConfigLivetrack$1;->a:Lconfigs/ActivityConfigLivetrack;

    invoke-virtual {v0, p1}, Lconfigs/ActivityConfigLivetrack;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
