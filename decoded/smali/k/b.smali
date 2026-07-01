.class public Lk/b;
.super Ljava/lang/Object;


# instance fields
.field a:Li/d;

.field b:I

.field c:Ltypes/l;

.field d:Ltypes/GpsVal;

.field e:J

.field f:J

.field g:F

.field h:F

.field i:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b;->a:Li/d;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    iput-object v0, p0, Lk/b;->c:Ltypes/l;

    new-instance v0, Ltypes/GpsVal;

    invoke-direct {v0}, Ltypes/GpsVal;-><init>()V

    iput-object v0, p0, Lk/b;->d:Ltypes/GpsVal;

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lk/b;->f:J

    const/high16 v0, 0x41b80000    # 23.0f

    iput v0, p0, Lk/b;->g:F

    sget v0, Lcom/xcglobe/xclog/l;->M:F

    iput v0, p0, Lk/b;->h:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lk/b;->i:J

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lk/b;->d:Ltypes/GpsVal;

    iget v1, p0, Lk/b;->b:I

    int-to-short v1, v1

    iput-short v1, v0, Ltypes/GpsVal;->c:S

    iget-object v0, p0, Lk/b;->d:Ltypes/GpsVal;

    iget-object v1, p0, Lk/b;->c:Ltypes/l;

    iget v1, v1, Ltypes/l;->a:F

    iput v1, v0, Ltypes/GpsVal;->a:F

    iget-object v0, p0, Lk/b;->d:Ltypes/GpsVal;

    iget-object v1, p0, Lk/b;->c:Ltypes/l;

    iget v1, v1, Ltypes/l;->b:F

    iput v1, v0, Ltypes/GpsVal;->b:F

    iget-object v0, p0, Lk/b;->d:Ltypes/GpsVal;

    iget-wide v1, v0, Ltypes/GpsVal;->d:J

    iget-wide v3, p0, Lk/b;->f:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Ltypes/GpsVal;->d:J

    iget-object v0, p0, Lk/b;->a:Li/d;

    iget-object v1, p0, Lk/b;->d:Ltypes/GpsVal;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Li/d;->a(Ltypes/GpsVal;I)I

    return-void
.end method


