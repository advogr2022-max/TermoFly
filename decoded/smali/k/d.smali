.class public Lk/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lk/a;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lk/a;

    invoke-direct {v1}, Lk/a;-><init>()V

    iput-object p0, v1, Lk/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tasks"

    invoke-static {v3}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".cup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    new-instance v3, Ltypes/n;

    invoke-direct {v3}, Ltypes/n;-><init>()V

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const v6, 0x461c4000    # 10000.0f

    if-eqz v5, :cond_4

    const-string v7, "---"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    const/16 v7, 0x77

    invoke-virtual {v3, v5, v7}, Ltypes/n;->a(Ljava/lang/String;C)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lk/c;

    invoke-direct {v5}, Lk/c;-><init>()V

    iget-object v7, v3, Ltypes/n;->h:Ljava/lang/String;

    iput-object v7, v5, Lk/c;->l:Ljava/lang/String;

    iget v7, v3, Ltypes/n;->f:I

    int-to-short v7, v7

    iput-short v7, v5, Lk/c;->k:S

    iget v7, v3, Ltypes/n;->d:F

    iput v7, v5, Lk/c;->i:F

    iget v7, v3, Ltypes/n;->e:F

    iput v7, v5, Lk/c;->j:F

    iget v7, v3, Ltypes/n;->g:I

    mul-int/lit8 v7, v7, 0xa

    int-to-float v7, v7

    div-float/2addr v7, v6

    iput v7, v5, Lk/c;->a:F

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    iput-object p0, v1, Lk/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v3, 0x2

    if-ge p0, v3, :cond_5

    return-object v4

    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x1

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_6

    goto :goto_2

    :cond_6
    const-string v7, ",(?=([^\"]*\"[^\"]*\")*[^\"]*$)"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_3
    array-length v7, p0

    sub-int/2addr v7, v5

    if-ge v3, v7, :cond_8

    aget-object v7, p0, v3

    const-string v8, "\""

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lk/d;->a(Ljava/util/ArrayList;Ljava/lang/String;)Lk/c;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v8, v1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    iget-object p0, v1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gt p0, v5, :cond_9

    return-object v4

    :cond_9
    const/4 p0, 0x0

    const/4 v0, 0x0

    :cond_a
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    const-string v4, "ObsZone="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, -0x1

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v8, 0x8

    invoke-static {v3, v8, v4}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;II)I

    move-result v4

    iget-object v8, v1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_a

    iget-object v8, v1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/c;

    const-string v8, "R1="

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v7, :cond_b

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v3, v8, v9}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;II)I

    move-result v8

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v5

    int-to-float v8, v8

    div-float/2addr v8, v6

    iput v8, v4, Lk/c;->a:F

    :cond_b
    const-string v8, "sss=True"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v7, :cond_c

    iput-boolean v5, v4, Lk/c;->f:Z

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const-string v8, "ess=True"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v7, :cond_a

    iput-boolean v5, v4, Lk/c;->g:Z

    goto :goto_4

    :cond_d
    const-string v4, "Options"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "GoalIsLine=True"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_e

    const/4 v4, 0x1

    goto :goto_5

    :cond_e
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v1, Lk/a;->m:Z

    const-string v4, "StartOnEntry=True"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_f

    iput-boolean v5, v1, Lk/a;->d:Z

    :cond_f
    const-string v4, "Competition=True"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_10

    iput-boolean v5, v1, Lk/a;->n:Z

    :cond_10
    const-string v4, "NoStart="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_11

    iget-object v8, v1, Lk/a;->e:Landroid/text/format/Time;

    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    iget-object v8, v1, Lk/a;->e:Landroid/text/format/Time;

    add-int/lit8 v9, v4, 0x8

    add-int/lit8 v10, v4, 0xa

    invoke-static {v3, v9, v10}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;II)I

    move-result v9

    iput v9, v8, Landroid/text/format/Time;->hour:I

    iget-object v8, v1, Lk/a;->e:Landroid/text/format/Time;

    add-int/lit8 v9, v4, 0xb

    add-int/lit8 v4, v4, 0xd

    invoke-static {v3, v9, v4}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;II)I

    move-result v4

    iput v4, v8, Landroid/text/format/Time;->minute:I

    :cond_11
    const-string v4, "NoEnd="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_a

    iget-object v7, v1, Lk/a;->f:Landroid/text/format/Time;

    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    iget-object v7, v1, Lk/a;->f:Landroid/text/format/Time;

    add-int/lit8 v8, v4, 0x6

    add-int/lit8 v9, v4, 0x8

    invoke-static {v3, v8, v9}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;II)I

    move-result v8

    iput v8, v7, Landroid/text/format/Time;->hour:I

    iget-object v7, v1, Lk/a;->f:Landroid/text/format/Time;

    add-int/lit8 v8, v4, 0x9

    add-int/lit8 v4, v4, 0xb

    invoke-static {v3, v8, v4}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;II)I

    move-result v3

    iput v3, v7, Landroid/text/format/Time;->minute:I

    goto/16 :goto_4

    :cond_12
    iget-boolean v3, v1, Lk/a;->n:Z

    if-eqz v3, :cond_13

    if-nez v0, :cond_13

    iget-object v0, v1, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/c;

    iput-boolean v5, p0, Lk/c;->f:Z

    :cond_13
    invoke-virtual {v1}, Lk/a;->c()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception p0

    move-object v2, v4

    :goto_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_3
    move-exception p0

    move-object v2, v4

    :goto_7
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_8
    if-eqz v2, :cond_14

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    :cond_14
    return-object v1
.end method

.method static a(Ljava/util/ArrayList;Ljava/lang/String;)Lk/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lk/c;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lk/c;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/c;

    iget-object v2, v1, Lk/c;->l:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Lk/c;

    invoke-direct {p0}, Lk/c;-><init>()V

    invoke-virtual {p0, v1}, Lk/c;->a(Lk/c;)V

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
