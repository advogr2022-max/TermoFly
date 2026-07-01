.class public Ltypes/q;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:F

.field private static k:F

.field private static l:F

.field private static m:F

.field private static final n:[F

.field private static final o:[F

.field private static final p:[F

.field private static final q:[F

.field private static final r:[Ljava/lang/String;

.field private static final s:[Ljava/lang/String;

.field private static final t:[Ljava/lang/String;

.field private static final u:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Ltypes/q;->n:[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    sput-object v2, Ltypes/q;->o:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    sput-object v2, Ltypes/q;->p:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    sput-object v2, Ltypes/q;->q:[F

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "km"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "mi"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "nmi"

    aput-object v3, v2, v1

    sput-object v2, Ltypes/q;->r:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "m"

    aput-object v3, v2, v4

    const-string v3, "ft"

    aput-object v3, v2, v5

    sput-object v2, Ltypes/q;->s:[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "km/h"

    aput-object v3, v2, v4

    const-string v3, "mph"

    aput-object v3, v2, v5

    const-string v3, "knots"

    aput-object v3, v2, v1

    sput-object v2, Ltypes/q;->t:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "m/s"

    aput-object v2, v0, v4

    const-string v2, "fpm"

    aput-object v2, v0, v5

    const-string v2, "knots"

    aput-object v2, v0, v1

    sput-object v0, Ltypes/q;->u:[Ljava/lang/String;

    sput v4, Ltypes/q;->e:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f1f122f
        0x3f0a3a9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x4051f948
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f1f122f
        0x3f0a2400
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x4344d9b3
        0x3ff8cfe5
    .end array-data
.end method

.method public static a(F)F
    .locals 1

    sget v0, Ltypes/q;->j:F

    mul-float p0, p0, v0

    return p0
.end method

.method public static a()V
    .locals 2

    sget-object v0, Ltypes/q;->r:[Ljava/lang/String;

    sget v1, Ltypes/q;->f:I

    aget-object v0, v0, v1

    sput-object v0, Ltypes/q;->a:Ljava/lang/String;

    sget-object v0, Ltypes/q;->s:[Ljava/lang/String;

    sget v1, Ltypes/q;->g:I

    aget-object v0, v0, v1

    sput-object v0, Ltypes/q;->b:Ljava/lang/String;

    sget-object v0, Ltypes/q;->t:[Ljava/lang/String;

    sget v1, Ltypes/q;->h:I

    aget-object v0, v0, v1

    sput-object v0, Ltypes/q;->c:Ljava/lang/String;

    sget-object v0, Ltypes/q;->u:[Ljava/lang/String;

    sget v1, Ltypes/q;->i:I

    aget-object v0, v0, v1

    sput-object v0, Ltypes/q;->d:Ljava/lang/String;

    sget-object v0, Ltypes/q;->n:[F

    sget v1, Ltypes/q;->f:I

    aget v0, v0, v1

    sput v0, Ltypes/q;->j:F

    sget-object v0, Ltypes/q;->o:[F

    sget v1, Ltypes/q;->g:I

    aget v0, v0, v1

    sput v0, Ltypes/q;->k:F

    sget-object v0, Ltypes/q;->p:[F

    sget v1, Ltypes/q;->h:I

    aget v0, v0, v1

    sput v0, Ltypes/q;->l:F

    sget-object v0, Ltypes/q;->q:[F

    sget v1, Ltypes/q;->i:I

    aget v0, v0, v1

    sput v0, Ltypes/q;->m:F

    return-void
.end method

.method public static a(I)V
    .locals 0

    sput p0, Ltypes/q;->f:I

    sget p0, Ltypes/q;->e:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Ltypes/q;->e:I

    return-void
.end method

.method public static b(F)F
    .locals 1

    sget v0, Ltypes/q;->l:F

    mul-float p0, p0, v0

    return p0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Ltypes/q;->g:I

    sget p0, Ltypes/q;->e:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Ltypes/q;->e:I

    return-void
.end method

.method public static b()Z
    .locals 2

    sget v0, Ltypes/q;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static c(F)F
    .locals 2

    sget v0, Ltypes/q;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Ltypes/q;->m:F

    mul-float p0, p0, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    :goto_0
    mul-float p0, p0, v0

    return p0

    :cond_0
    sget v0, Ltypes/q;->m:F

    goto :goto_0
.end method

.method public static c(I)V
    .locals 0

    sput p0, Ltypes/q;->h:I

    sget p0, Ltypes/q;->e:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Ltypes/q;->e:I

    return-void
.end method

.method public static d(I)V
    .locals 0

    sput p0, Ltypes/q;->i:I

    sget p0, Ltypes/q;->e:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Ltypes/q;->e:I

    return-void
.end method

.method public static e(I)I
    .locals 1

    int-to-float p0, p0

    sget v0, Ltypes/q;->k:F

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static f(I)I
    .locals 1

    int-to-float p0, p0

    sget v0, Ltypes/q;->k:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
