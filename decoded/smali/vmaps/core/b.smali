.class public Lvmaps/core/b;
.super Ljava/lang/Object;


# instance fields
.field private a:[S

.field private b:Lvmaps/core/c;

.field private c:Lvmaps/core/c;


# direct methods
.method public constructor <init>(II[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lvmaps/core/b;->a:[S

    new-instance p3, Lvmaps/core/c;

    invoke-direct {p3, p1}, Lvmaps/core/c;-><init>(I)V

    iput-object p3, p0, Lvmaps/core/b;->b:Lvmaps/core/c;

    new-instance p1, Lvmaps/core/c;

    invoke-direct {p1, p2}, Lvmaps/core/c;-><init>(I)V

    iput-object p1, p0, Lvmaps/core/b;->c:Lvmaps/core/c;

    return-void
.end method


# virtual methods
.method public a(DD)D
    .locals 10

    iget-object v0, p0, Lvmaps/core/b;->b:Lvmaps/core/c;

    invoke-virtual {v0, p1, p2}, Lvmaps/core/c;->a(D)I

    move-result v0

    iget-object v1, p0, Lvmaps/core/b;->c:Lvmaps/core/c;

    invoke-virtual {v1, p3, p4}, Lvmaps/core/c;->a(D)I

    move-result v1

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v2

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v2, v0

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p3, v2

    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v2, v1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, v2

    iget-object v2, p0, Lvmaps/core/b;->b:Lvmaps/core/c;

    iget v2, v2, Lvmaps/core/c;->a:I

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, p1

    sub-double/2addr v2, p3

    mul-double v6, v4, v2

    iget-object v0, p0, Lvmaps/core/b;->a:[S

    aget-short v0, v0, v1

    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    mul-double v2, v2, p1

    iget-object v0, p0, Lvmaps/core/b;->a:[S

    add-int/lit8 v8, v1, 0x1

    aget-short v0, v0, v8

    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v8

    add-double/2addr v6, v2

    mul-double v4, v4, p3

    iget-object v0, p0, Lvmaps/core/b;->a:[S

    iget-object v2, p0, Lvmaps/core/b;->b:Lvmaps/core/c;

    iget v2, v2, Lvmaps/core/c;->a:I

    add-int/2addr v2, v1

    aget-short v0, v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    add-double/2addr v6, v4

    mul-double p1, p1, p3

    iget-object p3, p0, Lvmaps/core/b;->a:[S

    iget-object p4, p0, Lvmaps/core/b;->b:Lvmaps/core/c;

    iget p4, p4, Lvmaps/core/c;->a:I

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x1

    aget-short p3, p3, v1

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p3

    add-double/2addr v6, p1

    return-wide v6
.end method
