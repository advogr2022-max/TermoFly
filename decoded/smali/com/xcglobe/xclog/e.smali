.class public Lcom/xcglobe/xclog/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/graphics/Bitmap;

.field public static b:Landroid/graphics/Bitmap;

.field public static c:Landroid/graphics/Bitmap;


# direct methods
.method public static a()V
    .locals 2

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060013

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/e;->a:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/e;->c:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xcglobe/xclog/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/xcglobe/xclog/e;->b:Landroid/graphics/Bitmap;

    return-void
.end method
