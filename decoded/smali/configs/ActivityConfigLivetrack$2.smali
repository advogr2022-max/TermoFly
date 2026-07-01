.class Lconfigs/ActivityConfigLivetrack$2;
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

    iput-object p1, p0, Lconfigs/ActivityConfigLivetrack$2;->a:Lconfigs/ActivityConfigLivetrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    iget-object p1, p0, Lconfigs/ActivityConfigLivetrack$2;->a:Lconfigs/ActivityConfigLivetrack;

    invoke-virtual {p1}, Lconfigs/ActivityConfigLivetrack;->a()V

    const/4 p1, 0x0

    return p1
.end method
