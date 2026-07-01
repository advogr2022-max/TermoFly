.class public Ltypes/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(FF)F
    .locals 0

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static a(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    float-to-double p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static a(Ltypes/Coord;Ltypes/Coord;)F
    .locals 2

    iget v0, p1, Ltypes/Coord;->a:F

    iget v1, p0, Ltypes/Coord;->a:F

    sub-float/2addr v0, v1

    iget p1, p1, Ltypes/Coord;->b:F

    iget p0, p0, Ltypes/Coord;->b:F

    sub-float/2addr p1, p0

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static a([I[I[II)I
    .locals 33

    move-object/from16 v0, p0

    array-length v3, v0

    const/4 v4, 0x0

    const/16 v5, 0xa

    if-ge v3, v5, :cond_1

    :goto_0
    if-ge v4, v3, :cond_0

    aput v4, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    new-array v5, v3, [I

    new-array v6, v3, [I

    mul-int v7, p3, p3

    int-to-double v7, v7

    aput v4, v5, v4

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    aput v3, v6, v4

    const/4 v4, 0x1

    const/4 v10, 0x0

    :goto_1
    if-lez v4, :cond_8

    add-int/lit8 v11, v4, -0x1

    aget v12, v5, v11

    aget v11, v6, v11

    add-int/lit8 v4, v4, -0x1

    sub-int v13, v11, v12

    if-le v13, v9, :cond_7

    aget v13, p1, v11

    aget v14, p1, v12

    sub-int/2addr v13, v14

    int-to-double v13, v13

    aget v15, v0, v11

    aget v16, v0, v12

    sub-int v15, v15, v16

    move/from16 v17, v10

    int-to-double v9, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v13, v13

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v18, v9, v9

    add-double v15, v15, v18

    add-int/lit8 v18, v12, 0x1

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    move/from16 v21, v3

    move/from16 v3, v18

    move/from16 v18, v12

    :goto_2
    if-ge v3, v11, :cond_5

    aget v22, p1, v3

    aget v23, p1, v12

    move-object/from16 v24, v6

    sub-int v6, v22, v23

    move-object/from16 v25, v5

    int-to-double v5, v6

    aget v22, v0, v3

    aget v23, v0, v12

    move/from16 v26, v4

    sub-int v4, v22, v23

    move-wide/from16 v27, v7

    int-to-double v7, v4

    aget v4, p1, v3

    aget v22, p1, v11

    sub-int v4, v4, v22

    int-to-double v1, v4

    aget v4, v0, v3

    aget v22, v0, v11

    sub-int v4, v4, v22

    move/from16 v30, v11

    move/from16 v29, v12

    int-to-double v11, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v22, v5, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v31, v7, v7

    add-double v22, v22, v31

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v1

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v11

    add-double/2addr v1, v11

    add-double v11, v15, v1

    cmpl-double v4, v22, v11

    if-ltz v4, :cond_2

    move-wide/from16 v22, v1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    add-double v11, v15, v22

    cmpl-double v4, v1, v11

    if-ltz v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v13

    sub-double/2addr v5, v7

    mul-double v5, v5, v5

    div-double v22, v5, v15

    :goto_3
    cmpl-double v1, v22, v19

    if-lez v1, :cond_4

    move/from16 v18, v3

    move-wide/from16 v19, v22

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    move/from16 v4, v26

    move-wide/from16 v7, v27

    move/from16 v12, v29

    move/from16 v11, v30

    goto/16 :goto_2

    :cond_5
    move/from16 v26, v4

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    move-wide/from16 v27, v7

    move/from16 v30, v11

    move/from16 v29, v12

    cmpg-double v1, v19, v27

    if-gez v1, :cond_6

    add-int/lit8 v10, v17, 0x1

    aput v29, p2, v17

    move/from16 v3, v21

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    move/from16 v4, v26

    :goto_4
    move-wide/from16 v7, v27

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v26, 0x1

    add-int/lit8 v2, v4, -0x1

    aput v18, v25, v2

    aput v30, v24, v2

    const/4 v2, 0x1

    add-int/2addr v4, v2

    add-int/lit8 v3, v4, -0x1

    aput v29, v25, v3

    aput v18, v24, v3

    move/from16 v10, v17

    move/from16 v3, v21

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    goto :goto_4

    :cond_7
    move/from16 v21, v3

    move/from16 v26, v4

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    move-wide/from16 v27, v7

    move/from16 v17, v10

    move/from16 v29, v12

    const/4 v2, 0x1

    add-int/lit8 v10, v17, 0x1

    aput v29, p2, v17

    :goto_5
    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_8
    move/from16 v21, v3

    move/from16 v17, v10

    add-int/lit8 v10, v17, 0x1

    aput v21, p2, v17

    return v10
.end method

.method public static a(FFFFFFLtypes/Coord;)V
    .locals 1

    sub-float/2addr p3, p1

    sub-float/2addr p2, p0

    neg-float v0, p2

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_0

    sub-float p0, p4, p0

    mul-float p0, p0, p3

    sub-float p1, p5, p1

    mul-float p1, p1, p2

    sub-float/2addr p0, p1

    mul-float p1, p3, p3

    mul-float v0, p2, p2

    add-float/2addr p1, v0

    div-float/2addr p0, p1

    mul-float p3, p3, p0

    sub-float/2addr p4, p3

    iput p4, p6, Ltypes/Coord;->a:F

    mul-float p0, p0, p2

    add-float/2addr p5, p0

    :goto_0
    iput p5, p6, Ltypes/Coord;->b:F

    goto :goto_1

    :cond_0
    iput p4, p6, Ltypes/Coord;->a:F

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget v1, p0, Ltypes/Coord;->a:F

    iget v2, p0, Ltypes/Coord;->b:F

    iget v3, p1, Ltypes/Coord;->a:F

    iget v4, p1, Ltypes/Coord;->b:F

    iget v5, p2, Ltypes/Coord;->a:F

    iget v6, p2, Ltypes/Coord;->b:F

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Ltypes/e;->b(FFFFFF[F)V

    const/4 p0, 0x0

    aget p0, v0, p0

    iput p0, p3, Ltypes/Coord;->a:F

    const/4 p0, 0x1

    aget p0, v0, p0

    iput p0, p3, Ltypes/Coord;->b:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static a(FFFFFF)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float p2, p0, p2

    if-ltz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    cmpg-float p0, p0, p4

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-ne p2, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    cmpl-float p2, p1, p3

    if-ltz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    cmpg-float p1, p1, p5

    if-gtz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    if-ne p2, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static a(FFFFFFF[FZ)Z
    .locals 16

    move/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p7

    sub-float v2, p2, v6

    sub-float v3, p3, v7

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v10, 0x0

    cmpl-float v11, v4, v5

    if-nez v11, :cond_0

    return v10

    :cond_0
    sub-float v11, v6, p4

    mul-float v11, v11, v2

    sub-float v12, v7, p5

    mul-float v12, v12, v3

    add-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v11, v11, v12

    mul-float v13, p4, p4

    mul-float v14, p5, p5

    add-float/2addr v13, v14

    mul-float v14, v6, v6

    mul-float v15, v7, v7

    add-float/2addr v14, v15

    add-float/2addr v13, v14

    mul-float v0, p4, v6

    mul-float v1, p5, v7

    add-float/2addr v0, v1

    mul-float v0, v0, v12

    sub-float/2addr v13, v0

    mul-float v0, p6, p6

    sub-float/2addr v13, v0

    mul-float v0, v11, v11

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v1, v1, v4

    mul-float v1, v1, v13

    sub-float/2addr v0, v1

    cmpg-float v1, v0, v5

    if-gez v1, :cond_1

    return v10

    :cond_1
    neg-float v1, v11

    float-to-double v10, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double v8, v10, v13

    double-to-float v5, v8

    mul-float v4, v4, v12

    div-float/2addr v5, v4

    mul-float v8, v5, v2

    add-float/2addr v8, v6

    mul-float v5, v5, v3

    add-float v9, v7, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v0

    double-to-float v0, v10

    div-float/2addr v0, v4

    mul-float v2, v2, v0

    add-float v10, v6, v2

    mul-float v0, v0, v3

    add-float v11, v7, v0

    const/4 v13, 0x2

    const/4 v5, 0x4

    const/4 v14, 0x1

    if-eqz p8, :cond_3

    move v0, v8

    move v1, v9

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    const/4 v12, 0x4

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Ltypes/e;->a(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v5, p7

    goto :goto_1

    :cond_3
    const/4 v12, 0x4

    :goto_0
    invoke-static {v6, v7, v8, v9}, Ltypes/e;->a(FFFF)F

    move-result v0

    invoke-static {v6, v7, v10, v11}, Ltypes/e;->a(FFFF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v0, 0x0

    move-object/from16 v5, p7

    aput v8, v5, v0

    aput v9, v5, v14

    array-length v0, v5

    if-lt v0, v12, :cond_6

    aput v10, v5, v13

    const/4 v0, 0x3

    aput v11, v5, v0

    goto :goto_3

    :goto_1
    if-eqz p8, :cond_5

    move v0, v10

    move v1, v11

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object v6, v5

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Ltypes/e;->a(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    move-object v6, v5

    :goto_2
    const/4 v0, 0x0

    aput v10, v6, v0

    aput v11, v6, v14

    array-length v0, v6

    if-lt v0, v12, :cond_6

    aput v8, v6, v13

    const/4 v0, 0x3

    aput v9, v6, v0

    :cond_6
    :goto_3
    return v14
.end method

.method public static a(FFFFFF[F)Z
    .locals 5

    sub-float/2addr p3, p0

    sub-float/2addr p4, p1

    mul-float v0, p4, p4

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float v1, p2, p5

    const/4 v2, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return v2

    :cond_0
    sub-float v1, p2, p5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    return v2

    :cond_1
    mul-float p2, p2, p2

    mul-float p5, p5, p5

    sub-float p5, p2, p5

    mul-float v1, v0, v0

    add-float/2addr p5, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v0

    div-float/2addr p5, v1

    mul-float v1, p3, p5

    div-float/2addr v1, v0

    add-float/2addr p0, v1

    mul-float v1, p4, p5

    div-float/2addr v1, v0

    add-float/2addr p1, v1

    mul-float p5, p5, p5

    sub-float/2addr p2, p5

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p2, v3

    neg-float p4, p4

    div-float/2addr p2, v0

    mul-float p4, p4, p2

    mul-float p3, p3, p2

    add-float p2, p0, p4

    aput p2, p6, v2

    add-float p2, p1, p3

    const/4 p5, 0x1

    aput p2, p6, p5

    const/4 p2, 0x2

    sub-float/2addr p0, p4

    aput p0, p6, p2

    const/4 p0, 0x3

    sub-float/2addr p1, p3

    aput p1, p6, p0

    return p5
.end method

.method public static a(Ltypes/Coord;FLtypes/Coord;F[Ltypes/Coord;)Z
    .locals 8

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget v1, p0, Ltypes/Coord;->a:F

    iget v2, p0, Ltypes/Coord;->b:F

    iget v4, p2, Ltypes/Coord;->a:F

    iget v5, p2, Ltypes/Coord;->b:F

    move v3, p1

    move v6, p3

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Ltypes/e;->a(FFFFFF[F)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    aget-object p0, p4, p1

    aget p1, v0, p1

    const/4 p2, 0x1

    aget p3, v0, p2

    invoke-virtual {p0, p1, p3}, Ltypes/Coord;->a(FF)V

    aget-object p0, p4, p2

    const/4 p1, 0x2

    aget p1, v0, p1

    const/4 p3, 0x3

    aget p3, v0, p3

    invoke-virtual {p0, p1, p3}, Ltypes/Coord;->a(FF)V

    return p2

    :cond_0
    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)Z
    .locals 6

    iget v0, p0, Ltypes/Coord;->a:F

    iget v1, p0, Ltypes/Coord;->b:F

    iget v2, p1, Ltypes/Coord;->a:F

    iget v3, p1, Ltypes/Coord;->b:F

    iget v4, p2, Ltypes/Coord;->a:F

    iget v5, p2, Ltypes/Coord;->b:F

    invoke-static/range {v0 .. v5}, Ltypes/e;->a(FFFFFF)Z

    move-result p0

    return p0
.end method

.method public static a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;FLtypes/Coord;Z)Z
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget v1, p0, Ltypes/Coord;->a:F

    iget v2, p0, Ltypes/Coord;->b:F

    iget v3, p1, Ltypes/Coord;->a:F

    iget v4, p1, Ltypes/Coord;->b:F

    iget v5, p2, Ltypes/Coord;->a:F

    iget v6, p2, Ltypes/Coord;->b:F

    move v7, p3

    move-object v8, v0

    move v9, p5

    invoke-static/range {v1 .. v9}, Ltypes/e;->a(FFFFFFF[FZ)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    aget p0, v0, p1

    iput p0, p4, Ltypes/Coord;->a:F

    const/4 p0, 0x1

    aget p1, v0, p0

    iput p1, p4, Ltypes/Coord;->b:F

    return p0

    :cond_0
    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;F[Ltypes/Coord;Z)Z
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget v1, p0, Ltypes/Coord;->a:F

    iget v2, p0, Ltypes/Coord;->b:F

    iget v3, p1, Ltypes/Coord;->a:F

    iget v4, p1, Ltypes/Coord;->b:F

    iget v5, p2, Ltypes/Coord;->a:F

    iget v6, p2, Ltypes/Coord;->b:F

    move v7, p3

    move-object v8, v0

    move v9, p5

    invoke-static/range {v1 .. v9}, Ltypes/e;->a(FFFFFFF[FZ)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    aget-object p0, p4, p1

    aget p1, v0, p1

    const/4 p2, 0x1

    aget p3, v0, p2

    invoke-virtual {p0, p1, p3}, Ltypes/Coord;->a(FF)V

    aget-object p0, p4, p2

    const/4 p1, 0x2

    aget p1, v0, p1

    const/4 p3, 0x3

    aget p3, v0, p3

    invoke-virtual {p0, p1, p3}, Ltypes/Coord;->a(FF)V

    return p2

    :cond_0
    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static a(FFFFFFFZ)[Ltypes/Coord;
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [F

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object v8, v0

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Ltypes/e;->a(FFFFFFF[FZ)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ltypes/Coord;

    new-instance v3, Ltypes/Coord;

    const/4 v4, 0x0

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v7, v0, v6

    invoke-direct {v3, v5, v7}, Ltypes/Coord;-><init>(FF)V

    aput-object v3, v2, v4

    new-instance v3, Ltypes/Coord;

    aget v1, v0, v1

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-direct {v3, v1, v0}, Ltypes/Coord;-><init>(FF)V

    aput-object v3, v2, v6

    return-object v2
.end method

.method public static b(Ltypes/Coord;Ltypes/Coord;)Ltypes/Coord;
    .locals 1

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    invoke-static {p0, p1, v0}, Ltypes/e;->d(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)V

    return-object v0
.end method

.method public static b(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)Ltypes/Coord;
    .locals 2

    iget v0, p0, Ltypes/Coord;->a:F

    iget v1, p1, Ltypes/Coord;->a:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p2, Ltypes/Coord;->a:F

    iget p0, p0, Ltypes/Coord;->b:F

    iget p1, p1, Ltypes/Coord;->b:F

    add-float/2addr p0, p1

    div-float/2addr p0, v1

    iput p0, p2, Ltypes/Coord;->b:F

    return-object p2
.end method

.method public static b(FFFFFF[F)V
    .locals 3

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float v0, p4, p4

    mul-float v1, p5, p5

    sub-float v2, v0, v1

    add-float/2addr v0, v1

    div-float/2addr v2, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p4, p4, v1

    mul-float p4, p4, p5

    div-float/2addr p4, v0

    sub-float/2addr p0, p2

    mul-float p5, v2, p0

    sub-float/2addr p1, p3

    mul-float v0, p4, p1

    add-float/2addr p5, v0

    add-float/2addr p5, p2

    const/4 p2, 0x0

    aput p5, p6, p2

    mul-float p4, p4, p0

    mul-float v2, v2, p1

    sub-float/2addr p4, v2

    add-float/2addr p4, p3

    const/4 p0, 0x1

    aput p4, p6, p0

    return-void
.end method

.method public static c(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)V
    .locals 7

    iget v0, p0, Ltypes/Coord;->a:F

    iget v1, p0, Ltypes/Coord;->b:F

    iget v2, p1, Ltypes/Coord;->a:F

    iget v3, p1, Ltypes/Coord;->b:F

    iget v4, p2, Ltypes/Coord;->a:F

    iget v5, p2, Ltypes/Coord;->b:F

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Ltypes/e;->a(FFFFFFLtypes/Coord;)V

    return-void
.end method

.method public static d(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)V
    .locals 3

    iget v0, p0, Ltypes/Coord;->b:F

    iget v1, p1, Ltypes/Coord;->b:F

    sub-float/2addr v0, v1

    iget v1, p0, Ltypes/Coord;->a:F

    iget v2, p1, Ltypes/Coord;->a:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const v0, 0x358637bd    # 1.0E-6f

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    div-float/2addr v1, v0

    iget v2, p1, Ltypes/Coord;->b:F

    iget p1, p1, Ltypes/Coord;->a:F

    div-float/2addr p1, v0

    add-float/2addr v2, p1

    iget p0, p0, Ltypes/Coord;->a:F

    iput p0, p2, Ltypes/Coord;->a:F

    iget p0, p2, Ltypes/Coord;->a:F

    mul-float v1, v1, p0

    add-float/2addr v1, v2

    iput v1, p2, Ltypes/Coord;->b:F

    return-void
.end method
