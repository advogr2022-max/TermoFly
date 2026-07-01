.class public Ld/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public b:F

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:F

.field public h:J

.field public i:I

.field public j:I

.field public k:J

.field public l:Z

.field public m:Z

.field public n:J

.field private o:J

.field private final p:Lg/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld/b;->j:I

    iput-boolean v0, p0, Ld/b;->l:Z

    iput-boolean v0, p0, Ld/b;->m:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ld/b;->n:J

    iput-wide v1, p0, Ld/b;->o:J

    new-instance v1, Lg/a;

    const/16 v2, 0x3e8

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3}, Lg/a;-><init>(IF)V

    iput-object v1, p0, Ld/b;->p:Lg/a;

    iput-boolean v0, p0, Ld/b;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld/b;->j:I

    iput-boolean v0, p0, Ld/b;->l:Z

    iput-boolean v0, p0, Ld/b;->m:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/b;->n:J

    iput-wide v0, p0, Ld/b;->o:J

    new-instance v0, Lg/a;

    const/16 v1, 0x3e8

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Lg/a;-><init>(IF)V

    iput-object v0, p0, Ld/b;->p:Lg/a;

    iput-boolean p1, p0, Ld/b;->a:Z

    return-void
.end method

.method private a(F)F
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x40f8bcd000000000L    # 101325.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x3fc85b9628cbd124L    # 0.190295

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide v0, 0x40e5a54000000000L    # 44330.0

    mul-double v2, v2, v0

    double-to-float p1, v2

    return p1
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Ld/b;->p:Lg/a;

    iget v1, p0, Ld/b;->d:F

    iget-wide v2, p0, Ld/b;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lg/a;->a(FJ)F

    iget-object v0, p0, Ld/b;->p:Lg/a;

    iget v0, v0, Lg/a;->c:F

    iput v0, p0, Ld/b;->g:F

    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 7

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x9

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ld/b;->e:I

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Ld/b;->a:Z

    if-nez p2, :cond_3

    iget p2, p0, Ld/b;->e:I

    const/16 v0, 0xb

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p2, v0

    iput p2, p0, Ld/b;->e:I

    :cond_3
    aget-object p2, p1, v2

    invoke-static {p2, v1, v2}, Li/c;->a(Ljava/lang/String;II)I

    move-result p2

    int-to-float p2, p2

    aget-object v0, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v0, v2

    add-float/2addr p2, v0

    iput p2, p0, Ld/b;->b:F

    const/4 p2, 0x3

    aget-object v0, p1, p2

    const-string v3, "S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Ld/b;->b:F

    neg-float v0, v0

    iput v0, p0, Ld/b;->b:F

    :cond_4
    const/4 v0, 0x4

    aget-object v3, p1, v0

    aget-object v4, p1, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    const/4 v6, 0x1

    if-ne v4, v5, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-static {v3, v1, p2}, Li/c;->a(Ljava/lang/String;II)I

    move-result v1

    int-to-float v1, v1

    aget-object v0, p1, v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p2

    div-float/2addr p2, v2

    add-float/2addr v1, p2

    iput v1, p0, Ld/b;->c:F

    const/4 p2, 0x5

    aget-object p1, p1, p2

    const-string v0, "W"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Ld/b;->c:F

    iget v0, p0, Ld/b;->c:F

    sub-float/2addr p1, v0

    iput p1, p0, Ld/b;->c:F

    :cond_6
    iget-wide v0, p0, Ld/b;->h:J

    iget-wide v2, p0, Ld/b;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-lez p1, :cond_7

    const/4 p1, -0x1

    iput p1, p0, Ld/b;->f:I

    :cond_7
    iput-boolean v6, p0, Ld/b;->l:Z

    iput p2, p0, Ld/b;->j:I

    return v6
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0xa

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ld/b;->d:F

    const/16 v0, 0xd

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ld/b;->g:F

    const/16 v0, 0x8

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ld/b;->b:F

    const/16 v0, 0x9

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ld/b;->c:F

    iget v0, p0, Ld/b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Ld/b;->c:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p1

    const v0, 0x40666666    # 3.6f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Ld/b;->f:I

    iget p1, p0, Ld/b;->d:F

    float-to-int p1, p1

    iput p1, p0, Ld/b;->e:I

    iput-boolean v2, p0, Ld/b;->l:Z

    :cond_1
    iput-boolean v2, p0, Ld/b;->m:Z

    const/4 p1, 0x4

    iput p1, p0, Ld/b;->i:I

    return v2
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    return v1

    :cond_1
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ld/b;->g:F

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ld/b;->d:F

    sget-object p1, Lm/g;->A:Lm/e;

    iget v0, p0, Ld/b;->d:F

    invoke-virtual {p1, v0}, Lm/e;->a(F)F

    move-result p1

    iput p1, p0, Ld/b;->d:F

    iput-boolean v3, p0, Ld/b;->m:Z

    const/4 p1, 0x2

    iput p1, p0, Ld/b;->i:I

    return v3
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Ld/b;->a(F)F

    move-result p1

    iput p1, p0, Ld/b;->d:F

    invoke-direct {p0}, Ld/b;->a()V

    sget-object p1, Lm/g;->A:Lm/e;

    iget v0, p0, Ld/b;->d:F

    invoke-virtual {p1, v0}, Lm/e;->a(F)F

    move-result p1

    iput p1, p0, Ld/b;->d:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/b;->m:Z

    iput v1, p0, Ld/b;->i:I

    return p1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Ld/b;->a(F)F

    move-result p1

    iput p1, p0, Ld/b;->d:F

    invoke-direct {p0}, Ld/b;->a()V

    sget-object p1, Lm/g;->A:Lm/e;

    iget v0, p0, Ld/b;->d:F

    invoke-virtual {p1, v0}, Lm/e;->a(F)F

    move-result p1

    iput p1, p0, Ld/b;->d:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/b;->m:Z

    const/4 v0, 0x3

    iput v0, p0, Ld/b;->i:I

    return p1
