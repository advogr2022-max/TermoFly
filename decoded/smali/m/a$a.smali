.class Lm/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-static {}, Lc/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lm/a;->a(Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lm/a;->a:J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    const v0, 0x447d5000    # 1013.25f

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result v0

    :cond_0
    invoke-static {}, Lm/a;->g()Lg/a;

    move-result-object p1

    sget-wide v1, Lm/a;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lg/a;->a(FJ)F

    move-result p1

    invoke-static {}, Lm/a;->g()Lg/a;

    move-result-object v0

    iget v0, v0, Lg/a;->c:F

    sget-object v1, Lm/g;->A:Lm/e;

    invoke-virtual {v1, p1}, Lm/e;->a(F)F

    move-result p1

    sget-wide v1, Lm/a;->a:J

    invoke-static {p1, v0, v1, v2}, Lm/g;->a(FFJ)V

    :cond_1
    return-void
.end method
