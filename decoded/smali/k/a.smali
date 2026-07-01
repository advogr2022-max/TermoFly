.class public Lk/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lk/a; = null

.field public static z:Z = false


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lk/c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Landroid/text/format/Time;

.field public f:Landroid/text/format/Time;

.field public g:I

.field public h:Lk/c;

.field i:Ltypes/g;

.field public j:I

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:[Ltypes/l;

.field public p:Ltypes/g;

.field q:I

.field r:Z

.field public s:Z

.field public t:Z

.field public u:J

.field v:Z

.field public w:Ltypes/d;

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/a;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk/a;->d:Z

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lk/a;->e:Landroid/text/format/Time;

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lk/a;->f:Landroid/text/format/Time;

    iput v0, p0, Lk/a;->g:I

    const/4 v1, 0x0

    iput-object v1, p0, Lk/a;->h:Lk/c;

    new-instance v2, Ltypes/g;

    invoke-direct {v2}, Ltypes/g;-><init>()V

    iput-object v2, p0, Lk/a;->i:Ltypes/g;

    iput-boolean v0, p0, Lk/a;->l:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lk/a;->m:Z

    iput-boolean v0, p0, Lk/a;->n:Z

    iput-object v1, p0, Lk/a;->o:[Ltypes/l;

    new-instance v2, Ltypes/g;

    invoke-direct {v2}, Ltypes/g;-><init>()V

    iput-object v2, p0, Lk/a;->p:Ltypes/g;

    iput-boolean v0, p0, Lk/a;->r:Z

    iput-boolean v0, p0, Lk/a;->t:Z

    iput-object v1, p0, Lk/a;->w:Ltypes/d;

    iget-object v0, p0, Lk/a;->e:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iget-object v0, p0, Lk/a;->f:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lk/a;->z:Z

    const/4 v1, 0x0

    if-nez p0, :cond_0

    sput-object v1, Lk/a;->a:Lk/a;

    invoke-static {v1, v0}, Ltypes/f;->a(Ltypes/PoiPoint;Z)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lk/d;->a(Ljava/lang/String;)Lk/a;

    move-result-object v0

    sput-object v0, Lk/a;->a:Lk/a;

    sget-object v0, Lk/a;->a:Lk/a;

    if-eqz v0, :cond_1

    sget-object v0, Lk/a;->a:Lk/a;

    invoke-virtual {v0}, Lk/a;->b()V

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    const-string v0, "active_task_name"

    invoke-static {v0, p0}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lk/c;Lk/c;)V
    .locals 11

    const/4 v0, 0x0

    iput-object v0, p0, Lk/a;->o:[Ltypes/l;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    new-instance v1, Ltypes/Coord;

    invoke-direct {v1}, Ltypes/Coord;-><init>()V

    new-instance v2, Ltypes/d;

    iget v3, p2, Lk/c;->i:F

    iget v4, p2, Lk/c;->j:F

    invoke-direct {v2, v3, v4}, Ltypes/d;-><init>(FF)V

    iget v3, p1, Lk/c;->i:F

    iget p1, p1, Lk/c;->j:F

    invoke-virtual {v2, v3, p1, v0}, Ltypes/d;->a(FFLtypes/Coord;)V

    iget p1, p2, Lk/c;->i:F

    iget v3, p2, Lk/c;->j:F

    invoke-virtual {v2, p1, v3, v1}, Ltypes/d;->a(FFLtypes/Coord;)V

    invoke-static {v0, v1}, Ltypes/e;->b(Ltypes/Coord;Ltypes/Coord;)Ltypes/Coord;

    move-result-object p1

    iget v3, p1, Ltypes/Coord;->a:F

    iget v4, p1, Ltypes/Coord;->b:F

    iget v5, v1, Ltypes/Coord;->a:F

    iget v6, v1, Ltypes/Coord;->b:F

    iget v7, v1, Ltypes/Coord;->a:F

    iget v8, v1, Ltypes/Coord;->b:F

    iget v9, p2, Lk/c;->a:F

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Ltypes/e;->a(FFFFFFFZ)[Ltypes/Coord;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [Ltypes/l;

    iput-object p2, p0, Lk/a;->o:[Ltypes/l;

    iget-object p2, p0, Lk/a;->o:[Ltypes/l;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object p2, p0, Lk/a;->o:[Ltypes/l;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    const/4 v3, 0x1

    aput-object v0, p2, v3

    aget-object p2, p1, v1

    iget-object v0, p0, Lk/a;->o:[Ltypes/l;

    aget-object v0, v0, v1

    invoke-virtual {v2, p2, v0}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    aget-object p1, p1, v3

    iget-object p2, p0, Lk/a;->o:[Ltypes/l;

    aget-object p2, p2, v3

    invoke-virtual {v2, p1, p2}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    :cond_0
    return-void
.end method

.method public static e()V
    .locals 5

    const-string v0, "active_task_name"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lk/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lk/a;->a:Lk/a;

    iget-wide v0, v0, Lk/a;->u:J

    invoke-static {}, Lm/f;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-wide v2, Lm/g;->q:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    const/4 v4, 0x0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, -0x1c20

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v2, 0x1c20

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lk/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static f()Z
    .locals 1

    sget-object v0, Lk/a;->a:Lk/a;

    if-eqz v0, :cond_0

    sget-object v0, Lk/a;->a:Lk/a;

    iget-boolean v0, v0, Lk/a;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g()Z
    .locals 1

    sget-object v0, Lk/a;->a:Lk/a;

    if-eqz v0, :cond_0

    sget-object v0, Lk/a;->a:Lk/a;

    iget-boolean v0, v0, Lk/a;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lk/a;->p:Ltypes/g;

    invoke-virtual {v0}, Ltypes/g;->a()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/c;

    iget-object v2, p0, Lk/a;->p:Ltypes/g;

    iget v3, v1, Lk/c;->i:F

    iget v1, v1, Lk/c;->j:F

    invoke-virtual {v2, v3, v1}, Ltypes/g;->a(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m()Lk/c;
    .locals 7

    iget-object v0, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lk/a;->c:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/c;

    iget v3, v2, Lk/c;->i:F

    iget v2, v2, Lk/c;->j:F

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_3

    iget-object v4, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/c;

    iget v5, v4, Lk/c;->i:F

    sub-float/2addr v5, v3

    const v6, 0x47c35000    # 100000.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    if-nez v5, :cond_2

    iget v5, v4, Lk/c;->j:F

    sub-float/2addr v5, v2

    mul-float v5, v5, v6

    float-to-int v5, v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    return-object v1
.end method

.method private n()V
    .locals 13

    iget-object v0, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ltypes/Coord;

    invoke-direct {v1}, Ltypes/Coord;-><init>()V

    new-instance v2, Ltypes/Coord;

    invoke-direct {v2}, Ltypes/Coord;-><init>()V

    new-instance v9, Ltypes/Coord;

    invoke-direct {v9}, Ltypes/Coord;-><init>()V

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v0, :cond_5

    iget-object v3, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lk/c;

    new-instance v12, Ltypes/d;

    iget v3, v11, Lk/c;->i:F

    iget v4, v11, Lk/c;->j:F

    invoke-direct {v12, v3, v4}, Ltypes/d;-><init>(FF)V

    if-lez v10, :cond_1

    iget-object v3, p0, Lk/a;->c:Ljava/util/ArrayList;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/c;

    invoke-virtual {v3}, Lk/c;->b()Ltypes/l;

    move-result-object v3

    invoke-virtual {v12, v3, v1}, Ltypes/d;->a(Ltypes/l;Ltypes/Coord;)V

    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ge v10, v3, :cond_2

    iget-object v4, p0, Lk/a;->c:Ljava/util/ArrayList;

    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/c;

    invoke-virtual {v4}, Lk/c;->b()Ltypes/l;

    move-result-object v4

    invoke-virtual {v12, v4, v2}, Ltypes/d;->a(Ltypes/l;Ltypes/Coord;)V

    :cond_2
    iget v4, v11, Lk/c;->i:F

    iget v5, v11, Lk/c;->j:F

    invoke-virtual {v12, v4, v5, v9}, Ltypes/d;->a(FFLtypes/Coord;)V

    const/4 v4, 0x0

    if-lez v10, :cond_3

    move-object v5, v1

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    iget v6, v11, Lk/c;->a:F

    if-ge v10, v3, :cond_4

    move-object v7, v2

    goto :goto_2

    :cond_4
    move-object v7, v4

    :goto_2
    move-object v3, p0

    move-object v4, v5

    move-object v5, v9

    move-object v8, v12

    invoke-virtual/range {v3 .. v8}, Lk/a;->a(Ltypes/Coord;Ltypes/Coord;FLtypes/Coord;Ltypes/d;)V

    invoke-virtual {v11}, Lk/c;->b()Ltypes/l;

    move-result-object v3

    invoke-virtual {v12, v9, v3}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method a(FFFFFF)I
    .locals 0

    sub-float/2addr p3, p1

    sub-float/2addr p6, p2

    mul-float p3, p3, p6

    sub-float/2addr p4, p2

    sub-float/2addr p5, p1

    mul-float p4, p4, p5

    sub-float/2addr p3, p4

    const/4 p1, 0x0

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public a(FF)Ltypes/l;
    .locals 6

    new-instance v1, Ltypes/Coord;

    invoke-direct {v1}, Ltypes/Coord;-><init>()V

    iget-object v0, p0, Lk/a;->w:Ltypes/d;

    invoke-virtual {v0, p1, p2, v1}, Ltypes/d;->a(FFLtypes/Coord;)V

    new-instance p1, Ltypes/l;

    iget-object p2, p0, Lk/a;->h:Lk/c;

    iget p2, p2, Lk/c;->i:F

    iget-object v0, p0, Lk/a;->h:Lk/c;

    iget v0, v0, Lk/c;->j:F

    invoke-direct {p1, p2, v0}, Ltypes/l;-><init>(FF)V

    new-instance p2, Ltypes/Coord;

    invoke-direct {p2}, Ltypes/Coord;-><init>()V

    iget-object v0, p0, Lk/a;->w:Ltypes/d;

    invoke-virtual {v0, p1, p2}, Ltypes/d;->a(Ltypes/l;Ltypes/Coord;)V

    iget v0, p0, Lk/a;->g:I

    iget-object v2, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    iget-object v2, p0, Lk/a;->c:Ljava/util/ArrayList;

    iget v3, p0, Lk/a;->g:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/c;

    iget-object v3, p0, Lk/a;->w:Ltypes/d;

    iget-object v2, v2, Lk/c;->h:Ltypes/l;

    invoke-virtual {v3, v2, v0}, Ltypes/d;->a(Ltypes/l;Ltypes/Coord;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    iget-object v0, p0, Lk/a;->h:Lk/c;

    iget v3, v0, Lk/c;->a:F

    iget-object v5, p0, Lk/a;->w:Ltypes/d;

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lk/a;->a(Ltypes/Coord;Ltypes/Coord;FLtypes/Coord;Ltypes/d;)V

    iget-object v0, p0, Lk/a;->w:Ltypes/d;

    invoke-virtual {v0, p2, p1}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    return-object p1
.end method

.method public a(J)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lk/a;->u:J

    iget-wide v0, p0, Lk/a;->u:J

    invoke-virtual {p0}, Lk/a;->k()J

    move-result-wide v2

    add-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lk/a;->u:J

    iget-object p1, p0, Lk/a;->e:Landroid/text/format/Time;

    iget-wide v0, p0, Lk/a;->u:J

    invoke-virtual {p1, v0, v1}, Landroid/text/format/Time;->set(J)V

    return-void
.end method

.method a(Lk/c;Lk/c;)V
    .locals 8

    iget-object p2, p0, Lk/a;->o:[Ltypes/l;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    iget v2, p2, Ltypes/l;->b:F

    iget-object p2, p0, Lk/a;->o:[Ltypes/l;

    aget-object p2, p2, v0

    iget v3, p2, Ltypes/l;->a:F

    iget-object p2, p0, Lk/a;->o:[Ltypes/l;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    iget v4, p2, Ltypes/l;->b:F

    iget-object p2, p0, Lk/a;->o:[Ltypes/l;

    aget-object p2, p2, v0

    iget v5, p2, Ltypes/l;->a:F

    iget v6, p1, Lk/c;->j:F

    iget v7, p1, Lk/c;->i:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lk/a;->a(FFFFFF)I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lk/a;->q:I

    return-void
.end method

.method a(Ltypes/Coord;Ltypes/Coord;FLtypes/Coord;Ltypes/d;)V
    .locals 9

    const v0, 0x3f7fbe77    # 0.999f

    mul-float p3, p3, v0

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    if-nez p1, :cond_1

    const/4 v6, 0x1

    move-object v1, p4

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;FLtypes/Coord;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0}, Ltypes/Coord;->a(Ltypes/Coord;)V

    :cond_0
    return-void

    :cond_1
    if-nez p4, :cond_7

    iget-boolean p4, p0, Lk/a;->m:Z

    if-eqz p4, :cond_5

    iget-object p4, p0, Lk/a;->o:[Ltypes/l;

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p3, Ltypes/Coord;

    invoke-direct {p3}, Ltypes/Coord;-><init>()V

    iget-object p4, p0, Lk/a;->o:[Ltypes/l;

    const/4 v0, 0x0

    aget-object p4, p4, v0

    invoke-virtual {p5, p4, p3}, Ltypes/d;->a(Ltypes/l;Ltypes/Coord;)V

    new-instance p4, Ltypes/Coord;

    invoke-direct {p4}, Ltypes/Coord;-><init>()V

    iget-object v0, p0, Lk/a;->o:[Ltypes/l;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p5, v0, p4}, Ltypes/d;->a(Ltypes/l;Ltypes/Coord;)V

    new-instance p5, Ltypes/Coord;

    invoke-direct {p5, p1}, Ltypes/Coord;-><init>(Ltypes/Coord;)V

    invoke-static {p3, p4, p5}, Ltypes/e;->c(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)V

    invoke-static {p5, p3, p4}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p5}, Ltypes/Coord;->a(Ltypes/Coord;)V

    goto :goto_1

    :cond_3
    invoke-static {p1, p3}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;)F

    move-result p5

    invoke-static {p1, p4}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;)F

    move-result p1

    cmpg-float p1, p5, p1

    if-gez p1, :cond_4

    invoke-virtual {p2, p3}, Ltypes/Coord;->a(Ltypes/Coord;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2, p4}, Ltypes/Coord;->a(Ltypes/Coord;)V

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;FLtypes/Coord;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2, v0}, Ltypes/Coord;->a(Ltypes/Coord;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;FLtypes/Coord;Z)Z

    move-result p5

    if-eqz p5, :cond_9

    :cond_8
    :goto_2
    invoke-virtual {p2, v0}, Ltypes/Coord;->a(Ltypes/Coord;)V

    goto :goto_3

    :cond_9
    new-instance p5, Ltypes/Coord;

    iget v1, p2, Ltypes/Coord;->a:F

    iget v2, p2, Ltypes/Coord;->b:F

    invoke-direct {p5, v1, v2}, Ltypes/Coord;-><init>(FF)V

    invoke-static {p1, p4, p5}, Ltypes/e;->b(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)Ltypes/Coord;

    const/4 v6, 0x1

    move-object v1, p5

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;FLtypes/Coord;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p1, v0}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;)F

    move-result v1

    invoke-static {v0, p4}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;)F

    move-result v2

    add-float v7, v1, v2

    new-instance v8, Ltypes/Coord;

    invoke-direct {v8}, Ltypes/Coord;-><init>()V

    invoke-virtual {p5, p2}, Ltypes/Coord;->a(Ltypes/Coord;)V

    invoke-static {p1, p4, p5}, Ltypes/e;->c(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)V

    const/4 v6, 0x1

    move-object v1, p5

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;FLtypes/Coord;Z)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-static {p1, v8}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;)F

    move-result p1

    invoke-static {v8, p4}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;)F

    move-result p3

    add-float/2addr p1, p3

    cmpg-float p1, p1, v7

    if-gez p1, :cond_8

    move-object v0, v8

    goto :goto_2

    :cond_a
    :goto_3
    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lk/a;->h:Lk/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Lk/c;

    invoke-direct {v0}, Lk/c;-><init>()V

    iget-object v2, p0, Lk/a;->h:Lk/c;

    invoke-virtual {v0, v2}, Lk/c;->a(Lk/c;)V

    iget-object v2, p0, Lk/a;->h:Lk/c;

    iget-object v2, v2, Lk/c;->h:Ltypes/l;

    iget v2, v2, Ltypes/l;->a:F

    iput v2, v0, Lk/c;->i:F

    iget-object v2, p0, Lk/a;->h:Lk/c;

    iget-object v2, v2, Lk/c;->h:Ltypes/l;

    iget v2, v2, Ltypes/l;->b:F

    iput v2, v0, Lk/c;->j:F

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-short p1, v0, Lk/c;->k:S

    :cond_0
    invoke-static {v0, v1}, Ltypes/f;->a(Ltypes/PoiPoint;Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1, v1}, Ltypes/f;->a(Ltypes/PoiPoint;Z)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 12

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    iget-object v1, p0, Lk/a;->h:Lk/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lk/a;->i:Ltypes/g;

    invoke-virtual {v1, v0}, Ltypes/g;->b(Ltypes/GpsVal;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Ltypes/GpsVal;->a:F

    iget v4, v0, Ltypes/GpsVal;->b:F

    iget-object v5, p0, Lk/a;->h:Lk/c;

    iget v5, v5, Lk/c;->i:F

    iget-object v6, p0, Lk/a;->h:Lk/c;

    iget v6, v6, Lk/c;->j:F

    invoke-static {v1, v4, v5, v6}, Ltypes/i;->b(FFFF)F

    move-result v1

    iget-object v4, p0, Lk/a;->h:Lk/c;

    iget v4, v4, Lk/c;->a:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v4, p0, Lk/a;->n:Z

    if-eqz v4, :cond_6

    iget-wide v4, v0, Ltypes/GpsVal;->d:J

    iget-wide v6, p0, Lk/a;->u:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    return v3

    :cond_1
    iget-object v4, p0, Lk/a;->h:Lk/c;

    iget-boolean v4, v4, Lk/c;->f:Z

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lk/a;->v:Z

    :cond_2
    iget-boolean v0, p0, Lk/a;->d:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lk/a;->v:Z

    if-nez v0, :cond_6

    return v3

    :cond_3
    iget-boolean v4, p0, Lk/a;->t:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lk/a;->m:Z

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    iget-object v4, p0, Lk/a;->o:[Ltypes/l;

    aget-object v4, v4, v3

    iget v6, v4, Ltypes/l;->b:F

    iget-object v4, p0, Lk/a;->o:[Ltypes/l;

    aget-object v4, v4, v3

    iget v7, v4, Ltypes/l;->a:F

    iget-object v4, p0, Lk/a;->o:[Ltypes/l;

    aget-object v4, v4, v2

    iget v8, v4, Ltypes/l;->b:F

    iget-object v4, p0, Lk/a;->o:[Ltypes/l;

    aget-object v4, v4, v2

    iget v9, v4, Ltypes/l;->a:F

    iget v10, v0, Ltypes/GpsVal;->b:F

    iget v11, v0, Ltypes/GpsVal;->a:F

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lk/a;->a(FFFFFF)I

    move-result v0

    iget v4, p0, Lk/a;->q:I

    if-eq v0, v4, :cond_4

    iput-boolean v2, p0, Lk/a;->r:Z

    :cond_4
    iget v2, p0, Lk/a;->q:I

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lk/a;->r:Z

    if-nez v0, :cond_6

    :cond_5
    return v3

    :cond_6
    return v1
.end method

.method public b()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk/a;->t:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lk/a;->o:[Ltypes/l;

    iget-object v2, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v0, p0, Lk/a;->j:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lk/a;->k:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/c;

    iput-boolean v0, v4, Lk/c;->e:Z

    iput-object v1, v4, Lk/c;->h:Ltypes/l;

    iget-boolean v5, v4, Lk/c;->f:Z

    if-eqz v5, :cond_0

    iput v3, p0, Lk/a;->j:I

    :cond_0
    iget-boolean v4, v4, Lk/c;->g:Z

    if-eqz v4, :cond_1

    iput v3, p0, Lk/a;->k:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lk/a;->c:Ljava/util/ArrayList;

    iget v2, p0, Lk/a;->j:I

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Lk/a;->g:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/c;

    iput-object v1, p0, Lk/a;->h:Lk/c;

    iput-boolean v0, p0, Lk/a;->l:Z

    iput v0, p0, Lk/a;->q:I

    iput-boolean v0, p0, Lk/a;->r:Z

    iput-boolean v0, p0, Lk/a;->v:Z

    iget-object v1, p0, Lk/a;->e:Landroid/text/format/Time;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->normalize(Z)J

    iget-object v1, p0, Lk/a;->e:Landroid/text/format/Time;

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lk/a;->u:J

    iput-boolean v0, p0, Lk/a;->s:Z

    iget-boolean v1, p0, Lk/a;->n:Z

    sput-boolean v1, Lk/a;->z:Z

    invoke-virtual {p0}, Lk/a;->i()V

    iget-object v1, p0, Lk/a;->p:Ltypes/g;

    invoke-virtual {v1}, Ltypes/g;->c()Ltypes/GpsVal;

    move-result-object v1

    new-instance v2, Ltypes/d;

    iget v3, v1, Ltypes/GpsVal;->a:F

    iget v1, v1, Ltypes/GpsVal;->b:F

    invoke-direct {v2, v3, v1}, Ltypes/d;-><init>(FF)V

    iput-object v2, p0, Lk/a;->w:Ltypes/d;

    const v1, 0x3f99999a    # 1.2f

    iget-object v2, p0, Lk/a;->h:Lk/c;

    iget v2, v2, Lk/c;->a:F

    mul-float v2, v2, v1

    iget-object v1, p0, Lk/a;->h:Lk/c;

    iget v1, v1, Lk/c;->i:F

    iget-object v3, p0, Lk/a;->h:Lk/c;

    iget v3, v3, Lk/c;->j:F

    iget-object v4, p0, Lk/a;->i:Ltypes/g;

    invoke-static {v2, v1, v3, v4}, Ltypes/i;->a(FFFLtypes/g;)V

    invoke-virtual {p0, v0}, Lk/a;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/c;

    iget-boolean v2, v1, Lk/c;->f:Z

    if-eqz v2, :cond_0

    iput v0, p0, Lk/a;->j:I

    :cond_0
    iget-boolean v1, v1, Lk/c;->g:Z

    if-eqz v1, :cond_1

    iput v0, p0, Lk/a;->k:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 7

    iget-boolean v0, p0, Lk/a;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lk/a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lk/a;->h:Lk/c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lk/c;->e:Z

    const v0, 0x7f0b0004

    invoke-static {v0}, Lb/h;->a(I)V

    iget-object v0, p0, Lk/a;->h:Lk/c;

    iget-boolean v0, v0, Lk/c;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lk/a;->n:Z

    if-nez v0, :cond_1

    :cond_0
    iput-boolean v2, p0, Lk/a;->s:Z

    :cond_1
    iget-object v0, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lk/a;->g:I

    add-int/2addr v3, v2

    iput v3, p0, Lk/a;->g:I

    if-ge v3, v0, :cond_3

    iget-object v3, p0, Lk/a;->c:Ljava/util/ArrayList;

    iget v4, p0, Lk/a;->g:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/c;

    iput-object v3, p0, Lk/a;->h:Lk/c;

    const v3, 0x3f99999a    # 1.2f

    iget-object v4, p0, Lk/a;->h:Lk/c;

    iget v4, v4, Lk/c;->a:F

    mul-float v4, v4, v3

    iget-object v3, p0, Lk/a;->h:Lk/c;

    iget v3, v3, Lk/c;->i:F

    iget-object v5, p0, Lk/a;->h:Lk/c;

    iget v5, v5, Lk/c;->j:F

    iget-object v6, p0, Lk/a;->i:Ltypes/g;

    invoke-static {v4, v3, v5, v6}, Ltypes/i;->a(FFFLtypes/g;)V

    iget v3, p0, Lk/a;->g:I

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lk/a;->t:Z

    iget-boolean v3, p0, Lk/a;->t:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lk/a;->n:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lk/a;->m:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lk/a;->c:Ljava/util/ArrayList;

    iget v4, p0, Lk/a;->g:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/c;

    iget-object v4, p0, Lk/a;->h:Lk/c;

    invoke-virtual {p0, v3, v4}, Lk/a;->a(Lk/c;Lk/c;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lk/a;->h:Lk/c;

    iput-boolean v2, p0, Lk/a;->l:Z

    :cond_4
    :goto_1
    iget v3, p0, Lk/a;->g:I

    sub-int/2addr v0, v2

    if-ne v3, v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p0, v1}, Lk/a;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xcglobe.action.main"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "event"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xcglobe/xclog/App;->sendBroadcast(Landroid/content/Intent;)V

    return v2

    :cond_6
    return v1
.end method

.method public h()F
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/c;

    iget-object v3, p0, Lk/a;->c:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/c;

    iget v4, v2, Lk/c;->i:F

    iget v2, v2, Lk/c;->j:F

    iget v5, v3, Lk/c;->i:F

    iget v3, v3, Lk/c;->j:F

    invoke-static {v4, v2, v5, v3}, Ltypes/i;->b(FFFF)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public i()V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lk/a;->y:F

    iput v0, p0, Lk/a;->x:F

    iget-object v0, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lk/a;->m()Lk/c;

    move-result-object v1

    iget-boolean v2, p0, Lk/a;->m:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lk/a;->c:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/c;

    invoke-direct {p0, v1, v2}, Lk/a;->b(Lk/c;Lk/c;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lk/a;->o:[Ltypes/l;

    :goto_0
    invoke-direct {p0}, Lk/a;->l()V

    invoke-direct {p0}, Lk/a;->n()V

    invoke-direct {p0}, Lk/a;->n()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lk/a;->c:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/c;

    iget-object v4, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/c;

    iget v5, v3, Lk/c;->i:F

    iget v6, v3, Lk/c;->j:F

    iget v7, v4, Lk/c;->i:F

    iget v8, v4, Lk/c;->j:F

    invoke-static {v5, v6, v7, v8}, Ltypes/i;->b(FFFF)F

    move-result v5

    if-ne v2, v1, :cond_2

    iget v6, v3, Lk/c;->i:F

    iget v3, v3, Lk/c;->j:F

    :goto_2
    iget-object v7, v4, Lk/c;->h:Ltypes/l;

    iget v7, v7, Ltypes/l;->a:F

    iget-object v8, v4, Lk/c;->h:Ltypes/l;

    iget v8, v8, Ltypes/l;->b:F

    invoke-static {v6, v3, v7, v8}, Ltypes/i;->b(FFFF)F

    move-result v3

    goto :goto_3

    :cond_2
    iget-object v6, v3, Lk/c;->h:Ltypes/l;

    iget v6, v6, Ltypes/l;->a:F

    iget-object v3, v3, Lk/c;->h:Ltypes/l;

    iget v3, v3, Ltypes/l;->b:F

    goto :goto_2

    :goto_3
    iput v3, v4, Lk/c;->c:F

    iput v5, v4, Lk/c;->d:F

    iget v6, v4, Lk/c;->b:F

    add-float/2addr v6, v3

    iput v6, v4, Lk/c;->b:F

    iget v4, p0, Lk/a;->x:F

    add-float/2addr v4, v3

    iput v4, p0, Lk/a;->x:F

    iget v3, p0, Lk/a;->y:F

    add-float/2addr v3, v5

    iput v3, p0, Lk/a;->y:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public j()Lk/c;
    .locals 2

    iget v0, p0, Lk/a;->g:I

    iget-object v1, p0, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lk/a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lk/a;->g:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k()J
    .locals 4

    iget-object v0, p0, Lk/a;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iget-object v1, p0, Lk/a;->c:Ljava/util/ArrayList;

    iget v2, p0, Lk/a;->j:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/c;

    iget v2, v0, Lk/c;->i:F

    iget v0, v0, Lk/c;->j:F

    iget-object v3, v1, Lk/c;->h:Ltypes/l;

    iget v3, v3, Ltypes/l;->a:F

    iget-object v1, v1, Lk/c;->h:Ltypes/l;

    iget v1, v1, Ltypes/l;->b:F

    invoke-static {v2, v0, v3, v1}, Ltypes/i;->b(FFFF)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    sget v1, Lcom/xcglobe/xclog/l;->M:F

    const/high16 v2, 0x45610000    # 3600.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method
