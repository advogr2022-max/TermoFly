.class Lf/b/b$2;
.super Lmymenu/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/b/b;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/b/b;


# direct methods
.method constructor <init>(Lf/b/b;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf/b/b$2;->a:Lf/b/b;

    invoke-direct {p0, p2, p3}, Lmymenu/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Ltypes/PoiPoint;)V
    .locals 3

    iget-object v0, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->k:Ltypes/PoiPoint;

    iget-object v0, v0, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iget-object v1, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object v1, v1, Lf/b/b;->k:Ltypes/PoiPoint;

    iget v1, v1, Ltypes/PoiPoint;->i:F

    iget-object v2, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object v2, v2, Lf/b/b;->k:Ltypes/PoiPoint;

    iget v2, v2, Ltypes/PoiPoint;->j:F

    invoke-static {v0, v1, v2}, Lb/g;->a(Ljava/lang/String;FF)V

    iget-object v0, p0, Lf/b/b$2;->a:Lf/b/b;

    invoke-virtual {v0, p1}, Lf/b/b;->a(Ltypes/PoiPoint;)V

    iget-object v0, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->j:Ltypes/GpsVal;

    iget v1, p1, Ltypes/PoiPoint;->i:F

    iput v1, v0, Ltypes/GpsVal;->a:F

    iget-object v0, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->j:Ltypes/GpsVal;

    iget p1, p1, Ltypes/PoiPoint;->j:F

    iput p1, v0, Ltypes/GpsVal;->b:F

    iget-object p1, p0, Lf/b/b$2;->a:Lf/b/b;

    invoke-virtual {p1}, Lf/b/b;->a()V

    return-void
.end method

.method private synthetic b(Ltypes/PoiPoint;)V
    .locals 2

    iget-object v0, p0, Lf/b/b$2;->a:Lf/b/b;

    invoke-virtual {v0, p1}, Lf/b/b;->a(Ltypes/PoiPoint;)V

    iget-object v0, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->j:Ltypes/GpsVal;

    iget v1, p1, Ltypes/PoiPoint;->i:F

    iput v1, v0, Ltypes/GpsVal;->a:F

    iget-object v0, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->j:Ltypes/GpsVal;

    iget p1, p1, Ltypes/PoiPoint;->j:F

    iput p1, v0, Ltypes/GpsVal;->b:F

    iget-object p1, p0, Lf/b/b$2;->a:Lf/b/b;

    invoke-virtual {p1}, Lf/b/b;->a()V

    return-void
.end method

.method public static synthetic lambda$G5zfm2f59aw0YQrz9PbhQO5rGbs(Lf/b/b$2;Ltypes/PoiPoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/b/b$2;->a(Ltypes/PoiPoint;)V

    return-void
.end method

.method public static synthetic lambda$kCflUuliZX2ifCo2Q9iIkhaOHUU(Lf/b/b$2;Ltypes/PoiPoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/b/b$2;->b(Ltypes/PoiPoint;)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object p1, p1, Lf/b/b;->k:Ltypes/PoiPoint;

    iget-object p1, p1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iget-object v2, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object v2, v2, Lf/b/b;->k:Ltypes/PoiPoint;

    iget v2, v2, Ltypes/PoiPoint;->i:F

    iget-object v3, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object v3, v3, Lf/b/b;->k:Ltypes/PoiPoint;

    iget v3, v3, Ltypes/PoiPoint;->j:F

    invoke-static {p1, v2, v3}, Lb/g;->a(Ljava/lang/String;FF)V

    iget-object p1, p0, Lf/b/b$2;->a:Lf/b/b;

    iput-boolean v0, p1, Lf/b/b;->l:Z

    iget-object p1, p0, Lf/b/b$2;->a:Lf/b/b;

    invoke-virtual {p1}, Lf/b/b;->a()V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object p1, p1, Lf/b/b;->d:Landroid/app/Activity;

    iget-object v0, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->k:Ltypes/PoiPoint;

    new-instance v2, Lf/b/-$$Lambda$b$2$G5zfm2f59aw0YQrz9PbhQO5rGbs;

    invoke-direct {v2, p0}, Lf/b/-$$Lambda$b$2$G5zfm2f59aw0YQrz9PbhQO5rGbs;-><init>(Lf/b/b$2;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object p1, p1, Lf/b/b;->d:Landroid/app/Activity;

    const/4 v0, 0x0

    new-instance v2, Lf/b/-$$Lambda$b$2$kCflUuliZX2ifCo2Q9iIkhaOHUU;

    invoke-direct {v2, p0}, Lf/b/-$$Lambda$b$2$kCflUuliZX2ifCo2Q9iIkhaOHUU;-><init>(Lf/b/b$2;)V

    :goto_0
    invoke-static {p1, v0, v2}, Lf/a;->a(Landroid/app/Activity;Ltypes/PoiPoint;Lf/a$a;)V

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lf/b/b$2;->a:Lf/b/b;

    invoke-static {p1}, Lf/b/b;->a(Lf/b/b;)V

    goto :goto_2

    :pswitch_4
    sput-boolean v0, Lf/b/b;->e:Z

    sget-object p1, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    invoke-virtual {p1}, Lcom/xcglobe/xclog/h;->b()V

    goto :goto_1

    :pswitch_5
    sput-boolean v1, Lf/b/b;->e:Z

    sget-object p1, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    invoke-virtual {p1}, Lcom/xcglobe/xclog/h;->a()V

    :goto_1
    iget-object p1, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object p1, p1, Lf/b/b;->f:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lf/b/c;

    invoke-virtual {p1}, Lf/b/c;->notifyDataSetChanged()V

    iget-object p1, p0, Lf/b/b$2;->a:Lf/b/b;

    iget-object p1, p1, Lf/b/b;->f:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
