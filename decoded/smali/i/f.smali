.class public Li/f;
.super Ljava/lang/Object;


# static fields
.field public static a:F = 6371.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Li/a;)Li/b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Li/f;->a(Ljava/lang/String;Li/a;Z)Li/b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Li/a;Z)Li/b;
    .locals 11

    if-eqz p2, :cond_0

    new-instance p1, Li/c;

    invoke-direct {p1, p0}, Li/c;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Li/c;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Li/c;-><init>(Ljava/lang/String;JLjava/util/zip/CRC32;Li/a;)V

    move-object p1, p2

    :goto_0
    new-instance p0, Li/b;

    invoke-direct {p0}, Li/b;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1}, Li/c;->b()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v5, :cond_1

    iget v5, p1, Li/c;->h:F

    iput v5, p0, Li/b;->g:F

    iget v5, p1, Li/c;->i:F

    iput v5, p0, Li/b;->h:F

    iget-wide v7, p1, Li/c;->f:J

    iput-wide v7, p0, Li/b;->a:J

    iget-wide v7, p1, Li/c;->a:J

    iput-wide v7, p0, Li/b;->b:J

    const/4 v5, 0x0

    :cond_1
    iget-wide v7, p1, Li/c;->f:J

    iget-wide v9, p0, Li/b;->a:J

    sub-long/2addr v7, v9

    long-to-int v7, v7

    div-int/lit16 v7, v7, 0x3e8

    if-ne v7, v6, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    iget v8, p1, Li/c;->h:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v8, p1, Li/c;->i:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-short v8, p1, Li/c;->j:S

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, p1, Li/c;->h:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, p1, Li/c;->i:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-short v6, p1, Li/c;->j:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v6, v7

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Li/c;->a()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v4, p1, [I

    iput-object v4, p0, Li/b;->e:[I

    new-array v4, p1, [S

    iput-object v4, p0, Li/b;->f:[S

    new-array v4, p1, [F

    iput-object v4, p0, Li/b;->c:[F

    new-array v4, p1, [F

    iput-object v4, p0, Li/b;->d:[F

    :goto_3
    if-ge v3, p1, :cond_4

    iget-object v4, p0, Li/b;->e:[I

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Li/b;->c:[F

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Li/b;->d:[F

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Li/b;->f:[S

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object p0
.end method
