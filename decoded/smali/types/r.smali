.class public Ltypes/r;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field public d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltypes/r;->a:Ljava/lang/String;

    iput-object v0, p0, Ltypes/r;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltypes/r;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltypes/r;->a:Ljava/lang/String;

    iput-object v0, p0, Ltypes/r;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltypes/r;->c:Z

    invoke-virtual {p0, p1}, Ltypes/r;->a(Ljava/lang/String;)Ltypes/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltypes/r;->a:Ljava/lang/String;

    iput-object v0, p0, Ltypes/r;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltypes/r;->c:Z

    iput-boolean p2, p0, Ltypes/r;->c:Z

    invoke-virtual {p0, p1}, Ltypes/r;->a(Ljava/lang/String;)Ltypes/r;

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

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0, p1, p3}, Ltypes/r;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ge p1, p3, :cond_4

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_3

    if-le p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ltypes/r;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x3d

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    const/4 p1, -0x1

    :goto_2
    if-ne p1, v1, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_c

    const/16 v2, 0xd

    if-eq p2, v2, :cond_c

    const/16 v3, 0x9

    if-eq p2, v3, :cond_c

    const/16 v4, 0xa

    if-ne p2, v4, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0x27

    if-eq p2, v5, :cond_a

    const/16 v5, 0x22

    if-eq p2, v5, :cond_a

    move p2, p1

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_9

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_8

    if-eq v1, v4, :cond_8

    if-eq v1, v2, :cond_8

    if-ne v1, v3, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-eq p2, v1, :cond_b

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3
.end method

.method public static a(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v2, 0x3c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_0

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v2, v0}, Ltypes/r;->a(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    iget v0, p0, Ltypes/r;->d:I

    iget-object v1, p0, Ltypes/r;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v2, 0x39

    const/16 v3, 0x30

    if-ge v0, v1, :cond_1

    iget-object v4, p0, Ltypes/r;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_1

    if-lt v4, v3, :cond_0

    if-le v4, v2, :cond_1

    :cond_0
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v0, 0x1

    if-le v4, v1, :cond_2

    move v4, v1

    :cond_2
    :goto_1
    if-ge v4, v1, :cond_5

    iget-object v5, p0, Ltypes/r;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v5, :cond_3

    if-lt v5, v3, :cond_3

    if-le v5, v2, :cond_4

    :cond_3
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iput v4, p0, Ltypes/r;->d:I

    invoke-virtual {p0, v0, v4}, Ltypes/r;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltypes/r;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltypes/r;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ltypes/r;->a:Ljava/lang/String;

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ltypes/r;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-boolean v0, p0, Ltypes/r;->c:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Ltypes/r;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ltypes/r;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltypes/r;->b:Ljava/lang/String;

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    iput p1, p0, Ltypes/r;->d:I

    return-object p0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Ltypes/r;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget v0, p0, Ltypes/r;->d:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v3, p0, Ltypes/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    iput v0, p0, Ltypes/r;->e:I

    iget-object v5, p0, Ltypes/r;->a:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_0

    const/16 v6, 0x9

    if-eq v5, v6, :cond_0

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    const/16 v6, 0xd

    if-eq v5, v6, :cond_0

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ltypes/r;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v4, :cond_1

    add-int/2addr p1, v2

    :goto_1
    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Ltypes/r;->d:I

    iput v0, p0, Ltypes/r;->e:I

    sub-int/2addr v0, v2

    iget p1, p0, Ltypes/r;->d:I

    invoke-virtual {p0, v0, p1}, Ltypes/r;->a(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Ltypes/r;->a:Ljava/lang/String;

    const-string v1, "/>"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v4, :cond_2

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Ltypes/r;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Ltypes/r;->d:I

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ltypes/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Ltypes/r;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
