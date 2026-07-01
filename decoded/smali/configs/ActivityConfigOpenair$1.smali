.class Lconfigs/ActivityConfigOpenair$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigOpenair;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigOpenair;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigOpenair;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigOpenair$1;->a:Lconfigs/ActivityConfigOpenair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lconfigs/ActivityConfigOpenair$1;->a:Lconfigs/ActivityConfigOpenair;

    iget-object v0, v0, Lconfigs/ActivityConfigOpenair;->m:Lconfigs/a;

    const-class v1, Lcom/xcglobe/xclog/ActivityCloudPicker;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lconfigs/ActivityConfigOpenair$1;->a:Lconfigs/ActivityConfigOpenair;

    iget-object v0, v0, Lconfigs/ActivityConfigOpenair;->m:Lconfigs/a;

    invoke-virtual {v0, p1}, Lconfigs/a;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
