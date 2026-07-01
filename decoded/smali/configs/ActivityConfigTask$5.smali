.class Lconfigs/ActivityConfigTask$5;
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

    iput-object p1, p0, Lconfigs/ActivityConfigTask$5;->a:Lconfigs/ActivityConfigTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    new-instance p1, Ltypes/GpsVal;

    invoke-direct {p1}, Ltypes/GpsVal;-><init>()V

    iget-object v0, p0, Lconfigs/ActivityConfigTask$5;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, v0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lconfigs/ActivityConfigTask$5;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, v0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lconfigs/ActivityConfigTask$5;->a:Lconfigs/ActivityConfigTask;

    iget-object v1, v1, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v1, v1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltypes/PoiPoint;

    iget v1, v0, Ltypes/PoiPoint;->i:F

    iput v1, p1, Ltypes/GpsVal;->a:F

    iget v0, v0, Ltypes/PoiPoint;->j:F

    iput v0, p1, Ltypes/GpsVal;->b:F

    goto :goto_0

    :cond_0
    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltypes/GpsVal;->a(Ltypes/GpsVal;)V

    :goto_0
    iget-object v0, p0, Lconfigs/ActivityConfigTask$5;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, v0, Lconfigs/ActivityConfigTask;->a:Lconfigs/ActivityConfigTask;

    const/4 v1, 0x0

    new-instance v2, Lconfigs/ActivityConfigTask$5$1;

    invoke-direct {v2, p0}, Lconfigs/ActivityConfigTask$5$1;-><init>(Lconfigs/ActivityConfigTask$5;)V

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v3, v2}, Lf/b/b;->b(Landroid/app/Activity;Ltypes/GpsVal;Ltypes/PoiPoint;ZLf/b/b$a;)V

    return v3
.end method
