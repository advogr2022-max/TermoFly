.class Lconfigs/ActivityConfigAdvanced$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    iput-object p1, p0, Lconfigs/ActivityConfigAdvanced$3;->a:Lconfigs/ActivityConfigAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    const-class p1, Lconfigs/ActivityConfigIgc;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/Class;)V

    const/4 p1, 0x1

    return p1
.end method
