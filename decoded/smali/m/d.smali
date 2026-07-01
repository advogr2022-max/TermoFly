.class public Lm/d;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x0

.field public static b:Z = false

.field public static c:I = 0x0

.field public static d:Z = false

.field public static e:Z = false

.field public static f:Z = false

.field private static g:Z = false

.field private static h:Z = false

.field private static i:Lg/c;

.field private static j:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lg/c;-><init>(F)V

    sput-object v0, Lm/d;->i:Lg/c;

    const/4 v0, 0x1

    sput-boolean v0, Lm/d;->d:Z

    const/4 v0, 0x0

    sput-boolean v0, Lm/d;->e:Z

    sput-boolean v0, Lm/d;->f:Z

    new-instance v0, Lm/d$1;

    invoke-direct {v0}, Lm/d$1;-><init>()V

    sput-object v0, Lm/d;->j:Landroid/location/LocationListener;

    return-void
.end method

.method public static a()V
    .locals 0

    invoke-static {}, Lm/d;->e()V

    invoke-static {}, Lcom/xcglobe/xclog/TermoFlyService;->a()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lm/d;->g:Z

    sput-boolean v0, Lm/d;->h:Z

    sput v0, Lm/d;->a:I

    sput-boolean v0, Lm/d;->b:Z

    invoke-static {}, Lm/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lm/d;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lm/d;->g:Z

    :goto_0
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lm/d;->g:Z

    return p0
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Lm/d;->f()V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/xcglobe/xclog/App;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c009c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lm/d$3;

    invoke-direct {v2, v0, p0}, Lm/d$3;-><init>(Lcom/xcglobe/xclog/App;Landroid/app/Activity;)V

    const p0, 0x7f0c0160

    invoke-virtual {v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v1, Lm/d$2;

    invoke-direct {v1, v0}, Lm/d$2;-><init>(Lcom/xcglobe/xclog/App;)V

    const v0, 0x7f0c00e6

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-static {p0}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lm/d;->h:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lm/d;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()V
    .locals 1

    invoke-static {}, Lm/d;->f()V

    invoke-static {}, Lm/d;->e()V

    const/4 v0, 0x0

    sput-boolean v0, Lm/d;->b:Z

    return-void
.end method

.method static e()V
    .locals 7

    sget-boolean v0, Lm/d;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lm/g;->M:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-wide/16 v2, 0x3e8

    const/4 v0, 0x0

    sget-boolean v4, Lcom/xcglobe/xclog/l;->ao:Z

    if-eqz v4, :cond_3

    sget-wide v2, Lcom/xcglobe/xclog/l;->ah:J

    const/16 v0, 0xa

    :cond_3
    move-wide v3, v2

    const-string v2, "gps"

    int-to-float v5, v0

    sget-object v6, Lm/d;->j:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x1

    sput-boolean v0, Lm/d;->h:Z

    return-void
.end method

.method static f()V
    .locals 2

    sget-boolean v0, Lm/d;->h:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Lm/d;->j:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lm/d;->h:Z

    return-void
.end method

.method public static g()[F
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sget-boolean v1, Lm/d;->f:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    double-to-float v3, v5

    aput v3, v0, v1

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, v0, v2

    :cond_3
    return-object v0

    :array_0
    .array-data 4
        0x4237cccd    # 45.95f
        0x415b3333    # 13.7f
    .end array-data
.end method

.method static synthetic h()Lg/c;
    .locals 1

    sget-object v0, Lm/d;->i:Lg/c;

    return-object v0
.end method

.method private static i()Z
    .locals 2

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
