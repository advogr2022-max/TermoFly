.class Lconfigs/ActivityConfigTask$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigTask;->a(I)V
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

    iput-object p1, p0, Lconfigs/ActivityConfigTask$8;->a:Lconfigs/ActivityConfigTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lconfigs/ActivityConfigTask$8;->a:Lconfigs/ActivityConfigTask;

    iput-object p1, v0, Lconfigs/ActivityConfigTask;->e:Landroid/preference/Preference;

    iget-object p1, p0, Lconfigs/ActivityConfigTask$8;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, p0, Lconfigs/ActivityConfigTask$8;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {v0}, Lconfigs/ActivityConfigTask;->l()I

    move-result v0

    iput v0, p1, Lconfigs/ActivityConfigTask;->g:I

    iget-object p1, p0, Lconfigs/ActivityConfigTask$8;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, p0, Lconfigs/ActivityConfigTask$8;->a:Lconfigs/ActivityConfigTask;

    iget-object v0, v0, Lconfigs/ActivityConfigTask;->b:Lk/a;

    iget-object v0, v0, Lk/a;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lconfigs/ActivityConfigTask$8;->a:Lconfigs/ActivityConfigTask;

    iget v1, v1, Lconfigs/ActivityConfigTask;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iput-object v0, p1, Lconfigs/ActivityConfigTask;->f:Lk/c;

    iget-object p1, p0, Lconfigs/ActivityConfigTask$8;->a:Lconfigs/ActivityConfigTask;

    invoke-virtual {p1}, Lconfigs/ActivityConfigTask;->d()V

    const/4 p1, 0x1

    return p1
.end method
