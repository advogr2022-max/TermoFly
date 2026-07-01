.class public Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;
.super Ljava/lang/Object;


# static fields
.field private static final M25:J = 0x1ffffffL

.field private static final M59:J = 0x7ffffffffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long/2addr p0, v1

    aput-wide p0, p2, v0

    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addOne([J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat448;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce39([JI)V

    return-object p0
.end method

.method protected static implCompactExt([J)V
    .locals 44

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    const/4 v9, 0x3

    aget-wide v10, p0, v9

    const/4 v12, 0x4

    aget-wide v13, p0, v12

    const/4 v15, 0x5

    aget-wide v16, p0, v15

    const/16 v18, 0x6

    aget-wide v19, p0, v18

    const/16 v21, 0x7

    aget-wide v22, p0, v21

    const/16 v24, 0x8

    aget-wide v25, p0, v24

    const/16 v27, 0x9

    aget-wide v28, p0, v27

    const/16 v30, 0xa

    aget-wide v31, p0, v30

    const/16 v33, 0xb

    aget-wide v34, p0, v33

    const/16 v36, 0xc

    aget-wide v37, p0, v36

    const/16 v39, 0xd

    aget-wide v40, p0, v39

    const/16 v42, 0x3b

    shl-long v42, v4, v42

    xor-long v1, v1, v42

    aput-wide v1, p0, v0

    ushr-long v0, v4, v15

    const/16 v2, 0x36

    shl-long v4, v7, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v3

    ushr-long v0, v7, v30

    const/16 v2, 0x31

    shl-long v4, v10, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v6

    const/16 v0, 0xf

    ushr-long v0, v10, v0

    const/16 v2, 0x2c

    shl-long v4, v13, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v9

    const/16 v0, 0x14

    ushr-long v0, v13, v0

    const/16 v2, 0x27

    shl-long v4, v16, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v12

    const/16 v0, 0x19

    ushr-long v0, v16, v0

    const/16 v2, 0x22

    shl-long v4, v19, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v15

    const/16 v0, 0x1e

    ushr-long v0, v19, v0

    const/16 v2, 0x1d

    shl-long v4, v22, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v18

    const/16 v0, 0x23

    ushr-long v0, v22, v0

    const/16 v2, 0x18

    shl-long v4, v25, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v21

    const/16 v0, 0x28

    ushr-long v0, v25, v0

    const/16 v2, 0x13

    shl-long v4, v28, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v24

    const/16 v0, 0x2d

    ushr-long v0, v28, v0

    const/16 v2, 0xe

    shl-long v4, v31, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v27

    const/16 v0, 0x32

    ushr-long v0, v31, v0

    shl-long v4, v34, v27

    xor-long/2addr v0, v4

    aput-wide v0, p0, v30

    const/16 v0, 0x37

    ushr-long v0, v34, v0

    shl-long v4, v37, v12

    xor-long/2addr v0, v4

    const/16 v2, 0x3f

    shl-long v4, v40, v2

    xor-long/2addr v0, v4

    aput-wide v0, p0, v33

    const/16 v0, 0x3c

    ushr-long v0, v37, v0

    ushr-long v2, v40, v3

    xor-long/2addr v0, v2

    aput-wide v0, p0, v36

    const-wide/16 v0, 0x0

    aput-wide v0, p0, v39

    return-void
.end method

.method protected static implExpand([J[J)V
    .locals 26

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const/4 v7, 0x2

    aget-wide v8, p0, v7

    const/4 v10, 0x3

    aget-wide v11, p0, v10

    const/4 v13, 0x4

    aget-wide v14, p0, v13

    const/16 v16, 0x5

    aget-wide v17, p0, v16

    const/16 v19, 0x6

    aget-wide v20, p0, v19

    const-wide v22, 0x7ffffffffffffffL

    and-long v24, v2, v22

    aput-wide v24, p1, v1

    const/16 v0, 0x3b

    ushr-long v1, v2, v0

    shl-long v24, v5, v16

    xor-long v1, v1, v24

    and-long v1, v1, v22

    aput-wide v1, p1, v4

    const/16 v0, 0x36

    ushr-long v1, v5, v0

    const/16 v0, 0xa

    shl-long v3, v8, v0

    xor-long/2addr v1, v3

    and-long v1, v1, v22

    aput-wide v1, p1, v7

    const/16 v0, 0x31

    ushr-long v1, v8, v0

    const/16 v0, 0xf

    shl-long v3, v11, v0

    xor-long/2addr v1, v3

    and-long v1, v1, v22

    aput-wide v1, p1, v10

    const/16 v0, 0x2c

    ushr-long v1, v11, v0

    const/16 v0, 0x14

    shl-long v3, v14, v0

    xor-long/2addr v1, v3

    and-long v1, v1, v22

    aput-wide v1, p1, v13

    const/16 v0, 0x27

    ushr-long v1, v14, v0

    const/16 v0, 0x19

    shl-long v3, v17, v0

    xor-long/2addr v1, v3

    and-long v1, v1, v22

    aput-wide v1, p1, v16

    const/16 v0, 0x22

    ushr-long v1, v17, v0

    const/16 v0, 0x1e

    shl-long v3, v20, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v19

    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 5

    const/4 v0, 0x7

    new-array v1, v0, [J

    new-array v2, v0, [J

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implExpand([J[J)V

    invoke-static {p1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implExpand([J[J)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    aget-wide v3, v2, p0

    invoke-static {v1, v3, v4, p2, p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJ[JI)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implCompactExt([J)V

    return-void
.end method

.method protected static implMulwAcc([JJ[JI)V
    .locals 18

    const/16 v2, 0x8

    new-array v2, v2, [J

    const/4 v3, 0x1

    aput-wide p1, v2, v3

    aget-wide v4, v2, v3

    shl-long/2addr v4, v3

    const/4 v6, 0x2

    aput-wide v4, v2, v6

    aget-wide v4, v2, v6

    xor-long v4, v4, p1

    const/4 v7, 0x3

    aput-wide v4, v2, v7

    aget-wide v4, v2, v6

    shl-long/2addr v4, v3

    const/4 v6, 0x4

    aput-wide v4, v2, v6

    aget-wide v4, v2, v6

    xor-long v4, v4, p1

    const/4 v6, 0x5

    aput-wide v4, v2, v6

    aget-wide v4, v2, v7

    shl-long/2addr v4, v3

    const/4 v8, 0x6

    aput-wide v4, v2, v8

    aget-wide v4, v2, v8

    xor-long v0, v4, p1

    const/4 v4, 0x7

    aput-wide v0, v2, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-wide v8, p0, v0

    long-to-int v5, v8

    const-wide/16 v10, 0x0

    and-int/lit8 v12, v5, 0x7

    aget-wide v12, v2, v12

    ushr-int/2addr v5, v7

    and-int/2addr v5, v4

    aget-wide v14, v2, v5

    shl-long/2addr v14, v7

    xor-long/2addr v12, v14

    const/16 v5, 0x36

    :cond_0
    ushr-long v3, v8, v5

    long-to-int v3, v3

    and-int/lit8 v4, v3, 0x7

    aget-wide v14, v2, v4

    ushr-int/2addr v3, v7

    const/4 v4, 0x7

    and-int/2addr v3, v4

    aget-wide v16, v2, v3

    shl-long v16, v16, v7

    xor-long v14, v14, v16

    shl-long v16, v14, v5

    xor-long v12, v12, v16

    neg-int v3, v5

    ushr-long/2addr v14, v3

    xor-long/2addr v10, v14

    add-int/lit8 v5, v5, -0x6

    if-gtz v5, :cond_0

    add-int v5, p4, v0

    aget-wide v8, p3, v5

    const-wide v14, 0x7ffffffffffffffL

    and-long/2addr v14, v12

    xor-long/2addr v8, v14

    aput-wide v8, p3, v5

    const/4 v14, 0x1

    add-int/2addr v5, v14

    aget-wide v8, p3, v5

    const/16 v15, 0x3b

    ushr-long/2addr v12, v15

    shl-long/2addr v10, v6

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    aput-wide v8, p3, v5

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    shl-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, p1, v3}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    aget-wide v1, p0, v1

    long-to-int p0, v1

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Interleave;->expand32to64(I)J

    move-result-wide v1

    aput-wide v1, p1, v0

    return-void
.end method

.method public static invert([J[J)V
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat448;->isZero64([J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->create64()[J

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->create64()[J

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->create64()[J

    move-result-object v2

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->square([J[J)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/4 p0, 0x3

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/4 p0, 0x6

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/16 p0, 0xc

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/16 p0, 0x18

    invoke-static {v2, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/16 p0, 0x30

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/16 p0, 0x60

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/16 p0, 0xc0

    invoke-static {v0, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static multiply([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMultiply([J[J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMultiply([J[J[J)V

    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->addExt([J[J[J)V

    return-void
.end method

.method public static reduce([J[J)V
    .locals 33

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const/4 v7, 0x2

    aget-wide v8, p0, v7

    const/4 v10, 0x3

    aget-wide v11, p0, v10

    const/4 v13, 0x4

    aget-wide v14, p0, v13

    const/16 v16, 0x5

    aget-wide v17, p0, v16

    const/16 v19, 0x6

    aget-wide v20, p0, v19

    const/16 v22, 0x7

    aget-wide v22, p0, v22

    const/16 v24, 0xc

    aget-wide v24, p0, v24

    const/16 v26, 0x27

    shl-long v27, v24, v26

    xor-long v17, v17, v27

    const/16 v27, 0x19

    ushr-long v28, v24, v27

    const/16 v30, 0x3e

    shl-long v31, v24, v30

    xor-long v28, v28, v31

    xor-long v20, v20, v28

    ushr-long v24, v24, v7

    xor-long v22, v22, v24

    const/16 v24, 0xb

    aget-wide v24, p0, v24

    shl-long v28, v24, v26

    xor-long v14, v14, v28

    ushr-long v28, v24, v27

    shl-long v31, v24, v30

    xor-long v28, v28, v31

    xor-long v17, v17, v28

    ushr-long v24, v24, v7

    xor-long v20, v20, v24

    const/16 v24, 0xa

    aget-wide v24, p0, v24

    shl-long v28, v24, v26

    xor-long v11, v11, v28

    ushr-long v28, v24, v27

    shl-long v31, v24, v30

    xor-long v28, v28, v31

    xor-long v14, v14, v28

    ushr-long v24, v24, v7

    xor-long v17, v17, v24

    const/16 v24, 0x9

    aget-wide v24, p0, v24

    shl-long v28, v24, v26

    xor-long v8, v8, v28

    ushr-long v28, v24, v27

    shl-long v31, v24, v30

    xor-long v28, v28, v31

    xor-long v11, v11, v28

    ushr-long v24, v24, v7

    xor-long v14, v14, v24

    const/16 v24, 0x8

    aget-wide v24, p0, v24

    shl-long v28, v24, v26

    xor-long v5, v5, v28

    ushr-long v28, v24, v27

    shl-long v31, v24, v30

    xor-long v28, v28, v31

    xor-long v8, v8, v28

    ushr-long v24, v24, v7

    xor-long v11, v11, v24

    shl-long v24, v22, v26

    xor-long v2, v2, v24

    ushr-long v24, v22, v27

    shl-long v28, v22, v30

    xor-long v24, v24, v28

    xor-long v5, v5, v24

    ushr-long v22, v22, v7

    xor-long v8, v8, v22

    ushr-long v22, v20, v27

    xor-long v2, v2, v22

    aput-wide v2, p1, v1

    const/16 v0, 0x17

    shl-long v1, v22, v0

    xor-long/2addr v1, v5

    aput-wide v1, p1, v4

    aput-wide v8, p1, v7

    aput-wide v11, p1, v10

    aput-wide v14, p1, v13

    aput-wide v17, p1, v16

    const-wide/32 v1, 0x1ffffff

    and-long v1, v20, v1

    aput-wide v1, p1, v19

    return-void
.end method

.method public static reduce39([JI)V
    .locals 8

    add-int/lit8 v0, p1, 0x6

    aget-wide v1, p0, v0

    const/16 v3, 0x19

    ushr-long v3, v1, v3

    aget-wide v5, p0, p1

    xor-long/2addr v5, v3

    aput-wide v5, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-wide v5, p0, p1

    const/16 v7, 0x17

    shl-long/2addr v3, v7

    xor-long/2addr v3, v5

    aput-wide v3, p0, p1

    const-wide/32 v3, 0x1ffffff

    and-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 28

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    and-long v9, v2, v7

    const/16 v11, 0x20

    shl-long v12, v5, v11

    or-long/2addr v9, v12

    ushr-long/2addr v2, v11

    const-wide v12, -0x100000000L

    and-long/2addr v5, v12

    or-long/2addr v2, v5

    const/4 v5, 0x2

    aget-wide v14, p0, v5

    invoke-static {v14, v15}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v14

    const/4 v6, 0x3

    aget-wide v16, p0, v6

    invoke-static/range {v16 .. v17}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v16

    and-long v18, v14, v7

    shl-long v20, v16, v11

    or-long v18, v18, v20

    ushr-long/2addr v14, v11

    and-long v16, v16, v12

    or-long v14, v14, v16

    const/16 v16, 0x4

    aget-wide v20, p0, v16

    invoke-static/range {v20 .. v21}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v20

    const/16 v17, 0x5

    aget-wide v22, p0, v17

    invoke-static/range {v22 .. v23}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v22

    and-long v24, v20, v7

    shl-long v26, v22, v11

    or-long v24, v24, v26

    ushr-long v20, v20, v11

    and-long v12, v22, v12

    or-long v12, v20, v12

    const/16 v20, 0x6

    aget-wide v21, p0, v20

    invoke-static/range {v21 .. v22}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v21

    and-long v7, v21, v7

    ushr-long v21, v21, v11

    const/16 v0, 0x2c

    shl-long v26, v2, v0

    xor-long v9, v9, v26

    aput-wide v9, p1, v1

    shl-long v9, v14, v0

    xor-long v9, v18, v9

    const/16 v1, 0x14

    ushr-long v18, v2, v1

    xor-long v9, v9, v18

    aput-wide v9, p1, v4

    shl-long v9, v12, v0

    xor-long v9, v24, v9

    ushr-long v18, v14, v1

    xor-long v9, v9, v18

    aput-wide v9, p1, v5

    shl-long v4, v21, v0

    xor-long/2addr v4, v7

    ushr-long v7, v12, v1

    xor-long/2addr v4, v7

    const/16 v0, 0xd

    shl-long v7, v2, v0

    xor-long/2addr v4, v7

    aput-wide v4, p1, v6

    ushr-long v4, v21, v1

    shl-long v6, v14, v0

    xor-long/2addr v4, v6

    const/16 v1, 0x33

    ushr-long/2addr v2, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v16

    shl-long v2, v12, v0

    ushr-long v4, v14, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v17

    shl-long v2, v21, v0

    ushr-long v4, v12, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v20

    return-void
.end method

.method public static square([J[J)V
    .locals 1

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    :goto_0
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 2

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-int p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method
