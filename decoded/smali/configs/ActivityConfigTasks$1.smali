.class Lconfigs/ActivityConfigTasks$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigTasks;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigTasks;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigTasks;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigTasks$1;->a:Lconfigs/ActivityConfigTasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lconfigs/ActivityConfigTasks$1;->a:Lconfigs/ActivityConfigTasks;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lconfigs/ActivityConfigTasks;->c:Ljava/lang/String;

    iget-object v0, p0, Lconfigs/ActivityConfigTasks$1;->a:Lconfigs/ActivityConfigTasks;

    check-cast p1, Lconfigs/prefitems/b;

    invoke-static {v0, p1}, Lconfigs/ActivityConfigTasks;->a(Lconfigs/ActivityConfigTasks;Lconfigs/prefitems/b;)V

    const/4 p1, 0x0

    return p1
.end method
