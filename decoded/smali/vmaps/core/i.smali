.class public Lvmaps/core/i;
.super Ljava/lang/Object;


# static fields
.field public static r:Z = false


# instance fields
.field private A:I

.field private B:Ltypes/g;

.field private C:F

.field private D:F

.field private E:Ljava/io/DataInputStream;

.field private F:Ljava/io/FileInputStream;

.field private G:I

.field private H:Z

.field private I:[I

.field public a:[I

.field public b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvmaps/core/i;->u:I

    const/4 v1, 0x6

    iput v1, p0, Lvmaps/core/i;->v:I

    const/4 v1, 0x0

    iput-object v1, p0, Lvmaps/core/i;->a:[I

    iput-object v1, p0, Lvmaps/core/i;->b:[I

    iput v0, p0, Lvmaps/core/i;->q:I

    iput-object v1, p0, Lvmaps/core/i;->F:Ljava/io/FileInputStream;

    iput v0, p0, Lvmaps/core/i;->G:I

    iput-boolean v0, p0, Lvmaps/core/i;->H:Z

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lvmaps/core/i;->I:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvmaps/core/i;->u:I

    const/4 v1, 0x6

    iput v1, p0, Lvmaps/core/i;->v:I

    const/4 v1, 0x0

    iput-object v1, p0, Lvmaps/core/i;->a:[I

    iput-object v1, p0, Lvmaps/core/i;->b:[I

    iput v0, p0, Lvmaps/core/i;->q:I

    iput-object v1, p0, Lvmaps/core/i;->F:Ljava/io/FileInputStream;

    iput v0, p0, Lvmaps/core/i;->G:I

    iput-boolean v0, p0, Lvmaps/core/i;->H:Z

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lvmaps/core/i;->I:[I

    iput p1, p0, Lvmaps/core/i;->v:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvmaps/core/i;->u:I

    const/4 v1, 0x6

    iput v1, p0, Lvmaps/core/i;->v:I

    const/4 v2, 0x0

    iput-object v2, p0, Lvmaps/core/i;->a:[I

    iput-object v2, p0, Lvmaps/core/i;->b:[I

    iput v0, p0, Lvmaps/core/i;->q:I

    iput-object v2, p0, Lvmaps/core/i;->F:Ljava/io/FileInputStream;

    iput v0, p0, Lvmaps/core/i;->G:I

    iput-boolean v0, p0, Lvmaps/core/i;->H:Z

    const/16 v2, 0x8

    new-array v2, v2, [I

    iput-object v2, p0, Lvmaps/core/i;->I:[I

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    :cond_0
    iput v0, p0, Lvmaps/core/i;->v:I

    return-void
.end method

.method private a(Ljava/io/DataInputStream;)I
    .locals 2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    return p1

    :cond_0
    if-gez v0, :cond_1

    const/high16 p1, 0x10000

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method private a(II)V
    .locals 3

    iget-boolean v0, p0, Lvmaps/core/i;->H:Z

    if-eqz v0, :cond_6

    int-to-float p1, p1

    const v0, 0x3a83126f    # 0.001f

    mul-float p1, p1, v0

    int-to-float p2, p2

    mul-float p2, p2, v0

    iget-object v0, p0, Lvmaps/core/i;->B:Ltypes/g;

    iget v0, v0, Ltypes/g;->c:F

    sub-float/2addr p2, v0

    iget v0, p0, Lvmaps/core/i;->C:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    iget v0, p0, Lvmaps/core/i;->t:I

    int-to-float v0, v0

    iget-object v1, p0, Lvmaps/core/i;->B:Ltypes/g;

    iget v1, v1, Ltypes/g;->a:F

    sub-float/2addr p1, v1

    iget v1, p0, Lvmaps/core/i;->D:F

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iget v0, p0, Lvmaps/core/i;->A:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lvmaps/core/i;->a:[I

    iget v1, p0, Lvmaps/core/i;->A:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lvmaps/core/i;->b:[I

    iget v1, p0, Lvmaps/core/i;->A:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lvmaps/core/i;->u:I

    if-lez v0, :cond_1

    iget v0, p0, Lvmaps/core/i;->A:I

    if-lez v0, :cond_1

    iget v0, p0, Lvmaps/core/i;->d:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lvmaps/core/i;->a:[I

    iget v1, p0, Lvmaps/core/i;->A:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lvmaps/core/i;->b:[I

    iget v2, p0, Lvmaps/core/i;->A:I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lvmaps/core/i;->w:I

    if-ge p2, v0, :cond_2

    iput p2, p0, Lvmaps/core/i;->w:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lvmaps/core/i;->x:I

    if-le p2, v0, :cond_3

    iput p2, p0, Lvmaps/core/i;->x:I

    :cond_3
    :goto_0
    iget v0, p0, Lvmaps/core/i;->y:I

    if-ge p1, v0, :cond_4

    iput p1, p0, Lvmaps/core/i;->y:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lvmaps/core/i;->z:I

    if-le p1, v0, :cond_5

    iput p1, p0, Lvmaps/core/i;->z:I

    :cond_5
    :goto_1
    iget v0, p0, Lvmaps/core/i;->A:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lvmaps/core/i;->A:I

    iget-object v1, p0, Lvmaps/core/i;->a:[I

    aput p2, v1, v0

    iget-object p2, p0, Lvmaps/core/i;->b:[I

    aput p1, p2, v0

    goto :goto_2

    :cond_6
    iget v0, p0, Lvmaps/core/i;->A:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lvmaps/core/i;->A:I

    iget-object v1, p0, Lvmaps/core/i;->b:[I

    aput p1, v1, v0

    iget-object p1, p0, Lvmaps/core/i;->a:[I

    aput p2, p1, v0

    :goto_2
    return-void
.end method

.method private c(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-direct {p0, v2}, Lvmaps/core/i;->a(Ljava/io/DataInputStream;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lvmaps/core/i;->a()V

    return v0

    :cond_0
    iget-object v3, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    iget-object v3, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-direct {p0, v3}, Lvmaps/core/i;->a(Ljava/io/DataInputStream;)I

    iget-object v3, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lvmaps/core/i;->B:Ltypes/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lvmaps/core/i;->B:Ltypes/g;

    iget v0, v0, Ltypes/g;->a:F

    iget-object v1, p0, Lvmaps/core/i;->B:Ltypes/g;

    iget v1, v1, Ltypes/g;->c:F

    iget-object v2, p0, Lvmaps/core/i;->B:Ltypes/g;

    iget v2, v2, Ltypes/g;->b:F

    iget-object v3, p0, Lvmaps/core/i;->B:Ltypes/g;

    iget v3, v3, Ltypes/g;->d:F

    invoke-static {v0, v1, v2, v3}, Ltypes/i;->b(FFFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lvmaps/core/i;->a(I)V

    invoke-direct {p0}, Lvmaps/core/i;->e()V

    return-void
.end method

.method private d(I)Z
    .locals 9

    iget v0, p0, Lvmaps/core/i;->d:I

    iget v1, p0, Lvmaps/core/i;->h:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lvmaps/core/i;->I:[I

    iget v1, p0, Lvmaps/core/i;->u:I

    aget v0, v0, v1

    iget v1, p0, Lvmaps/core/i;->d:I

    const/16 v3, 0x1f4

    if-le v1, v3, :cond_1

    mul-int/lit8 v0, v0, 0x2

    :cond_1
    iget v1, p0, Lvmaps/core/i;->u:I

    const/16 v3, 0xc8

    const/4 v4, -0x3

    const/16 v5, 0x7d0

    const/16 v6, 0x64

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    iget p1, p0, Lvmaps/core/i;->d:I

    if-nez p1, :cond_15

    goto/16 :goto_a

    :pswitch_0
    iget v1, p0, Lvmaps/core/i;->d:I

    if-ltz v1, :cond_2

    iget v1, p0, Lvmaps/core/i;->d:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_2

    if-le p1, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_1
    iget v1, p0, Lvmaps/core/i;->d:I

    if-ne v1, v4, :cond_4

    if-le p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_4
    iget v1, p0, Lvmaps/core/i;->d:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_5

    if-le p1, v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    return v2

    :pswitch_2
    iget v1, p0, Lvmaps/core/i;->d:I

    const/16 v8, 0x258

    if-ge v1, v8, :cond_9

    iget v0, p0, Lvmaps/core/i;->d:I

    if-ne v0, v4, :cond_6

    if-gt p1, v3, :cond_8

    :cond_6
    iget v0, p0, Lvmaps/core/i;->d:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_7

    if-le p1, v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_3
    return v2

    :cond_9
    iget p1, p0, Lvmaps/core/i;->d:I

    if-ge p1, v5, :cond_b

    iget p1, p0, Lvmaps/core/i;->d:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    return v2

    :cond_b
    iget p1, p0, Lvmaps/core/i;->d:I

    rem-int/lit16 p1, p1, 0xbb8

    if-nez p1, :cond_c

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    :goto_5
    return v2

    :pswitch_3
    iget p1, p0, Lvmaps/core/i;->d:I

    if-le p1, v5, :cond_e

    iget p1, p0, Lvmaps/core/i;->d:I

    iget-object v0, p0, Lvmaps/core/i;->I:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    rem-int/2addr p1, v0

    if-nez p1, :cond_d

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    return v2

    :cond_e
    iget p1, p0, Lvmaps/core/i;->d:I

    if-ltz p1, :cond_10

    iget p1, p0, Lvmaps/core/i;->d:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_f

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :cond_10
    :goto_7
    return v2

    :pswitch_4
    iget p1, p0, Lvmaps/core/i;->d:I

    if-ltz p1, :cond_12

    iget p1, p0, Lvmaps/core/i;->d:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_11

    goto :goto_8

    :cond_11
    const/4 v2, 0x0

    :cond_12
    :goto_8
    return v2

    :pswitch_5
    iget p1, p0, Lvmaps/core/i;->d:I

    if-ltz p1, :cond_14

    iget p1, p0, Lvmaps/core/i;->d:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_13

    goto :goto_9

    :cond_13
    const/4 v2, 0x0

    :cond_14
    :goto_9
    return v2

    :cond_15
    const/4 v2, 0x0

    :goto_a
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 8

    iget v0, p0, Lvmaps/core/i;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lvmaps/core/i;->i:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    iget-object v1, p0, Lvmaps/core/i;->I:[I

    mul-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, p0, Lvmaps/core/i;->I:[I

    mul-int/lit8 v2, v0, 0x4

    const/4 v4, 0x2

    aput v2, v1, v4

    iget-object v1, p0, Lvmaps/core/i;->I:[I

    mul-int/lit8 v5, v0, 0x6

    const/4 v6, 0x3

    aput v5, v1, v6

    iget-object v1, p0, Lvmaps/core/i;->I:[I

    mul-int/lit8 v5, v0, 0x8

    const/4 v7, 0x4

    aput v5, v1, v7

    iget-object v1, p0, Lvmaps/core/i;->I:[I

    const/4 v5, 0x5

    aput v2, v1, v5

    iget-object v1, p0, Lvmaps/core/i;->I:[I

    mul-int/lit8 v0, v0, 0x14

    const/4 v2, 0x6

    aput v0, v1, v2

    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aget v0, v0, v3

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aput v1, v0, v3

    :cond_1
    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aget v0, v0, v4

    const/16 v1, 0x320

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aput v1, v0, v4

    :cond_2
    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aget v0, v0, v6

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aput v1, v0, v6

    :cond_3
    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aget v0, v0, v7

    const/16 v1, 0x5dc

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aput v1, v0, v7

    :cond_4
    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aget v0, v0, v5

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aput v1, v0, v5

    :cond_5
    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aget v0, v0, v2

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lvmaps/core/i;->I:[I

    aput v1, v0, v2

    :cond_6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lvmaps/core/i;->F:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lvmaps/core/i;->F:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lvmaps/core/i;->F:Ljava/io/FileInputStream;

    iput-object v0, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lvmaps/core/i;->u:I

    iget v1, p0, Lvmaps/core/i;->v:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x12c

    if-ge p1, v1, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x1f4

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ge p1, v1, :cond_2

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lvmaps/core/i;->u:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x384

    if-ge p1, v1, :cond_3

    iput v2, p0, Lvmaps/core/i;->u:I

    goto :goto_1

    :cond_3
    const/16 v1, 0x7d0

    if-ge p1, v1, :cond_4

    iput v3, p0, Lvmaps/core/i;->u:I

    goto :goto_1

    :cond_4
    const/16 v1, 0xdac

    if-ge p1, v1, :cond_5

    const/4 p1, 0x4

    goto :goto_0

    :cond_5
    const/16 v1, 0x1388

    if-ge p1, v1, :cond_6

    const/4 p1, 0x5

    goto :goto_0

    :cond_6
    const/4 p1, 0x6

    goto :goto_0

    :goto_1
    iget p1, p0, Lvmaps/core/i;->u:I

    iget v1, p0, Lvmaps/core/i;->v:I

    if-le p1, v1, :cond_7

    iget p1, p0, Lvmaps/core/i;->v:I

    iput p1, p0, Lvmaps/core/i;->u:I

    :cond_7
    iget p1, p0, Lvmaps/core/i;->i:I

    const/16 v1, 0x50

    if-lt p1, v1, :cond_9

    iget p1, p0, Lvmaps/core/i;->u:I

    sub-int/2addr p1, v2

    iput p1, p0, Lvmaps/core/i;->u:I

    iget p1, p0, Lvmaps/core/i;->u:I

    if-gtz p1, :cond_8

    iput v0, p0, Lvmaps/core/i;->u:I

    return-void

    :cond_8
    iget p1, p0, Lvmaps/core/i;->u:I

    if-le p1, v3, :cond_9

    iput v3, p0, Lvmaps/core/i;->u:I

    :cond_9
    invoke-direct {p0}, Lvmaps/core/i;->e()V

    return-void
.end method

.method public a(IIFFFF)V
    .locals 1

    iget v0, p0, Lvmaps/core/i;->G:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvmaps/core/i;->H:Z

    :cond_0
    iput p1, p0, Lvmaps/core/i;->s:I

    iput p2, p0, Lvmaps/core/i;->t:I

    new-instance v0, Ltypes/g;

    invoke-direct {v0}, Ltypes/g;-><init>()V

    iput-object v0, p0, Lvmaps/core/i;->B:Ltypes/g;

    iget-object v0, p0, Lvmaps/core/i;->B:Ltypes/g;

    iput p3, v0, Ltypes/g;->a:F

    iget-object p3, p0, Lvmaps/core/i;->B:Ltypes/g;

    iput p4, p3, Ltypes/g;->c:F

    iput p5, p0, Lvmaps/core/i;->C:F

    iput p6, p0, Lvmaps/core/i;->D:F

    int-to-float p1, p1

    iget p3, p0, Lvmaps/core/i;->C:F

    mul-float p1, p1, p3

    iget-object p3, p0, Lvmaps/core/i;->B:Ltypes/g;

    iget-object p4, p0, Lvmaps/core/i;->B:Ltypes/g;

    iget p4, p4, Ltypes/g;->c:F

    add-float/2addr p4, p1

    iput p4, p3, Ltypes/g;->d:F

    int-to-float p1, p2

    iget p2, p0, Lvmaps/core/i;->D:F

    mul-float p1, p1, p2

    iget-object p2, p0, Lvmaps/core/i;->B:Ltypes/g;

    iget-object p3, p0, Lvmaps/core/i;->B:Ltypes/g;

    iget p3, p3, Ltypes/g;->a:F

    add-float/2addr p3, p1

    iput p3, p2, Ltypes/g;->b:F

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x64

    iput v0, p0, Lvmaps/core/i;->i:I

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lvmaps/core/i;->F:Ljava/io/FileInputStream;

    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lvmaps/core/i;->F:Ljava/io/FileInputStream;

    const v2, 0x13880

    invoke-direct {p1, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    iget-object p1, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput p1, p0, Lvmaps/core/i;->c:I

    iget-object p1, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lvmaps/core/i;->k:I

    iget-object p1, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lvmaps/core/i;->l:I

    iget p1, p0, Lvmaps/core/i;->k:I

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    iput p1, p0, Lvmaps/core/i;->m:F

    iget p1, p0, Lvmaps/core/i;->l:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lvmaps/core/i;->n:F

    iget-object p1, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lvmaps/core/i;->o:F

    iget-object p1, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lvmaps/core/i;->p:F

    iget-object p1, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lvmaps/core/i;->h:I

    iget-object p1, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lvmaps/core/i;->g:I

    const/4 p1, 0x0

    iput p1, p0, Lvmaps/core/i;->j:I

    iget v1, p0, Lvmaps/core/i;->c:I

    add-int/lit8 v1, v1, -0x14

    if-lez v1, :cond_1

    iget-object v2, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    iput v2, p0, Lvmaps/core/i;->q:I

    iget v2, p0, Lvmaps/core/i;->q:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 p1, 0x1

    :cond_0
    sput-boolean p1, Lvmaps/core/i;->r:Z

    add-int/lit8 v1, v1, -0x1

    iget-object p1, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    iput p1, p0, Lvmaps/core/i;->i:I

    add-int/lit8 v1, v1, -0x1

    iget p1, p0, Lvmaps/core/i;->i:I

    if-nez p1, :cond_1

    iput v0, p0, Lvmaps/core/i;->i:I

    :cond_1
    :goto_0
    if-lez v1, :cond_2

    iget-object p1, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result p1

    sub-int/2addr v1, p1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lvmaps/core/i;->d()V

    return-void
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Lvmaps/core/i;->G:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lvmaps/core/i;->H:Z

    return-void
.end method

.method public b()Z
    .locals 12

    :cond_0
    :goto_0
    sget-boolean v0, Lvmaps/core/i;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-object v0, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Lvmaps/core/i;->a(Ljava/io/DataInputStream;)I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget v2, p0, Lvmaps/core/i;->j:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lvmaps/core/i;->j:I

    iput v1, p0, Lvmaps/core/i;->A:I

    const v2, 0x1869f

    iput v2, p0, Lvmaps/core/i;->y:I

    iput v2, p0, Lvmaps/core/i;->w:I

    const v2, -0x1869f

    iput v2, p0, Lvmaps/core/i;->z:I

    iput v2, p0, Lvmaps/core/i;->x:I

    iget-object v2, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lvmaps/core/i;->d:I

    iget-object v2, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-direct {p0, v2}, Lvmaps/core/i;->a(Ljava/io/DataInputStream;)I

    move-result v2

    iput v2, p0, Lvmaps/core/i;->e:I

    iget v2, p0, Lvmaps/core/i;->u:I

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lvmaps/core/i;->d(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_0

    :cond_2
    iget v2, p0, Lvmaps/core/i;->k:I

    iget-object v4, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Lvmaps/core/i;->l:I

    iget-object v5, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    add-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x3

    const/4 v6, 0x4

    div-int/2addr v5, v6

    iget-object v7, p0, Lvmaps/core/i;->a:[I

    if-eqz v7, :cond_3

    iget-object v7, p0, Lvmaps/core/i;->a:[I

    array-length v7, v7

    if-ge v7, v5, :cond_4

    :cond_3
    new-array v7, v5, [I

    iput-object v7, p0, Lvmaps/core/i;->a:[I

    new-array v5, v5, [I

    iput-object v5, p0, Lvmaps/core/i;->b:[I

    :cond_4
    iget v5, p0, Lvmaps/core/i;->G:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_6

    iget v5, p0, Lvmaps/core/i;->d:I

    if-ltz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lvmaps/core/i;->H:Z

    :cond_6
    invoke-direct {p0, v2, v4}, Lvmaps/core/i;->a(II)V

    move v5, v2

    move v7, v4

    :goto_2
    if-ge v6, v0, :cond_b

    iget-object v8, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    iget-object v9, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    add-int/2addr v5, v8

    add-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x5

    invoke-direct {p0, v5, v7}, Lvmaps/core/i;->a(II)V

    goto :goto_2

    :cond_7
    and-int/lit16 v8, v8, 0xff

    iget-object v9, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    iget-object v10, p0, Lvmaps/core/i;->E:Ljava/io/DataInputStream;

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v10, 0x10

    or-int/2addr v8, v9

    and-int/lit8 v9, v8, 0x1f

    add-int/lit8 v9, v9, -0x10

    ushr-int/lit8 v10, v8, 0x6

    and-int/lit8 v10, v10, 0x1f

    add-int/lit8 v10, v10, -0x10

    ushr-int/lit8 v11, v8, 0xc

    and-int/lit8 v11, v11, 0x1f

    add-int/lit8 v11, v11, -0x10

    ushr-int/lit8 v8, v8, 0x12

    and-int/lit8 v8, v8, 0x1f

    add-int/lit8 v8, v8, -0x10

    add-int/2addr v5, v9

    add-int/2addr v7, v10

    iget v9, p0, Lvmaps/core/i;->u:I

    if-nez v9, :cond_8

    invoke-direct {p0, v5, v7}, Lvmaps/core/i;->a(II)V

    :cond_8
    add-int/2addr v5, v11

    add-int/2addr v7, v8

    iget v8, p0, Lvmaps/core/i;->u:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_9

    and-int/lit8 v8, v6, 0x7

    if-nez v8, :cond_a

    :cond_9
    invoke-direct {p0, v5, v7}, Lvmaps/core/i;->a(II)V

    :cond_a
    add-int/lit8 v6, v6, 0x3

    goto :goto_2

    :cond_b
    iget v0, p0, Lvmaps/core/i;->d:I

    const/4 v5, -0x2

    if-ne v0, v5, :cond_c

    :goto_3
    iget v0, p0, Lvmaps/core/i;->A:I

    iput v0, p0, Lvmaps/core/i;->f:I

    goto :goto_4

    :cond_c
    invoke-direct {p0, v2, v4}, Lvmaps/core/i;->a(II)V

    goto :goto_3

    :goto_4
    iget-boolean v0, p0, Lvmaps/core/i;->H:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lvmaps/core/i;->x:I

    if-ltz v0, :cond_d

    iget v0, p0, Lvmaps/core/i;->w:I

    iget v2, p0, Lvmaps/core/i;->s:I

    if-gt v0, v2, :cond_d

    iget v0, p0, Lvmaps/core/i;->z:I

    if-ltz v0, :cond_d

    iget v0, p0, Lvmaps/core/i;->y:I

    iget v2, p0, Lvmaps/core/i;->t:I

    if-le v0, v2, :cond_e

    :cond_d
    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_f

    iget v0, p0, Lvmaps/core/i;->e:I

    invoke-direct {p0, v0}, Lvmaps/core/i;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_f
    return v3

    :cond_10
    :goto_6
    invoke-virtual {p0}, Lvmaps/core/i;->a()V

    return v1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lvmaps/core/i;->u:I

    return v0
.end method
