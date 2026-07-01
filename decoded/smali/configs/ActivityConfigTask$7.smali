.class Lconfigs/ActivityConfigTask$7;
.super Lmymenu/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigTask;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigTask;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigTask$7;->a:Lconfigs/ActivityConfigTask;

    invoke-direct {p0, p2, p3}, Lmymenu/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lconfigs/ActivityConfigTask$7;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, v0, Lconfigs/ActivityConfigTask;->f:Lk/c;

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    iput p1, v0, Lk/c;->a:F

    iget-object p1, p0, Lconfigs/ActivityConfigTask$7;->a:Lconfigs/ActivityConfigTask;

    iget-object p1, p1, Lconfigs/ActivityConfigTask;->f:Lk/c;

    iget p1, p1, Lk/c;->a:F

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lconfigs/ActivityConfigTask$7;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, p0, Lconfigs/ActivityConfigTask$7;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, v0, Lconfigs/ActivityConfigTask;->f:Lk/c;

    iget v0, v0, Lk/c;->a:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p1, Lconfigs/ActivityConfigTask;->d:I

    :cond_0
    iget-object p1, p0, Lconfigs/ActivityConfigTask$7;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->b()V

    iget-object p1, p0, Lconfigs/ActivityConfigTask$7;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->k()V

    const/4 p1, 0x1

    return p1
.end method
