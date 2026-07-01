.class public Li/b/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/b/b;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static a(D)D
    .locals 0

    mul-double p0, p0, p0

    return-wide p0
.end method


# virtual methods
.method public a([F[FID)V
    .locals 41

    move-object/from16 v0, p0

    move/from16 v3, p3

    iget-object v4, v0, Li/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    return-void

    :cond_0
    new-array v4, v3, [I

    new-array v5, v3, [I

    const-wide v6, 0x3f826b07aa970acdL    # 0.008993205922597803

    mul-double v6, v6, p4

    invoke-static {v6, v7}, Li/b/b;->a(D)D

    move-result-wide v6

    const/4 v8, 0x0

    aput v8, v4, v8

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    aput v3, v5, v8

    const/4 v8, 0x1

    :goto_0
    if-lez v8, :cond_a

    add-int/lit8 v10, v8, -0x1

    aget v11, v4, v10

    aget v10, v5, v10

    add-int/lit8 v8, v8, -0x1

    sub-int v12, v10, v11

    if-le v12, v9, :cond_9

    aget v12, p2, v10

    aget v13, p2, v11

    sub-float/2addr v12, v13

    float-to-double v12, v12

    const-wide v14, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x4076800000000000L    # 360.0

    const-wide v20, 0x4066800000000000L    # 180.0

    cmpl-double v22, v16, v20

    if-lez v22, :cond_1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sub-double v12, v18, v12

    :cond_1
    aget v16, p1, v10

    aget v17, p1, v11

    sub-float v9, v16, v17

    move/from16 v24, v3

    move-object/from16 v23, v4

    float-to-double v3, v9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v14

    aget v9, p1, v10

    aget v16, p1, v11

    add-float v9, v9, v16

    float-to-double v14, v9

    const-wide v16, 0x3e42bd8646c1beedL    # 8.726646259971647E-9

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v12, v12, v14

    invoke-static {v12, v13}, Li/b/b;->a(D)D

    move-result-wide v14

    invoke-static {v3, v4}, Li/b/b;->a(D)D

    move-result-wide v27

    add-double v14, v14, v27

    add-int/lit8 v9, v11, 0x1

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    move/from16 v22, v11

    :goto_1
    if-ge v9, v10, :cond_7

    aget v29, p2, v9

    aget v30, p2, v11

    move-object/from16 v31, v5

    sub-float v5, v29, v30

    move-wide/from16 v32, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v25, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v5, v5, v25

    aget v7, p1, v9

    aget v29, p1, v11

    sub-float v7, v7, v29

    move/from16 v34, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v25

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v29

    cmpl-double v35, v29, v20

    if-lez v35, :cond_2

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    sub-double v5, v18, v5

    :cond_2
    aget v29, p1, v9

    aget v30, p1, v11

    move/from16 v36, v11

    add-float v11, v29, v30

    move-wide/from16 v37, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v16

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v5, v5, v11

    aget v11, p2, v9

    aget v12, p2, v10

    sub-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v25, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v11, v11, v25

    aget v13, p1, v9

    aget v29, p1, v10

    sub-float v13, v13, v29

    move-wide/from16 v39, v3

    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v25

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v29

    cmpl-double v4, v29, v20

    if-lez v4, :cond_3

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    sub-double v11, v18, v11

    :cond_3
    aget v4, p1, v9

    aget v13, p1, v10

    add-float/2addr v4, v13

    float-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v11, v11, v0

    invoke-static {v5, v6}, Li/b/b;->a(D)D

    move-result-wide v0

    invoke-static {v7, v8}, Li/b/b;->a(D)D

    move-result-wide v29

    add-double v0, v0, v29

    invoke-static {v11, v12}, Li/b/b;->a(D)D

    move-result-wide v11

    invoke-static {v2, v3}, Li/b/b;->a(D)D

    move-result-wide v2

    add-double/2addr v2, v11

    add-double v11, v14, v2

    cmpl-double v4, v0, v11

    if-ltz v4, :cond_4

    move-wide v0, v2

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    add-double v11, v14, v0

    cmpl-double v4, v2, v11

    if-ltz v4, :cond_5

    goto :goto_2

    :cond_5
    mul-double v5, v5, v39

    mul-double v7, v7, v37

    const/4 v0, 0x0

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Li/b/b;->a(D)D

    move-result-wide v0

    div-double/2addr v0, v14

    :goto_2
    cmpl-double v2, v0, v27

    if-lez v2, :cond_6

    move-wide/from16 v27, v0

    move/from16 v22, v9

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v31

    move-wide/from16 v6, v32

    move/from16 v8, v34

    move/from16 v11, v36

    move-wide/from16 v12, v37

    move-wide/from16 v3, v39

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v31, v5

    move-wide/from16 v32, v6

    move/from16 v34, v8

    move/from16 v36, v11

    cmpg-double v0, v27, v32

    if-gez v0, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Li/b/b;->a:Ljava/util/ArrayList;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    add-int/lit8 v8, v34, 0x1

    add-int/lit8 v1, v8, -0x1

    aput v22, v23, v1

    aput v10, v31, v1

    const/4 v1, 0x1

    add-int/2addr v8, v1

    add-int/lit8 v2, v8, -0x1

    aput v36, v23, v2

    aput v22, v31, v2

    move-object/from16 v4, v23

    move/from16 v3, v24

    move-object/from16 v5, v31

    move-wide/from16 v6, v32

    goto :goto_4

    :cond_9
    move/from16 v24, v3

    move-object/from16 v23, v4

    move-object/from16 v31, v5

    move-wide/from16 v32, v6

    move/from16 v34, v8

    move/from16 v36, v11

    const/4 v1, 0x1

    iget-object v2, v0, Li/b/b;->a:Ljava/util/ArrayList;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v4, v23

    move/from16 v3, v24

    move-object/from16 v5, v31

    move-wide/from16 v6, v32

    move/from16 v8, v34

    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_a
    move/from16 v24, v3

    iget-object v1, v0, Li/b/b;->a:Ljava/util/ArrayList;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
