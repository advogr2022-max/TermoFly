.class Lconfigs/ActivityConfigTask$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    iput-object p1, p0, Lconfigs/ActivityConfigTask$4;->a:Lconfigs/ActivityConfigTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, Lconfigs/ActivityConfigTask$4;->a:Lconfigs/ActivityConfigTask;

    iget-object p1, p1, Lconfigs/ActivityConfigTask;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, p0, Lconfigs/ActivityConfigTask$4;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, v0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    invoke-static {p1, v0}, Lf/d;->a(Lconfigs/ActivityConfigTask;Lk/a;)V

    const/4 p1, 0x0

    return p1
.end method
