.class public Li/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/e$a;
    }
.end annotation


# instance fields
.field public a:Li/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/e;->a:Li/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Li/b;
    .locals 9

    new-instance v0, Li/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xcglobe/xclog/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Li/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Li/e;->a:Li/c;

    new-instance p1, Li/b;

    invoke-direct {p1}, Li/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Li/e;->a:Li/c;

    invoke-virtual {v5}, Li/c;->b()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    iget-object v4, p0, Li/e;->a:Li/c;

    iget v4, v4, Li/c;->h:F

    iput v4, p1, Li/b;->g:F

    iget-object v4, p0, Li/e;->a:Li/c;

    iget v4, v4, Li/c;->i:F

    iput v4, p1, Li/b;->h:F

    iget-object v4, p0, Li/e;->a:Li/c;

    iget-wide v4, v4, Li/c;->f:J

    iput-wide v4, p1, Li/b;->a:J

    const/4 v4, 0x0

    :cond_0
    iget-object v5, p0, Li/e;->a:Li/c;

    iget-wide v5, v5, Li/c;->f:J

    iget-wide v7, p1, Li/b;->a:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Li/e;->a:Li/c;

    iget v5, v5, Li/c;->h:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Li/e;->a:Li/c;

    iget v5, v5, Li/c;->i:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Li/e;->a:Li/c;

    iget-short v5, v5, Li/c;->j:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [I

    iput-object v5, p1, Li/b;->e:[I

    new-array v5, v4, [S

    iput-object v5, p1, Li/b;->f:[S

    new-array v5, v4, [F

    iput-object v5, p1, Li/b;->c:[F

    new-array v5, v4, [F

    iput-object v5, p1, Li/b;->d:[F

    :goto_1
    if-ge v6, v4, :cond_2

    iget-object v5, p1, Li/b;->e:[I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    iget-object v5, p1, Li/b;->c:[F

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v5, v6

    iget-object v5, p1, Li/b;->d:[F

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v5, v6

    iget-object v5, p1, Li/b;->f:[S

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    aput-short v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Li/b;->c()V

    return-object p1
.end method

.method public a(Ljava/util/ArrayList;Z)Li/e$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ltypes/GpsVal;",
            ">;Z)",
            "Li/e$a;"
        }
    .end annotation

    new-instance v0, Li/e$a;

    invoke-direct {v0, p0}, Li/e$a;-><init>(Li/e;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [F

    iput-object v2, v0, Li/e$a;->a:[F

    new-array v2, v1, [F

    iput-object v2, v0, Li/e$a;->b:[F

    if-nez p2, :cond_0

    new-array v2, v1, [S

    iput-object v2, v0, Li/e$a;->c:[S

    new-array v2, v1, [J

    iput-object v2, v0, Li/e$a;->d:[J

    :cond_0
    const/4 v2, 0x0

    if-lez v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltypes/GpsVal;

    iget-short v3, v3, Ltypes/GpsVal;->c:S

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput v3, v0, Li/e$a;->g:I

    iput v3, v0, Li/e$a;->e:I

    iput v3, v0, Li/e$a;->f:I

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltypes/GpsVal;

    iget-object v5, v0, Li/e$a;->a:[F

    iget v6, v4, Ltypes/GpsVal;->a:F

    aput v6, v5, v2

    iget-object v5, v0, Li/e$a;->b:[F

    iget v6, v4, Ltypes/GpsVal;->b:F

    aput v6, v5, v2

    if-nez p2, :cond_2

    iget-object v5, v0, Li/e$a;->c:[S

    iget-short v6, v4, Ltypes/GpsVal;->c:S

    aput-short v6, v5, v2

    iget-object v5, v0, Li/e$a;->d:[J

    iget-wide v6, v4, Ltypes/GpsVal;->d:J

    aput-wide v6, v5, v2

    :cond_2
    iget-short v5, v4, Ltypes/GpsVal;->c:S

    iget v6, v0, Li/e$a;->e:I

    if-le v5, v6, :cond_3

    iget-short v5, v4, Ltypes/GpsVal;->c:S

    iput v5, v0, Li/e$a;->e:I

    goto :goto_2

    :cond_3
    iget-short v5, v4, Ltypes/GpsVal;->c:S

    iget v6, v0, Li/e$a;->f:I

    if-ge v5, v6, :cond_4

    iget-short v5, v4, Ltypes/GpsVal;->c:S

    iput v5, v0, Li/e$a;->f:I

    :cond_4
    :goto_2
    iget-short v4, v4, Ltypes/GpsVal;->c:S

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-lez v1, :cond_6

    div-int/2addr v3, v1

    iput v3, v0, Li/e$a;->g:I

    :cond_6
    return-object v0
.end method

.method public b(Ljava/util/ArrayList;Z)Li/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ltypes/GpsVal;",
            ">;Z)",
            "Li/b;"
        }
    .end annotation

    new-instance v0, Li/b;

    invoke-direct {v0}, Li/b;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [F

    iput-object v2, v0, Li/b;->c:[F

    new-array v2, v1, [F

    iput-object v2, v0, Li/b;->d:[F

    if-nez p2, :cond_0

    new-array v2, v1, [S

    iput-object v2, v0, Li/b;->f:[S

    new-array v2, v1, [I

    iput-object v2, v0, Li/b;->e:[I

    :cond_0
    const/4 v2, 0x0

    if-lez v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltypes/GpsVal;

    iget-wide v3, v3, Ltypes/GpsVal;->d:J

    iput-wide v3, v0, Li/b;->a:J

    :cond_1
    new-instance v3, Ltypes/g;

    invoke-direct {v3}, Ltypes/g;-><init>()V

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltypes/GpsVal;

    invoke-virtual {v3, v4}, Ltypes/g;->a(Ltypes/GpsVal;)V

    iget-object v5, v0, Li/b;->c:[F

    iget v6, v4, Ltypes/GpsVal;->a:F

    aput v6, v5, v2

    iget-object v5, v0, Li/b;->d:[F

    iget v6, v4, Ltypes/GpsVal;->b:F

    aput v6, v5, v2

    iget-wide v5, v4, Ltypes/GpsVal;->d:J

    iget-wide v7, v0, Li/b;->a:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    div-int/lit16 v5, v5, 0x3e8

    if-nez v2, :cond_2

    iget v6, v4, Ltypes/GpsVal;->a:F

    iput v6, v0, Li/b;->g:F

    iget v6, v4, Ltypes/GpsVal;->b:F

    iput v6, v0, Li/b;->h:F

    :cond_2
    if-nez p2, :cond_3

    iget-object v6, v0, Li/b;->f:[S

    iget-short v4, v4, Ltypes/GpsVal;->c:S

    aput-short v4, v6, v2

    iget-object v4, v0, Li/b;->e:[I

    aput v5, v4, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method
