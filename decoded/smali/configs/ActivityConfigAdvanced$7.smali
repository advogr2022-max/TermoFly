.class Lconfigs/ActivityConfigAdvanced$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigAdvanced;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigAdvanced;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigAdvanced;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigAdvanced$7;->a:Lconfigs/ActivityConfigAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "0"

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const-string v0, "external_devmodel"

    invoke-static {v0, p1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/xcglobe/xclog/App;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usb"

    :goto_1
    sget-object v2, Lm/g;->O:Ld/e;

    invoke-static {v0, p1, v1, v2, p2}, Ld/d;->a(Landroid/content/Context;ILjava/lang/String;Ld/n;Landroid/app/Activity;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tcp"

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/xcglobe/xclog/App;->a()Landroid/app/Activity;

    move-result-object p1

    sget-object p2, Lm/g;->O:Ld/e;

    invoke-static {p1, p2}, Ld/c;->a(Landroid/app/Activity;Ld/n;)V

    goto :goto_2

    :cond_4
    const-string p1, "external_device_address"

    invoke-static {p1, p2}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "external_devmodel"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;I)V

    invoke-static {}, Ld/d;->a()V

    :goto_2
    iget-object p1, p0, Lconfigs/ActivityConfigAdvanced$7;->a:Lconfigs/ActivityConfigAdvanced;

    invoke-static {p1}, Lconfigs/ActivityConfigAdvanced;->a(Lconfigs/ActivityConfigAdvanced;)V

    const/4 p1, 0x1

    return p1
.end method
