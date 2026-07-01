.class public Ll/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltypes/PoiPoint;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/a;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".cup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, ".json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v0, ".gpx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, ".lkt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x7

    return p0

    :cond_3
    const-string v0, "OziExplorer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-string v0, ".wpt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "G "

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    const/16 v0, 0x64

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WGS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    const-string p0, "$FormatGEO"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x3

    return p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown waypoints file format"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ltypes/PoiPoint;

    invoke-direct {v1}, Ltypes/PoiPoint;-><init>()V

    const/4 v2, 0x1

    aget-object v2, p1, v2

    iput-object v2, v1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Ltypes/PoiPoint;->i:F

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Ltypes/PoiPoint;->j:F

    array-length v2, p1

    const/16 v3, 0xe

    if-le v2, v3, :cond_3

    aget-object p1, p1, v3

    invoke-static {p1}, Ltypes/r;->e(Ljava/lang/String;)I

    move-result p1

    int-to-short p1, p1

    iput-short p1, v1, Ltypes/PoiPoint;->k:S

    :cond_3
    iget-object p1, p0, Ll/a;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "W"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ltypes/PoiPoint;

    invoke-direct {v1}, Ltypes/PoiPoint;-><init>()V

    const/4 v2, 0x1

    aget-object v2, p1, v2

    iput-object v2, v1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ltypes/h;->b(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Ltypes/PoiPoint;->i:F

    const/4 v2, 0x4

    aget-object v2, p1, v2

    invoke-static {v2}, Ltypes/h;->b(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Ltypes/PoiPoint;->j:F

    const/4 v2, 0x7

    aget-object p1, p1, v2

    invoke-static {p1}, Ltypes/r;->e(Ljava/lang/String;)I

    move-result p1

    int-to-short p1, p1

    iput-short p1, v1, Ltypes/PoiPoint;->k:S

    iget-object p1, p0, Ll/a;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, "$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, " +"

    const-string v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Ltypes/PoiPoint;

    invoke-direct {v3}, Ltypes/PoiPoint;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Ltypes/PoiPoint;->l:Ljava/lang/String;

    move v5, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_5

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x4

    if-ne v4, v6, :cond_3

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltypes/h;->a(Ljava/lang/String;)F

    move-result v5

    iput v5, v3, Ltypes/PoiPoint;->i:F

    add-int/lit8 v5, v2, 0x1

    goto :goto_4

    :cond_3
    const/16 v6, 0x8

    if-ne v4, v6, :cond_5

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltypes/h;->a(Ljava/lang/String;)F

    move-result v4

    iput v4, v3, Ltypes/PoiPoint;->j:F

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v2, v1}, Ltypes/r;->a(Ljava/lang/String;II)I

    move-result p1

    :goto_2
    int-to-short p1, p1

    iput-short p1, v3, Ltypes/PoiPoint;->k:S

    goto :goto_3

    :cond_4
    invoke-static {p1, v2, v1}, Ltypes/r;->a(Ljava/lang/String;II)I

    move-result p1

    goto :goto_2

    :goto_3
    iget-object p1, p0, Ll/a;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ltypes/r;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ltypes/r;-><init>(Ljava/lang/String;Z)V

    :goto_0
    const-string p1, "wpt"

    invoke-virtual {v0, p1}, Ltypes/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v2, Ltypes/PoiPoint;

    invoke-direct {v2}, Ltypes/PoiPoint;-><init>()V

    const-string v3, "lat"

    const-string v4, ">"

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v4}, Ltypes/r;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Ltypes/PoiPoint;->i:F

    const-string v3, "lon"

    const-string v4, ">"

    invoke-static {p1, v5, v3, v4}, Ltypes/r;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Ltypes/PoiPoint;->j:F

    new-instance v3, Ltypes/r;

    invoke-direct {v3, p1, v1}, Ltypes/r;-><init>(Ljava/lang/String;Z)V

    const-string p1, "ele"

    invoke-virtual {v3, p1}, Ltypes/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltypes/r;->e(Ljava/lang/String;)I

    move-result p1

    int-to-short p1, p1

    iput-short p1, v2, Ltypes/PoiPoint;->k:S

    invoke-virtual {v3, v5}, Ltypes/r;->a(I)V

    const-string p1, "name"

    invoke-virtual {v3, p1}, Ltypes/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iget-object p1, p0, Ll/a;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ltypes/n;

    invoke-direct {v0}, Ltypes/n;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-void

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v2, "-----Related Tasks-----"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x77

    invoke-virtual {v0, p1, v2}, Ltypes/n;->a(Ljava/lang/String;C)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ltypes/PoiPoint;

    invoke-direct {p1}, Ltypes/PoiPoint;-><init>()V

    iget v3, v0, Ltypes/n;->d:F

    iget v4, v0, Ltypes/n;->e:F

    iget v2, v0, Ltypes/n;->f:I

    int-to-short v5, v2

    iget-object v6, v0, Ltypes/n;->h:Ljava/lang/String;

    iget-char v7, v0, Ltypes/n;->i:C

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Ltypes/PoiPoint;->a(FFSLjava/lang/String;C)V

    iget-object v2, p0, Ll/a;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltypes/PoiPoint;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/xcglobe/xclog/l;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ll/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll/a;->b:I

    iget p1, p0, Ll/a;->b:I

    invoke-virtual {p0, v0, p1}, Ll/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ltypes/PoiPoint;",
            ">;"
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported waypoints format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-direct {p0, p1}, Ll/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Ll/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Ll/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Ll/a;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Ll/a;->f(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ll/a;->a:Ljava/util/List;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
