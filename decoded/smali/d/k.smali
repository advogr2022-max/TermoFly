.class public Ld/k;
.super Ld/f;


# static fields
.field private static f:Ld/b;


# instance fields
.field c:Landroid/content/Context;

.field protected d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/b;

    invoke-direct {v0}, Ld/b;-><init>()V

    sput-object v0, Ld/k;->f:Ld/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/n;)V
    .locals 1

    invoke-direct {p0}, Ld/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld/k;->d:I

    iput-boolean v0, p0, Ld/k;->e:Z

    iput v0, p0, Ld/k;->d:I

    iput-boolean v0, p0, Ld/k;->e:Z

    iput-object p2, p0, Ld/k;->a:Ld/n;

    iput-object p1, p0, Ld/k;->c:Landroid/content/Context;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Ld/k;->f:Ld/b;

    invoke-virtual {v0, p1}, Ld/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Ld/k;->f:Ld/b;

    iget-boolean p1, p1, Ld/b;->m:Z

    if-eqz p1, :cond_1

    sget-object p1, Ld/k;->f:Ld/b;

    iget p1, p1, Ld/b;->e:I

    iget-object v0, p0, Ld/k;->a:Ld/n;

    int-to-float p1, p1

    sget-object v1, Ld/k;->f:Ld/b;

    iget v1, v1, Ld/b;->g:F

    sget-object v2, Ld/k;->f:Ld/b;

    iget-wide v2, v2, Ld/b;->h:J

    invoke-interface {v0, p1, v1, v2, v3}, Ld/n;->a(FFJ)V

    :cond_1
    sget-object p1, Ld/k;->f:Ld/b;

    iget-boolean p1, p1, Ld/b;->l:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Ld/k;->a:Ld/n;

    sget-object p1, Ld/k;->f:Ld/b;

    iget v1, p1, Ld/b;->b:F

    sget-object p1, Ld/k;->f:Ld/b;

    iget v2, p1, Ld/b;->c:F

    sget-object p1, Ld/k;->f:Ld/b;

    iget p1, p1, Ld/b;->e:I

    int-to-short v3, p1

    sget-object p1, Ld/k;->f:Ld/b;

    iget-wide v4, p1, Ld/b;->h:J

    sget-object p1, Ld/k;->f:Ld/b;

    iget v6, p1, Ld/b;->f:I

    invoke-interface/range {v0 .. v6}, Ld/n;->a(FFSJI)V

    :cond_2
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Ld/k;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/k;->e:Z

    invoke-static {}, Ld/o;->a()V

    const/4 v0, 0x0

    iput v0, p0, Ld/k;->d:I

    invoke-virtual {p0, v0}, Ld/k;->a(I)V

    const-string v0, "Terminating tcp device."

    invoke-static {v0}, Ld/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    const/16 p1, 0x1101

    invoke-static {p0, p1}, Ld/o;->a(Ld/k;I)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x24

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ld/k;->c(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/k;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    sget-boolean v0, Ld/o;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "tcp"

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "TCP device"

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
