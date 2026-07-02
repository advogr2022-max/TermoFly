.class public Lm/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/f$a;
    }
.end annotation


# static fields
.field public static a:Lm/f$a;

.field private static final b:[I

.field private static c:F

.field private static d:F

.field private static e:I

.field private static f:J

.field private static g:J

.field private static h:I

.field private static i:I

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lm/f;->b:[I

    const-wide/16 v0, 0x0

    sput-wide v0, Lm/f;->f:J

    sput-wide v0, Lm/f;->g:J

    const/4 v0, 0x0

    sput v0, Lm/f;->h:I

    sput v0, Lm/f;->i:I

    sput-boolean v0, Lm/f;->j:Z

    sget-object v0, Lm/f$a;->b:Lm/f$a;

    sput-object v0, Lm/f;->a:Lm/f$a;

    return-void

    nop

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
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lm/f;->g:J

    sput-wide v0, Lm/f;->f:J

    const/4 v0, 0x0

    sput v0, Lm/f;->i:I

    sput v0, Lm/f;->h:I

    sput-boolean v0, Lm/f;->j:Z

    invoke-static {}, Lm/f;->c()V

    sget-object v0, Lm/f$a;->a:Lm/f$a;

    sput-object v0, Lm/f;->a:Lm/f$a;

    return-void
.end method

.method public static a(Ltypes/GpsVal;)Z
    .locals 8

    sget-object v0, Lm/f;->a:Lm/f$a;

    sget-object v1, Lm/f$a;->a:Lm/f$a;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-ne v0, v1, :cond_4

    sget-boolean v0, Lm/f;->j:Z

    if-nez v0, :cond_1

    sget v0, Lm/g;->k:F

    sget v1, Lm/f;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget v0, Lcom/xcglobe/xclog/l;->ai:I

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    sput-wide v5, Lm/f;->f:J

    sput v7, Lm/f;->h:I

    goto/16 :goto_1

    :cond_1
    :goto_0
    sget-wide v0, Lm/f;->f:J

    cmp-long v3, v0, v5

    if-nez v3, :cond_2

    iget-wide v0, p0, Ltypes/GpsVal;->d:J

    sput-wide v0, Lm/f;->f:J

    :cond_2
    sget-boolean v0, Lm/f;->j:Z

    if-nez v0, :cond_3

    invoke-static {}, Lc/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lm/f;->h:I

    add-int/2addr v0, v4

    sput v0, Lm/f;->h:I

    if-lt v0, v2, :cond_8

    iget-wide v0, p0, Ltypes/GpsVal;->d:J

    sget-wide v2, Lm/f;->f:J

    sub-long/2addr v0, v2

    sget p0, Lm/f;->e:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_8

    sget-boolean p0, Lm/g;->z:Z

    if-eqz p0, :cond_8

    :cond_3
    sget-object p0, Lm/f$a;->b:Lm/f$a;

    sput-object p0, Lm/f;->a:Lm/f$a;

    sput-wide v5, Lm/f;->g:J

    sput v7, Lm/f;->i:I

    sput-boolean v7, Lm/f;->j:Z

    goto :goto_2

    :cond_4
    sget v0, Lcom/xcglobe/xclog/l;->ai:I

    if-ne v0, v3, :cond_5

    return v7

    :cond_5
    sget v0, Lm/g;->k:F

    sget v1, Lm/f;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    sget-wide v0, Lm/f;->g:J

    cmp-long v3, v0, v5

    if-nez v3, :cond_6

    iget-wide v0, p0, Ltypes/GpsVal;->d:J

    sput-wide v0, Lm/f;->g:J

    :cond_6
    sget v0, Lm/f;->i:I

    add-int/2addr v0, v4

    sput v0, Lm/f;->i:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_8

    iget-wide v0, p0, Ltypes/GpsVal;->d:J

    sget-wide v2, Lm/f;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long p0, v0, v2

    if-lez p0, :cond_8

    invoke-static {}, Lc/a;->a()Z

    move-result p0

    if-nez p0, :cond_8

    sget-object p0, Lm/f$a;->a:Lm/f$a;

    sput-object p0, Lm/f;->a:Lm/f$a;

    sput-wide v5, Lm/f;->f:J

    sput v7, Lm/f;->h:I

    goto :goto_2

    :cond_7
    sput v7, Lm/f;->i:I

    sput-wide v5, Lm/f;->g:J

    :cond_8
    :goto_1
    const/4 v4, 0x0

    :goto_2
    return v4
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lm/f;->j:Z

    return-void
.end method

.method public static c()V
    .locals 3

    sget v0, Lcom/xcglobe/xclog/l;->ai:I

    mul-int/lit8 v0, v0, 0x3

    sget v1, Lcom/xcglobe/xclog/l;->ai:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lm/f;->b:[I

    aget v1, v1, v0

    int-to-float v1, v1

    sput v1, Lm/f;->c:F

    sget-object v1, Lm/f;->b:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sput v1, Lm/f;->d:F

    sget-object v1, Lm/f;->b:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    sput v0, Lm/f;->e:I

    return-void
.end method

.method public static d()Z
    .locals 2

    sget-object v0, Lm/f;->a:Lm/f$a;

    sget-object v1, Lm/f$a;->b:Lm/f$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()V
    .locals 1

    sget-object v0, Lm/f$a;->a:Lm/f$a;

    sput-object v0, Lm/f;->a:Lm/f$a;

    return-void
.end method
