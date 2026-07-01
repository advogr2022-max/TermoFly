.class public Lb/g;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ltypes/GpsVal;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:Z = false

.field private static e:J


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltypes/PoiPoint;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ltypes/GpsVal;

.field private f:Ltypes/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g;->c:Ljava/util/List;

    new-instance v0, Ltypes/GpsVal;

    invoke-direct {v0}, Ltypes/GpsVal;-><init>()V

    iput-object v0, p0, Lb/g;->d:Ltypes/GpsVal;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g;->f:Ltypes/a;

    return-void
.end method

.method private static a(FF)J
    .locals 5

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p0, p0, v0

    float-to-long v1, p0

    const-wide/32 v3, 0x7a120

    mul-long v1, v1, v3

    mul-float p1, p1, v0

    float-to-long p0, p1

    add-long/2addr v1, p0

    return-wide v1
.end method

.method public static a()V
    .locals 13

    const-string v0, "waypoints"

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "poi"

    invoke-static {v1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "active_wpfiles"

    invoke-static {v2}, Lcom/xcglobe/xclog/j;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_3

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    new-instance v7, Ll/a;

    invoke-direct {v7}, Ll/a;-><init>()V

    aget-object v8, v0, v6

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    invoke-virtual {v7, v8}, Ll/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltypes/PoiPoint;

    iget v10, v9, Ltypes/PoiPoint;->i:F

    iget v11, v9, Ltypes/PoiPoint;->j:F

    invoke-static {v10, v11}, Lb/g;->a(FF)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/imported-waypoints.cup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ll/b;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/xcglobe/xclog/h;Ltypes/GpsVal;Z)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0, p2}, Lb/g;->a(Ltypes/GpsVal;Ljava/util/List;Z)V

    invoke-static {v0}, Lb/g;->a(Ljava/util/List;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ltypes/PoiPoint;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ltypes/PoiPoint;

    iput-object p2, p0, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    iget p2, p1, Ltypes/GpsVal;->a:F

    iget p1, p1, Ltypes/GpsVal;->b:F

    iget-object p0, p0, Lcom/xcglobe/xclog/h;->a:Ltypes/g;

    const/high16 v0, 0x42160000    # 37.5f

    invoke-static {v0, p2, p1, p0}, Ltypes/i;->a(FFFLtypes/g;)V

    return-void
.end method

.method private static a(Ljava/io/BufferedReader;Ltypes/g;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ltypes/g;",
            "Ljava/util/List<",
            "Ltypes/PoiPoint;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ltypes/n;

    invoke-direct {v0}, Ltypes/n;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0, v1}, Ltypes/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Ltypes/n;->d:F

    iget v2, v0, Ltypes/n;->e:F

    invoke-virtual {p1, v1, v2}, Ltypes/g;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ltypes/PoiPoint;

    invoke-direct {v1}, Ltypes/PoiPoint;-><init>()V

    iget v2, v0, Ltypes/n;->f:I

    int-to-short v2, v2

    iput-short v2, v1, Ltypes/PoiPoint;->k:S

    iget v2, v0, Ltypes/n;->d:F

    iput v2, v1, Ltypes/PoiPoint;->i:F

    iget v2, v0, Ltypes/n;->e:F

    iput v2, v1, Ltypes/PoiPoint;->j:F

    iget-object v2, v0, Ltypes/n;->h:Ljava/lang/String;

    iput-object v2, v1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iget-char v2, v0, Ltypes/n;->i:C

    iput-char v2, v1, Ltypes/PoiPoint;->m:C

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/io/BufferedReader;Ltypes/g;Ljava/util/List;Ljava/util/HashSet;C)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ltypes/g;",
            "Ljava/util/List<",
            "Ltypes/PoiPoint;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;C)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ltypes/n;

    invoke-direct {v0}, Ltypes/n;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {v0, v1, p4}, Ltypes/n;->a(Ljava/lang/String;C)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    iget v1, v0, Ltypes/n;->d:F

    iget v2, v0, Ltypes/n;->e:F

    invoke-virtual {p1, v1, v2}, Ltypes/g;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    if-eqz p3, :cond_4

    iget v1, v0, Ltypes/n;->d:F

    iget v2, v0, Ltypes/n;->e:F

    invoke-static {v1, v2}, Lb/g;->a(FF)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v1, Ltypes/PoiPoint;

    invoke-direct {v1}, Ltypes/PoiPoint;-><init>()V

    iget v2, v0, Ltypes/n;->f:I

    int-to-short v2, v2

    iput-short v2, v1, Ltypes/PoiPoint;->k:S

    iget v2, v0, Ltypes/n;->d:F

    iput v2, v1, Ltypes/PoiPoint;->i:F

    iget v2, v0, Ltypes/n;->e:F

    iput v2, v1, Ltypes/PoiPoint;->j:F

    iget-object v2, v0, Ltypes/n;->h:Ljava/lang/String;

    iput-object v2, v1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iput-char p4, v1, Ltypes/PoiPoint;->m:C

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Ltypes/n;->h:Ljava/lang/String;

    sget-object v2, Lcom/xcglobe/xclog/l;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xcglobe/xclog/l;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Ltypes/n;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    iget-object v3, v0, Ltypes/n;->h:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;II)I

    move-result v1

    sget v2, Lcom/xcglobe/xclog/l;->h:I

    if-le v1, v2, :cond_1

    sput v1, Lcom/xcglobe/xclog/l;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static a(Ljava/lang/String;FF)V
    .locals 8

    const-string v0, "poi/waypoints.cup"

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    mul-float p2, p2, v1

    float-to-int p2, p2

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ltypes/n;

    invoke-direct {v5}, Ltypes/n;-><init>()V

    :catch_0
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_4

    const/16 v7, 0x77

    :try_start_2
    invoke-virtual {v5, v6, v7}, Ltypes/n;->a(Ljava/lang/String;C)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v5, Ltypes/n;->d:F

    mul-float v7, v7, v1

    float-to-int v7, v7

    if-ne v7, p1, :cond_3

    iget v7, v5, Ltypes/n;->e:F

    mul-float v7, v7, v1

    float-to-int v7, v7

    if-ne v7, p2, :cond_3

    iget-object v7, v5, Ltypes/n;->h:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".new"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/PrintStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {p1}, Ljava/io/PrintStream;->close()V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lb/g;->a(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v3, v1

    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception p0

    move-object v3, v1

    :goto_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_3
    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method private static a(Ljava/lang/String;Ltypes/g;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltypes/g;",
            "Ljava/util/List<",
            "Ltypes/PoiPoint;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, p1, p2}, Lb/g;->a(Ljava/io/BufferedReader;Ltypes/g;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ltypes/g;Ljava/util/List;C)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltypes/g;",
            "Ljava/util/List<",
            "Ltypes/PoiPoint;",
            ">;C)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "poi/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "waypoints.cup"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "waypoints.cup"

    const-string v1, "poi"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/xcglobe/xclog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v0, p1, p2, p0, p3}, Lb/g;->a(Ljava/io/BufferedReader;Ltypes/g;Ljava/util/List;Ljava/util/HashSet;C)V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object p1, p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object p1, p0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, p0

    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v0, p0

    :goto_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_3
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    :cond_2
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltypes/PoiPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lj/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lj/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltypes/m;

    new-instance v2, Ltypes/m;

    invoke-direct {v2}, Ltypes/m;-><init>()V

    invoke-virtual {v2, v1}, Ltypes/m;->a(Ltypes/PoiPoint;)V

    iget v1, v1, Ltypes/m;->a:I

    iput v1, v2, Ltypes/m;->a:I

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ltypes/GpsVal;)V
    .locals 3

    sget v0, Lb/g;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lb/g;->a:I

    const/4 v0, 0x0

    sput-boolean v0, Lb/g;->b:Z

    new-instance v2, Lb/g;

    invoke-direct {v2}, Lb/g;-><init>()V

    new-array v1, v1, [Ltypes/GpsVal;

    aput-object p0, v1, v0

    invoke-virtual {v2, v1}, Lb/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static a(Ltypes/GpsVal;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltypes/GpsVal;",
            "Ljava/util/List<",
            "Ltypes/PoiPoint;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ltypes/g;

    invoke-direct {v0}, Ltypes/g;-><init>()V

    iget v1, p0, Ltypes/GpsVal;->a:F

    iget p0, p0, Ltypes/GpsVal;->b:F

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2, v1, p0, v0}, Ltypes/i;->a(FFFLtypes/g;)V

    iget p0, v0, Ltypes/g;->a:F

    iget v1, v0, Ltypes/g;->c:F

    iget v2, v0, Ltypes/g;->b:F

    iget v3, v0, Ltypes/g;->d:F

    invoke-static {p0, v1, v2, v3}, Ltypes/o;->a(FFFF)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mpt/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mpt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lb/g;->a(Ljava/lang/String;Ltypes/g;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "waypoints.cup"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    const/16 v3, 0x77

    invoke-static {p0, v2, p1, v3}, Lb/g;->a(Ljava/lang/String;Ltypes/g;Ljava/util/List;C)V

    const-string p0, "imported-waypoints.cup"

    if-eqz p2, :cond_2

    move-object v0, v1

    :cond_2
    invoke-static {p0, v0, p1, v3}, Lb/g;->a(Ljava/lang/String;Ltypes/g;Ljava/util/List;C)V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v2, 0x0

    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-wide v11, v2

    :goto_0
    const/4 v0, 0x0

    sub-long v6, v9, v11

    move-object v2, v8

    move-object v3, p1

    move-wide v4, v11

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    add-long/2addr v11, v2

    cmp-long v0, v11, v9

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :try_start_6
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    return v0

    :catchall_0
    move-exception v0

    move-object v13, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v13

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v8, v0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_1

    :catch_4
    move-object v8, v0

    :catch_5
    move-object v0, p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v8, v0

    move-object v13, p1

    move-object p1, p0

    move-object p0, v13

    goto :goto_1

    :catch_6
    move-object v8, v0

    goto :goto_2

    :catchall_3
    move-exception p0

    move-object p1, v0

    move-object v8, p1

    goto :goto_1

    :catch_7
    move-object p0, v0

    move-object v8, p0

    goto :goto_2

    :catchall_4
    move-exception p0

    move-object p1, v0

    move-object v1, p1

    move-object v8, v1

    :goto_1
    :try_start_9
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :try_start_a
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    :catch_a
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    :catch_b
    throw p0

    :catch_c
    move-object p0, v0

    move-object v1, p0

    move-object v8, v1

    :goto_2
    const/4 p1, 0x0

    :try_start_d
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    return p1
.end method


# virtual methods
.method protected varargs a([Ltypes/GpsVal;)Ljava/lang/Integer;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lb/g;->d:Ltypes/GpsVal;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ltypes/GpsVal;->a(Ltypes/GpsVal;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lb/g;->d:Ltypes/GpsVal;

    iget-object v3, p0, Lb/g;->c:Ljava/util/List;

    invoke-static {p1, v3, v0}, Lb/g;->a(Ltypes/GpsVal;Ljava/util/List;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 p1, 0x0

    sub-long/2addr v3, v1

    sput-wide v3, Lb/g;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "PoiLoader.doInBackground"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    iget-object p1, p0, Lb/g;->c:Ljava/util/List;

    invoke-static {p1}, Lb/g;->a(Ljava/util/List;)V

    sget-object p1, Lcom/xcglobe/xclog/l;->ar:Lcom/xcglobe/xclog/h;

    iget-object v0, p0, Lb/g;->c:Ljava/util/List;

    const/4 v1, 0x0

    new-array v2, v1, [Ltypes/PoiPoint;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltypes/PoiPoint;

    iput-object v0, p1, Lcom/xcglobe/xclog/h;->b:[Ltypes/PoiPoint;

    iget-object p1, p0, Lb/g;->f:Ltypes/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/g;->f:Ltypes/a;

    invoke-static {p1}, Lvmaps/a;->a(Ltypes/a;)V

    :cond_0
    const/high16 p1, 0x42160000    # 37.5f

    iget-object v0, p0, Lb/g;->d:Ltypes/GpsVal;

    iget v0, v0, Ltypes/GpsVal;->a:F

    iget-object v2, p0, Lb/g;->d:Ltypes/GpsVal;

    iget v2, v2, Ltypes/GpsVal;->b:F

    sget-object v3, Lcom/xcglobe/xclog/l;->ar:Lcom/xcglobe/xclog/h;

    iget-object v3, v3, Lcom/xcglobe/xclog/h;->a:Ltypes/g;

    invoke-static {p1, v0, v2, v3}, Ltypes/i;->a(FFFLtypes/g;)V

    sget-object p1, Lcom/xcglobe/xclog/l;->ar:Lcom/xcglobe/xclog/h;

    sget-object v0, Lcom/xcglobe/xclog/l;->ar:Lcom/xcglobe/xclog/h;

    iget v0, v0, Lcom/xcglobe/xclog/h;->f:F

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/xcglobe/xclog/h;->a(FLtypes/GpsVal;ZZ)Z

    sget p1, Lcom/xcglobe/xclog/h;->c:I

    add-int/2addr p1, v3

    sput p1, Lcom/xcglobe/xclog/h;->c:I

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ltypes/GpsVal;

    invoke-virtual {p0, p1}, Lb/g;->a([Ltypes/GpsVal;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lb/g;->a(Ljava/lang/Integer;)V

    return-void
.end method
