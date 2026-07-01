.class public Lm/b;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field public static a:Z = true

.field static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lm/b;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a(FF)I
    .locals 3

    sget-boolean v0, Lm/b;->a:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    add-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p0, p0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float p0, v1, p0

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    add-float/2addr p1, v1

    :cond_1
    mul-float p1, p1, v0

    float-to-int p1, p1

    float-to-int p0, p0

    mul-int/lit16 p0, p0, 0x2d0

    add-int/2addr p0, p1

    sget p1, Lm/b;->c:I

    if-ne p0, p1, :cond_2

    sget p0, Lm/b;->d:I

    return p0

    :cond_2
    sget-object p1, Lm/b;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    invoke-static {p0}, Lm/b;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lm/b;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sput p0, Lm/b;->c:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lm/b;->d:I

    return p0
.end method

.method private static a(I)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xcglobe/xclog/App;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "egm96.dat"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    if-lez p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->skipBytes(I)I

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
