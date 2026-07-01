.class Lconfigs/ActivityConfigTasks$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigTasks;->a()V
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

    iput-object p1, p0, Lconfigs/ActivityConfigTasks$3;->a:Lconfigs/ActivityConfigTasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    iget-object p1, p0, Lconfigs/ActivityConfigTasks$3;->a:Lconfigs/ActivityConfigTasks;

    invoke-static {p1}, Lconfigs/ActivityConfigTasks;->b(Lconfigs/ActivityConfigTasks;)V

    const/4 p1, 0x1

    return p1
.end method