.end method

.method private f(Ljava/lang/String;)Z
    .locals 5

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x497423f0    # 999999.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Ld/b;->a(F)F

    move-result v2

    :goto_0
    iput v2, p0, Ld/b;->d:F

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    aget-object v3, p1, v2

    const-string v4, "999999"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p1, v2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3, v1, v2}, Li/c;->a(Ljava/lang/String;II)I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :goto_1
    const/4 v2, 0x3

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    aget-object v3, p1, v2

    const-string v4, "9999"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, p1, v2

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v3, v1, p1}, Li/c;->a(Ljava/lang/String;II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    iput p1, p0, Ld/b;->g:F

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Ld/b;->a()V

    :goto_2
    sget-object p1, Lm/g;->A:Lm/e;

    iget v1, p0, Ld/b;->d:F

    invoke-virtual {p1, v1}, Lm/e;->a(F)F

    move-result p1

    iput p1, p0, Ld/b;->d:F

    iput-boolean v0, p0, Ld/b;->m:Z

    iput v0, p0, Ld/b;->i:I

    return v0

    :cond_3
    return v1
.end method

.method private g(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x7

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x2

    aget-object v2, p1, v2

    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    const v1, 0x3fed0e56    # 1.852f

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, p0, Ld/b;->f:I

    iget-wide v0, p0, Ld/b;->h:J

    iput-wide v0, p0, Ld/b;->o:J

    const/4 p1, 0x1

    return p1
.end method

.method private h(Ljava/lang/String;)Z
    .locals 4

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fd381d7dbf487fdL    # 0.3048

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Ld/b;->d:F

    sget-object v0, Lm/g;->A:Lm/e;

    iget v1, p0, Ld/b;->d:F

    invoke-virtual {v0, v1}, Lm/e;->a(F)F

    move-result v0

    iput v0, p0, Ld/b;->d:F

    const/4 v0, 0x6

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p1

    const v0, 0x3e9c0ebf    # 0.3048f

    mul-float p1, p1, v0

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p1, v0

    iput p1, p0, Ld/b;->g:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/b;->m:Z

    return p1
.end method

.method private i(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/b;->l:Z

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Ld/b;->g:F

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    invoke-direct {p0, p1}, Ld/b;->a(F)F

    move-result p1

    iput p1, p0, Ld/b;->d:F

    sget-object p1, Lm/g;->A:Lm/e;

    iget v0, p0, Ld/b;->d:F

    invoke-virtual {p1, v0}, Lm/e;->a(F)F

    move-result p1

    iput p1, p0, Ld/b;->d:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/b;->m:Z

    const/4 v0, 0x7

    iput v0, p0, Ld/b;->i:I

    return p1
.end method

.method private j(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x7

    const/16 v1, 0x2a

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ld/b;->g:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld/b;->m:Z

    const/16 v0, 0x8

    iput v0, p0, Ld/b;->i:I

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ld/b;->h:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Ld/b;->k:J

    iget-wide v2, p0, Ld/b;->k:J

    iget-wide v4, p0, Ld/b;->n:J

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-gez v7, :cond_0

    return v6

    :cond_0
    iput-wide v0, p0, Ld/b;->h:J

    const/4 v0, -0x1

    iput v0, p0, Ld/b;->j:I

    iput v0, p0, Ld/b;->i:I

    iput-boolean v6, p0, Ld/b;->l:Z

    iput-boolean v6, p0, Ld/b;->m:Z

    :try_start_0
    const-string v0, "$XCTRC,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Ld/b;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "$LXWP0,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Ld/b;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const-string v0, "$LK8EX1,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Ld/b;->f(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const-string v0, "PRS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Ld/b;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    const-string v0, "_PRS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Ld/b;->e(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    const-string v0, "$GPGGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ld/b;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_6
    const-string v0, "$GPRMC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Ld/b;->g(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    const-string v0, "$GNGGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, v6}, Ld/b;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_8
    const-string v0, "$GNRMC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Ld/b;->g(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_9
    const-string v0, "$POV,E,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Ld/b;->j(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_a
    const-string v0, "$APENV1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Ld/b;->h(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_b
    const-string v0, "$FLYSYS;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Ld/b;->i(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_c
    return v6
.end method
