.class public Lm/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/a$a;
    }
.end annotation


# static fields
.field public static a:J = 0x0L

.field private static b:Z = false

.field private static c:Z

.field private static d:Lm/a$a;

.field private static final e:Lg/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/a;

    const/16 v1, 0x3e8

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Lg/a;-><init>(IF)V

    sput-object v0, Lm/a;->e:Lg/a;

    return-void
.end method

.method public static a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lm/a;->c:Z

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lm/a;->b:Z

    return p0
.end method

.method public static b()V
    .locals 4

    sget-boolean v0, Lcom/xcglobe/xclog/l;->R:Z

    if-eqz v0, :cond_0

    sget-object v0, Lm/a;->e:Lg/a;

    const/16 v1, 0x3e8

    const v2, 0x3dcccccd    # 0.1f

    :goto_0
    invoke-virtual {v0, v1, v2}, Lg/a;->a(IF)V

    goto :goto_1

    :cond_0
    sget-object v0, Lm/a;->e:Lg/a;

    const/16 v1, 0x1f4

    const v2, 0x3d4ccccd    # 0.05f

    goto :goto_0

    :goto_1
    sget-boolean v0, Lm/a;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lm/a;->d:Lm/a$a;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xcglobe/xclog/l;->I:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lm/g;->L:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lm/a$a;

    invoke-direct {v2}, Lm/a$a;-><init>()V

    sput-object v2, Lm/a;->d:Lm/a$a;

    sget-object v2, Lm/a;->d:Lm/a$a;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lm/a;->d:Lm/a$a;

    goto :goto_2

    :cond_1
    sget-boolean v0, Lcom/xcglobe/xclog/l;->I:Z

    if-nez v0, :cond_2

    invoke-static {}, Lm/a;->e()V

    :cond_2
    :goto_2
    return-void
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lm/a;->d:Lm/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lm/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lm/a;->d:Lm/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()V
    .locals 2

    sget-object v0, Lm/a;->d:Lm/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sget-object v1, Lm/a;->d:Lm/a$a;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lm/a;->d:Lm/a$a;

    const/4 v0, 0x0

    sput-boolean v0, Lm/a;->b:Z

    return-void
.end method

.method public static f()V
    .locals 0

    invoke-static {}, Lm/a;->e()V

    invoke-static {}, Lm/a;->b()V

    return-void
.end method

.method static synthetic g()Lg/a;
    .locals 1

    sget-object v0, Lm/a;->e:Lg/a;

    return-object v0
.end method
