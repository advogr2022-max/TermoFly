.class public Li/c;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:J

.field public g:I

.field public h:F

.field public i:F

.field public j:S

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field n:Li/a;

.field o:Ljava/io/BufferedReader;

.field p:J

.field q:Ljava/util/zip/CRC32;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:S


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Li/c;->a:J

    const/4 v2, 0x0

    iput v2, p0, Li/c;->r:I

    iput v2, p0, Li/c;->s:I

    iput v2, p0, Li/c;->t:I

    const/16 v3, 0x270f

    iput v3, p0, Li/c;->u:I

    iput-short v2, p0, Li/c;->v:S

    const v3, 0x4479c000    # 999.0f

    iput v3, p0, Li/c;->b:F

    const v4, -0x3b864000    # -999.0f

    iput v4, p0, Li/c;->c:F

    iput v3, p0, Li/c;->d:F

    iput v4, p0, Li/c;->e:F

    iput v2, p0, Li/c;->k:I

    iput v2, p0, Li/c;->l:I

    const/4 v2, 0x0

    iput-object v2, p0, Li/c;->n:Li/a;

    iput-object v2, p0, Li/c;->o:Ljava/io/BufferedReader;

    iput-object v2, p0, Li/c;->q:Ljava/util/zip/CRC32;

    invoke-direct {p0, p1, v0, v1}, Li/c;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Li/c;->a:J

    const/4 v0, 0x0

    iput v0, p0, Li/c;->r:I

    iput v0, p0, Li/c;->s:I

    iput v0, p0, Li/c;->t:I

    const/16 v1, 0x270f

    iput v1, p0, Li/c;->u:I

    iput-short v0, p0, Li/c;->v:S

    const v1, 0x4479c000    # 999.0f

    iput v1, p0, Li/c;->b:F

    const v2, -0x3b864000    # -999.0f

    iput v2, p0, Li/c;->c:F

    iput v1, p0, Li/c;->d:F

    iput v2, p0, Li/c;->e:F

    iput v0, p0, Li/c;->k:I

    iput v0, p0, Li/c;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Li/c;->n:Li/a;

    iput-object v0, p0, Li/c;->o:Ljava/io/BufferedReader;

    iput-object v0, p0, Li/c;->q:Ljava/util/zip/CRC32;

    invoke-direct {p0, p1, p2, p3}, Li/c;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/zip/CRC32;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Li/c;->a:J

    const/4 v0, 0x0

    iput v0, p0, Li/c;->r:I

    iput v0, p0, Li/c;->s:I

    iput v0, p0, Li/c;->t:I

    const/16 v1, 0x270f

    iput v1, p0, Li/c;->u:I

    iput-short v0, p0, Li/c;->v:S

    const v1, 0x4479c000    # 999.0f

    iput v1, p0, Li/c;->b:F

    const v2, -0x3b864000    # -999.0f

    iput v2, p0, Li/c;->c:F

    iput v1, p0, Li/c;->d:F

    iput v2, p0, Li/c;->e:F

    iput v0, p0, Li/c;->k:I

    iput v0, p0, Li/c;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Li/c;->n:Li/a;

    iput-object v0, p0, Li/c;->o:Ljava/io/BufferedReader;

    iput-object v0, p0, Li/c;->q:Ljava/util/zip/CRC32;

    iput-object p4, p0, Li/c;->q:Ljava/util/zip/CRC32;

    invoke-direct {p0, p1, p2, p3}, Li/c;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/zip/CRC32;Li/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Li/c;->a:J

    const/4 v0, 0x0

    iput v0, p0, Li/c;->r:I

    iput v0, p0, Li/c;->s:I

    iput v0, p0, Li/c;->t:I

    const/16 v1, 0x270f

    iput v1, p0, Li/c;->u:I

    iput-short v0, p0, Li/c;->v:S

    const v1, 0x4479c000    # 999.0f

    iput v1, p0, Li/c;->b:F

    const v2, -0x3b864000    # -999.0f

    iput v2, p0, Li/c;->c:F

    iput v1, p0, Li/c;->d:F

    iput v2, p0, Li/c;->e:F

    iput v0, p0, Li/c;->k:I

    iput v0, p0, Li/c;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Li/c;->n:Li/a;

    iput-object v0, p0, Li/c;->o:Ljava/io/BufferedReader;

    iput-object v0, p0, Li/c;->q:Ljava/util/zip/CRC32;

    iput-object p4, p0, Li/c;->q:Ljava/util/zip/CRC32;

    iput-object p5, p0, Li/c;->n:Li/a;

    invoke-direct {p0, p1, p2, p3}, Li/c;->a(Ljava/lang/String;J)V

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

