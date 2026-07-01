.class public Lm/g;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lm/e;

.field public static B:I

.field public static C:Lm/h;

.field protected static D:Li/d;

.field public static E:J

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:J

.field public static I:Z

.field public static J:I

.field public static K:I

.field public static L:Z

.field public static M:Z

.field public static N:Z

.field public static O:Ld/e;

.field public static P:Lg/a;

.field public static Q:Lg/b;

.field static R:Lg/d;

.field static S:Lg/d;

.field public static T:J

.field public static U:J

.field public static V:J

.field public static W:Lh/a;

.field public static X:J

.field public static Y:I

.field private static Z:Z

.field public static final a:[I

.field private static aa:J

.field private static ab:J

.field private static ac:Ltypes/GpsVal;

.field private static ad:J

.field private static ae:J

.field private static af:Lg/h;

.field private static ag:J

.field private static ah:J

.field private static ai:J

.field private static aj:I

.field private static ak:I

.field private static al:Ltypes/GpsVal;

.field public static b:F

.field public static c:F

.field public static d:I

.field public static e:J

.field public static f:Ltypes/g;

.field public static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltypes/GpsVal;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Le/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a<",
            "Ltypes/j;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile i:F

.field public static j:F

.field public static k:F

.field public static l:F

.field public static m:I

.field public static n:F

.field public static o:F

.field public static p:F

.field public static q:J

.field public static r:J

.field public static s:I

.field public static t:F

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lm/g;->a:[I

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lm/g;->e:J

    new-instance v0, Le/a;

    new-instance v1, Ltypes/j;

    invoke-direct {v1}, Ltypes/j;-><init>()V

    const/16 v2, 0x1f4

    invoke-direct {v0, v2, v1}, Le/a;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lm/g;->h:Le/a;

    const/4 v0, 0x0

    sput v0, Lm/g;->l:F

    sput v0, Lm/g;->o:F

    sput v0, Lm/g;->p:F

    const/4 v0, 0x0

    sput-boolean v0, Lm/g;->z:Z

    new-instance v1, Lm/e;

    invoke-direct {v1}, Lm/e;-><init>()V

    sput-object v1, Lm/g;->A:Lm/e;

    sput v0, Lm/g;->B:I

    const/4 v1, 0x0

    sput-object v1, Lm/g;->F:Ljava/lang/String;

    sput-object v1, Lm/g;->G:Ljava/lang/String;

    const-wide/16 v2, 0x12c

    sput-wide v2, Lm/g;->H:J

    const/4 v2, 0x1

    sput-boolean v2, Lm/g;->I:Z

    sput-boolean v0, Lm/g;->L:Z

    sput-boolean v0, Lm/g;->M:Z

    sput-boolean v0, Lm/g;->N:Z

    sput-object v1, Lm/g;->Q:Lg/b;

    sput-object v1, Lm/g;->S:Lg/d;

    const-wide/16 v2, 0x0

    sput-wide v2, Lm/g;->T:J

    sput-wide v2, Lm/g;->U:J

    sput-wide v2, Lm/g;->V:J

    new-instance v4, Lh/a;

    invoke-direct {v4}, Lh/a;-><init>()V

    sput-object v4, Lm/g;->W:Lh/a;

    sput-wide v2, Lm/g;->ag:J

    sput-wide v2, Lm/g;->ah:J

    sput-wide v2, Lm/g;->ai:J

    sput v0, Lm/g;->aj:I

    sput v0, Lm/g;->ak:I

    sput-object v1, Lm/g;->al:Ltypes/GpsVal;

    sput-wide v2, Lm/g;->X:J

    sput v0, Lm/g;->Y:I

    return-void

    :array_0
    .array-data 4
        0x8
        0x4
        0xfa0
        0xf
        0x5
        0xbb8
        0x3
        0x1
        0x2710
        0x28
        0x7
        0xfa0
    .end array-data
.end method

.method public static a()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lm/g;->L:Z

    sput-boolean v0, Lm/g;->M:Z

    const/4 v1, 0x0

    sput v1, Lm/g;->l:F

    sput-boolean v0, Lm/g;->z:Z

    sput v0, Lm/g;->B:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lm/g;->g:Ljava/util/ArrayList;

    new-instance v0, Lg/d;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2}, Lg/d;-><init>(FF)V

    sput-object v0, Lm/g;->R:Lg/d;

    new-instance v0, Lg/h;

    sget-boolean v1, Lcom/xcglobe/xclog/l;->R:Z

    invoke-direct {v0, v1}, Lg/h;-><init>(Z)V

    sput-object v0, Lm/g;->af:Lg/h;

    new-instance v0, Lg/a;

    const/16 v1, 0x3e8

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Lg/a;-><init>(IF)V

    sput-object v0, Lm/g;->P:Lg/a;

    new-instance v0, Ld/e;

    invoke-direct {v0}, Ld/e;-><init>()V

    sput-object v0, Lm/g;->O:Ld/e;

    new-instance v0, Ltypes/g;

    invoke-direct {v0}, Ltypes/g;-><init>()V

    sput-object v0, Lm/g;->f:Ltypes/g;

    new-instance v0, Lm/h;

    invoke-direct {v0}, Lm/h;-><init>()V

    sput-object v0, Lm/g;->C:Lm/h;

    new-instance v0, Li/d;

    invoke-direct {v0}, Li/d;-><init>()V

    sput-object v0, Lm/g;->D:Li/d;

    new-instance v0, Ltypes/GpsVal;

    invoke-direct {v0}, Ltypes/GpsVal;-><init>()V

    sput-object v0, Lm/g;->ac:Ltypes/GpsVal;

    invoke-static {}, Lm/a;->a()V

    invoke-static {}, Lm/a;->b()V

    sget-object v0, Lm/g;->A:Lm/e;

    invoke-virtual {v0}, Lm/e;->a()V

    invoke-static {}, Lm/g;->b()V

    return-void
.end method

.method public static a(FFJ)V
    .locals 6

    sput-wide p2, Lm/g;->r:J

    sget-object v0, Lm/g;->h:Le/a;

    invoke-virtual {v0}, Le/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltypes/j;

    if-eqz v0, :cond_0

    iget-wide v1, v0, Ltypes/j;->d:J

    sub-long v1, p2, v1

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    int-to-short v1, v1

    iput-short v1, v0, Ltypes/j;->f:S

    :cond_0
    sput p0, Lm/g;->t:F

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lm/g;->s:I

    sput p1, Lm/g;->j:F

    sget-object v0, Lm/g;->S:Lg/d;

    if-eqz v0, :cond_1

    sget-object v0, Lm/g;->S:Lg/d;

    invoke-virtual {v0, p1, p2, p3}, Lg/d;->a(FJ)F

    move-result p1

    :cond_1
    sget-object v0, Lm/g;->Q:Lg/b;

    if-eqz v0, :cond_2

    sget-object v0, Lm/g;->Q:Lg/b;

    invoke-interface {v0, p1, p2, p3}, Lg/b;->a(FJ)F

    move-result p1

    :cond_2
    sget-object v0, Lm/g;->af:Lg/h;

    if-eqz v0, :cond_3

    sget-object v0, Lm/g;->af:Lg/h;

    invoke-virtual {v0, p1, p0}, Lg/h;->a(FF)F

    move-result p1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double p0, v0, v2

    if-gez p0, :cond_4

    const p1, 0x38d1b717    # 1.0E-4f

    :cond_4
    :goto_0
    sput p1, Lm/g;->i:F

    sput-wide p2, Lm/g;->U:J

    sput-wide p2, Lm/g;->V:J

    invoke-static {p2, p3}, Lm/g;->b(J)V

    return-void
.end method

.method public static a(FFSJI)V
    .locals 24

    move-wide/from16 v6, p3

    move/from16 v0, p5

    invoke-static {}, Lcom/xcglobe/xclog/App;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lm/g;->h:Le/a;

    invoke-virtual {v1}, Le/a;->b()I

    move-result v1

    sget-boolean v2, Lm/g;->Z:Z

    const-wide/16 v8, 0x0

    if-nez v2, :cond_2

    sget-wide v2, Lm/g;->aa:J

    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lm/g;->aa:J

    cmp-long v10, v2, v4

    if-lez v10, :cond_1

    invoke-static {}, Lm/g;->c()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    invoke-static/range {p0 .. p0}, Ltypes/i;->a(F)V

    move-wide v2, v8

    goto :goto_1

    :cond_3
    sget-object v2, Lm/g;->h:Le/a;

    invoke-virtual {v2}, Le/a;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltypes/j;

    iget-wide v2, v2, Ltypes/j;->d:J

    sub-long v2, v6, v2

    const-wide/16 v4, 0x12c

    cmp-long v10, v2, v4

    if-gez v10, :cond_4

    return-void

    :cond_4
    :goto_1
    sget-object v4, Lm/g;->h:Le/a;

    invoke-virtual {v4}, Le/a;->c()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ltypes/j;

    iput-wide v6, v10, Ltypes/j;->d:J

    move/from16 v4, p2

    iput-short v4, v10, Ltypes/j;->c:S

    move/from16 v5, p0

    iput v5, v10, Ltypes/j;->a:F

    move/from16 v11, p1

    iput v11, v10, Ltypes/j;->b:F

    invoke-static/range {p0 .. p1}, Lvmaps/d;->b(FF)I

    move-result v12

    int-to-short v12, v12

    iput-short v12, v10, Ltypes/j;->e:S

    sget-object v12, Lm/g;->h:Le/a;

    invoke-virtual {v12}, Le/a;->d()V

    sput-wide v6, Lm/g;->T:J

    iput-wide v6, v10, Ltypes/j;->d:J

    sput-wide v6, Lm/g;->q:J

    const-wide/32 v12, 0x493e0

    const/4 v14, 0x1

    cmp-long v15, v2, v12

    if-lez v15, :cond_5

    sget v2, Lcom/xcglobe/xclog/l;->ap:I

    add-int/2addr v2, v14

    sput v2, Lcom/xcglobe/xclog/l;->ap:I

    :cond_5
    invoke-static {}, Lm/a;->d()Z

    move-result v2

    invoke-static {}, Lc/a;->a()Z

    move-result v3

    invoke-static {}, Ld/d;->b()Z

    move-result v12

    if-eqz v12, :cond_6

    if-nez v3, :cond_6

    if-eqz v2, :cond_8

    invoke-static {}, Lm/a;->e()V

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    invoke-static/range {p2 .. p4}, Lm/g;->a(IJ)V

    :cond_8
    :goto_2
    sget v2, Lm/g;->j:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, v10, Ltypes/j;->f:S

    sget v2, Lm/g;->t:F

    float-to-double v2, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v12

    double-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, v10, Ltypes/j;->g:S

    if-gez v0, :cond_9

    invoke-static {}, Lm/g;->o()V

    goto :goto_3

    :cond_9
    int-to-float v0, v0

    sput v0, Lm/g;->k:F

    :goto_3
    if-le v1, v14, :cond_a

    invoke-static {v10}, Lm/g;->a(Ltypes/j;)V

    :cond_a
    sget-boolean v0, Lm/g;->z:Z

    if-nez v0, :cond_b

    invoke-static {}, Lm/g;->p()V

    :cond_b
    invoke-static {v10}, Lm/f;->a(Ltypes/GpsVal;)Z

    move-result v0

    const/4 v12, 0x4

    if-eqz v0, :cond_c

    invoke-static {v12}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    invoke-static {}, Lm/f;->d()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lm/g;->n()V

    :cond_c
    invoke-static/range {p0 .. p1}, Lvmaps/d;->b(FF)I

    move-result v1

    sput v1, Lm/g;->u:I

    sget v1, Lm/g;->u:I

    int-to-short v1, v1

    iput-short v1, v10, Ltypes/j;->e:S

    sget v1, Lm/g;->s:I

    sget v2, Lm/g;->u:I

    sub-int/2addr v1, v2

    sput v1, Lm/g;->v:I

    const/4 v13, 0x0

    if-gez v1, :cond_d

    sput v13, Lm/g;->v:I

    :cond_d
    invoke-static {}, Lm/f;->d()Z

    move-result v1

    const/4 v15, 0x2

    if-eqz v1, :cond_14

    sget-object v0, Lm/g;->D:Li/d;

    iget-object v0, v0, Li/d;->c:Ltypes/GpsVal;

    iget-wide v0, v0, Ltypes/GpsVal;->d:J

    sub-long v0, v6, v0

    sget-wide v2, Lcom/xcglobe/xclog/l;->ah:J

    cmp-long v16, v0, v2

    if-ltz v16, :cond_f

    sget-object v0, Lm/g;->D:Li/d;

    iget-short v1, v10, Ltypes/j;->g:S

    invoke-virtual {v0, v10, v1}, Li/d;->a(Ltypes/GpsVal;I)I

    sget-boolean v0, Lcom/xcglobe/xclog/l;->ao:Z

    if-eqz v0, :cond_e

    sget-wide v0, Lm/g;->ad:J

    cmp-long v2, v6, v0

    if-lez v2, :cond_e

    invoke-static {v15}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    const-wide/32 v0, 0xea60

    add-long/2addr v0, v6

    sput-wide v0, Lm/g;->ad:J

    :cond_e
    const/16 v16, 0x1

    goto :goto_4

    :cond_f
    const/16 v16, 0x0

    :goto_4
    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    sget-object v1, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltypes/GpsVal;

    iget-wide v0, v0, Ltypes/GpsVal;->d:J

    sub-long v0, v6, v0

    const-wide/16 v2, 0xfa0

    cmp-long v17, v0, v2

    if-ltz v17, :cond_11

    :cond_10
    sget-object v3, Lm/g;->g:Ljava/util/ArrayList;

    new-instance v2, Ltypes/GpsVal;

    move-object v0, v2

    move/from16 v1, p0

    move-object v5, v2

    move/from16 v2, p1

    move-object v11, v3

    move/from16 v3, p2

    move-object v12, v5

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Ltypes/GpsVal;-><init>(FFSJ)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lm/g;->f:Ltypes/g;

    invoke-virtual {v0, v10}, Ltypes/g;->a(Ltypes/GpsVal;)V

    :cond_11
    sget-boolean v0, Lcom/xcglobe/xclog/l;->ao:Z

    if-nez v0, :cond_16

    sget-object v0, Lm/g;->C:Lm/h;

    invoke-virtual {v0}, Lm/h;->a()Z

    sget-object v18, Lm/g;->W:Lh/a;

    iget v0, v10, Ltypes/j;->a:F

    iget v1, v10, Ltypes/j;->b:F

    iget-short v2, v10, Ltypes/j;->c:S

    int-to-float v2, v2

    iget-wide v3, v10, Ltypes/j;->d:J

    move/from16 v19, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move-wide/from16 v22, v3

    invoke-virtual/range {v18 .. v23}, Lh/a;->a(FFFJ)V

    sget v0, Lcom/xcglobe/xclog/i;->a:I

    if-eqz v0, :cond_12

    invoke-static/range {p3 .. p4}, Lcom/xcglobe/xclog/i;->a(J)V

    :cond_12
    sget-wide v0, Lm/g;->E:J

    cmp-long v2, v6, v0

    if-lez v2, :cond_16

    sget-wide v0, Lcom/xcglobe/xclog/l;->ag:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_16

    invoke-static {}, Lc/c;->a()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lm/g;->ac:Ltypes/GpsVal;

    invoke-static {v0, v10}, Ltypes/i;->b(Ltypes/GpsVal;Ltypes/GpsVal;)F

    move-result v0

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    sget-object v0, Lm/g;->ac:Ltypes/GpsVal;

    invoke-virtual {v0, v10}, Ltypes/GpsVal;->a(Ltypes/GpsVal;)V

    new-instance v0, Lc/c;

    sget-object v1, Lm/g;->D:Li/d;

    invoke-virtual {v1}, Li/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v14}, Lc/c;-><init>(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_13
    sget-wide v0, Lcom/xcglobe/xclog/l;->ag:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v0, v6

    sput-wide v0, Lm/g;->E:J

    goto :goto_5

    :cond_14
    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-static {v0}, Lm/g;->a(Ljava/lang/String;)V

    :cond_15
    const/16 v16, 0x0

    :cond_16
    :goto_5
    sget-object v0, Ltypes/f;->a:Ltypes/PoiPoint;

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/xcglobe/xclog/l;->ao:Z

    if-nez v0, :cond_17

    invoke-static {}, Ltypes/f;->a()V

    :cond_17
    sget-object v0, Lk/a;->a:Lk/a;

    if-eqz v0, :cond_19

    sget-object v0, Lk/a;->a:Lk/a;

    invoke-virtual {v0}, Lk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez v16, :cond_18

    sget-object v0, Lm/g;->D:Li/d;

    iget-short v1, v10, Ltypes/j;->g:S

    invoke-virtual {v0, v10, v1}, Li/d;->a(Ltypes/GpsVal;I)I

    :cond_18
    invoke-static {v15}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    :cond_19
    sget-boolean v0, Lcom/xcglobe/xclog/l;->Z:Z

    if-eqz v0, :cond_1c

    sget-wide v0, Lj/a;->b:J

    cmp-long v2, v6, v0

    if-gtz v2, :cond_1a

    sget v0, Lj/a;->g:I

    if-nez v0, :cond_1c

    :cond_1a
    invoke-static {}, Lc/a;->a()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-boolean v0, Lcom/xcglobe/xclog/l;->ao:Z

    if-eqz v0, :cond_1b

    sget-boolean v0, Lcom/xcglobe/xclog/l;->ac:Z

    if-eqz v0, :cond_1c

    :cond_1b
    invoke-static {v13}, Lj/a;->a(Z)V

    :cond_1c
    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x320

    if-le v0, v1, :cond_1d

    sget v1, Lm/g;->Y:I

    mul-int/lit8 v0, v0, 0x3

    const/4 v2, 0x4

    div-int/2addr v0, v2

    if-ge v1, v0, :cond_1d

    invoke-static {}, Lm/g;->i()V

    :cond_1d
    invoke-static/range {p3 .. p4}, Lm/g;->b(J)V

    return-void
.end method

.method private static a(IJ)V
    .locals 1

    sput-wide p1, Lm/g;->r:J

    sput p0, Lm/g;->s:I

    sget-object v0, Lm/g;->P:Lg/a;

    int-to-float p0, p0

    invoke-virtual {v0, p0, p1, p2}, Lg/a;->a(FJ)F

    sget-object p0, Lm/g;->P:Lg/a;

    iget p0, p0, Lg/a;->c:F

    sput p0, Lm/g;->j:F

    sget-object v0, Lm/g;->Q:Lg/b;

    if-eqz v0, :cond_0

    sget-object v0, Lm/g;->Q:Lg/b;

    invoke-interface {v0, p0, p1, p2}, Lg/b;->a(FJ)F

    move-result p0

    :cond_0
    sput p0, Lm/g;->i:F

    sput-wide p1, Lm/g;->U:J

    return-void
.end method

.method public static a(J)V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lm/g;->Z:Z

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    :cond_0
    sput-wide v0, Lm/g;->aa:J

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lm/f;->e()V

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-static {v0}, Lb/c;->b(Landroid/content/Context;)V

    sget-object v0, Lk/a;->a:Lk/a;

    if-eqz v0, :cond_0

    sget-object v0, Lk/a;->a:Lk/a;

    invoke-virtual {v0}, Lk/a;->b()V

    :cond_0
    sget-object v0, Lm/g;->D:Li/d;

    invoke-virtual {v0}, Li/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "kmmax"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lm/g;->D:Li/d;

    invoke-virtual {v1}, Li/d;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p0, :cond_1

    const-string v1, "auto_export_igc"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->exportIgc(Ljava/lang/String;)Z

    :cond_1
    if-eqz p0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "igc"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x5

    invoke-static {p0, v2}, Lcom/xcglobe/xclog/ActivityMain;->a(ILandroid/os/Bundle;)V

    :cond_3
    const/16 p0, 0x8

    invoke-static {p0}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    invoke-static {}, Lm/g;->b()V

    invoke-static {}, Lcom/xcglobe/xclog/TermoFlyService;->a()V

    return-void
.end method

.method private static a(Ltypes/j;)V
    .locals 9

    iget-wide v0, p0, Ltypes/j;->d:J

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    sget-object v2, Lm/g;->h:Le/a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Le/a;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltypes/j;

    if-eqz v2, :cond_0

    iget-wide v4, v2, Ltypes/j;->d:J

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    :cond_0
    sget-object v2, Lm/g;->h:Le/a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Le/a;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltypes/j;

    :cond_1
    if-eqz v2, :cond_2

    iget-wide v4, v2, Ltypes/j;->d:J

    cmp-long v6, v4, v0

    if-gez v6, :cond_3

    :cond_2
    sget-object v0, Lm/g;->h:Le/a;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Le/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ltypes/j;

    :cond_3
    if-nez v2, :cond_4

    return-void

    :cond_4
    iget-wide v0, p0, Ltypes/j;->d:J

    iget-wide v3, v2, Ltypes/j;->d:J

    sub-long/2addr v0, v3

    sput-wide v0, Lm/g;->ab:J

    sget-wide v0, Lm/g;->ab:J

    long-to-float v0, v0

    invoke-static {v2, p0}, Ltypes/i;->b(Ltypes/GpsVal;Ltypes/GpsVal;)F

    move-result v1

    sput v1, Lm/g;->o:F

    const v1, 0x4a5bba00    # 3600000.0f

    sget v3, Lm/g;->o:F

    mul-float v3, v3, v1

    div-float/2addr v3, v0

    sput v3, Lm/g;->n:F

    sget v0, Lm/g;->k:F

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    sget v0, Lm/g;->n:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_9

    :cond_5
    sget-wide v0, Lm/g;->ag:J

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_9

    iget-wide v0, p0, Ltypes/j;->d:J

    sget-wide v6, Lm/g;->ag:J

    sub-long/2addr v0, v6

    long-to-int v0, v0

    sget v1, Lm/g;->m:I

    invoke-static {v2, p0}, Ltypes/i;->a(Ltypes/GpsVal;Ltypes/GpsVal;)I

    move-result v6

    sput v6, Lm/g;->m:I

    sget v6, Lm/g;->m:I

    sub-int/2addr v6, v1

    const/16 v7, 0xb4

    if-le v6, v7, :cond_6

    rsub-int v6, v6, 0x168

    goto :goto_0

    :cond_6
    const/16 v7, -0xb4

    if-ge v6, v7, :cond_7

    add-int/lit16 v6, v6, 0x168

    :cond_7
    :goto_0
    sput v6, Lm/g;->w:I

    mul-int/lit16 v6, v6, 0x3e8

    div-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lm/g;->x:I

    sget v0, Lm/g;->x:I

    const/16 v6, 0x5a

    if-le v0, v6, :cond_8

    sget v0, Lm/g;->n:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_8

    sput v3, Lm/g;->n:F

    sput v1, Lm/g;->m:I

    sput v5, Lm/g;->w:I

    sput v5, Lm/g;->x:I

    goto :goto_1

    :cond_8
    sget v0, Lm/g;->m:I

    div-int/2addr v0, v6

    sput v0, Lm/g;->y:I

    goto :goto_1

    :cond_9
    sput v5, Lm/g;->w:I

    sput v5, Lm/g;->x:I

    sput v3, Lm/g;->n:F

    :goto_1
    iget-wide v0, p0, Ltypes/j;->d:J

    sget-wide v3, Lm/g;->V:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1388

    cmp-long v6, v0, v3

    if-gez v6, :cond_a

    const/4 v5, 0x1

    :cond_a
    sput-boolean v5, Lm/g;->N:Z

    sget-boolean v0, Lm/g;->N:Z

    if-nez v0, :cond_b

    iget-short v0, p0, Ltypes/j;->c:S

    iget-short v1, v2, Ltypes/j;->c:S

    :goto_2
    sub-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lm/g;->p:F

    goto :goto_3

    :cond_b
    iget-short v0, p0, Ltypes/j;->g:S

    iget-short v1, v2, Ltypes/j;->g:S

    goto :goto_2

    :goto_3
    iget-wide v0, p0, Ltypes/j;->d:J

    sput-wide v0, Lm/g;->ag:J

    return-void
.end method

.method public static b()V
    .locals 5

    invoke-static {}, Lm/f;->a()V

    sget-object v0, Lm/g;->h:Le/a;

    invoke-virtual {v0}, Le/a;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lm/g;->Z:Z

    const-wide/16 v1, 0x0

    sput-wide v1, Lm/g;->aa:J

    const/4 v3, 0x0

    sput v3, Lm/g;->i:F

    sput v3, Lm/g;->k:F

    sget-object v4, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-object v4, Lm/g;->f:Ltypes/g;

    invoke-virtual {v4}, Ltypes/g;->a()V

    sput v3, Lm/g;->o:F

    sput v3, Lm/g;->p:F

    sput-wide v1, Lm/g;->q:J

    sput-wide v1, Lm/g;->r:J

    const/4 v4, 0x0

    sput v4, Lm/g;->y:I

    sput v4, Lm/g;->w:I

    sput v4, Lm/g;->m:I

    sput-wide v1, Lm/g;->ab:J

    sput v3, Lm/g;->n:F

    sput-wide v1, Lm/g;->ag:J

    sput-wide v1, Lm/g;->E:J

    sget-object v3, Lm/g;->D:Li/d;

    invoke-virtual {v3}, Li/d;->c()Z

    sget-object v3, Lm/g;->C:Lm/h;

    invoke-virtual {v3}, Lm/h;->b()V

    new-instance v3, Lh/a;

    invoke-direct {v3}, Lh/a;-><init>()V

    sput-object v3, Lm/g;->W:Lh/a;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v3

    invoke-static {v3}, Lb/c;->b(Landroid/content/Context;)V

    invoke-static {}, Lm/g;->l()V

    const/4 v3, 0x0

    sput-object v3, Lm/g;->F:Ljava/lang/String;

    sput-object v3, Lm/g;->al:Ltypes/GpsVal;

    sput v4, Lm/g;->Y:I

    sget v3, Lcom/xcglobe/xclog/l;->ap:I

    add-int/2addr v3, v0

    sput v3, Lcom/xcglobe/xclog/l;->ap:I

    sput-wide v1, Lm/g;->ad:J

    sput-wide v1, Lm/g;->ae:J

    sput-boolean v4, Lm/d;->b:Z

    sput v4, Lm/g;->J:I

    sput v4, Lm/g;->K:I

    sput-wide v1, Lm/g;->T:J

    sput-wide v1, Lm/g;->U:J

    sput-wide v1, Lm/g;->V:J

    sput-boolean v4, Lm/g;->N:Z

    sget-object v0, Lk/a;->a:Lk/a;

    if-eqz v0, :cond_0

    sget-object v0, Lk/a;->a:Lk/a;

    invoke-virtual {v0}, Lk/a;->b()V

    :cond_0
    invoke-static {}, Lcom/xcglobe/xclog/TermoFlyService;->a()V

    return-void
.end method

.method private static b(J)V
    .locals 3

    sget-boolean v0, Lcom/xcglobe/xclog/l;->ao:Z

    if-nez v0, :cond_1

    sget-wide v0, Lm/g;->ae:J

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    sget-boolean v0, Lm/g;->I:Z

    if-eqz v0, :cond_0

    sget-object v0, Lm/g;->C:Lm/h;

    iget v0, v0, Lm/h;->a:I

    if-lez v0, :cond_0

    const-wide/16 v0, 0x12c

    goto :goto_0

    :cond_0
    sget-wide v0, Lm/g;->H:J

    :goto_0
    const/4 v2, 0x0

    add-long/2addr p0, v0

    sput-wide p0, Lm/g;->ae:J

    :cond_1
    return-void
.end method

.method private static b(FFJ)Z
    .locals 16

    invoke-static {}, Lc/a;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-wide/32 v4, 0x927c0

    sget-object v2, Lm/g;->al:Ltypes/GpsVal;

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-string v2, "igc_recording_time"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v2, v6, p2

    if-gtz v2, :cond_9

    sub-long v4, p2, v4

    cmp-long v2, v6, v4

    if-gez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v2, "igc_recording_name"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    goto/16 :goto_1

    :cond_3
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ltypes/g;

    invoke-direct {v6}, Ltypes/g;-><init>()V

    new-instance v7, Li/c;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xcglobe/xclog/l;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-direct {v7, v8, v9, v10, v4}, Li/c;-><init>(Ljava/lang/String;JLjava/util/zip/CRC32;)V

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v7}, Li/c;->b()Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v8, Ltypes/GpsVal;

    iget v11, v7, Li/c;->h:F

    iget v12, v7, Li/c;->i:F

    iget-short v13, v7, Li/c;->j:S

    iget-wide v14, v7, Li/c;->f:J

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Ltypes/GpsVal;-><init>(FFSJ)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v8}, Ltypes/g;->a(Ltypes/GpsVal;)V

    goto :goto_0

    :cond_4
    if-nez v8, :cond_5

    return v3

    :cond_5
    const-wide/32 v9, 0xea60

    iget-wide v11, v8, Ltypes/GpsVal;->d:J

    sub-long v13, p2, v9

    cmp-long v7, v11, v13

    if-ltz v7, :cond_9

    iget-wide v11, v8, Ltypes/GpsVal;->d:J

    add-long v0, p2, v9

    cmp-long v7, v11, v0

    if-lez v7, :cond_6

    goto :goto_1

    :cond_6
    iget v0, v8, Ltypes/GpsVal;->a:F

    iget v1, v8, Ltypes/GpsVal;->b:F

    move/from16 v7, p0

    move/from16 v9, p1

    invoke-static {v0, v1, v7, v9}, Ltypes/i;->b(FFFF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    return v3

    :cond_7
    sget-object v0, Lm/g;->D:Li/d;

    invoke-virtual {v0, v2, v4}, Li/d;->a(Ljava/lang/String;Ljava/util/zip/CRC32;)Z

    move-result v0

    if-nez v0, :cond_8

    return v3

    :cond_8
    sget-object v0, Lm/g;->al:Ltypes/GpsVal;

    iget v1, v8, Ltypes/GpsVal;->a:F

    iput v1, v0, Ltypes/GpsVal;->a:F

    sget-object v0, Lm/g;->al:Ltypes/GpsVal;

    iget v1, v8, Ltypes/GpsVal;->b:F

    iput v1, v0, Ltypes/GpsVal;->b:F

    sget-object v0, Lm/g;->al:Ltypes/GpsVal;

    iget-wide v1, v8, Ltypes/GpsVal;->d:J

    iput-wide v1, v0, Ltypes/GpsVal;->d:J

    sput-object v5, Lm/g;->g:Ljava/util/ArrayList;

    sput-object v6, Lm/g;->f:Ltypes/g;

    const/4 v0, 0x1

    return v0

    :cond_9
    :goto_1
    return v3
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 10

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lm/g;->a(J)V

    invoke-static {}, Lm/g;->b()V

    sput-object p0, Lm/g;->F:Ljava/lang/String;

    new-instance v2, Li/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xcglobe/xclog/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v3, 0x2710

    invoke-direct {v2, p0, v3, v4}, Li/c;-><init>(Ljava/lang/String;J)V

    :goto_0
    invoke-virtual {v2}, Li/c;->b()Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_2

    new-instance p0, Ltypes/GpsVal;

    iget v5, v2, Li/c;->h:F

    iget v6, v2, Li/c;->i:F

    iget-short v7, v2, Li/c;->j:S

    iget-wide v8, v2, Li/c;->f:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Ltypes/GpsVal;-><init>(FFSJ)V

    sget-object v4, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lm/g;->g:Ljava/util/ArrayList;

    sget-object v5, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltypes/GpsVal;

    iget-wide v3, v3, Ltypes/GpsVal;->d:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0xfa0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    :cond_0
    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lm/g;->f:Ltypes/g;

    invoke-virtual {v0, p0}, Ltypes/g;->a(Ltypes/GpsVal;)V

    :cond_1
    iget-wide v0, p0, Ltypes/GpsVal;->d:J

    goto :goto_0

    :cond_2
    sget-object p0, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_4

    sget-object p0, Lm/g;->f:Ltypes/g;

    invoke-virtual {p0}, Ltypes/g;->c()Ltypes/GpsVal;

    move-result-object p0

    sget-object v0, Lm/g;->al:Ltypes/GpsVal;

    if-nez v0, :cond_3

    new-instance v0, Ltypes/GpsVal;

    invoke-direct {v0}, Ltypes/GpsVal;-><init>()V

    sput-object v0, Lm/g;->al:Ltypes/GpsVal;

    :cond_3
    sget-object v0, Lm/g;->al:Ltypes/GpsVal;

    iget v1, p0, Ltypes/GpsVal;->a:F

    iput v1, v0, Ltypes/GpsVal;->a:F

    sget-object v0, Lm/g;->al:Ltypes/GpsVal;

    iget v1, p0, Ltypes/GpsVal;->b:F

    iput v1, v0, Ltypes/GpsVal;->b:F

    sget-object v0, Lm/g;->al:Ltypes/GpsVal;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Ltypes/GpsVal;->d:J

    iget p0, p0, Ltypes/GpsVal;->a:F

    invoke-static {p0}, Ltypes/i;->a(F)V

    return v3

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static c()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lm/g;->Z:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lm/g;->aa:J

    return-void
.end method

.method public static final d()Ltypes/GpsVal;
    .locals 3

    sget-object v0, Lm/g;->h:Le/a;

    invoke-virtual {v0}, Le/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltypes/GpsVal;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lm/g;->al:Ltypes/GpsVal;

    if-nez v0, :cond_1

    new-instance v0, Ltypes/GpsVal;

    invoke-direct {v0}, Ltypes/GpsVal;-><init>()V

    sput-object v0, Lm/g;->al:Ltypes/GpsVal;

    invoke-static {}, Lm/d;->g()[F

    move-result-object v0

    sget-object v1, Lm/g;->al:Ltypes/GpsVal;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Ltypes/GpsVal;->a:F

    sget-object v1, Lm/g;->al:Ltypes/GpsVal;

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Ltypes/GpsVal;->b:F

    sget-object v0, Lm/g;->al:Ltypes/GpsVal;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Ltypes/GpsVal;->d:J

    :cond_1
    sget-object v0, Lm/g;->al:Ltypes/GpsVal;

    return-object v0
.end method

.method public static e()I
    .locals 6

    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v2

    iget-wide v2, v2, Ltypes/GpsVal;->d:J

    sget-object v4, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltypes/GpsVal;

    iget-wide v4, v4, Ltypes/GpsVal;->d:J

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sub-long/2addr v2, v4

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    long-to-int v1, v2

    :goto_0
    return v1
.end method

.method public static f()V
    .locals 0

    invoke-static {}, Lm/g;->b()V

    invoke-static {}, Lm/a;->e()V

    invoke-static {}, Lb/c;->a()V

    invoke-static {}, Lm/d;->b()V

    return-void
.end method

.method public static g()Z
    .locals 6

    sget-object v0, Lm/g;->h:Le/a;

    invoke-virtual {v0}, Le/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltypes/GpsVal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Ltypes/GpsVal;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm/g;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lm/g;->F:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lm/g;->G:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method static i()V
    .locals 10

    new-instance v0, Li/e;

    invoke-direct {v0}, Li/e;-><init>()V

    sget-object v1, Lm/g;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Li/e;->a(Ljava/util/ArrayList;Z)Li/e$a;

    move-result-object v0

    iget-object v1, v0, Li/e$a;->a:[F

    array-length v6, v1

    sget-object v1, Lm/g;->f:Ltypes/g;

    iget v1, v1, Ltypes/g;->a:F

    sget-object v3, Lm/g;->f:Ltypes/g;

    iget v3, v3, Ltypes/g;->c:F

    sget-object v4, Lm/g;->f:Ltypes/g;

    iget v4, v4, Ltypes/g;->b:F

    sget-object v5, Lm/g;->f:Ltypes/g;

    iget v5, v5, Ltypes/g;->d:F

    invoke-static {v1, v3, v4, v5}, Ltypes/i;->b(FFFF)F

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    const v3, 0x32abcc77    # 2.0E-8f

    mul-float v1, v1, v3

    const v3, 0x33d6bf95    # 1.0E-7f

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    const v1, 0x33d6bf95    # 1.0E-7f

    :cond_0
    const v3, 0x332bcc77    # 4.0E-8f

    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    const v1, 0x332bcc77    # 4.0E-8f

    :cond_1
    new-instance v9, Li/b/b;

    invoke-direct {v9}, Li/b/b;-><init>()V

    iget-object v4, v0, Li/e$a;->a:[F

    iget-object v5, v0, Li/e$a;->b:[F

    float-to-double v7, v1

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Li/b/b;->a([F[FID)V

    iget-object v1, v9, Li/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sput v1, Lm/g;->Y:I

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, v9, Li/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltypes/GpsVal;

    iget-object v5, v0, Li/e$a;->a:[F

    aget v5, v5, v3

    iput v5, v4, Ltypes/GpsVal;->a:F

    iget-object v5, v0, Li/e$a;->b:[F

    aget v5, v5, v3

    iput v5, v4, Ltypes/GpsVal;->b:F

    iget-object v5, v0, Li/e$a;->c:[S

    aget-short v5, v5, v3

    iput-short v5, v4, Ltypes/GpsVal;->c:S

    iget-object v5, v0, Li/e$a;->d:[J

    aget-wide v6, v5, v3

    iput-wide v6, v4, Ltypes/GpsVal;->d:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v2, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static j()Z
    .locals 4

    sget-object v0, Lk/a;->a:Lk/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lm/g;->a(J)V

    invoke-static {}, Lm/g;->b()V

    invoke-virtual {v0}, Lk/a;->b()V

    sget-object v1, Lm/g;->f:Ltypes/g;

    iget-object v0, v0, Lk/a;->p:Ltypes/g;

    invoke-virtual {v1, v0}, Ltypes/g;->b(Ltypes/g;)V

    sget-object v0, Lm/g;->f:Ltypes/g;

    invoke-virtual {v0}, Ltypes/g;->c()Ltypes/GpsVal;

    move-result-object v0

    sget-object v1, Lm/g;->al:Ltypes/GpsVal;

    if-nez v1, :cond_1

    new-instance v1, Ltypes/GpsVal;

    invoke-direct {v1}, Ltypes/GpsVal;-><init>()V

    sput-object v1, Lm/g;->al:Ltypes/GpsVal;

    :cond_1
    sget-object v1, Lm/g;->al:Ltypes/GpsVal;

    iget v2, v0, Ltypes/GpsVal;->a:F

    iput v2, v1, Ltypes/GpsVal;->a:F

    sget-object v1, Lm/g;->al:Ltypes/GpsVal;

    iget v2, v0, Ltypes/GpsVal;->b:F

    iput v2, v1, Ltypes/GpsVal;->b:F

    sget-object v1, Lm/g;->al:Ltypes/GpsVal;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Ltypes/GpsVal;->d:J

    iget v0, v0, Ltypes/GpsVal;->a:F

    invoke-static {v0}, Ltypes/i;->a(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public static k()F
    .locals 2

    sget v0, Lm/g;->k:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    return v0

    :cond_0
    const/high16 v0, 0x45610000    # 3600.0f

    sget v1, Lm/g;->k:F

    div-float/2addr v0, v1

    sget v1, Lcom/xcglobe/xclog/l;->N:F

    mul-float v1, v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static l()V
    .locals 5

    invoke-static {}, Ld/d;->b()Z

    move-result v0

    sget v1, Lcom/xcglobe/xclog/l;->S:I

    const/16 v2, 0x3e8

    if-nez v1, :cond_2

    invoke-static {}, Lm/a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f40

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x3e8

    goto :goto_1

    :cond_2
    sget v0, Lcom/xcglobe/xclog/l;->S:I

    :goto_1
    const/4 v1, 0x0

    sput-object v1, Lm/g;->S:Lg/d;

    sput-object v1, Lm/g;->Q:Lg/b;

    sput-object v1, Lm/g;->af:Lg/h;

    sget-boolean v1, Lcom/xcglobe/xclog/l;->Q:Z

    if-eqz v1, :cond_3

    invoke-static {}, Ld/d;->e()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lg/d;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {v1, v3, v4}, Lg/d;-><init>(FF)V

    sput-object v1, Lm/g;->S:Lg/d;

    const/16 v1, 0x7cf

    if-le v0, v1, :cond_4

    new-instance v1, Lg/g;

    sub-int/2addr v0, v2

    invoke-direct {v1, v0}, Lg/g;-><init>(I)V

    goto :goto_2

    :cond_3
    if-le v0, v2, :cond_4

    new-instance v1, Lg/g;

    invoke-direct {v1, v0}, Lg/g;-><init>(I)V

    :goto_2
    sput-object v1, Lm/g;->Q:Lg/b;

    :cond_4
    sget-object v0, Lm/g;->P:Lg/a;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2, v1}, Lg/a;->a(IF)V

    invoke-static {}, Ld/d;->f()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lg/h;

    sget-boolean v1, Lcom/xcglobe/xclog/l;->R:Z

    invoke-direct {v0, v1}, Lg/h;-><init>(Z)V

    sput-object v0, Lm/g;->af:Lg/h;

    :cond_5
    return-void
.end method

.method public static m()V
    .locals 3

    sget v0, Lcom/xcglobe/xclog/l;->ai:I

    mul-int/lit8 v0, v0, 0x3

    sget v1, Lcom/xcglobe/xclog/l;->ai:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lm/g;->a:[I

    aget v1, v1, v0

    int-to-float v1, v1

    sput v1, Lm/g;->b:F

    sget-object v1, Lm/g;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sput v1, Lm/g;->c:F

    sget-object v1, Lm/g;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    sput v0, Lm/g;->d:I

    return-void
.end method

.method private static n()V
    .locals 14

    const/4 v0, 0x1

    sput-boolean v0, Lm/d;->b:Z

    sget-object v1, Lm/g;->D:Li/d;

    invoke-virtual {v1}, Li/d;->b()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lm/g;->G:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    sget-object v1, Lm/g;->D:Li/d;

    invoke-virtual {v1}, Li/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lm/g;->h:Le/a;

    invoke-virtual {v1}, Le/a;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    sput-object v2, Lm/g;->F:Ljava/lang/String;

    sget-object v2, Lm/g;->h:Le/a;

    invoke-virtual {v2}, Le/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltypes/j;

    iget-wide v2, v2, Ltypes/j;->d:J

    sget-wide v4, Lcom/xcglobe/xclog/l;->ag:J

    add-long/2addr v4, v2

    sput-wide v4, Lm/g;->E:J

    sget-object v4, Lk/a;->a:Lk/a;

    if-eqz v4, :cond_2

    sget-object v4, Lk/a;->a:Lk/a;

    invoke-virtual {v4}, Lk/a;->b()V

    :cond_2
    const/4 v4, 0x1

    :goto_0
    if-ge v4, v1, :cond_7

    sget-object v5, Lm/g;->h:Le/a;

    invoke-virtual {v5, v4}, Le/a;->a(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltypes/j;

    iget-wide v6, v5, Ltypes/j;->d:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_6

    const-wide/32 v8, 0x11170

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    goto :goto_2

    :cond_3
    iget v2, v5, Ltypes/j;->a:F

    iget v3, v5, Ltypes/j;->b:F

    iget-wide v6, v5, Ltypes/j;->d:J

    invoke-static {v2, v3, v6, v7}, Lm/g;->b(FFJ)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    sget-object v2, Lm/g;->D:Li/d;

    iget-short v3, v5, Ltypes/j;->g:S

    invoke-virtual {v2, v5, v3}, Li/d;->a(Ltypes/GpsVal;I)I

    sget-object v2, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Lm/g;->f:Ltypes/g;

    invoke-virtual {v2}, Ltypes/g;->a()V

    iget-wide v2, v5, Ltypes/j;->d:J

    add-int/2addr v4, v0

    :goto_1
    add-int/lit8 v5, v1, -0x1

    if-gt v4, v5, :cond_7

    sget-object v5, Lm/g;->h:Le/a;

    invoke-virtual {v5, v4}, Le/a;->a(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltypes/j;

    iget-wide v6, v5, Ltypes/j;->d:J

    sub-long/2addr v6, v2

    sget-wide v8, Lcom/xcglobe/xclog/l;->ah:J

    cmp-long v10, v6, v8

    if-ltz v10, :cond_5

    sget-object v2, Lm/g;->D:Li/d;

    iget-short v3, v5, Ltypes/j;->g:S

    invoke-virtual {v2, v5, v3}, Li/d;->a(Ltypes/GpsVal;I)I

    iget-wide v2, v5, Ltypes/j;->d:J

    sget-object v6, Lm/g;->g:Ljava/util/ArrayList;

    new-instance v13, Ltypes/GpsVal;

    iget v8, v5, Ltypes/j;->a:F

    iget v9, v5, Ltypes/j;->b:F

    iget-short v10, v5, Ltypes/j;->c:S

    iget-wide v11, v5, Ltypes/j;->d:J

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Ltypes/GpsVal;-><init>(FFSJ)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lm/g;->f:Ltypes/g;

    invoke-virtual {v6, v5}, Ltypes/g;->a(Ltypes/GpsVal;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    sget-object v0, Lm/g;->D:Li/d;

    invoke-virtual {v0}, Li/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lm/g;->G:Ljava/lang/String;

    invoke-static {}, Lcom/xcglobe/xclog/TermoFlyService;->a()V

    return-void
.end method

.method private static o()V
    .locals 8

    sget-object v0, Lm/g;->h:Le/a;

    invoke-virtual {v0}, Le/a;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lm/g;->h:Le/a;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Le/a;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltypes/GpsVal;

    iget-wide v2, v1, Ltypes/GpsVal;->d:J

    sget-wide v4, Lm/g;->e:J

    sub-long/2addr v2, v4

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-lez v0, :cond_2

    sget-object v4, Lm/g;->h:Le/a;

    invoke-virtual {v4, v0}, Le/a;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltypes/GpsVal;

    iget-wide v5, v4, Ltypes/GpsVal;->d:J

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    iget-wide v2, v1, Ltypes/GpsVal;->d:J

    iget-wide v5, v4, Ltypes/GpsVal;->d:J

    sub-long/2addr v2, v5

    invoke-static {v1, v4}, Ltypes/i;->b(Ltypes/GpsVal;Ltypes/GpsVal;)F

    move-result v0

    const v1, 0x4a5bba00    # 3600000.0f

    mul-float v0, v0, v1

    long-to-float v1, v2

    div-float/2addr v0, v1

    sput v0, Lm/g;->k:F

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static p()V
    .locals 3

    invoke-static {}, Lc/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lm/g;->x:I

    const/16 v1, 0x14

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    sget v0, Lm/g;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget v0, Lm/g;->n:F

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :goto_0
    sget v0, Lm/g;->B:I

    add-int/2addr v0, v2

    :goto_1
    sput v0, Lm/g;->B:I

    goto :goto_2

    :cond_1
    sget v0, Lm/g;->x:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_2

    sget v0, Lm/g;->n:F

    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    sget v0, Lm/g;->n:F

    const/high16 v1, 0x42a00000    # 80.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    sget v0, Lm/g;->x:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    sget v0, Lm/g;->n:F

    const/high16 v1, 0x43200000    # 160.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    sget v0, Lm/g;->x:I

    const/16 v1, 0x78

    if-ge v0, v1, :cond_4

    sget v0, Lm/g;->n:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    sget v0, Lm/g;->B:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :goto_2
    sget v0, Lm/g;->B:I

    const/16 v1, 0xc

    if-le v0, v1, :cond_5

    invoke-static {}, Lm/g;->b()V

    sput-boolean v2, Lm/g;->z:Z

    :cond_5
    return-void
.end method
