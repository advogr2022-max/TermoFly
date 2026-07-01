.class public La/c;
.super Ljava/lang/Object;


# static fields
.field private static g:F = 0.3f

.field private static h:F = 1.852f

.field private static i:F = 16.0f

.field private static j:I


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/b;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltypes/GpsVal;",
            ">;"
        }
    .end annotation
.end field

.field d:Ltypes/GpsVal;

.field e:I

.field f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, La/c;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/c;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/c;->c:Ljava/util/ArrayList;

    new-instance v0, Ltypes/GpsVal;

    invoke-direct {v0}, Ltypes/GpsVal;-><init>()V

    iput-object v0, p0, La/c;->d:Ltypes/GpsVal;

    const/4 v0, 0x1

    iput v0, p0, La/c;->e:I

    return-void
.end method

.method static a(Ltypes/GpsVal;Ltypes/GpsVal;)F
    .locals 2

    iget v0, p1, Ltypes/GpsVal;->b:F

    iget v1, p0, Ltypes/GpsVal;->b:F

    sub-float/2addr v0, v1

    iget p1, p1, Ltypes/GpsVal;->a:F

    iget v1, p0, Ltypes/GpsVal;->a:F

    sub-float/2addr p1, v1

    iget p0, p0, Ltypes/GpsVal;->a:F

    invoke-static {p0}, Ltypes/i;->b(F)F

    move-result p0

    mul-float p1, p1, p0

    float-to-double p0, p1

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-double p0, p0

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v0

    double-to-float p0, p0

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-gez p1, :cond_0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p0, v0

    double-to-float p0, p0

    :cond_0
    return p0
.end method

