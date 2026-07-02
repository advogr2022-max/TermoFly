.class public Lb/c;
.super Ljava/lang/Thread;


# static fields
.field private static a:Landroid/media/SoundPool; = null

.field private static b:I = 0x0

.field private static c:I = 0x0

.field private static d:I = 0x0

.field private static e:Lb/c; = null

.field private static f:F = 0.0f

.field private static g:F = 0.0f

.field private static h:F = 1.0f

.field private static i:F = 0.0f

.field private static j:F = -2.0f

.field private static k:Lg/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/e;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lg/e;-><init>(I)V

    sput-object v0, Lb/c;->k:Lg/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lb/c;->e:Lb/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    sget v0, Lcom/xcglobe/xclog/l;->T:F

    sput v0, Lb/c;->j:F

    sget v0, Lb/c;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sput v1, Lb/c;->j:F

    :cond_0
    sget v0, Lcom/xcglobe/xclog/l;->W:I

    if-lez v0, :cond_3

    sget-boolean v1, Lcom/xcglobe/xclog/l;->ao:Z

    if-nez v1, :cond_3

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lb/c;->h:F

    sget-object v0, Lb/c;->a:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lb/c;->a:Landroid/media/SoundPool;

    sget-object v0, Lb/c;->a:Landroid/media/SoundPool;

    const v1, 0x7f0b0003

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lb/c;->c:I

    sget-object v0, Lb/c;->a:Landroid/media/SoundPool;

    const v1, 0x7f0b0001

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lb/c;->b:I

    sget-object v0, Lb/c;->a:Landroid/media/SoundPool;

    const v1, 0x7f0b0005

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p0

    sput p0, Lb/c;->d:I

    :cond_1
    sget-object p0, Lb/c;->e:Lb/c;

    if-nez p0, :cond_2

    new-instance p0, Lb/c;

    invoke-direct {p0}, Lb/c;-><init>()V

    sput-object p0, Lb/c;->e:Lb/c;

    sget-object p0, Lb/c;->e:Lb/c;

    invoke-virtual {p0}, Lb/c;->start()V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lb/c;->a()V

    return-void
.end method

.method private b()V
    .locals 4

    sget-object v0, Lb/c;->k:Lg/e;

    sget v1, Lm/g;->i:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lg/e;->a(FJ)F

    move-result v0

    sput v0, Lb/c;->g:F

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lb/c;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :catch_0
    :goto_0
    :try_start_0
    sget-object v0, Lb/c;->e:Lb/c;

    if-ne v0, p0, :cond_6

    invoke-static {}, Lcom/xcglobe/xclog/App;->f()Z

    move-result v0

    if-nez v0, :check_sim1

    goto :continue_var

    :check_sim1

    invoke-static {}, Lc/a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    :continue_var

    invoke-direct {p0}, Lb/c;->b()V

    sget v0, Lb/c;->g:F

    invoke-static {}, Lc/a;->a()Z

    move-result v9

    if-nez v9, :check_orig

    invoke-static {}, Lm/f;->d()Z

    move-result v9

    if-eqz v9, :cond_5

    :check_orig

    invoke-static {}, Lcom/xcglobe/xclog/App;->f()Z

    move-result v9

    if-eqz v9, :check_done

    invoke-static {}, Lm/f;->d()Z

    move-result v9

    if-eqz v9, :check_done

    :check_done

    const v1, 0xbe4ccccd    # -0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const v0, 0x3f8ccccd    # 1.1f

    sget v1, Lb/c;->g:F

    const/high16 v4, 0x3fa00000    # 1.25f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    sget v0, Lb/c;->g:F

    mul-float v0, v0, v4

    goto :goto_1

    :cond_0
    sget v1, Lb/c;->g:F

    sub-float/2addr v1, v4

    mul-float v1, v1, v0

    add-float v0, v1, v3

    :goto_1
    const v1, 0x3f99999a    # 1.2f

    mul-float v0, v0, v1

    add-float/2addr v0, v1

    sput v0, Lb/c;->f:F

    const/high16 v0, 0x447a0000    # 1000.0f

    sget v1, Lb/c;->f:F

    div-float/2addr v0, v1

    sput v2, Lb/c;->i:F

    sget v1, Lb/c;->g:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    sget v1, Lb/c;->g:F

    sub-float/2addr v1, v4

    const/4 v2, 0x0

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    sget v2, Lb/c;->i:F

    add-float/2addr v2, v1

    sput v2, Lb/c;->i:F

    sget v1, Lb/c;->i:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    sput v4, Lb/c;->i:F

    :cond_1
    const/high16 v1, 0x43d00000    # 416.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    sget v1, Lb/c;->c:I

    goto :goto_2

    :cond_2
    sget v1, Lb/c;->b:I

    :goto_2
    move v3, v1

    sget-object v2, Lb/c;->a:Landroid/media/SoundPool;

    sget v4, Lb/c;->h:F

    sget v5, Lb/c;->h:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lb/c;->i:F

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_3

    :cond_3
    sget v0, Lb/c;->g:F

    sget v1, Lb/c;->j:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    sget v5, Lb/c;->d:I

    sget v0, Lb/c;->g:F

    sget v1, Lb/c;->j:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    cmpl-float v1, v0, v3

    if-lez v1, :cond_4

    const/high16 v0, 0x40a00000    # 5.0f

    :cond_4
    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    sput v2, Lb/c;->i:F

    sget-object v4, Lb/c;->a:Landroid/media/SoundPool;

    sget v6, Lb/c;->h:F

    sget v7, Lb/c;->h:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lb/c;->i:F

    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/high16 v0, 0x43480000    # 200.0f

    goto :goto_3

    :cond_5
    const/high16 v0, 0x43fa0000    # 500.0f

    :goto_3
    float-to-long v0, v0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    :cond_6
    return-void
.end method