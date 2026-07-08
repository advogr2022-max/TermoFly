.class public Lcom/xcglobe/xclog/App;
.super Landroid/app/Application;


# static fields
.field static a:Lcom/xcglobe/xclog/App;

.field public static b:I

.field public static final c:Landroid/os/Handler;

.field private static d:Landroid/app/Activity;

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xcglobe/xclog/App;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/xcglobe/xclog/App$1;

    invoke-direct {v0}, Lcom/xcglobe/xclog/App$1;-><init>()V

    sput-object v0, Lcom/xcglobe/xclog/App;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/xcglobe/xclog/App;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xcglobe/xclog/App;->a:Lcom/xcglobe/xclog/App;

    invoke-virtual {v0}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Dialog;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xcglobe/xclog/App;->a(Landroid/app/Dialog;I)V

    return-void
.end method

.method public static a(Landroid/app/Dialog;I)V
    .locals 3

    sget-object v0, Lcom/xcglobe/xclog/App;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/high16 v1, 0x42c80000    # 100.0f

    if-gez p1, :cond_1

    sget v2, Lcom/xcglobe/xclog/l;->ay:I

    int-to-float v2, v2

    int-to-float p1, p1

    mul-float v2, v2, p1

    div-float/2addr v2, v1

    float-to-int p1, v2

    neg-int p1, p1

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/xcglobe/xclog/l;->ax:I

    int-to-float v2, v2

    int-to-float p1, p1

    mul-float v2, v2, p1

    div-float/2addr v2, v1

    float-to-int p1, v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_2
    return-void
.end method

