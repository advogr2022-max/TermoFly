.class public Ltypes/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Ltypes/PoiPoint; = null

.field public static b:F = 0.0f

.field public static c:I = 0x0

.field public static d:I = 0x0

.field public static e:F = 0.0f

.field public static f:I = 0x0

.field public static g:Z = false

.field private static h:I

.field private static i:Ltypes/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltypes/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ltypes/d;-><init>(FF)V

    sput-object v0, Ltypes/f;->i:Ltypes/d;

    return-void
.end method

.method public static a()V
    .locals 4

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    sget-boolean v1, Ltypes/f;->g:Z

    if-eqz v1, :cond_1

    sget v1, Ltypes/f;->h:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Ltypes/f;->h:I

    if-gez v1, :cond_1

    sget-object v1, Lk/a;->a:Lk/a;

    iget v2, v0, Ltypes/GpsVal;->a:F

    iget v3, v0, Ltypes/GpsVal;->b:F

    invoke-virtual {v1, v2, v3}, Lk/a;->a(FF)Ltypes/l;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v3, v1, Ltypes/l;->a:F

    iput v3, v2, Ltypes/PoiPoint;->i:F

    sget-object v2, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v1, v1, Ltypes/l;->b:F

    iput v1, v2, Ltypes/PoiPoint;->j:F

    :cond_0
    const/4 v1, 0x0

    sput v1, Ltypes/f;->h:I

    :cond_1
    sget-object v1, Ltypes/f;->i:Ltypes/d;

    iget v2, v0, Ltypes/GpsVal;->a:F

    iget v3, v0, Ltypes/GpsVal;->b:F

    invoke-virtual {v1, v2, v3}, Ltypes/d;->b(FF)F

    move-result v1

    sput v1, Ltypes/f;->b:F

    iget v1, v0, Ltypes/GpsVal;->a:F

    iget v0, v0, Ltypes/GpsVal;->b:F

    sget-object v2, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v2, v2, Ltypes/PoiPoint;->i:F

    sget-object v3, Ltypes/f;->a:Ltypes/PoiPoint;

    iget v3, v3, Ltypes/PoiPoint;->j:F

    invoke-static {v1, v0, v2, v3}, Ltypes/i;->a(FFFF)I

    move-result v0

    sput v0, Ltypes/f;->c:I

    sget-object v0, Lm/g;->W:Lh/a;

    sget v1, Ltypes/f;->c:I

    sget v2, Lcom/xcglobe/xclog/l;->M:F

    invoke-virtual {v0, v1, v2}, Lh/a;->a(IF)F

    move-result v0

    sput v0, Ltypes/f;->e:F

    const/high16 v0, 0x45610000    # 3600.0f

    sget v1, Ltypes/f;->b:F

    mul-float v1, v1, v0

    sget v0, Ltypes/f;->e:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Ltypes/f;->d:I

    sget v0, Lcom/xcglobe/xclog/l;->N:F

    sget v1, Ltypes/f;->d:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    sget v1, Lm/g;->s:I

    sub-int/2addr v1, v0

    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    iget-short v0, v0, Ltypes/PoiPoint;->k:S

    sub-int/2addr v1, v0

    sput v1, Ltypes/f;->f:I

    return-void
.end method

.method public static a(Ltypes/PoiPoint;Z)V
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_1

    invoke-static {}, Lk/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lk/c;

    invoke-direct {p0}, Lk/c;-><init>()V

    sget-object p1, Lk/a;->a:Lk/a;

    iget-object p1, p1, Lk/a;->h:Lk/c;

    invoke-virtual {p0, p1}, Lk/c;->a(Lk/c;)V

    sget-object p1, Lk/a;->a:Lk/a;

    iget-object p1, p1, Lk/a;->h:Lk/c;

    iget-object p1, p1, Lk/c;->h:Ltypes/l;

    iget p1, p1, Ltypes/l;->a:F

    iput p1, p0, Lk/c;->i:F

    sget-object p1, Lk/a;->a:Lk/a;

    iget-object p1, p1, Lk/a;->h:Lk/c;

    iget-object p1, p1, Lk/c;->h:Ltypes/l;

    iget p1, p1, Ltypes/l;->b:F

    iput p1, p0, Lk/c;->j:F

    iget-short p1, p0, Lk/c;->k:S

    if-nez p1, :cond_0

    iget p1, p0, Lk/c;->i:F

    iget v1, p0, Lk/c;->j:F

    invoke-static {p1, v1}, Lvmaps/d;->b(FF)I

    :cond_0
    const/4 p1, 0x1

    :cond_1
    if-eqz p0, :cond_4

    iget-char v1, p0, Ltypes/PoiPoint;->m:C

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_2

    new-instance v1, Ltypes/m;

    invoke-direct {v1}, Ltypes/m;-><init>()V

    sput-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    sget-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    check-cast v1, Ltypes/m;

    move-object v2, p0

    check-cast v2, Ltypes/m;

    iget v2, v2, Ltypes/m;->a:I

    iput v2, v1, Ltypes/m;->a:I

    goto :goto_0

    :cond_2
    new-instance v1, Ltypes/PoiPoint;

    invoke-direct {v1}, Ltypes/PoiPoint;-><init>()V

    sput-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    iget-short v1, p0, Ltypes/PoiPoint;->k:S

    if-nez v1, :cond_3

    iget v1, p0, Ltypes/PoiPoint;->i:F

    iget v2, p0, Ltypes/PoiPoint;->j:F

    invoke-static {v1, v2}, Lvmaps/d;->a(FF)I

    move-result v1

    if-eqz v1, :cond_3

    int-to-short v1, v1

    iput-short v1, p0, Ltypes/PoiPoint;->k:S

    :cond_3
    :goto_0
    sget-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    invoke-virtual {v1, p0}, Ltypes/PoiPoint;->a(Ltypes/PoiPoint;)V

    invoke-static {}, Ldisplay/vmap/features/PoiPainter;->reloadLocalPoints()V

    new-instance v1, Ltypes/d;

    iget v2, p0, Ltypes/PoiPoint;->i:F

    iget v3, p0, Ltypes/PoiPoint;->j:F

    invoke-direct {v1, v2, v3}, Ltypes/d;-><init>(FF)V

    sput-object v1, Ltypes/f;->i:Ltypes/d;

    invoke-static {}, Ltypes/f;->a()V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    sput-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    :goto_1
    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Ltypes/f;->g:Z

    sget-boolean p0, Ltypes/f;->g:Z

    if-eqz p0, :cond_6

    sget-object p0, Lk/a;->a:Lk/a;

    iget-boolean p0, p0, Lk/a;->s:Z

    if-nez p0, :cond_6

    const/16 p0, 0x8

    goto :goto_3

    :cond_6
    const/4 p0, 0x7

    :goto_3
    sget-boolean p1, Ltypes/f;->g:Z

    if-eqz p1, :cond_7

    sget-object p1, Lk/a;->a:Lk/a;

    iget-boolean p1, p1, Lk/a;->s:Z

    if-eqz p1, :cond_8

    :cond_7
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xcglobe.action.main"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "event"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/App;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8
    return-void
.end method
