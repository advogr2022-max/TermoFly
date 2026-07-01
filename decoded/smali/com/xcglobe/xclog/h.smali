.class public Lcom/xcglobe/xclog/h;
.super Ljava/lang/Object;


# static fields
.field public static c:I


# instance fields
.field public a:Ltypes/g;

.field public b:[Ltypes/PoiPoint;

.field public d:[Ltypes/PoiPoint;

.field public e:[I

.field public f:F

.field private g:Ltypes/GpsVal;

.field private h:Ltypes/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltypes/g;

    invoke-direct {v0}, Ltypes/g;-><init>()V

    iput-object v0, p0, Lcom/xcglobe/xclog/h;->a:Ltypes/g;

    const/4 v0, 0x0

    new-array v1, v0, [Ltypes/PoiPoint;

    iput-object v1, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    new-instance v1, Ltypes/GpsVal;

    invoke-direct {v1}, Ltypes/GpsVal;-><init>()V

    iput-object v1, p0, Lcom/xcglobe/xclog/h;->g:Ltypes/GpsVal;

    new-instance v1, Ltypes/g;

    invoke-direct {v1}, Ltypes/g;-><init>()V

    iput-object v1, p0, Lcom/xcglobe/xclog/h;->h:Ltypes/g;

    new-array v1, v0, [Ltypes/PoiPoint;

    iput-object v1, p0, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xcglobe/xclog/h;->e:[I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/xcglobe/xclog/h;->f:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    iget-object v0, p0, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    array-length v0, v0

    new-array v1, v0, [Lcom/xcglobe/xclog/h$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    aget-object v4, v4, v3

    new-instance v5, Lcom/xcglobe/xclog/h$a;

    invoke-direct {v5, p0}, Lcom/xcglobe/xclog/h$a;-><init>(Lcom/xcglobe/xclog/h;)V

    aput-object v5, v1, v3

    aget-object v5, v1, v3

    iput v3, v5, Lcom/xcglobe/xclog/h$a;->a:I

    aget-object v5, v1, v3

    const/high16 v6, 0x447a0000    # 1000.0f

    iget v7, v4, Ltypes/PoiPoint;->i:F

    iget v4, v4, Ltypes/PoiPoint;->j:F

    iget-object v8, p0, Lcom/xcglobe/xclog/h;->g:Ltypes/GpsVal;

    iget v8, v8, Ltypes/GpsVal;->a:F

    iget-object v9, p0, Lcom/xcglobe/xclog/h;->g:Ltypes/GpsVal;

    iget v9, v9, Ltypes/GpsVal;->b:F

    invoke-static {v7, v4, v8, v9}, Ltypes/i;->b(FFFF)F

    move-result v4

    mul-float v4, v4, v6

    float-to-int v4, v4

    iput v4, v5, Lcom/xcglobe/xclog/h$a;->b:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/xcglobe/xclog/h$1;

    invoke-direct {v3, p0}, Lcom/xcglobe/xclog/h$1;-><init>(Lcom/xcglobe/xclog/h;)V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-array v3, v0, [Ltypes/PoiPoint;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/xcglobe/xclog/h;->e:[I

    new-array v4, v0, [I

    iput-object v4, p0, Lcom/xcglobe/xclog/h;->e:[I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    aget-object v5, v1, v4

    iget v5, v5, Lcom/xcglobe/xclog/h$a;->a:I

    iget-object v6, p0, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    aget-object v5, v6, v5

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/xcglobe/xclog/h;->e:[I

    aget-object v6, v1, v4

    iget v6, v6, Lcom/xcglobe/xclog/h$a;->b:I

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    aget-object v4, v3, v2

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public a(FFS)V
    .locals 10

    new-instance v0, Ltypes/g;

    invoke-direct {v0}, Ltypes/g;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, p1, p2, v0}, Ltypes/i;->a(FFFLtypes/g;)V

    const/4 v1, 0x0

    const v2, 0x461c3c00    # 9999.0f

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ltypes/g;->a(Ltypes/PoiPoint;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    aget-object v4, v4, v3

    iget v4, v4, Ltypes/PoiPoint;->i:F

    iget-object v5, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    aget-object v5, v5, v3

    iget v5, v5, Ltypes/PoiPoint;->j:F

    invoke-static {p1, p2, v4, v5}, Ltypes/i;->b(FFFF)F

    move-result v4

    cmpg-float v5, v4, v2

    if-gez v5, :cond_0

    iget-object v1, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    aget-object v1, v1, v3

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iput p1, v1, Ltypes/PoiPoint;->i:F

    iput p2, v1, Ltypes/PoiPoint;->j:F

    iput-short p3, v1, Ltypes/PoiPoint;->k:S

    goto :goto_1

    :cond_2
    new-instance v0, Ltypes/PoiPoint;

    invoke-direct {v0}, Ltypes/PoiPoint;-><init>()V

    const-string v8, ""

    const/16 v9, 0x74

    move-object v4, v0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Ltypes/PoiPoint;->a(FFSLjava/lang/String;C)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ltypes/PoiPoint;

    iput-object p1, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    iget v1, p0, Lcom/xcglobe/xclog/h;->f:F

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xcglobe/xclog/h;->a(FLtypes/GpsVal;ZZZ)Z

    :goto_1
    return-void
.end method

.method public a(FLtypes/GpsVal;ZZ)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xcglobe/xclog/h;->a(FLtypes/GpsVal;ZZZ)Z

    move-result p1

    return p1
.end method

.method public a(FLtypes/GpsVal;ZZZ)Z
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    array-length v3, v3

    iget-object v4, v0, Lcom/xcglobe/xclog/h;->g:Ltypes/GpsVal;

    iget v5, v2, Ltypes/GpsVal;->a:F

    iput v5, v4, Ltypes/GpsVal;->a:F

    iget-object v4, v0, Lcom/xcglobe/xclog/h;->g:Ltypes/GpsVal;

    iget v5, v2, Ltypes/GpsVal;->b:F

    iput v5, v4, Ltypes/GpsVal;->b:F

    iput v1, v0, Lcom/xcglobe/xclog/h;->f:F

    iget v4, v2, Ltypes/GpsVal;->a:F

    iget v5, v2, Ltypes/GpsVal;->b:F

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lb/b;->a(FFZ)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ltypes/g;

    invoke-direct {v5}, Ltypes/g;-><init>()V

    iget v7, v2, Ltypes/GpsVal;->a:F

    iget v8, v2, Ltypes/GpsVal;->b:F

    invoke-static {v1, v7, v8, v5}, Ltypes/i;->a(FFFLtypes/g;)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_a

    iget-object v8, v0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    aget-object v8, v8, v7

    if-nez p3, :cond_0

    iget-char v9, v8, Ltypes/PoiPoint;->m:C

    const/16 v10, 0x74

    if-eq v9, v10, :cond_9

    :cond_0
    iget-char v9, v8, Ltypes/PoiPoint;->m:C

    const/16 v10, 0x63

    const/16 v11, 0x77

    if-eq v9, v10, :cond_4

    const/16 v10, 0x6c

    if-eq v9, v10, :cond_3

    const/16 v10, 0x73

    if-eq v9, v10, :cond_2

    if-eq v9, v11, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean v9, Lcom/xcglobe/xclog/l;->av:Z

    if-nez v9, :cond_5

    goto :goto_3

    :cond_2
    sget-boolean v9, Lcom/xcglobe/xclog/l;->as:Z

    if-nez v9, :cond_5

    goto :goto_3

    :cond_3
    sget-boolean v9, Lcom/xcglobe/xclog/l;->au:Z

    if-nez v9, :cond_5

    goto :goto_3

    :cond_4
    sget-boolean v9, Lcom/xcglobe/xclog/l;->at:Z

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz p5, :cond_6

    iget-char v10, v8, Ltypes/PoiPoint;->m:C

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_7

    invoke-virtual {v5, v8}, Ltypes/g;->a(Ltypes/PoiPoint;)Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_7
    if-eqz p4, :cond_8

    iget v12, v8, Ltypes/PoiPoint;->i:F

    iget v13, v8, Ltypes/PoiPoint;->j:F

    iget v14, v2, Ltypes/GpsVal;->a:F

    iget v6, v2, Ltypes/GpsVal;->b:F

    invoke-static {v12, v13, v14, v6}, Ltypes/i;->b(FFFF)F

    move-result v6

    if-nez v10, :cond_8

    cmpl-float v6, v6, v1

    if-lez v6, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_a
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    const/4 v3, 0x0

    new-array v3, v3, [Ltypes/PoiPoint;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ltypes/PoiPoint;

    iput-object v3, v0, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v1, v1, v3

    iget v3, v2, Ltypes/GpsVal;->a:F

    iget v4, v2, Ltypes/GpsVal;->b:F

    iget-object v5, v0, Lcom/xcglobe/xclog/h;->h:Ltypes/g;

    invoke-static {v1, v3, v4, v5}, Ltypes/i;->a(FFFLtypes/g;)V

    iget-object v1, v0, Lcom/xcglobe/xclog/h;->a:Ltypes/g;

    iget v3, v2, Ltypes/GpsVal;->a:F

    iget v2, v2, Ltypes/GpsVal;->b:F

    invoke-virtual {v1, v3, v2}, Ltypes/g;->b(FF)Z

    move-result v1

    return v1
.end method

.method public a(Ltypes/GpsVal;)Z
    .locals 1

    iget-object v0, p0, Lcom/xcglobe/xclog/h;->h:Ltypes/g;

    invoke-virtual {v0, p1}, Ltypes/g;->b(Ltypes/GpsVal;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 8

    iget-object v0, p0, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    new-instance v1, Lcom/xcglobe/xclog/h$2;

    invoke-direct {v1, p0}, Lcom/xcglobe/xclog/h$2;-><init>(Lcom/xcglobe/xclog/h;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    array-length v0, v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/xcglobe/xclog/h;->e:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/xcglobe/xclog/h;->e:[I

    const/high16 v4, 0x447a0000    # 1000.0f

    iget v5, v2, Ltypes/PoiPoint;->i:F

    iget v2, v2, Ltypes/PoiPoint;->j:F

    iget-object v6, p0, Lcom/xcglobe/xclog/h;->g:Ltypes/GpsVal;

    iget v6, v6, Ltypes/GpsVal;->a:F

    iget-object v7, p0, Lcom/xcglobe/xclog/h;->g:Ltypes/GpsVal;

    iget v7, v7, Ltypes/GpsVal;->b:F

    invoke-static {v5, v2, v6, v7}, Ltypes/i;->b(FFFF)F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    const/16 v2, 0x6c

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    iget-char v1, v1, Ltypes/PoiPoint;->m:C

    if-ne v1, v2, :cond_0

    sget-object v1, Ltypes/f;->a:Ltypes/PoiPoint;

    check-cast v1, Ltypes/m;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    sget-object v6, Lj/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    sget-object v6, Lj/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltypes/m;

    new-instance v7, Ltypes/m;

    invoke-direct {v7}, Ltypes/m;-><init>()V

    invoke-virtual {v7, v6}, Ltypes/m;->a(Ltypes/PoiPoint;)V

    iget v6, v6, Ltypes/m;->a:I

    iput v6, v7, Ltypes/m;->a:I

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    iget v6, v1, Ltypes/m;->a:I

    iget v8, v7, Ltypes/m;->a:I

    if-ne v6, v8, :cond_1

    invoke-virtual {v1, v7}, Ltypes/m;->a(Ltypes/PoiPoint;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    aget-object v5, v5, v1

    iget-char v6, v5, Ltypes/PoiPoint;->m:C

    if-eq v6, v2, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iput-object v3, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    new-array v1, v4, [Ltypes/PoiPoint;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltypes/PoiPoint;

    iput-object v0, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    iget v2, p0, Lcom/xcglobe/xclog/h;->f:F

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/xcglobe/xclog/h;->a(FLtypes/GpsVal;ZZZ)Z

    return-void
.end method
