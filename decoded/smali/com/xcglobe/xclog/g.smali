.class public Lcom/xcglobe/xclog/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/graphics/Paint;

.field public static b:Landroid/graphics/Paint;

.field public static c:Landroid/graphics/Paint;


# direct methods
.method public static a(FI)Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/xcglobe/xclog/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p0, Lcom/xcglobe/xclog/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Lcom/xcglobe/xclog/g;->c:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static a()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    sget-object v0, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/xcglobe/xclog/g;->b:Landroid/graphics/Paint;

    sget-object v0, Lcom/xcglobe/xclog/g;->b:Landroid/graphics/Paint;

    sget-object v2, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    sget-object v0, Lcom/xcglobe/xclog/g;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/xcglobe/xclog/g;->c:Landroid/graphics/Paint;

    sget-object v0, Lcom/xcglobe/xclog/g;->c:Landroid/graphics/Paint;

    sget-object v2, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    sget-object v0, Lcom/xcglobe/xclog/g;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/xcglobe/xclog/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/xcglobe/xclog/g;->c:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static b()Landroid/graphics/Paint;
    .locals 2

    sget v0, Lcom/xcglobe/xclog/l;->A:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/xcglobe/xclog/g;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public static b(FI)Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/xcglobe/xclog/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p0, Lcom/xcglobe/xclog/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Lcom/xcglobe/xclog/g;->b:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static c()Landroid/graphics/Paint;
    .locals 2

    sget-object v0, Lcom/xcglobe/xclog/g;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/xcglobe/xclog/g;->b:Landroid/graphics/Paint;

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/xcglobe/xclog/g;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static c(FI)Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p0, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Lcom/xcglobe/xclog/g;->a:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static d()Landroid/graphics/Paint;
    .locals 2

    sget v0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v0, v0

    sget v1, Lcom/xcglobe/xclog/l;->p:I

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
