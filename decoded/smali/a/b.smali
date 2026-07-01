.class public La/b;
.super Ljava/lang/Object;


# static fields
.field private static p:Z = false


# instance fields
.field public a:Ljava/lang/String;

.field public b:[I

.field public c:[I

.field public d:I

.field public e:Z

.field public f:Ltypes/g;

.field public g:C

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/b;->a:Ljava/lang/String;

    new-instance v1, Ltypes/g;

    invoke-direct {v1}, Ltypes/g;-><init>()V

    iput-object v1, p0, La/b;->f:Ltypes/g;

    const/4 v1, 0x0

    iput-char v1, p0, La/b;->g:C

    iput-object v0, p0, La/b;->h:Ljava/lang/String;

    iput-boolean v1, p0, La/b;->j:Z

    iput-boolean v1, p0, La/b;->n:Z

    iput-object v0, p0, La/b;->o:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ltypes/g;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltypes/g;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "La/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/16 v7, 0x7c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v6, v9, v10}, Li/c;->a(Ljava/lang/String;II)I

    move-result v9

    goto :goto_1

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_0

    :cond_3
    new-instance v10, La/b;

    invoke-direct {v10}, La/b;-><init>()V

    const/4 v11, 0x1

    if-eq v7, v8, :cond_4

    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    iput-object v6, v10, La/b;->a:Ljava/lang/String;

    iput v9, v10, La/b;->i:I

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    goto/16 :goto_c

    :cond_5
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v12, v6, v7

    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    iput-char v12, v10, La/b;->g:C

    const/4 v12, 0x2

    aget-object v13, v6, v12

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v13, v7, v12}, Li/c;->a(Ljava/lang/String;II)I

    move-result v12

    iput v12, v10, La/b;->d:I

    const/4 v12, 0x4

    aget-object v12, v6, v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x47

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    iput-boolean v12, v10, La/b;->e:Z

    array-length v12, v6

    const/4 v13, 0x5

    if-le v12, v13, :cond_7

    aget-object v12, v6, v13

    iput-object v12, v10, La/b;->h:Ljava/lang/String;

    :cond_7
    array-length v12, v6

    const/4 v13, 0x6

    if-le v12, v13, :cond_8

    aget-object v12, v6, v13

    aget-object v13, v6, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v12, v7, v13}, Li/c;->a(Ljava/lang/String;II)I

    move-result v12

    iput v12, v10, La/b;->l:I

    const/4 v12, 0x7

    aget-object v13, v6, v12

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v13, v7, v12}, Li/c;->a(Ljava/lang/String;II)I

    move-result v12

    iput v12, v10, La/b;->m:I

    const-string v12, "1"

    const/16 v13, 0x8

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, v10, La/b;->n:Z

    const/16 v12, 0x9

    aget-object v13, v6, v12

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v13, v7, v12}, Li/c;->a(Ljava/lang/String;II)I

    move-result v12

    iput v12, v10, La/b;->k:I

    sget-boolean v12, La/b;->p:Z

    if-nez v12, :cond_8

    const/16 v12, 0xa

    aget-object v6, v6, v12

    iput-object v6, v10, La/b;->o:Ljava/lang/String;

    :cond_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    goto/16 :goto_c

    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    const/16 v15, 0x20

    invoke-virtual {v6, v15, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    invoke-static {v6, v13, v7}, Li/c;->a(Ljava/lang/String;II)I

    move-result v13

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v15, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    if-eq v15, v8, :cond_a

    move v8, v15

    goto :goto_5

    :cond_a
    move v8, v12

    :goto_5
    invoke-static {v6, v7, v8}, Li/c;->a(Ljava/lang/String;II)I

    move-result v7

    add-int/lit8 v8, v15, 0x1

    iget-object v15, v10, La/b;->f:Ltypes/g;

    int-to-float v11, v13

    const/high16 v16, 0x447a0000    # 1000.0f

    div-float v11, v11, v16

    int-to-float v0, v7

    div-float v0, v0, v16

    invoke-virtual {v15, v11, v0}, Ltypes/g;->a(FF)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    add-int/2addr v14, v0

    if-nez v8, :cond_10

    const/4 v0, 0x3

    if-lt v14, v0, :cond_f

    if-eqz v1, :cond_b

    iget-object v0, v10, La/b;->f:Ltypes/g;

    invoke-virtual {v1, v0}, Ltypes/g;->c(Ltypes/g;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v0, v14, -0x2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v6, v0, :cond_d

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v0, v14, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v6, v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    :goto_7
    new-array v6, v14, [I

    iput-object v6, v10, La/b;->b:[I

    new-array v6, v14, [I

    iput-object v6, v10, La/b;->c:[I

    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_e

    iget-object v7, v10, La/b;->b:[I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    iget-object v7, v10, La/b;->c:[I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_f
    :goto_9
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_10
    move v13, v8

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v11, 0x1

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v5, v4

    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v5, v4

    :goto_b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_11
    :goto_c
    if-eqz v5, :cond_12

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    :cond_12
    return-object v3
.end method
