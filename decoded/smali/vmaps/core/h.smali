.class public Lvmaps/core/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/graphics/Path;

.field private static b:[J

.field private static final c:[I

.field private static final d:[Z

.field private static final e:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lvmaps/core/h;->a:Landroid/graphics/Path;

    const/4 v0, 0x3

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lvmaps/core/h;->b:[J

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lvmaps/core/h;->c:[I

    new-array v1, v0, [Z

    fill-array-data v1, :array_2

    sput-object v1, Lvmaps/core/h;->d:[Z

    new-array v0, v0, [Z

    fill-array-data v0, :array_3

    sput-object v0, Lvmaps/core/h;->e:[Z

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Lvmaps/core/e;ILtypes/g;II)I
    .locals 16

    sget-object v0, Lvmaps/core/h;->b:[J

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    sget-object v0, Lvmaps/core/h;->b:[J

    const/4 v4, 0x2

    aget-wide v5, v0, v4

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-lez v0, :cond_4

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    const-wide/16 v9, 0xbb8

    cmp-long v0, v5, v9

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 v9, 0x0

    sub-long v9, v5, v2

    const-wide/16 v11, 0x7d0

    if-ne v0, v1, :cond_1

    const-wide/16 v13, 0x5dc

    cmp-long v15, v9, v13

    if-gez v15, :cond_2

    const/4 v9, 0x2

    goto :goto_1

    :cond_1
    cmp-long v13, v9, v11

    if-lez v13, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v0

    :goto_1
    if-nez p4, :cond_3

    sget-object v10, Lvmaps/core/h;->b:[J

    aget-wide v13, v10, v9

    cmp-long v10, v13, v11

    if-gez v10, :cond_4

    :cond_3
    move v0, v9

    goto :goto_2

    :cond_4
    move/from16 v0, p4

    :goto_2
    const-wide/16 v9, 0x1388

    if-ne v0, v1, :cond_5

    cmp-long v11, v2, v7

    if-eqz v11, :cond_5

    cmp-long v11, v2, v9

    if-gez v11, :cond_5

    cmp-long v2, v5, v7

    if-nez v2, :cond_5

    const/4 v0, 0x2

    :cond_5
    sget-object v2, Lvmaps/core/h;->b:[J

    aget-wide v5, v2, v0

    if-lez v0, :cond_6

    cmp-long v2, v5, v9

    if-lez v2, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    sget-object v2, Lvmaps/core/h;->c:[I

    aget v11, v2, v0

    sget-object v2, Lvmaps/core/h;->d:[Z

    aget-boolean v10, v2, v0

    sget-object v2, Lvmaps/core/h;->e:[Z

    aget-boolean v12, v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v5 .. v12}, Lvmaps/core/h;->a(Lvmaps/core/e;IILtypes/g;IZIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    sget-object v2, Lvmaps/core/h;->b:[J

    aput-wide v5, v2, v0

    const/4 v2, 0x0

    const-wide/16 v7, 0xfa0

    cmp-long v3, v5, v7

    if-lez v3, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-ne v0, v4, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    return v1
.end method

.method public static a(Lvmaps/core/e;IILtypes/g;I)V
    .locals 11

    invoke-static {p3}, Ltypes/o;->a(Ltypes/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lvmaps/core/e;->a(IILtypes/g;)V

    iget p1, p0, Lvmaps/core/e;->j:I

    int-to-float p1, p1

    invoke-virtual {p3}, Ltypes/g;->g()F

    move-result p2

    div-float/2addr p1, p2

    iget p2, p0, Lvmaps/core/e;->k:I

    int-to-float p2, p2

    invoke-virtual {p3}, Ltypes/g;->f()F

    move-result v1

    div-float/2addr p2, v1

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".vmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lvmaps/core/i;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Lvmaps/core/i;-><init>(Z)V

    iget v2, p0, Lvmaps/core/e;->j:I

    iget v3, p0, Lvmaps/core/e;->k:I

    iget v4, p3, Ltypes/g;->a:F

    iget v5, p3, Ltypes/g;->c:F

    move-object v1, v10

    move v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lvmaps/core/i;->a(IIFFFF)V

    :try_start_0
    invoke-virtual {v10, v9}, Lvmaps/core/i;->a(Ljava/lang/String;)V

    invoke-virtual {v10, p4}, Lvmaps/core/i;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v10}, Lvmaps/core/i;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v10, Lvmaps/core/i;->f:I

    if-lez v1, :cond_0

    iget-object v3, v10, Lvmaps/core/i;->a:[I

    iget-object v4, v10, Lvmaps/core/i;->b:[I

    iget v5, v10, Lvmaps/core/i;->f:I

    iget v6, v10, Lvmaps/core/i;->d:I

    move-object v1, p0

    check-cast v1, Lvmaps/e;

    iget-object v1, v1, Lvmaps/e;->a:Lvmaps/core/f;

    iget v2, v10, Lvmaps/core/i;->d:I

    invoke-virtual {v1, v2}, Lvmaps/core/f;->a(I)I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lvmaps/core/e;->a([I[IIII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "crash"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Lvmaps/core/e;IILtypes/g;IZIZ)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v7, p6

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    div-int v2, p1, v7

    div-int v3, p2, v7

    move v9, v2

    move v10, v3

    goto :goto_0

    :cond_0
    move v9, p1

    move/from16 v10, p2

    :goto_0
    if-eqz p5, :cond_5

    const/16 v2, 0x32

    const-string v3, "mapset"

    invoke-static {v3}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v11, 0x0

    if-lez v3, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    sget v5, Lcom/xcglobe/xclog/l;->ad:I

    :try_start_0
    new-instance v13, Lvmaps/core/d;

    invoke-direct {v13, v1, v9, v10, v2}, Lvmaps/core/d;-><init>(Ltypes/g;III)V

    const-string v1, "vmp/"

    invoke-static {v1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v13

    move-object v3, p0

    move v4, v12

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lvmaps/core/d;->a(Ljava/lang/String;Lvmaps/core/e;ZIZ)V

    if-le v7, v8, :cond_2

    mul-int v9, v9, v7

    mul-int v10, v10, v7

    check-cast v0, Lvmaps/e;

    invoke-virtual {v0, v9, v10}, Lvmaps/e;->a(II)V

    :cond_2
    iget v0, v13, Lvmaps/core/d;->p:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-eq v12, v8, :cond_6

    const-string v0, "mapset"

    if-eqz v8, :cond_4

    const/4 v11, 0x2

    :cond_4
    invoke-static {v0, v11}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;I)V

    invoke-static {}, Lb/d;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "crash"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move/from16 v2, p4

    invoke-static {p0, v9, v10, v1, v2}, Lvmaps/core/h;->a(Lvmaps/core/e;IILtypes/g;I)V

    :cond_6
    :goto_3
    return-void
.end method
