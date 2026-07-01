.class Lconfigs/ActivityConfigTask$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lf/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigTask$5;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigTask$5;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigTask$5;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigTask$5$1;->a:Lconfigs/ActivityConfigTask$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ltypes/PoiPoint;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lconfigs/ActivityConfigTask$5$1;->a:Lconfigs/ActivityConfigTask$5;

    iget-object v0, v0, Lconfigs/ActivityConfigTask$5;->a:Lconfigs/ActivityConfigTask;

    iget-object v1, p0, Lconfigs/ActivityConfigTask$5$1;->a:Lconfigs/ActivityConfigTask$5;

    iget-object v1, v1, Lconfigs/ActivityConfigTask$5;->a:Lconfigs/ActivityConfigTask;

    iget v1, v1, Lconfigs/ActivityConfigTask;->d:I

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lconfigs/ActivityConfigTask;->a(Ltypes/PoiPoint;F)Lk/c;

    iget-object p1, p0, Lconfigs/ActivityConfigTask$5$1;->a:Lconfigs/ActivityConfigTask$5;

    iget-object p1, p1, Lconfigs/ActivityConfigTask$5;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->b()V

    :cond_0
    return-void
.end method
