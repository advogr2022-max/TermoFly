.class public Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P5:I = -0x1

.field static final PExt:[I

.field private static final PExt11:I = -0x1

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x2
        0x0
        0x1
        0x0
        -0x2
        -0x1
        -0x3
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x3
        -0x1
        -0x2
        -0x1
        0x1
        0x0
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p2, p0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xb

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {v0, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object p1, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 12

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    long-to-int v7, v1

    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_0
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x5

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

    :cond_0
    return-object p0
.end method

.method public static half([I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result p0

    invoke-static {v2, p1, p0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    :goto_0
    return-void
.end method

.method public static multiply([I[I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result p0

    const/16 p1, 0xc

    if-nez p0, :cond_0

    const/16 p0, 0xb

    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/raw/Nat192;->zero([I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    :goto_0
    return-void
.end method

.method public static reduce([I[I)V
    .locals 27

    move-object/from16 v1, p1

    const/4 v2, 0x6

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/4 v7, 0x7

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x8

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v5

    const/16 v11, 0x9

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    const/16 v13, 0xa

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v5

    const/16 v15, 0xb

    aget v15, p0, v15

    move-wide/from16 v16, v11

    int-to-long v11, v15

    and-long/2addr v11, v5

    add-long/2addr v13, v3

    add-long/2addr v11, v7

    const/4 v15, 0x0

    aget v2, p0, v15

    move-wide/from16 v18, v7

    int-to-long v7, v2

    and-long/2addr v7, v5

    add-long/2addr v7, v13

    const-wide/16 v20, 0x0

    add-long v7, v7, v20

    long-to-int v2, v7

    const/16 v22, 0x20

    shr-long v7, v7, v22

    const/16 v23, 0x1

    aget v15, p0, v23

    move/from16 v26, v2

    move-wide/from16 v24, v3

    int-to-long v2, v15

    and-long/2addr v2, v5

    add-long/2addr v2, v11

    add-long/2addr v7, v2

    long-to-int v2, v7

    aput v2, v1, v23

    shr-long v2, v7, v22

    add-long/2addr v13, v9

    add-long v11, v11, v16

    const/4 v4, 0x2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v7, v13

    add-long/2addr v2, v7

    and-long v7, v2, v5

    shr-long v2, v2, v22

    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v9, v10

    and-long/2addr v9, v5

    add-long/2addr v9, v11

    add-long/2addr v2, v9

    long-to-int v9, v2

    const/4 v10, 0x3

    aput v9, v1, v10

    shr-long v2, v2, v22

    sub-long v13, v13, v24

    sub-long v11, v11, v18

    const/4 v9, 0x4

    aget v10, p0, v9

    int-to-long v9, v10

    and-long/2addr v9, v5

    add-long/2addr v9, v13

    add-long/2addr v2, v9

    long-to-int v9, v2

    const/4 v10, 0x4

    aput v9, v1, v10

    shr-long v2, v2, v22

    const/4 v9, 0x5

    aget v0, p0, v9

    int-to-long v13, v0

    and-long/2addr v13, v5

    add-long/2addr v13, v11

    add-long/2addr v2, v13

    long-to-int v0, v2

    aput v0, v1, v9

    shr-long v2, v2, v22

    add-long/2addr v7, v2

    move/from16 v0, v26

    int-to-long v10, v0

    and-long/2addr v10, v5

    add-long/2addr v2, v10

    long-to-int v0, v2

    const/4 v10, 0x0

    aput v0, v1, v10

    shr-long v2, v2, v22

    cmp-long v0, v2, v20

    if-eqz v0, :cond_0

    aget v0, v1, v23

    int-to-long v10, v0

    and-long/2addr v5, v10

    add-long/2addr v2, v5

    long-to-int v0, v2

    aput v0, v1, v23

    shr-long v2, v2, v22

    add-long/2addr v7, v2

    :cond_0
    long-to-int v0, v7

    aput v0, v1, v4

    shr-long v2, v7, v22

    cmp-long v0, v2, v20

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const/4 v2, 0x6

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    aget v0, v1, v9

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    :cond_3
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 11

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 p0, 0x0

    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v6, v2

    add-long/2addr v6, v0

    long-to-int v8, v6

    aput v8, p1, p0

    const/16 p0, 0x20

    shr-long/2addr v6, p0

    cmp-long v8, v6, v0

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v6, v9

    long-to-int v9, v6

    aput v9, p1, v8

    shr-long/2addr v6, p0

    :cond_0
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v4, v2

    add-long/2addr v6, v4

    long-to-int v2, v6

    aput v2, p1, v8

    shr-long v2, v6, p0

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    cmp-long p0, v2, v0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    :cond_4
    return-void
.end method

.method public static square([I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    :goto_0
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 12

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    long-to-int v7, v1

    aput v7, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    long-to-int v10, v1

    aput v10, p0, v9

    shr-long/2addr v1, v0

    :cond_0
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p0, v9

    shr-long v0, v1, v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_1
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subPInvFrom([I)V

    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    sget-object p1, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length p0, p0

    invoke-static {v0, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    aget p0, p1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method
