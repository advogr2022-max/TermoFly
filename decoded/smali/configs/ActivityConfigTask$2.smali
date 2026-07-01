.class Lconfigs/ActivityConfigTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lconfigs/ActivityConfigTask$2;->a:Lconfigs/ActivityConfigTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object p1, p0, Lconfigs/ActivityConfigTask$2;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, p0, Lconfigs/ActivityConfigTask$2;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, v0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, v0, Lk/a;->n:Z

    invoke-virtual {p1, p2}, Lconfigs/ActivityConfigTask;->a(Z)V

    iget-object p1, p0, Lconfigs/ActivityConfigTask$2;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->b()V

    const/4 p1, 0x1

    return p1
.end method