.method public static a(Lcom/xcglobe/xclog/ActivityMain;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Lcom/xcglobe/xclog/l;->aq:F

    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityMain;->setTheme(I)V

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f040009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->m:I

    const v2, 0x7f040021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->n:I

    const v2, 0x7f040006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->o:I

    const v2, 0x7f040001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->q:I

    const v2, 0x7f04001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->p:I

    const v2, 0x7f040011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->t:I

    const v2, 0x7f040016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->j:I

    const v2, 0x7f040003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->r:I

    const v2, 0x7f04001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->s:I

    const/high16 v2, 0x7f040000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->u:I

    const v2, 0x7f04000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->v:I

    sget v2, Lcom/xcglobe/xclog/l;->s:I

    sput v2, Lcom/xcglobe/xclog/l;->A:I

    const v2, 0x7f04001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->w:I

    const v2, 0x7f040004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->x:I

    const v2, 0x7f04001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->y:I

    const v2, 0x7f040007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->k:I

    const v2, 0x7f04000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/xcglobe/xclog/l;->l:I

    const v2, 0x7f04000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/xcglobe/xclog/l;->z:I

    sget v0, Lcom/xcglobe/xclog/l;->j:I

    sput v0, Lcom/xcglobe/xclog/l;->B:I

    const-string v0, "#ff8000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xcglobe/xclog/l;->C:I

    const-string v0, "#ffe040"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xcglobe/xclog/l;->D:I

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/xcglobe/xclog/l;->e:I

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityMain;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/xcglobe/xclog/l;->aw:I

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    sput p0, Lcom/xcglobe/xclog/l;->ax:I

    sget p0, Lcom/xcglobe/xclog/l;->ax:I

    sget v0, Lcom/xcglobe/xclog/l;->aw:I

    if-ge p0, v0, :cond_0

    sget p0, Lcom/xcglobe/xclog/l;->ax:I

    sput p0, Lcom/xcglobe/xclog/l;->ay:I

    sget p0, Lcom/xcglobe/xclog/l;->aw:I

    sput p0, Lcom/xcglobe/xclog/l;->az:I

    sput-boolean v1, Lcom/xcglobe/xclog/l;->aA:Z

    goto :goto_0

    :cond_0
    sget p0, Lcom/xcglobe/xclog/l;->aw:I

    sput p0, Lcom/xcglobe/xclog/l;->ay:I

    sget p0, Lcom/xcglobe/xclog/l;->ax:I

    sput p0, Lcom/xcglobe/xclog/l;->az:I

    const/4 p0, 0x0

    sput-boolean p0, Lcom/xcglobe/xclog/l;->aA:Z

    :goto_0
    invoke-static {}, Lcom/xcglobe/xclog/g;->a()V

    invoke-static {}, Lcom/xcglobe/xclog/App;->c()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xcglobe/xclog/App;->d:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p0, Lcom/xcglobe/xclog/App;->d:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/xcglobe/xclog/App;->a:Lcom/xcglobe/xclog/App;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-nez v2, :cond_1

    const-string v4, "datasources"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {}, Lvmaps/d;->a()V

    sput-boolean v0, Lcom/xcglobe/xclog/ActivityMain;->b:Z

    :cond_2
    if-nez v2, :cond_3

    const-string v4, "display"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, "full_screen"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/xcglobe/xclog/l;->ae:Z

    const-string v4, "screen_orientation"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/xcglobe/xclog/l;->af:I

    const-string v4, "display_vario_helpers"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/xcglobe/xclog/l;->aj:Z

    const-string v4, "full_screen"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/xcglobe/xclog/l;->ae:Z

    const-string v4, "enable_custombox"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/xcglobe/xclog/l;->ab:Z

    const-string v4, "enable_gfx_vario"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/xcglobe/xclog/l;->X:Z

    const-string v4, "vario_volume"

    const-string v5, "100"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/xcglobe/xclog/l;->W:I

    const-string v4, "show_contours"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/xcglobe/xclog/l;->al:Z

    const-string v4, "maps_colors"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/xcglobe/xclog/l;->ad:I

    sget v4, Lcom/xcglobe/xclog/l;->ad:I

    if-ne v4, v0, :cond_4

    sput v1, Lcom/xcglobe/xclog/l;->ad:I

    :cond_4
    const/4 v4, 0x0

    if-nez v2, :cond_5

    const-string v5, "vario"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const-string v5, "vario_volume"

    const-string v6, "100"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/xcglobe/xclog/l;->W:I

    const-string v5, "barometer_kalman_vario"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/xcglobe/xclog/l;->Q:Z

    const-string v5, "vario_interval"

    const-string v6, "0"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/xcglobe/xclog/l;->S:I

    const-string v5, "barometer_stabilize_vario"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/xcglobe/xclog/l;->R:Z

    const-string v5, "sink_tone"

    const-string v6, "-3.0"

    invoke-static {v3, v5, v6}, Lcom/xcglobe/xclog/j;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    sput v5, Lcom/xcglobe/xclog/l;->T:F

    sget v5, Lcom/xcglobe/xclog/l;->T:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_6

    sget v5, Lcom/xcglobe/xclog/l;->T:F

    neg-float v5, v5

    sput v5, Lcom/xcglobe/xclog/l;->T:F

    :cond_6
    if-nez v2, :cond_7

    const-string v5, "advanced"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    const-string v5, "font_size"

    const-string v6, "0"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/xcglobe/xclog/l;->Y:I

    const-string v5, "infoboxes_size"

    const-string v6, "3"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/xcglobe/xclog/l;->ak:I

    const-string v5, "logging_interval"

    const-string v6, "4"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    sput-wide v5, Lcom/xcglobe/xclog/l;->ah:J

    const v5, 0xea60

    const-string v6, "optimizer_interval"

    const-string v7, "1"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int v6, v6, v5

    int-to-long v5, v6

    sput-wide v5, Lcom/xcglobe/xclog/l;->ag:J

    const-string v5, "movement_detection_type"

    const-string v6, "0"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/xcglobe/xclog/l;->ai:I

    const-string v5, "use_barometer"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/xcglobe/xclog/l;->I:Z

    const-string v5, "external_devmodel"

    const-string v6, "0"

    invoke-static {v3, v5, v6}, Lcom/xcglobe/xclog/j;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_1
    sput-boolean v4, Lcom/xcglobe/xclog/l;->J:Z

    const-string v4, "gps_use_filter"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lm/d;->e:Z

    const-string v4, "use_gps_speed"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lm/d;->d:Z

    const-string v4, "enable_fai_assistant"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/xcglobe/xclog/l;->V:Z

    const-string v4, "enable_thermal_view"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/xcglobe/xclog/l;->U:Z

    const-string v4, "airspace_set"

    const-string v5, "legal"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lvmaps/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    sput-object v4, Lvmaps/a;->a:Ljava/lang/String;

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v4

    iget v4, v4, Ltypes/GpsVal;->a:F

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v5

    iget v5, v5, Ltypes/GpsVal;->b:F

    invoke-static {v4, v5, v0}, Lb/b;->a(FFZ)V

    :cond_9
    if-nez v2, :cond_a

    const-string v4, "glider"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    const-string v4, "glider_min_speed"

    const-string v5, "25"

    invoke-static {v3, v4, v5}, Lcom/xcglobe/xclog/j;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/xcglobe/xclog/l;->K:F

    const-string v4, "glider_min_speed_sink"

    const-string v5, "1.0"

    invoke-static {v3, v4, v5}, Lcom/xcglobe/xclog/j;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/xcglobe/xclog/l;->L:F

    const-string v4, "glider_optimal_speed"

    const-string v5, "38"

    invoke-static {v3, v4, v5}, Lcom/xcglobe/xclog/j;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/xcglobe/xclog/l;->M:F

    const-string v4, "glider_optimal_speed_sink"

    const-string v5, "1.1"

    invoke-static {v3, v4, v5}, Lcom/xcglobe/xclog/j;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/xcglobe/xclog/l;->N:F

    const-string v4, "glider_max_speed"

    const-string v5, "55"

    invoke-static {v3, v4, v5}, Lcom/xcglobe/xclog/j;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/xcglobe/xclog/l;->O:F

    const-string v4, "glider_max_speed_sink"

    const-string v5, "3.0"

    invoke-static {v3, v4, v5}, Lcom/xcglobe/xclog/j;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/xcglobe/xclog/l;->P:F

    sget v4, Lcom/xcglobe/xclog/l;->M:F

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b

    sput v5, Lcom/xcglobe/xclog/l;->M:F

    :cond_b
    if-nez v2, :cond_c

    const-string v4, "power"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    const-string v4, "event_refresh_rate"

    const-string v5, "300"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lm/g;->H:J

    const-string v4, "real_time_refresh_rate_thermaling"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lm/g;->I:Z

    const-string v4, "screen_power_mode"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/xcglobe/xclog/i;->a:I

    const-string v4, "enable_pocket_livetrack"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xcglobe/xclog/l;->ac:Z

    :cond_d
    if-nez v2, :cond_e

    const-string v0, "livetrack"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    :cond_e
    const-string p0, "enable_livetrack"

    invoke-interface {v3, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/xcglobe/xclog/l;->Z:Z

    const-string p0, "livetrack_time_interval"

    const-string v0, "60000"

    invoke-interface {v3, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    sput-wide v0, Lcom/xcglobe/xclog/l;->aa:J

    :cond_f
    invoke-static {}, Lcom/xcglobe/xclog/App;->e()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static a(Z)V
    .locals 3

    const/4 p0, 0x2

    sput p0, Lcom/xcglobe/xclog/App;->b:I

    invoke-static {}, Ld/d;->a()V

    invoke-static {}, Lc/a;->b()V

    invoke-static {}, Lm/g;->f()V

    const-string p0, "dirty_stop"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v1

    const-class v2, Lcom/xcglobe/xclog/TermoFlyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/App;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public static b()Lcom/xcglobe/xclog/App;
    .locals 1

    sget-object v0, Lcom/xcglobe/xclog/App;->a:Lcom/xcglobe/xclog/App;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 5

    new-instance v0, Lcom/xcglobe/xclog/d;

    invoke-direct {v0}, Lcom/xcglobe/xclog/d;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/xcglobe/xclog/b;->a()V

    invoke-static {}, Lm/g;->a()V

    invoke-static {p0}, Lm/d;->a(Landroid/app/Activity;)V

    invoke-static {}, Lm/d;->a()V

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    invoke-static {v0}, Lb/g;->a(Ltypes/GpsVal;)V

    invoke-static {}, Lvmaps/d;->a()V

    invoke-static {}, Lk/a;->e()V

    invoke-static {}, Lcom/xcglobe/xclog/f;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "last_run_version"

    invoke-static {v1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xcglobe/xclog/App;->d()V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "external.cfg"

    const-string v3, "config"

    invoke-static {v1, v3, v2}, Lcom/xcglobe/xclog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v1, "demo-task.cup"

    const-string v3, "tasks"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/xcglobe/xclog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v1, "leonardo-glider-brand.txt"

    const-string v3, ""

    invoke-static {v1, v3, v4}, Lcom/xcglobe/xclog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xcglobe/xclog/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "demo.igc"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "demo.igc"

    const-string v3, "igc"

    invoke-static {v1, v3, v2}, Lcom/xcglobe/xclog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    const-string v1, "last_run_version"

    invoke-static {v1, v0}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "waypoints"

    invoke-static {v1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {}, Lcom/xcglobe/xclog/f;->c()V

    invoke-static {}, Lb/l;->b()V

    invoke-static {}, Lb/l;->a()V

    invoke-static {}, Ld/d;->g()V

    sget-boolean v0, Lcom/xcglobe/xclog/l;->J:Z

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "external_device_model"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;)I

    move-result v0

    const-string v1, "external_device_address"

    invoke-static {v1}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lm/g;->O:Ld/e;

    invoke-static {v3, v0, v1, v4, p0}, Ld/d;->a(Landroid/content/Context;ILjava/lang/String;Ld/n;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/xcglobe/xclog/l;->f()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xcglobe/xclog/TermoFlyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.xcglobe.action.startservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sput v2, Lcom/xcglobe/xclog/App;->b:I

    invoke-static {}, Lcom/xcglobe/xclog/l;->b()V

    return-void
.end method

.method public static b(Landroid/app/Dialog;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/xcglobe/xclog/App;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c()V
    .locals 4

    sget v0, Lcom/xcglobe/xclog/l;->ay:I

    int-to-float v0, v0

    const/high16 v1, 0x41d00000    # 26.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/xcglobe/xclog/l;->c:I

    sget v0, Lcom/xcglobe/xclog/l;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    float-to-int v0, v0

    sget v2, Lcom/xcglobe/xclog/l;->e:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    sget v2, Lcom/xcglobe/xclog/l;->c:I

    if-ge v2, v0, :cond_0

    sput v0, Lcom/xcglobe/xclog/l;->c:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/xcglobe/xclog/l;->c:I

    if-le v0, v1, :cond_1

    sput v1, Lcom/xcglobe/xclog/l;->c:I

    :cond_1
    :goto_0
    sget v0, Lcom/xcglobe/xclog/l;->Y:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const v3, 0x3fb33333    # 1.4f

    if-ne v0, v1, :cond_2

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    :goto_1
    float-to-int v0, v0

    sput v0, Lcom/xcglobe/xclog/l;->c:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/xcglobe/xclog/l;->Y:I

    if-ne v0, v2, :cond_3

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    goto :goto_1

    :cond_3
    :goto_2
    sget v0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v0, v0

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/xcglobe/xclog/l;->d:I

    sget v0, Lcom/xcglobe/xclog/l;->ay:I

    div-int/lit16 v0, v0, 0x1d6

    add-int/2addr v0, v2

    sput v0, Lcom/xcglobe/xclog/l;->aB:I

    sget v0, Lcom/xcglobe/xclog/l;->aB:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/xcglobe/xclog/l;->aC:I

    sget v0, Lcom/xcglobe/xclog/l;->aC:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/xcglobe/xclog/l;->aD:I

    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public static d()V
    .locals 3

    const-string v0, "external.cfg"

    const-string v1, "config"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xcglobe/xclog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, "demo-task.cup"

    const-string v1, "tasks"

    invoke-static {v0, v1, v2}, Lcom/xcglobe/xclog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, "leonardo-glider-brand.txt"

    const-string v1, ""

    invoke-static {v0, v1, v2}, Lcom/xcglobe/xclog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xcglobe/xclog/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "demo.igc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "demo.igc"

    const-string v1, "igc"

    invoke-static {v0, v1, v2}, Lcom/xcglobe/xclog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public static e()V
    .locals 4

    sget v0, Lcom/xcglobe/xclog/App;->b:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/xcglobe/xclog/App;->c()V

    invoke-static {}, Lm/g;->m()V

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    iget v0, v0, Ltypes/GpsVal;->a:F

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v2

    iget v2, v2, Ltypes/GpsVal;->b:F

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lb/b;->a(FFZ)V

    invoke-static {}, Lm/a;->f()V

    invoke-static {}, Lm/g;->l()V

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-static {v0}, Lb/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lj/a;->a()V

    invoke-static {v1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    :cond_0
    return-void
.end method

.method public static f()Z
    .locals 2

    sget v0, Lcom/xcglobe/xclog/App;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g()Z
    .locals 3

    sget v0, Lcom/xcglobe/xclog/App;->b:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget v0, Lcom/xcglobe/xclog/App;->b:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static h()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/xcglobe/xclog/App;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/xcglobe/xclog/App;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xcglobe/xclog/App;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    sput-object p1, Lcom/xcglobe/xclog/App;->d:Landroid/app/Activity;

    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    sput v0, Lcom/xcglobe/xclog/App;->b:I

    sput-object p0, Lcom/xcglobe/xclog/App;->a:Lcom/xcglobe/xclog/App;

    sget-object v1, Lcom/xcglobe/xclog/App;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const v1, 0x7f0f0001

    invoke-static {p0, v1, v0}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/j;->a:Landroid/content/SharedPreferences;

    const-string v0, "App create"

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->g(Ljava/lang/String;)V

    invoke-static {}, Lm/g;->a()V

    # Register sensors at startup
    invoke-static {}, Lm/a;->b()V

    # Init TTS voice prompts
    invoke-static {}, Lcom/xcglobe/xclog/TtsManager;->getInstance()Lcom/xcglobe/xclog/TtsManager;
    move-result-object v0
    invoke-virtual {p0}, Lcom/xcglobe/xclog/App;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/TtsManager;->init(Landroid/content/Context;)V

    # Init TermoFlyLogger
    invoke-static {}, Lcom/xcglobe/xclog/TermoFlyLogger;->getInstance()Lcom/xcglobe/xclog/TermoFlyLogger;
    move-result-object v0
    invoke-virtual {p0}, Lcom/xcglobe/xclog/App;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual {v0, v1}, Lcom/xcglobe/xclog/TermoFlyLogger;->init(Landroid/content/Context;)V

    # Register sensors for thermal detection
    invoke-static {}, Lm/a;->bAccel()V

    # invoke-static {}, Lm/a;->startThermalOnly()V

    return-void
.end method
