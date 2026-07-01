.class public Ltypes/n;
.super Ljava/lang/Object;


# static fields
.field public static a:F = 2.0f

.field public static b:F = 4.0f


# instance fields
.field c:[Ljava/lang/String;

.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:C

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ltypes/n;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltypes/n;->j:Z

    return-void
.end method

.method public static a(Ljava/lang/String;II)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x39

    const/16 v4, 0x30

    if-lt v1, v4, :cond_1

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    const/16 v5, 0x2d

    if-ne v1, v5, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_9

    add-int/lit8 p1, p1, 0x1

    if-eq p1, p2, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_9

    if-le v5, v3, :cond_3

    goto :goto_5

    :cond_3
    move v6, v5

    move v5, v1

    move v1, v6

    :goto_2
    rsub-int/lit8 v1, v1, 0x30

    add-int/2addr v0, v1

    add-int/2addr p1, v2

    if-ne p1, p2, :cond_5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    neg-int v0, v0

    :goto_3
    return v0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v4, :cond_7

    if-le v1, v3, :cond_6

    goto :goto_4

    :cond_6
    mul-int/lit8 v0, v0, 0xa

    goto :goto_2

    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    neg-int v0, v0

    :cond_9
    :goto_5
    return v0
.end method

.method public static a(FF)Ljava/lang/String;
    .locals 3

    sget v0, Ltypes/n;->a:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    sget v0, Ltypes/n;->b:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p0, p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "w"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p1, p1

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    const-string v3, ""

    aput-object v3, p1, v0

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    return v1

    :cond_2
    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_3

    const/16 v7, 0x9

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x22

    if-ne v3, v6, :cond_7

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v5, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v5, :cond_8

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    :goto_3
    move v2, v4

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v3, 0x5

    if-ge v0, v3, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method private b(Ljava/lang/String;)F
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-static {p1, v2, v3}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result v2

    int-to-float v2, v2

    float-to-double v4, v1

    float-to-double v1, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v1

    double-to-float v1, v4

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x53

    if-ne p1, v1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    mul-float v0, v0, p1

    :cond_1
    return v0
.end method

.method private c(Ljava/lang/String;)F
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x5

    invoke-static {p1, v0, v2}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0x9

    const/4 v3, 0x6

    invoke-static {p1, v3, v2}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result v3

    int-to-float v3, v3

    float-to-double v4, v0

    float-to-double v6, v3

    const-wide v8, 0x408f400000000000L    # 1000.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-float v0, v4

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x57

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    mul-float v1, v1, p1

    :cond_0
    return v1
.end method


# virtual methods
.method public a()I
    .locals 3

    iget v0, p0, Ltypes/n;->k:I

    const v1, 0x41c64e6d

    mul-int v0, v0, v1

    add-int/lit16 v0, v0, 0x3039

    iput v0, p0, Ltypes/n;->k:I

    iget v0, p0, Ltypes/n;->k:I

    iget v1, p0, Ltypes/n;->l:I

    const v2, 0x186a0

    add-int/2addr v1, v2

    rem-int/2addr v0, v1

    return v0
.end method

.method public a(I)V
    .locals 1

    const v0, 0x41c64e6c

    iput v0, p0, Ltypes/n;->k:I

    iput p1, p0, Ltypes/n;->l:I

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x23

    if-ne v1, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_0

    iput-boolean v2, p0, Ltypes/n;->j:Z

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v1, v2}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result p1

    invoke-virtual {p0, p1}, Ltypes/n;->a(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x2d

    if-ne v1, p1, :cond_1

    iput-boolean v0, p0, Ltypes/n;->j:Z

    goto :goto_0

    :cond_1
    iput-char v1, p0, Ltypes/n;->i:C

    :goto_0
    return v0

    :cond_2
    const-string v1, ""

    iput-object v1, p0, Ltypes/n;->h:Ljava/lang/String;

    iput v0, p0, Ltypes/n;->f:I

    const/16 v1, 0x7c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-static {p1, v0, v3}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ltypes/n;->d:F

    add-int/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v3, v0}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Ltypes/n;->e:F

    goto :goto_2

    :cond_3
    invoke-static {p1, v3, v0}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Ltypes/n;->e:F

    iget-char v3, p0, Ltypes/n;->i:C

    const/16 v5, 0x74

    if-eq v3, v5, :cond_5

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltypes/n;->h:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltypes/n;->h:Ljava/lang/String;

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v1, v0}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result p1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result p1

    :goto_1
    iput p1, p0, Ltypes/n;->f:I

    :goto_2
    iget-boolean p1, p0, Ltypes/n;->j:Z

    if-eqz p1, :cond_6

    iget p1, p0, Ltypes/n;->d:F

    invoke-virtual {p0}, Ltypes/n;->a()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Ltypes/n;->d:F

    iget p1, p0, Ltypes/n;->e:F

    invoke-virtual {p0}, Ltypes/n;->a()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Ltypes/n;->e:F

    :cond_6
    iget-char p1, p0, Ltypes/n;->i:C

    const/16 v0, 0x63

    if-ne p1, v0, :cond_7

    const/high16 p1, 0x447a0000    # 1000.0f

    goto :goto_3

    :cond_7
    const p1, 0x461c4000    # 10000.0f

    :goto_3
    iget v0, p0, Ltypes/n;->d:F

    div-float/2addr v0, p1

    iput v0, p0, Ltypes/n;->d:F

    iget v0, p0, Ltypes/n;->e:F

    div-float/2addr v0, p1

    iput v0, p0, Ltypes/n;->e:F

    return v2
.end method

.method public a(Ljava/lang/String;C)Z
    .locals 4

    iget-object v0, p0, Ltypes/n;->c:[Ljava/lang/String;

    invoke-static {p1, v0}, Ltypes/n;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iput-char p2, p0, Ltypes/n;->i:C

    const/16 p1, 0x74

    if-ne p2, p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ltypes/n;->c:[Ljava/lang/String;

    aget-object p1, p1, v0

    :goto_0
    iput-object p1, p0, Ltypes/n;->h:Ljava/lang/String;

    iget-object p1, p0, Ltypes/n;->c:[Ljava/lang/String;

    const/4 p2, 0x3

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Ltypes/n;->b(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ltypes/n;->d:F

    iget-object p1, p0, Ltypes/n;->c:[Ljava/lang/String;

    const/4 p2, 0x4

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Ltypes/n;->c(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Ltypes/n;->e:F

    iget-object p1, p0, Ltypes/n;->c:[Ljava/lang/String;

    const/4 p2, 0x5

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_3

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :goto_1
    invoke-static {p1, v0, p2}, Ltypes/n;->a(Ljava/lang/String;II)I

    move-result p2

    iput p2, p0, Ltypes/n;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x6d

    if-eq p1, p2, :cond_4

    const/16 p2, 0x4d

    if-eq p1, p2, :cond_4

    const/16 p2, 0x2c

    if-eq p1, p2, :cond_4

    iget p1, p0, Ltypes/n;->f:I

    int-to-double p1, p1

    const-wide v2, 0x3fd381d7dbf487fdL    # 0.3048

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    double-to-int p1, p1

    iput p1, p0, Ltypes/n;->f:I

    goto :goto_2

    :cond_3
    iput v0, p0, Ltypes/n;->f:I

    :cond_4
    :goto_2
    return v1
.end method
