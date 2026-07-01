.class Lconfigs/ActivityConfigLivetrack$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lconfigs/ActivityConfigLivetrack$4;->a:Lconfigs/ActivityConfigLivetrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lconfigs/ActivityConfigLivetrack$4;->a:Lconfigs/ActivityConfigLivetrack;

    invoke-virtual {v0}, Lconfigs/ActivityConfigLivetrack;->b()V

    check-cast p2, Ljava/lang/String;

    const v0, 0x7f01000c

    const v1, 0x7f01000f

    invoke-static {v0, v1, p2}, Lcom/xcglobe/xclog/l;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method
