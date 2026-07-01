.class public Lj/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltypes/m;",
            ">;"
        }
    .end annotation
.end field

.field public static b:J

.field public static c:J

.field public static d:Ljava/lang/String;

.field public static e:I

.field public static f:I

.field public static g:I

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ltypes/m;",
            ">;"
        }
    .end annotation
.end field

.field private static i:I

.field private static j:Ljava/lang/String;

.field private static k:Ltypes/GpsVal;

.field private static l:I

.field private static m:Z

.field private static n:I

.field private static o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj/a;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lj/a;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Lj/a;->i:I

    const/4 v1, 0x0

    sput-object v1, Lj/a;->j:Ljava/lang/String;

    const-wide/16 v2, 0x0

    sput-wide v2, Lj/a;->b:J

    new-instance v4, Ltypes/GpsVal;

    invoke-direct {v4}, Ltypes/GpsVal;-><init>()V

    sput-object v4, Lj/a;->k:Ltypes/GpsVal;

    sput-wide v2, Lj/a;->c:J

    sput-object v1, Lj/a;->d:Ljava/lang/String;

    sput v0, Lj/a;->e:I

    sput v0, Lj/a;->f:I

    sput v0, Lj/a;->g:I

    sput v0, Lj/a;->l:I

    sput-boolean v0, Lj/a;->m:Z

    sput v0, Lj/a;->n:I

    sput-boolean v0, Lj/a;->o:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Lj/b;)Ljava/lang/String;
    .locals 5

    iget-boolean v0, p1, Lj/b;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget v0, Lj/a;->g:I

    add-int/2addr v0, v1

    sput v0, Lj/a;->g:I

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-boolean v0, Lj/a;->o:Z

    if-nez v0, :cond_2

    const-string v0, "livetrack"

    invoke-static {v0, p0}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    sput-boolean v1, Lj/a;->o:Z

    :cond_2
    const p0, 0x7f0c00e2

    invoke-static {p0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lj/b;->b:Ljava/lang/String;

    iput-boolean v1, p1, Lj/b;->e:Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(ZLj/b;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_2

    const-string p0, "user.username"

    invoke-static {p0}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "user.password"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xcglobe/xclog/f;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "livetrack/login?usr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&psw="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    :goto_0
    const p0, 0x7f0c015f

    invoke-static {p0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lj/b;->b:Ljava/lang/String;

    const/4 p0, 0x1

    sput-boolean p0, Lj/a;->m:Z

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xcglobe/xclog/f;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "livetrack/save?uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lj/a;->i:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&h="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lj/a;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lj/b;->a:Ltypes/GpsVal;

    iget-short v0, v0, Ltypes/GpsVal;->c:S

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&lat="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/xcglobe/xclog/l;->G:Ljava/text/DecimalFormat;

    iget-object v2, p1, Lj/b;->a:Ltypes/GpsVal;

    iget v2, v2, Ltypes/GpsVal;->a:F

    float-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x2e

    const/16 v3, 0x2c

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&lng="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/xcglobe/xclog/l;->G:Ljava/text/DecimalFormat;

    iget-object v4, p1, Lj/b;->a:Ltypes/GpsVal;

    iget v4, v4, Ltypes/GpsVal;->b:F

    float-to-double v4, v4

    invoke-virtual {p0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&alt="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&r=30"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    iget-boolean p1, p1, Lj/b;->c:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&test=1"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static a(I)Ltypes/m;
    .locals 1

    sget-object v0, Lj/a;->h:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltypes/m;

    return-object p0
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lj/a;->m:Z

    sput v0, Lj/a;->i:I

    const/4 v0, 0x0

    sput-object v0, Lj/a;->j:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lj/a;->b:J

    return-void
.end method

.method private static a(Lj/b;)V
    .locals 2

    sget v0, Lj/a;->i:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj/b;->c:Z

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lj/a;->a(ZLj/b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "error:2"

    invoke-static {v0, p0}, Lj/a;->b(Ljava/lang/String;Lj/b;)V

    return-void

    :cond_1
    invoke-static {v0, p0}, Lj/a;->a(Ljava/lang/String;Lj/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lj/b;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Lj/a;->c(Lj/b;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lb/l;->a()V

    iget-boolean v0, p0, Lj/b;->c:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lj/a;->a(ZLj/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lj/a;->a(Ljava/lang/String;Lj/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lj/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lj/b;->d:Ljava/lang/String;

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lj/b;->d:Ljava/lang/String;

    invoke-static {v0, p0}, Lj/a;->b(Ljava/lang/String;Lj/b;)V

    :cond_5
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 14

    sget-object v0, Lj/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p0, v4

    const-string v6, "ok:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "error:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v5, v3

    invoke-static {v6}, Lcom/xcglobe/xclog/l;->h(Ljava/lang/String;)I

    move-result v6

    sget v7, Lj/a;->i:I

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v7, Ltypes/m;

    invoke-direct {v7}, Ltypes/m;-><init>()V

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v9

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Lcom/xcglobe/xclog/l;->i(Ljava/lang/String;)F

    move-result v10

    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-static {v8}, Lcom/xcglobe/xclog/l;->h(Ljava/lang/String;)I

    move-result v8

    int-to-short v11, v8

    const/4 v8, 0x4

    aget-object v12, v5, v8

    const/16 v13, 0x6c

    move-object v8, v7

    invoke-virtual/range {v8 .. v13}, Ltypes/m;->a(FFSLjava/lang/String;C)V

    iput v6, v7, Ltypes/m;->a:I

    iput-wide v0, v7, Ltypes/m;->b:J

    sget-object v5, Lj/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lj/a;->h:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static a(Z)V
    .locals 4

    if-nez p0, :cond_0

    sget-boolean v0, Lj/a;->m:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    sput-wide v0, Lj/a;->b:J

    return-void

    :cond_0
    sget v0, Lj/a;->n:I

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/xcglobe/xclog/l;->aa:J

    add-long/2addr v0, v2

    sput-wide v0, Lj/a;->b:J

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    sput-wide v0, Lj/a;->b:J

    new-instance v0, Lj/b;

    invoke-direct {v0}, Lj/b;-><init>()V

    iput-boolean p0, v0, Lj/b;->c:Z

    iget-object p0, v0, Lj/b;->a:Ltypes/GpsVal;

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltypes/GpsVal;->a(Ltypes/GpsVal;)V

    sget p0, Lj/a;->n:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lj/a;->n:I

    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lj/-$$Lambda$a$s5M9O9oH83fWe5aVl0rPGfbNLig;

    invoke-direct {v1, v0}, Lj/-$$Lambda$a$s5M9O9oH83fWe5aVl0rPGfbNLig;-><init>(Lj/b;)V

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static b()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lj/a;->b:J

    return-void
.end method

.method private static b(Lj/b;)V
    .locals 6

    iget-boolean v0, p0, Lj/b;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xcglobe.action.main"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "event"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lj/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "error"

    iget-object p0, p0, Lj/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/App;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lj/b;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    sget-object v2, Lj/a;->k:Ltypes/GpsVal;

    iget-object v3, p0, Lj/b;->a:Ltypes/GpsVal;

    invoke-virtual {v2, v3}, Ltypes/GpsVal;->a(Ltypes/GpsVal;)V

    sput-wide v0, Lj/a;->c:J

    sget v2, Lj/a;->e:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lj/a;->e:I

    iget-object v2, p0, Lj/b;->d:Ljava/lang/String;

    invoke-static {v2}, Lj/a;->a(Ljava/lang/String;)V

    iget-boolean v2, p0, Lj/b;->c:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/xcglobe/xclog/l;->ar:Lcom/xcglobe/xclog/h;

    invoke-virtual {v2}, Lcom/xcglobe/xclog/h;->c()V

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xcglobe.action.main"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "event"

    const/16 v4, 0x13

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xcglobe/xclog/App;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lj/b;->e:Z

    if-eqz v2, :cond_4

    sget v2, Lj/a;->l:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lj/a;->l:I

    :cond_4
    :goto_0
    iget-object v2, p0, Lj/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    sget v2, Lj/a;->f:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lj/a;->f:I

    :cond_5
    iget-boolean v2, p0, Lj/b;->e:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    sput v2, Lj/a;->l:I

    :cond_6
    iget-object p0, p0, Lj/b;->b:Ljava/lang/String;

    sput-object p0, Lj/a;->d:Ljava/lang/String;

    sget-wide v2, Lcom/xcglobe/xclog/l;->aa:J

    sget p0, Lj/a;->l:I

    const/16 v4, 0xa

    if-le p0, v4, :cond_7

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    :cond_7
    const/4 p0, 0x0

    add-long/2addr v0, v2

    sput-wide v0, Lj/a;->b:J

    return-void
.end method

.method private static b(Ljava/lang/String;Lj/b;)V
    .locals 3

    if-eqz p0, :cond_4

    const-string v0, "error:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0c0081

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    const v2, 0x7f0c015f

    if-ne p0, v1, :cond_1

    :goto_0
    const v0, 0x7f0c015f

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    const p0, 0x7f0c00af

    const v0, 0x7f0c00af

    :catch_0
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lj/b;->b:Ljava/lang/String;

    :cond_4
    :goto_2
    return-void
.end method

.method private static c(Lj/b;)Z
    .locals 8

    const/4 v0, 0x0

    sput v0, Lj/a;->i:I

    iget-object v1, p0, Lj/b;->d:Ljava/lang/String;

    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    const-string v6, "h="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lj/a;->j:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v6, "u="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lj/a;->i:I

    goto :goto_1

    :cond_1
    const-string v6, "error:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5, p0}, Lj/a;->b(Ljava/lang/String;Lj/b;)V

    const-string p0, "error:2"

    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sput-boolean v4, Lj/a;->m:Z

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    sget-object p0, Lj/a;->j:Ljava/lang/String;

    if-eqz p0, :cond_5

    sget p0, Lj/a;->i:I

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    return v4

    :cond_5
    :goto_3
    sput v0, Lj/a;->i:I

    return v0
.end method

.method private static synthetic d(Lj/b;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lj/a;->a(Lj/b;)V

    invoke-static {p0}, Lj/a;->b(Lj/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p0, Lj/a;->n:I

    add-int/lit8 p0, p0, -0x1

    sput p0, Lj/a;->n:I

    return-void

    :catchall_0
    move-exception p0

    sget v0, Lj/a;->n:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lj/a;->n:I

    throw p0
.end method

.method public static synthetic lambda$s5M9O9oH83fWe5aVl0rPGfbNLig(Lj/b;)V
    .locals 0

    invoke-static {p0}, Lj/a;->d(Lj/b;)V

    return-void
.end method
