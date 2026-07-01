.class public Lm/c;
.super Ljava/lang/Object;


# static fields
.field public static a:F

.field private static b:[S

.field private static c:[S

.field private static d:[J

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x12c

    new-array v1, v0, [S

    sput-object v1, Lm/c;->b:[S

    new-array v1, v0, [S

    sput-object v1, Lm/c;->c:[S

    new-array v0, v0, [J

    sput-object v0, Lm/c;->d:[J

    const/4 v0, 0x0

    sput v0, Lm/c;->g:I

    sput v0, Lm/c;->h:I

    const/4 v0, 0x0

    sput v0, Lm/c;->a:F

    return-void
.end method

.method public static a()V
    .locals 8

    sget v0, Lm/g;->x:I

    const/16 v1, 0x20

    if-gt v0, v1, :cond_3

    sget v0, Lm/g;->p:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_3

    sget-wide v2, Lm/g;->r:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    sget-object v0, Lm/c;->d:[J

    sget v4, Lm/c;->g:I

    aget-wide v4, v0, v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x384

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lm/c;->d:[J

    sget v4, Lm/c;->g:I

    aput-wide v2, v0, v4

    sget v0, Lm/c;->e:I

    sget-object v4, Lm/c;->b:[S

    sget v5, Lm/c;->g:I

    const/high16 v6, 0x447a0000    # 1000.0f

    sget v7, Lm/g;->o:F

    mul-float v7, v7, v6

    float-to-int v6, v7

    int-to-short v6, v6

    aput-short v6, v4, v5

    add-int/2addr v0, v6

    sput v0, Lm/c;->e:I

    sget v0, Lm/c;->f:I

    sget-object v4, Lm/c;->c:[S

    sget v5, Lm/c;->g:I

    sget v6, Lm/g;->p:F

    float-to-int v6, v6

    int-to-short v6, v6

    aput-short v6, v4, v5

    add-int/2addr v0, v6

    sput v0, Lm/c;->f:I

    const-wide/16 v4, 0x4e20

    sub-long/2addr v2, v4

    sget v0, Lm/c;->h:I

    :goto_0
    sget v4, Lm/c;->g:I

    if-gt v0, v4, :cond_1

    sget-object v4, Lm/c;->d:[J

    aget-wide v5, v4, v0

    cmp-long v4, v5, v2

    if-gez v4, :cond_1

    sget v4, Lm/c;->e:I

    sget-object v5, Lm/c;->b:[S

    aget-short v5, v5, v0

    sub-int/2addr v4, v5

    sput v4, Lm/c;->e:I

    sget v4, Lm/c;->f:I

    sget-object v5, Lm/c;->c:[S

    aget-short v5, v5, v0

    sub-int/2addr v4, v5

    sput v4, Lm/c;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sput v0, Lm/c;->h:I

    sget v0, Lm/c;->f:I

    if-gez v0, :cond_2

    sget v0, Lm/c;->e:I

    int-to-float v0, v0

    neg-float v0, v0

    sget v1, Lm/c;->f:I

    int-to-float v1, v1

    div-float v1, v0, v1

    :cond_2
    sput v1, Lm/c;->a:F

    sget v0, Lm/c;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lm/c;->g:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_3

    invoke-static {}, Lm/c;->c()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lm/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lm/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    sget v2, Lm/c;->e:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    sget v2, Lm/c;->f:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()V
    .locals 7

    sget v0, Lm/c;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget v3, Lm/c;->g:I

    if-ge v0, v3, :cond_0

    sget-object v3, Lm/c;->b:[S

    sget-object v4, Lm/c;->b:[S

    aget-short v4, v4, v0

    aput-short v4, v3, v2

    sget-object v3, Lm/c;->c:[S

    sget-object v4, Lm/c;->c:[S

    aget-short v4, v4, v0

    aput-short v4, v3, v2

    sget-object v3, Lm/c;->d:[J

    sget-object v4, Lm/c;->d:[J

    aget-wide v5, v4, v0

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sput v2, Lm/c;->g:I

    sput v1, Lm/c;->h:I

    return-void
.end method