# virtual methods
.method public a(Lk/a;)J
    .locals 12

    iget-object v0, p0, Lk/b;->d:Ltypes/GpsVal;

    const-wide/32 v1, 0x2255100

    iput-wide v1, p0, Lk/b;->e:J

    iput-wide v1, v0, Ltypes/GpsVal;->d:J

    new-instance v0, Li/d;

    const-string v1, "demo-task.igc"

    invoke-direct {v0, v1}, Li/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk/b;->a:Li/d;

    iget-object v0, p1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/c;

    if-nez v2, :cond_2

    iget-object v4, p0, Lk/b;->c:Ltypes/l;

    iget v5, v3, Lk/c;->i:F

    iget v6, v3, Lk/c;->j:F

    invoke-virtual {v4, v5, v6}, Ltypes/l;->a(FF)V

    iget-short v4, v3, Lk/c;->k:S

    iput v4, p0, Lk/b;->b:I

    invoke-direct {p0}, Lk/b;->a()V

    iget v4, p0, Lk/b;->b:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_0

    iput v5, p0, Lk/b;->b:I

    :cond_0
    iget-boolean v4, p1, Lk/a;->d:Z

    const-wide/32 v5, 0x2bf20

    const/16 v7, 0xc8

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lk/c;->f:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Lk/c;->h:Ltypes/l;

    iget v4, v4, Ltypes/l;->a:F

    iget-object v8, v3, Lk/c;->h:Ltypes/l;

    iget v8, v8, Ltypes/l;->b:F

    invoke-virtual {p0, v4, v8, v1}, Lk/b;->a(FFZ)V

    iget-object v4, p0, Lk/b;->d:Ltypes/GpsVal;

    iget-wide v8, v4, Ltypes/GpsVal;->d:J

    iget-wide v10, p0, Lk/b;->e:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lk/b;->i:J

    invoke-virtual {p0, v7, v5, v6}, Lk/b;->a(IJ)V

    iget-object v4, v3, Lk/c;->h:Ltypes/l;

    iget v4, v4, Ltypes/l;->a:F

    iget-object v3, v3, Lk/c;->h:Ltypes/l;

    iget v3, v3, Ltypes/l;->b:F

    invoke-virtual {p0, v4, v3, v1}, Lk/b;->a(FFZ)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v7, v5, v6}, Lk/b;->a(IJ)V

    iget-object v3, p0, Lk/b;->d:Ltypes/GpsVal;

    iget-wide v3, v3, Ltypes/GpsVal;->d:J

    iget-wide v5, p0, Lk/b;->e:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-long v3, v3

    iput-wide v3, p0, Lk/b;->i:J

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_3

    iget-object v4, v3, Lk/c;->h:Ltypes/l;

    iget v4, v4, Ltypes/l;->a:F

    const/high16 v5, 0x40e00000    # 7.0f

    mul-float v4, v4, v5

    iget v6, v3, Lk/c;->i:F

    add-float/2addr v4, v6

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v4, v6

    iget-object v7, v3, Lk/c;->h:Ltypes/l;

    iget v7, v7, Ltypes/l;->b:F

    mul-float v7, v7, v5

    iget v3, v3, Lk/c;->j:F

    add-float/2addr v7, v3

    div-float/2addr v7, v6

    invoke-virtual {p0, v4, v7, v1}, Lk/b;->a(FFZ)V

    goto :goto_1

    :cond_3
    iget v4, v3, Lk/c;->i:F

    iget v3, v3, Lk/c;->j:F

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v3, v5}, Lk/b;->a(FFZ)V

    const/16 v3, -0xf

    const-wide/32 v4, 0x493e0

    invoke-virtual {p0, v3, v4, v5}, Lk/b;->a(IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lk/b;->a:Li/d;

    invoke-virtual {p1}, Li/d;->c()Z

    iget-wide v0, p0, Lk/b;->i:J

    return-wide v0
.end method

.method public a(FFZ)V
    .locals 39

    move-object/from16 v0, p0

    new-instance v1, Ltypes/d;

    iget-object v2, v0, Lk/b;->c:Ltypes/l;

    iget v2, v2, Ltypes/l;->a:F

    iget-object v3, v0, Lk/b;->c:Ltypes/l;

    iget v3, v3, Ltypes/l;->b:F

    invoke-direct {v1, v2, v3}, Ltypes/d;-><init>(FF)V

    new-instance v2, Ltypes/Coord;

    invoke-direct {v2}, Ltypes/Coord;-><init>()V

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v1, v3, v4, v2}, Ltypes/d;->a(FFLtypes/Coord;)V

    new-instance v3, Ltypes/Coord;

    invoke-direct {v3}, Ltypes/Coord;-><init>()V

    iget-object v4, v0, Lk/b;->c:Ltypes/l;

    invoke-virtual {v1, v4, v3}, Ltypes/d;->a(Ltypes/l;Ltypes/Coord;)V

    invoke-static {v2, v3}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    return-void

    :cond_0
    iget v8, v0, Lk/b;->h:F

    float-to-double v8, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v8

    const-wide v8, 0x40ac200000000000L    # 3600.0

    mul-double v4, v4, v8

    iget-wide v8, v0, Lk/b;->f:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v8

    iget v8, v2, Ltypes/Coord;->a:F

    iget v9, v3, Ltypes/Coord;->a:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    iget v2, v2, Ltypes/Coord;->b:F

    iget v10, v3, Ltypes/Coord;->b:F

    sub-float/2addr v2, v10

    float-to-double v10, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v4

    if-eqz p3, :cond_1

    const-wide v12, 0x40dd4c0000000000L    # 30000.0

    iget-wide v14, v0, Lk/b;->f:J

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    add-double/2addr v12, v4

    goto :goto_0

    :cond_1
    move-wide v12, v4

    :goto_0
    iget v2, v0, Lk/b;->b:I

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double v14, v12, v14

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    mul-double v16, v16, v14

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    mul-double v18, v18, v14

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v31, v1

    move/from16 v32, v2

    move-wide/from16 v25, v21

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    const/4 v6, 0x0

    :goto_1
    int-to-double v1, v6

    cmpg-double v7, v1, v12

    if-gtz v7, :cond_4

    const-wide v33, 0x400921fb54442d18L    # Math.PI

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v33, v33, v1

    div-double v33, v33, v4

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    cmpl-double v7, v1, v4

    if-ltz v7, :cond_2

    move-wide/from16 v33, v21

    :cond_2
    mul-double v35, v25, v33

    const/4 v7, 0x0

    add-double v35, v8, v35

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v37, v8

    mul-double v7, v1, v35

    double-to-float v7, v7

    iput v7, v3, Ltypes/Coord;->a:F

    mul-double v33, v33, v27

    add-double v33, v10, v33

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v1, v33

    double-to-float v7, v7

    iput v7, v3, Ltypes/Coord;->b:F

    cmpg-double v7, v1, v4

    if-gez v7, :cond_3

    invoke-static {}, Ljava/lang/Math;->random()D

    invoke-static {}, Ljava/lang/Math;->random()D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, v1, v16

    const-wide v25, 0x40091eb851eb851fL    # 3.14

    mul-double v7, v7, v25

    div-double/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v23, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v7, v7, v23

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double v1, v1, v18

    mul-double v1, v1, v25

    div-double/2addr v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v23

    move-wide/from16 v27, v1

    move-wide/from16 v25, v7

    goto :goto_2

    :cond_3
    const-wide v23, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    div-double v25, v25, v1

    div-double v27, v27, v1

    :goto_2
    iget-object v1, v0, Lk/b;->c:Ltypes/l;

    move-object/from16 v2, v31

    invoke-virtual {v2, v3, v1}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    const-wide/high16 v7, 0x4069000000000000L    # 200.0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    mul-double v7, v7, v33

    double-to-int v1, v7

    add-int v1, v32, v1

    iput v1, v0, Lk/b;->b:I

    const-wide v7, 0x3f9013a940000000L    # 0.015700001269578934

    add-double v29, v29, v7

    invoke-direct/range {p0 .. p0}, Lk/b;->a()V

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v8, v37

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method public a(IJ)V
    .locals 12

    new-instance v0, Ltypes/d;

    iget-object v1, p0, Lk/b;->c:Ltypes/l;

    iget v1, v1, Ltypes/l;->a:F

    iget-object v2, p0, Lk/b;->c:Ltypes/l;

    iget v2, v2, Ltypes/l;->b:F

    invoke-direct {v0, v1, v2}, Ltypes/d;-><init>(FF)V

    new-instance v1, Ltypes/Coord;

    invoke-direct {v1}, Ltypes/Coord;-><init>()V

    iget-object v2, p0, Lk/b;->c:Ltypes/l;

    invoke-virtual {v0, v2, v1}, Ltypes/d;->a(Ltypes/l;Ltypes/Coord;)V

    new-instance v1, Ltypes/Coord;

    invoke-direct {v1}, Ltypes/Coord;-><init>()V

    iget-object v2, p0, Lk/b;->d:Ltypes/GpsVal;

    iget-wide v2, v2, Ltypes/GpsVal;->d:J

    add-long/2addr v2, p2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    double-to-float p2, p2

    const/high16 p3, 0x40c00000    # 6.0f

    mul-float p2, p2, p3

    const p3, 0x3d4ccccd    # 0.05f

    float-to-double v4, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    double-to-float v6, v6

    iput v6, v1, Ltypes/Coord;->a:F

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v4

    double-to-float p2, p2

    iput p2, v1, Ltypes/Coord;->b:F

    new-instance p2, Ltypes/l;

    invoke-direct {p2}, Ltypes/l;-><init>()V

    invoke-virtual {v0, v1, p2}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    iget p3, p2, Ltypes/l;->a:F

    iget p2, p2, Ltypes/l;->b:F

    const/4 v6, 0x0

    invoke-virtual {p0, p3, p2, v6}, Lk/b;->a(FFZ)V

    const-wide p2, 0x40d616dde50feba2L    # 22619.46710584651

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v4

    iget v6, p0, Lk/b;->g:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v6

    double-to-long p2, p2

    iget-wide v6, p0, Lk/b;->f:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    div-long/2addr p2, v6

    long-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    cmpg-float v6, p2, p3

    if-gez v6, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    :cond_0
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    double-to-float p3, v6

    float-to-double v6, p3

    const-wide v8, 0x3fd3333333333333L    # 0.3

    cmpg-double v10, v6, v8

    if-gez v10, :cond_1

    const p3, 0x3e99999a    # 0.3f

    :cond_1
    int-to-float p1, p1

    div-float/2addr p1, p2

    const/4 p2, 0x0

    :goto_0
    iget-object v6, p0, Lk/b;->d:Ltypes/GpsVal;

    iget-wide v6, v6, Ltypes/GpsVal;->d:J

    cmp-long v8, v6, v2

    if-gtz v8, :cond_4

    float-to-double v6, p2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    div-double/2addr v8, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    double-to-float v8, v8

    iput v8, v1, Ltypes/Coord;->a:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    div-double/2addr v8, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    double-to-float v6, v6

    iput v6, v1, Ltypes/Coord;->b:F

    iget-object v6, p0, Lk/b;->c:Ltypes/l;

    invoke-virtual {v0, v1, v6}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    iget v6, p0, Lk/b;->b:I

    int-to-float v6, v6

    add-float/2addr v6, p1

    float-to-int v6, v6

    iput v6, p0, Lk/b;->b:I

    const/16 v7, 0x64

    if-ge v6, v7, :cond_2

    iput v7, p0, Lk/b;->b:I

    goto :goto_1

    :cond_2
    iget v6, p0, Lk/b;->b:I

    const/16 v7, 0xbb8

    if-le v6, v7, :cond_3

    const/high16 p1, -0x40000000    # -2.0f

    :cond_3
    :goto_1
    invoke-direct {p0}, Lk/b;->a()V

    add-float/2addr p2, p3

    goto :goto_0

    :cond_4
    return-void
.end method
