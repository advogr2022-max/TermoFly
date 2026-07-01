.class public Lh/a;
.super Ljava/lang/Object;


# static fields
.field private static final m:[F

.field private static final n:[F


# instance fields
.field public a:Lh/b;

.field public b:Lh/b;

.field public c:I

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field private o:Ltypes/d;

.field private p:F

.field private q:F

.field private r:J

.field private s:J

.field private t:F

.field private u:F

.field private v:F

.field private w:Z

.field private x:[Lg/f;

.field private y:Lg/f;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    sput-object v1, Lh/a;->m:[F

    new-array v0, v0, [F

    sput-object v0, Lh/a;->n:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lh/a;->r:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lh/a;->w:Z

    const/16 v3, 0x8

    new-array v4, v3, [Lg/f;

    iput-object v4, p0, Lh/a;->x:[Lg/f;

    new-instance v4, Lg/f;

    const/16 v5, 0x4e20

    invoke-direct {v4, v5}, Lg/f;-><init>(I)V

    iput-object v4, p0, Lh/a;->y:Lg/f;

    iput-wide v0, p0, Lh/a;->z:J

    iput v2, p0, Lh/a;->j:I

    :goto_0
    if-ge v2, v3, :cond_0

    int-to-float v0, v2

    const/high16 v1, 0x42340000    # 45.0f

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget-object v1, Lh/a;->m:[F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, v1, v2

    sget-object v0, Lh/a;->n:[F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    aput v1, v0, v2

    iget-object v0, p0, Lh/a;->x:[Lg/f;

    new-instance v1, Lg/f;

    const/16 v4, 0x2710

    invoke-direct {v1, v4}, Lg/f;-><init>(I)V

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lh/a;->b(FFFJ)V

    return-void
.end method

.method private a(FF)I
    .locals 2

    float-to-double v0, p1

    float-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    :cond_0
    return p1
.end method

.method private a(IJ)V
    .locals 2

    iget v0, p0, Lh/a;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lh/a;->f:F

    const v1, 0x3e8e392e    # 0.27778f

    mul-float v0, v0, v1

    neg-float v0, v0

    iget v1, p0, Lh/a;->g:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lh/a;->x:[Lg/f;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0, p2, p3}, Lg/f;->a(FJ)F

    return-void
.end method

.method private a(Lh/b;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    add-int/lit8 v5, v0, 0x4

    iget-object v6, p1, Lh/b;->a:[F

    aget v6, v6, v0

    iget-object v7, p1, Lh/b;->a:[F

    aget v5, v7, v5

    cmpl-float v7, v6, v1

    if-eqz v7, :cond_0

    cmpl-float v7, v5, v1

    if-eqz v7, :cond_0

    sub-float/2addr v6, v5

    int-to-float v5, v0

    const v7, 0x3f490fdb

    mul-float v5, v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v5, v9

    mul-float v5, v5, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v6, v6, v7

    add-float/2addr v3, v5

    add-float/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    int-to-float p1, v2

    div-float/2addr v3, p1

    iput v3, p0, Lh/a;->t:F

    div-float/2addr v4, p1

    iput v4, p0, Lh/a;->u:F

    iget p1, p0, Lh/a;->t:F

    float-to-double v0, p1

    iget p1, p0, Lh/a;->u:F

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-int p1, v0

    if-gez p1, :cond_2

    add-int/lit16 p1, p1, 0x168

    :cond_2
    iput p1, p0, Lh/a;->i:I

    iget p1, p0, Lh/a;->t:F

    iget v0, p0, Lh/a;->t:F

    mul-float p1, p1, v0

    iget v0, p0, Lh/a;->u:F

    iget v1, p0, Lh/a;->u:F

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lh/a;->h:F

    iget-boolean p1, p0, Lh/a;->w:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh/a;->w:Z

    :cond_3
    return-void
.end method

.method private b(I)I
    .locals 2

    const/16 v0, 0x8

    mul-int/lit8 p1, p1, 0x8

    int-to-float p1, p1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private b(FFFJ)V
    .locals 2

    new-instance v0, Lh/b;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lh/b;-><init>(I)V

    iput-object v0, p0, Lh/a;->a:Lh/b;

    new-instance v0, Lh/b;

    invoke-direct {v0, v1}, Lh/b;-><init>(I)V

    iput-object v0, p0, Lh/a;->b:Lh/b;

    new-instance v0, Ltypes/d;

    invoke-direct {v0, p1, p2}, Ltypes/d;-><init>(FF)V

    iput-object v0, p0, Lh/a;->o:Ltypes/d;

    iput p3, p0, Lh/a;->e:F

    iput-wide p4, p0, Lh/a;->r:J

    const/4 p1, 0x0

    iput p1, p0, Lh/a;->p:F

    iput p1, p0, Lh/a;->q:F

    const/4 p2, 0x0

    iput p2, p0, Lh/a;->j:I

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lh/a;->z:J

    iput p2, p0, Lh/a;->k:I

    iput p2, p0, Lh/a;->l:I

    iput p1, p0, Lh/a;->v:F

    iput-wide p3, p0, Lh/a;->s:J

    iput-boolean p2, p0, Lh/a;->w:Z

    return-void
.end method

.method private b(IJ)V
    .locals 1

    iget v0, p0, Lh/a;->j:I

    if-eq v0, p1, :cond_0

    iput-wide p2, p0, Lh/a;->z:J

    iput p1, p0, Lh/a;->j:I

    const/4 p1, 0x0

    iput p1, p0, Lh/a;->l:I

    iput p1, p0, Lh/a;->k:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    iget v0, p0, Lh/a;->j:I

    if-nez v0, :cond_0

    iget v0, p0, Lh/a;->c:I

    invoke-direct {p0, v0}, Lh/a;->b(I)I

    move-result v0

    iget-object v1, p0, Lh/a;->x:[Lg/f;

    aget-object v0, v1, v0

    iget v0, v0, Lg/f;->b:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lh/a;->v:F

    :cond_0
    iget v0, p0, Lh/a;->v:F

    return v0
.end method

.method public a(I)F
    .locals 1

    iget-object v0, p0, Lh/a;->a:Lh/b;

    invoke-virtual {v0, p1}, Lh/b;->a(I)F

    move-result p1

    return p1
.end method

.method public a(IF)F
    .locals 2

    invoke-direct {p0, p1}, Lh/a;->b(I)I

    move-result p1

    sget-object v0, Lh/a;->n:[F

    aget v0, v0, p1

    mul-float v0, v0, p2

    sget-object v1, Lh/a;->m:[F

    aget p1, v1, p1

    mul-float p2, p2, p1

    iget p1, p0, Lh/a;->t:F

    add-float/2addr v0, p1

    iget p1, p0, Lh/a;->u:F

    add-float/2addr p2, p1

    mul-float v0, v0, v0

    mul-float p2, p2, p2

    add-float/2addr v0, p2

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public a(FFFJ)V
    .locals 15

    move-object v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-wide/from16 v10, p4

    iget-wide v0, v6, Lh/a;->r:J

    sub-long v0, v10, v0

    const-wide/16 v12, 0x3e8

    cmp-long v2, v0, v12

    if-gez v2, :cond_0

    return-void

    :cond_0
    const-wide/32 v2, 0xf4240

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    sub-long v4, v10, v12

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lh/a;->b(FFFJ)V

    iget-wide v0, v6, Lh/a;->r:J

    sub-long v0, v10, v0

    :cond_1
    long-to-int v0, v0

    iget-object v1, v6, Lh/a;->o:Ltypes/d;

    invoke-virtual {v1, v8}, Ltypes/d;->a(F)F

    move-result v1

    iget-object v2, v6, Lh/a;->o:Ltypes/d;

    invoke-virtual {v2, v7}, Ltypes/d;->b(F)F

    move-result v2

    iget v3, v6, Lh/a;->p:F

    sub-float v3, v1, v3

    iget v4, v6, Lh/a;->q:F

    sub-float v4, v2, v4

    iget v5, v6, Lh/a;->p:F

    iget v14, v6, Lh/a;->q:F

    invoke-static {v1, v2, v5, v14}, Ltypes/e;->a(FFFF)F

    move-result v5

    invoke-direct {p0, v3, v4}, Lh/a;->a(FF)I

    move-result v3

    iput v1, v6, Lh/a;->p:F

    iput v2, v6, Lh/a;->q:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    :cond_2
    new-instance v1, Ltypes/d;

    invoke-direct {v1, v7, v8}, Ltypes/d;-><init>(FF)V

    iput-object v1, v6, Lh/a;->o:Ltypes/d;

    :cond_3
    const v1, 0x4a5bba00    # 3600000.0f

    mul-float v5, v5, v1

    int-to-float v1, v0

    div-float/2addr v5, v1

    iput v5, v6, Lh/a;->f:F

    const/high16 v2, 0x447a0000    # 1000.0f

    iget v4, v6, Lh/a;->e:F

    sub-float v4, v9, v4

    mul-float v4, v4, v2

    div-float/2addr v4, v1

    iput v4, v6, Lh/a;->g:F

    iget v1, v6, Lh/a;->c:I

    sub-int v1, v3, v1

    const/16 v2, 0xb4

    if-le v1, v2, :cond_4

    rsub-int v1, v1, 0x168

    goto :goto_0

    :cond_4
    const/16 v2, -0xb4

    if-ge v1, v2, :cond_5

    add-int/lit16 v1, v1, 0x168

    :cond_5
    :goto_0
    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v6, Lh/a;->d:F

    const/16 v0, -0xa

    if-ge v1, v0, :cond_6

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    :cond_6
    const/16 v0, 0xa

    if-le v1, v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    iget-object v2, v6, Lh/a;->y:Lg/f;

    invoke-virtual {v2, v0, v10, v11}, Lg/f;->a(FJ)F

    move-result v0

    iget v2, v6, Lh/a;->j:I

    if-nez v2, :cond_9

    const v1, -0x41666666    # -0.3f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    const/4 v0, -0x1

    :goto_2
    invoke-direct {p0, v0, v10, v11}, Lh/a;->b(IJ)V

    goto :goto_3

    :cond_8
    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    const-wide v7, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v4, v7

    if-gez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    iget v0, v6, Lh/a;->j:I

    mul-int v0, v0, v1

    if-gez v0, :cond_b

    iget v0, v6, Lh/a;->j:I

    neg-int v0, v0

    goto :goto_2

    :cond_b
    :goto_3
    iput v9, v6, Lh/a;->e:F

    iput v3, v6, Lh/a;->c:I

    iput-wide v10, v6, Lh/a;->r:J

    invoke-direct {p0, v3}, Lh/a;->b(I)I

    move-result v0

    iget v1, v6, Lh/a;->j:I

    if-nez v1, :cond_c

    iget-wide v1, v6, Lh/a;->z:J

    sub-long v1, v10, v1

    div-long/2addr v1, v12

    long-to-int v1, v1

    iput v1, v6, Lh/a;->l:I

    iget v1, v6, Lh/a;->l:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_d

    iget-object v1, v6, Lh/a;->a:Lh/b;

    iget v2, v6, Lh/a;->f:F

    invoke-virtual {v1, v0, v2}, Lh/b;->a(IF)V

    invoke-direct {p0, v0, v10, v11}, Lh/a;->a(IJ)V

    goto :goto_4

    :cond_c
    iget-wide v1, v6, Lh/a;->z:J

    sub-long v1, v10, v1

    div-long/2addr v1, v12

    long-to-int v1, v1

    iput v1, v6, Lh/a;->k:I

    iget-object v1, v6, Lh/a;->b:Lh/b;

    iget v2, v6, Lh/a;->f:F

    invoke-virtual {v1, v0, v2}, Lh/b;->a(IF)V

    iget-wide v0, v6, Lh/a;->s:J

    sub-long v0, v10, v0

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_d

    iget-object v0, v6, Lh/a;->b:Lh/b;

    invoke-direct {p0, v0}, Lh/a;->a(Lh/b;)V

    iput-wide v10, v6, Lh/a;->s:J

    :cond_d
    :goto_4
    return-void
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lh/a;->j:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lh/a;->w:Z

    return v0
.end method
