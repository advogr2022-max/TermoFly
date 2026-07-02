.class public Lc/a;
.super Ljava/lang/Object;


# static fields
.field static a:I = 0x0

.field private static b:Z = false

.field private static c:Z = false

.field private static f:Z = false


# instance fields
.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lc/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lc/a;->e:Ljava/lang/String;

    sget p1, Lc/a;->a:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    sput p1, Lc/a;->a:I

    sput-boolean v0, Lc/a;->b:Z

    const/4 p1, 0x0

    sput-boolean p1, Lc/a;->c:Z

    invoke-static {}, Lm/g;->b()V

    const-string v0, "demo-track.igc"

    const-string v1, "kmmaxtype"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p1, Lm/e;->a:Z

    const/4 p1, 0x4

    invoke-static {p1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lc/a$1;

    invoke-direct {v0, p0}, Lc/a$1;-><init>(Lc/a;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lc/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lc/a;)V
    .locals 0

    invoke-direct {p0}, Lc/a;->c()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xcglobe/xclog/App;->c:Landroid/os/Handler;

    new-instance v1, Lc/a$2;

    invoke-direct {v1, p0}, Lc/a$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lc/a;->b:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lc/a;->b:Z

    return p0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lc/a;->c:Z

    return-void
.end method

.method static synthetic b(Lc/a;)V
    .locals 0

    invoke-direct {p0}, Lc/a;->d()V

    return-void
.end method

.method static synthetic c(Lc/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 23

    move-object/from16 v7, p0

    new-instance v8, Li/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xcglobe/xclog/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lc/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Li/c;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lc/a;->e:Ljava/lang/String;

    const-string v1, "demo-task.igc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x32

    move/from16 v18, v0

    move-wide v1, v12

    move-wide/from16 v16, v14

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v8}, Li/c;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v5, v0, 0x1

    cmp-long v0, v1, v12

    if-nez v0, :cond_0

    iget-wide v0, v8, Li/c;->f:J

    move-wide/from16 v19, v0

    goto :goto_1

    :cond_0
    move-wide/from16 v19, v1

    :goto_1
    iget-wide v0, v8, Li/c;->f:J

    sub-long v0, v0, v19

    iput-wide v0, v7, Lc/a;->d:J

    sget-boolean v0, Lc/a;->c:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/xcglobe/xclog/App;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-wide v0, v7, Lc/a;->d:J

    add-long v21, v9, v0

    iget v2, v8, Li/c;->h:F

    iget v3, v8, Li/c;->i:F

    iget-short v4, v8, Li/c;->j:S

    sget-object v6, Lcom/xcglobe/xclog/App;->c:Landroid/os/Handler;

    new-instance v1, Lc/a$3;

    move-object v0, v1

    move-object v11, v1

    move-object/from16 v1, p0

    move v12, v5

    move-object v13, v6

    move-wide/from16 v5, v21

    invoke-direct/range {v0 .. v6}, Lc/a$3;-><init>(Lc/a;FFSJ)V

    invoke-virtual {v13, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v0, v7, Lc/a;->d:J

    int-to-long v2, v12

    div-long/2addr v0, v2

    rem-int/lit8 v5, v12, 0xa

    if-nez v5, :cond_3

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "play_speed"

    const-string v4, "5"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v14

    div-long/2addr v0, v2

    cmp-long v2, v0, v14

    if-gez v2, :cond_2

    move-wide/from16 v16, v14

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v0

    :cond_3
    :goto_2
    invoke-static {}, Ldisplay/vmap/ViewVmp;->isRotating()Z

    move-result v0

    invoke-static {}, Ldisplay/vmap/ViewVmp;->isThermailing()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x96

    :goto_3
    add-long v0, v16, v0

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    const-wide/16 v0, 0x64

    goto :goto_3

    :cond_5
    move-wide/from16 v0, v16

    :goto_4
    if-eqz v18, :cond_7

    sget-object v2, Lk/a;->a:Lk/a;

    if-eqz v2, :cond_6

    sget-object v2, Lk/a;->a:Lk/a;

    iget-boolean v2, v2, Lk/a;->s:Z

    if-eqz v2, :cond_7

    :cond_6
    const/16 v18, 0x0

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    move v0, v12

    move-wide/from16 v1, v19

    const-wide/16 v12, 0x0

    goto/16 :goto_0

    :cond_8
    :goto_5
    invoke-virtual {v8}, Li/c;->a()V

    return-void
.end method

.method private d()V
    .locals 2

    sget-object v0, Lcom/xcglobe/xclog/App;->c:Landroid/os/Handler;

    new-instance v1, Lc/a$4;

    invoke-direct {v1, p0}, Lc/a$4;-><init>(Lc/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