.method private h(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AGL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ltypes/r;

    invoke-direct {v1, p1}, Ltypes/r;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Ltypes/r;->b(I)V

    invoke-virtual {v1}, Ltypes/r;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    sget v1, La/c;->g:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    mul-int/lit8 v2, p1, 0x64

    goto :goto_0

    :cond_0
    const-string v1, "SFC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "GND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "UNLIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x270f

    goto :goto_0

    :cond_2
    new-instance v1, Ltypes/r;

    invoke-direct {v1, p1}, Ltypes/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ltypes/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v1, v1, Ltypes/r;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MSL"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "M"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, " M"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    int-to-float p1, v2

    sget v1, La/c;->g:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 v2, p1, 0xa

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    neg-int v2, v2

    :cond_6
    return v2
.end method

.method private i(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "La/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, La/c;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing OpenAir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, La/c;->j(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sput v1, La/c;->j:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    sget v6, La/c;->j:I

    add-int/2addr v6, v5

    sput v6, La/c;->j:I

    iget-object v6, p0, La/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const-string v6, "AC "

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "AN "

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    :cond_3
    :goto_2
    if-eqz v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, La/c;->b(La/b;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p1, La/b;->b:[I

    if-eqz v6, :cond_4

    iget-object v6, p1, La/b;->b:[I

    array-length v6, v6

    if-le v6, v5, :cond_4

    iget-object v6, p0, La/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance p1, La/b;

    invoke-direct {p1}, La/b;-><init>()V

    iput v5, p0, La/c;->e:I

    iget-object v5, p0, La/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_5
    if-eqz p1, :cond_0

    invoke-virtual {p0, v4, p1}, La/c;->a(Ljava/lang/String;La/b;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, La/c;->b(La/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, La/b;->b:[I

    if-eqz v0, :cond_7

    iget-object v0, p1, La/b;->b:[I

    array-length v0, v0

    if-le v0, v5, :cond_7

    iget-object v0, p0, La/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_6

    :catch_2
    move-exception p1

    :goto_3
    const/4 v3, 0x0

    :goto_4
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, La/c;->j(Ljava/lang/String;)V

    iget-object p1, p0, La/c;->b:Ljava/util/ArrayList;

    return-object p1

    :goto_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw p1
.end method

.method a(FFFF)V
    .locals 15

    move-object v0, p0

    iget v1, v0, La/c;->e:I

    int-to-float v1, v1

    sub-float v2, p2, p1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-gez v6, :cond_0

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v3

    double-to-float v2, v6

    :cond_0
    iget v6, v0, La/c;->e:I

    if-gez v6, :cond_1

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v6

    double-to-float v2, v3

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-nez v3, :cond_3

    add-float v6, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v2

    if-ltz v7, :cond_2

    const/4 v3, 0x1

    move/from16 v6, p2

    move/from16 v3, p3

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v3

    move/from16 v3, p3

    :goto_1
    float-to-double v8, v3

    add-float/2addr v6, v5

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v12

    double-to-float v6, v8

    move/from16 v8, p4

    float-to-double v12, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v9

    double-to-float v9, v12

    new-instance v10, Ltypes/GpsVal;

    invoke-direct {v10}, Ltypes/GpsVal;-><init>()V

    iget-object v11, v0, La/c;->d:Ltypes/GpsVal;

    iget v11, v11, Ltypes/GpsVal;->a:F

    add-float/2addr v11, v9

    iput v11, v10, Ltypes/GpsVal;->a:F

    iget-object v9, v0, La/c;->d:Ltypes/GpsVal;

    iget v9, v9, Ltypes/GpsVal;->b:F

    add-float/2addr v9, v6

    iput v9, v10, Ltypes/GpsVal;->b:F

    iget-object v6, v0, La/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    float-to-double v9, v4

    float-to-double v11, v1

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    sget v4, La/c;->i:F

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v11

    double-to-float v4, v9

    move v3, v7

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    return-void
.end method

.method a(La/b;)V
    .locals 4

    iget-object v0, p1, La/b;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v1, "RQPABCDEFGW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    const-string v1, "GP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x31

    goto :goto_0

    :cond_2
    const-string v1, "CTR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v2, 0x32

    iget-object v0, p1, La/b;->a:Ljava/lang/String;

    const-string v1, "CTR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, La/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, La/b;->a:Ljava/lang/String;

    :cond_3
    :goto_0
    iput-char v2, p1, La/b;->g:C

    return-void
.end method

.method a(Ljava/lang/String;[F)V
    .locals 5

    new-instance v0, Ltypes/r;

    invoke-direct {v0, p1}, Ltypes/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ltypes/r;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result p1

    sget v0, La/c;->h:F

    mul-float p1, p1, v0

    iget-object v0, p0, La/c;->d:Ltypes/GpsVal;

    iget v0, v0, Ltypes/GpsVal;->a:F

    iget-object v1, p0, La/c;->d:Ltypes/GpsVal;

    iget v1, v1, Ltypes/GpsVal;->b:F

    iget-object v2, p0, La/c;->d:Ltypes/GpsVal;

    iget v2, v2, Ltypes/GpsVal;->a:F

    iget-object v3, p0, La/c;->d:Ltypes/GpsVal;

    iget v3, v3, Ltypes/GpsVal;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Ltypes/i;->b(FFFF)F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, La/c;->d:Ltypes/GpsVal;

    iget v1, v1, Ltypes/GpsVal;->a:F

    iget-object v2, p0, La/c;->d:Ltypes/GpsVal;

    iget v2, v2, Ltypes/GpsVal;->b:F

    iget-object v3, p0, La/c;->d:Ltypes/GpsVal;

    iget v3, v3, Ltypes/GpsVal;->a:F

    add-float/2addr v3, v4

    iget-object v4, p0, La/c;->d:Ltypes/GpsVal;

    iget v4, v4, Ltypes/GpsVal;->b:F

    invoke-static {v1, v2, v3, v4}, Ltypes/i;->b(FFFF)F

    move-result v1

    div-float/2addr p1, v1

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p1, p2, v0

    return-void
.end method

.method a(Ljava/lang/String;La/b;)Z
    .locals 2

    :try_start_0
    const-string v0, "AN "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, La/b;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string v0, "AC "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, La/b;->o:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v0, "AL "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, La/c;->h(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, La/b;->l:I

    goto :goto_0

    :cond_2
    const-string v0, "AH "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, La/c;->h(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, La/b;->m:I

    goto :goto_0

    :cond_3
    const-string v0, "DP "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/c;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "V "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/c;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "DC "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "DA "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "DB "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error parsing #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, La/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (line "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, La/c;->j:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, La/c;->j(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method a(Ljava/lang/String;[I)[Ljava/lang/String;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2c

    const/16 v4, 0x20

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_0

    if-ne v5, v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v5, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v0, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x4e

    if-eq v7, v8, :cond_2

    const/16 v8, 0x53

    if-ne v7, v8, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    const/16 v8, 0x45

    if-eq v7, v8, :cond_6

    const/16 v8, 0x57

    if-ne v7, v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :cond_6
    :goto_2
    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    if-ge v5, v6, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v0, v7

    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_a

    if-ne v6, v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x2

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    if-eqz p2, :cond_9

    aput v3, p2, v1

    :cond_9
    return-object v0

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method

.method b(Ljava/lang/String;[I)Ltypes/GpsVal;
    .locals 7

    invoke-virtual {p0, p1, p2}, La/c;->a(Ljava/lang/String;[I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    aget-object v0, p1, p2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, p2

    invoke-virtual {p0, v1}, La/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, La/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v3

    array-length v4, v0

    const/4 v5, 0x2

    const/high16 v6, 0x42700000    # 60.0f

    if-le v4, v5, :cond_1

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, La/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v6

    add-float/2addr v0, v3

    div-float/2addr v0, v6

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    div-float/2addr v3, v6

    add-float v0, v3, v1

    :goto_0
    aget-object v1, p1, v2

    const-string v3, "S"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    neg-float v0, v0

    :cond_2
    aget-object v1, p1, v5

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {p0, p2}, La/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, La/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v2

    array-length v3, v1

    if-le v3, v5, :cond_3

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, La/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v6

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    add-float/2addr v1, p2

    goto :goto_1

    :cond_3
    div-float/2addr v2, v6

    add-float v1, v2, p2

    :goto_1
    const/4 p2, 0x3

    aget-object p1, p1, p2

    const-string p2, "W"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    neg-float v1, v1

    :cond_4
    new-instance p1, Ltypes/GpsVal;

    invoke-direct {p1}, Ltypes/GpsVal;-><init>()V

    iput v0, p1, Ltypes/GpsVal;->a:F

    iput v1, p1, Ltypes/GpsVal;->b:F

    return-object p1
.end method

.method b(Ljava/lang/String;)V
    .locals 7

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing arc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, La/c;->i(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x2

    new-array v1, p1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, La/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, La/c;->a(Ljava/lang/String;[F)V

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Ltypes/r;->e(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    aget-object p1, v0, p1

    invoke-static {p1}, Ltypes/r;->e(Ljava/lang/String;)I

    move-result p1

    int-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float p1, v5

    aget v0, v1, v2

    aget v1, v1, v3

    invoke-virtual {p0, v4, p1, v0, v1}, La/c;->a(FFFF)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method b(La/b;)Z
    .locals 7

    iget-object v0, p0, La/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p1, La/b;->o:Ljava/lang/String;

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p1, La/b;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget v2, p1, La/b;->l:I

    iput v2, p1, La/b;->d:I

    iget v2, p1, La/b;->l:I

    const/4 v3, 0x1

    if-gez v2, :cond_3

    iget v2, p1, La/b;->l:I

    neg-int v2, v2

    iput v2, p1, La/b;->d:I

    iput-boolean v3, p1, La/b;->e:Z

    :cond_3
    iget v2, p1, La/b;->d:I

    const/16 v4, 0xe10

    if-lt v2, v4, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0, p1}, La/c;->a(La/b;)V

    new-array v2, v0, [I

    iput-object v2, p1, La/b;->b:[I

    new-array v0, v0, [I

    iput-object v0, p1, La/b;->c:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, La/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, La/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltypes/GpsVal;

    iget-object v4, p1, La/b;->b:[I

    iget v5, v2, Ltypes/GpsVal;->a:F

    iget v6, p0, La/c;->a:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    aput v5, v4, v1

    iget-object v4, p1, La/b;->c:[I

    iget v5, v2, Ltypes/GpsVal;->b:F

    iget v6, p0, La/c;->a:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    aput v5, v4, v1

    iget-object v4, p1, La/b;->f:Ltypes/g;

    iget v5, v2, Ltypes/GpsVal;->a:F

    iget v2, v2, Ltypes/GpsVal;->b:F

    invoke-virtual {v4, v5, v2}, Ltypes/g;->a(FF)V

    iget-object v2, p1, La/b;->c:[I

    aget v2, v2, v1

    iget-object v4, p1, La/b;->b:[I

    aget v4, v4, v1

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, La/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, La/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, La/b;->b:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p1, La/b;->i:I

    return v3
.end method

.method c(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-virtual {p0, p1, v0}, La/c;->b(Ljava/lang/String;[I)Ltypes/GpsVal;

    move-result-object v2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/c;->b(Ljava/lang/String;[I)Ltypes/GpsVal;

    move-result-object p1

    iget-object v0, p0, La/c;->d:Ltypes/GpsVal;

    invoke-static {v0, v2}, La/c;->a(Ltypes/GpsVal;Ltypes/GpsVal;)F

    move-result v0

    iget-object v1, p0, La/c;->d:Ltypes/GpsVal;

    invoke-static {v1, p1}, La/c;->a(Ltypes/GpsVal;Ltypes/GpsVal;)F

    move-result p1

    iget-object v1, p0, La/c;->d:Ltypes/GpsVal;

    invoke-static {v1, v2}, Ltypes/i;->b(Ltypes/GpsVal;Ltypes/GpsVal;)F

    move-result v1

    iget-object v2, p0, La/c;->d:Ltypes/GpsVal;

    iget v2, v2, Ltypes/GpsVal;->a:F

    iget-object v3, p0, La/c;->d:Ltypes/GpsVal;

    iget v3, v3, Ltypes/GpsVal;->b:F

    iget-object v4, p0, La/c;->d:Ltypes/GpsVal;

    iget v4, v4, Ltypes/GpsVal;->a:F

    iget-object v5, p0, La/c;->d:Ltypes/GpsVal;

    iget v5, v5, Ltypes/GpsVal;->b:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    invoke-static {v2, v3, v4, v5}, Ltypes/i;->b(FFFF)F

    move-result v2

    div-float v2, v1, v2

    iget-object v3, p0, La/c;->d:Ltypes/GpsVal;

    iget v3, v3, Ltypes/GpsVal;->a:F

    iget-object v4, p0, La/c;->d:Ltypes/GpsVal;

    iget v4, v4, Ltypes/GpsVal;->b:F

    iget-object v5, p0, La/c;->d:Ltypes/GpsVal;

    iget v5, v5, Ltypes/GpsVal;->a:F

    add-float/2addr v5, v6

    iget-object v6, p0, La/c;->d:Ltypes/GpsVal;

    iget v6, v6, Ltypes/GpsVal;->b:F

    invoke-static {v3, v4, v5, v6}, Ltypes/i;->b(FFFF)F

    move-result v3

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, p1, v2, v1}, La/c;->a(FFFF)V

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, p1, v0}, La/c;->a(Ljava/lang/String;[F)V

    const/4 p1, 0x0

    :goto_0
    float-to-double v1, p1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double p1, v1, v3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    aget p1, v0, p1

    float-to-double v3, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float p1, v3

    const/4 v3, 0x1

    aget v3, v0, v3

    float-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    new-instance v4, Ltypes/GpsVal;

    invoke-direct {v4}, Ltypes/GpsVal;-><init>()V

    iget-object v5, p0, La/c;->d:Ltypes/GpsVal;

    iget v5, v5, Ltypes/GpsVal;->a:F

    add-float/2addr v5, v3

    iput v5, v4, Ltypes/GpsVal;->a:F

    iget-object v3, p0, La/c;->d:Ltypes/GpsVal;

    iget v3, v3, Ltypes/GpsVal;->b:F

    add-float/2addr v3, p1

    iput v3, v4, Ltypes/GpsVal;->b:F

    iget-object p1, p0, La/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    sget p1, La/c;->i:F

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-float p1, v1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method e(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "X="

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/c;->b(Ljava/lang/String;[I)Ltypes/GpsVal;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, La/c;->d:Ltypes/GpsVal;

    invoke-virtual {v0, p1}, Ltypes/GpsVal;->a(Ltypes/GpsVal;)V

    goto :goto_2

    :cond_1
    const-string v0, "D="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    :goto_1
    iput p1, p0, La/c;->e:I

    goto :goto_2

    :cond_2
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method f(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/c;->b(Ljava/lang/String;[I)Ltypes/GpsVal;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, La/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const-string p1, "0"

    return-object p1
.end method