.method public static a(III)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-ge p2, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 1

    iput-wide p2, p0, Li/c;->p:J

    :try_start_0
    new-instance p2, Ljava/io/FileReader;

    invoke-direct {p2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Li/c;->o:Ljava/io/BufferedReader;

    :cond_0
    :goto_0
    iget-object p1, p0, Li/c;->o:Ljava/io/BufferedReader;

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "HFDTEDATE:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p2, 0xa

    const/16 p3, 0x10

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HFDTE"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    iget-object p2, p0, Li/c;->q:Ljava/util/zip/CRC32;

    if-eqz p2, :cond_1

    iget-object p2, p0, Li/c;->q:Ljava/util/zip/CRC32;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/zip/CRC32;->update([B)V

    :cond_1
    const-string p2, "HFDTE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "HPDTE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Li/c;->n:Li/a;

    if-eqz p2, :cond_0

    iget-object p2, p0, Li/c;->n:Li/a;

    invoke-virtual {p2, p1}, Li/a;->a(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Li/c;->o:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Li/c;->o:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_0

    const/16 v2, 0x7d0

    goto :goto_0

    :cond_0
    const/16 v2, 0x76c

    :goto_0
    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Li/c;->a(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Li/c;->a(Ljava/lang/String;II)I

    move-result p1

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v1, v3, p1}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Li/c;->a:J

    invoke-static {v1, v0, p1}, Li/c;->a(III)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li/c;->m:Ljava/lang/String;

    iget-object p1, p0, Li/c;->n:Li/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Li/c;->n:Li/a;

    iget-wide v0, p0, Li/c;->a:J

    iput-wide v0, p1, Li/a;->h:J

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 7

    iget-object v0, p0, Li/c;->o:Ljava/io/BufferedReader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c;->n:Li/a;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iget-object v3, p0, Li/c;->o:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Li/c;->q:Ljava/util/zip/CRC32;

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Li/c;->q:Ljava/util/zip/CRC32;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/zip/CRC32;->update([B)V

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x42

    if-ne v4, v5, :cond_5

    invoke-virtual {p0, v3}, Li/c;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    if-eqz v0, :cond_2

    iget-object v0, p0, Li/c;->n:Li/a;

    invoke-virtual {v0, v3}, Li/a;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_6
    return v1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x17

    if-ge v3, v4, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x42

    if-eq v3, v5, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x3

    const/4 v5, 0x1

    invoke-static {v1, v5, v3}, Li/c;->a(Ljava/lang/String;II)I

    move-result v6

    const/4 v7, 0x5

    invoke-static {v1, v3, v7}, Li/c;->a(Ljava/lang/String;II)I

    move-result v3

    const/4 v8, 0x7

    invoke-static {v1, v7, v8}, Li/c;->a(Ljava/lang/String;II)I

    move-result v7

    mul-int/lit16 v6, v6, 0xe10

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v6, v3

    add-int/2addr v6, v7

    iget v3, v0, Li/c;->r:I

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v6, v3

    iput v6, v0, Li/c;->g:I

    iget-wide v6, v0, Li/c;->a:J

    iget v3, v0, Li/c;->g:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v9, v3

    add-long/2addr v6, v9

    iget-wide v9, v0, Li/c;->f:J

    const/4 v3, 0x0

    sub-long v9, v6, v9

    iget-wide v11, v0, Li/c;->p:J

    cmp-long v3, v9, v11

    if-gez v3, :cond_2

    return v2

    :cond_2
    iput-wide v6, v0, Li/c;->f:J

    iget v3, v0, Li/c;->k:I

    if-nez v3, :cond_3

    iget v3, v0, Li/c;->g:I

    iput v3, v0, Li/c;->k:I

    :cond_3
    iget v3, v0, Li/c;->g:I

    iput v3, v0, Li/c;->l:I

    const/16 v3, 0x9

    invoke-static {v1, v8, v3}, Li/c;->a(Ljava/lang/String;II)I

    move-result v6

    int-to-float v6, v6

    const/16 v7, 0xb

    invoke-static {v1, v3, v7}, Li/c;->a(Ljava/lang/String;II)I

    move-result v3

    int-to-float v3, v3

    const/16 v8, 0xe

    invoke-static {v1, v7, v8}, Li/c;->a(Ljava/lang/String;II)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v7, v7

    float-to-double v9, v3

    float-to-double v11, v7

    const-wide v13, 0x408f400000000000L    # 1000.0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v3, 0x0

    add-double/2addr v9, v11

    double-to-float v3, v9

    const/high16 v7, 0x42700000    # 60.0f

    div-float/2addr v3, v7

    add-float/2addr v6, v3

    :try_start_1
    iput v6, v0, Li/c;->h:F

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x53

    const/high16 v8, -0x40800000    # -1.0f

    if-ne v3, v6, :cond_4

    iget v3, v0, Li/c;->h:F

    mul-float v3, v3, v8

    iput v3, v0, Li/c;->h:F

    :cond_4
    iget v3, v0, Li/c;->h:F

    iget v6, v0, Li/c;->b:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_5

    iget v3, v0, Li/c;->h:F

    iput v3, v0, Li/c;->b:F

    :cond_5
    iget v3, v0, Li/c;->h:F

    iget v6, v0, Li/c;->c:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    iget v3, v0, Li/c;->h:F

    iput v3, v0, Li/c;->c:F

    :cond_6
    const/16 v3, 0xf

    const/16 v6, 0x12

    invoke-static {v1, v3, v6}, Li/c;->a(Ljava/lang/String;II)I

    move-result v3

    int-to-float v3, v3

    const/16 v9, 0x14

    invoke-static {v1, v6, v9}, Li/c;->a(Ljava/lang/String;II)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v9, v4}, Li/c;->a(Ljava/lang/String;II)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v10, v10

    float-to-double v11, v6

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v6, 0x0

    add-double/2addr v11, v9

    double-to-float v6, v11

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    :try_start_2
    iput v3, v0, Li/c;->i:F

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x57

    if-ne v3, v4, :cond_7

    iget v3, v0, Li/c;->i:F

    mul-float v3, v3, v8

    iput v3, v0, Li/c;->i:F

    :cond_7
    iget v3, v0, Li/c;->i:F

    iget v4, v0, Li/c;->d:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    iget v3, v0, Li/c;->i:F

    iput v3, v0, Li/c;->d:F

    :cond_8
    iget v3, v0, Li/c;->i:F

    iget v4, v0, Li/c;->e:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    iget v3, v0, Li/c;->i:F

    iput v3, v0, Li/c;->e:F

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x19

    if-ge v3, v4, :cond_a

    return v5

    :cond_a
    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x41

    if-eq v3, v6, :cond_b

    const/16 v6, 0x56

    if-ne v3, v6, :cond_15

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x1e

    if-le v3, v6, :cond_c

    invoke-static {v1, v4, v6}, Li/c;->a(Ljava/lang/String;II)I

    move-result v3

    goto :goto_0

    :cond_c
    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0x23

    if-lt v4, v7, :cond_d

    invoke-static {v1, v6, v7}, Li/c;->a(Ljava/lang/String;II)I

    move-result v1

    goto :goto_1

    :cond_d
    const/4 v1, 0x0

    :goto_1
    iget v4, v0, Li/c;->s:I

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, v0, Li/c;->t:I

    sub-int v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v7, v4, v6

    const/16 v8, 0x14

    if-le v7, v8, :cond_f

    if-eqz v3, :cond_f

    if-eqz v1, :cond_f

    if-le v4, v6, :cond_e

    const/4 v3, 0x0

    goto :goto_2

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_2
    if-nez v3, :cond_10

    int-to-short v1, v1

    iput-short v1, v0, Li/c;->j:S

    iput v1, v0, Li/c;->t:I

    goto :goto_5

    :cond_10
    const/16 v4, 0x270f

    if-eqz v1, :cond_12

    sub-int v6, v1, v3

    iget v7, v0, Li/c;->u:I

    if-lt v7, v4, :cond_11

    :goto_3
    iput v6, v0, Li/c;->u:I

    goto :goto_4

    :cond_11
    iget v7, v0, Li/c;->u:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x4

    goto :goto_3

    :goto_4
    iput v1, v0, Li/c;->t:I

    :cond_12
    int-to-short v1, v3

    iput-short v1, v0, Li/c;->j:S

    iget v1, v0, Li/c;->u:I

    if-ge v1, v4, :cond_13

    iget-short v1, v0, Li/c;->j:S

    iget v4, v0, Li/c;->u:I

    add-int/2addr v1, v4

    int-to-short v1, v1

    iput-short v1, v0, Li/c;->j:S

    :cond_13
    iput v3, v0, Li/c;->s:I

    :goto_5
    iget-short v1, v0, Li/c;->j:S

    if-gtz v1, :cond_14

    iget-short v1, v0, Li/c;->v:S

    iput-short v1, v0, Li/c;->j:S

    goto :goto_6

    :cond_14
    iget-short v1, v0, Li/c;->j:S

    iput-short v1, v0, Li/c;->v:S
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_15
    :goto_6
    return v5

    :catch_0
    return v2
.end method

.method public c()I
    .locals 2

    iget v0, p0, Li/c;->l:I

    iget v1, p0, Li/c;->k:I

    sub-int/2addr v0, v1

    return v0
.end method
