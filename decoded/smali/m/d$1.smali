.class final Lm/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 11

    invoke-static {}, Lc/a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    :goto_0
    sput v0, Lm/g;->l:F

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v2, v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-float v3, v0

    sget-boolean v0, Lm/d;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lm/d;->h()Lg/c;

    move-result-object v1

    sget v4, Lm/g;->l:F

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lg/c;->a(FFFJ)V

    invoke-static {}, Lm/d;->h()Lg/c;

    move-result-object v0

    invoke-virtual {v0}, Lg/c;->a()F

    move-result v0

    invoke-static {}, Lm/d;->h()Lg/c;

    move-result-object v1

    invoke-virtual {v1}, Lg/c;->b()F

    move-result v1

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_1
    move v1, v2

    move v2, v3

    :goto_2
    sget-boolean v0, Lm/d;->b:Z

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-nez v0, :cond_2

    invoke-static {v1, v2}, Lm/b;->a(FF)I

    move-result v0

    sput v0, Lm/d;->a:I

    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    add-double/2addr v5, v3

    double-to-int v0, v5

    sget v5, Lm/d;->a:I

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "satellites"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lm/d;->c:I

    const/4 v5, -0x1

    sget-boolean v6, Lm/d;->d:Z

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v6

    if-eqz v6, :cond_3

    const-wide v5, 0x400ccccccccccccdL    # 3.6

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    float-to-double v9, p1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v5

    add-double/2addr v9, v3

    double-to-int p1, v9

    move v6, p1

    goto :goto_3

    :cond_3
    const/4 v6, -0x1

    :goto_3
    int-to-short v3, v0

    move-wide v4, v7

    invoke-static/range {v1 .. v6}, Lm/g;->a(FFSJI)V

    :cond_4
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Lm/d;->a(Z)Z

    const/16 p1, 0x8

    invoke-static {p1}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    invoke-static {}, Lcom/xcglobe/xclog/TermoFlyService;->a()V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    invoke-static {p1}, Lm/d;->a(Z)Z

    const/16 p1, 0x8

    invoke-static {p1}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    invoke-static {}, Lcom/xcglobe/xclog/TermoFlyService;->a()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lm/d;->a(Z)Z

    :goto_0
    return-void
.end method
