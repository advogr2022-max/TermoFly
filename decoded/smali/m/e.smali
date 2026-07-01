.class public Lm/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = true


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lm/e;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lm/e;->c:F

    iput v0, p0, Lm/e;->d:F

    invoke-virtual {p0}, Lm/e;->a()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 3

    sget-boolean v0, Lm/e;->a:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-boolean v0, p0, Lm/e;->e:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lm/g;->z:Z

    if-eqz v0, :cond_1

    sget v0, Lm/g;->i:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    invoke-static {}, Lm/f;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    iget-short v0, v0, Ltypes/GpsVal;->c:S

    iget v1, p0, Lm/e;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lm/e;->b:I

    if-eqz v0, :cond_3

    int-to-float v0, v0

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lm/e;->c:F

    invoke-static {}, Lm/f;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lm/e;->b:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Lm/e;->b:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_6

    iget v0, p0, Lm/e;->c:F

    iput v0, p0, Lm/e;->d:F

    goto :goto_2

    :cond_5
    :goto_1
    iget v0, p0, Lm/e;->c:F

    iput v0, p0, Lm/e;->d:F

    iput-boolean v2, p0, Lm/e;->e:Z

    :cond_6
    :goto_2
    iget v0, p0, Lm/e;->d:F

    add-float/2addr p1, v0

    return p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/e;->e:Z

    const/4 v1, 0x0

    iput v1, p0, Lm/e;->c:F

    iput v1, p0, Lm/e;->d:F

    iput v0, p0, Lm/e;->b:I

    iput-boolean v0, p0, Lm/e;->e:Z

    const/4 v0, 0x1

    sput-boolean v0, Lm/e;->a:Z

    return-void
.end method
