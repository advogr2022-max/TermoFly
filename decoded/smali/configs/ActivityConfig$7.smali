.class Lconfigs/ActivityConfig$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfig;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfig;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfig;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfig$7;->a:Lconfigs/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    const-class p1, Lconfigs/ActivityConfigTasks;

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/Class;)V

    const/4 p1, 0x1

    return p1
.end method
