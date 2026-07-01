.class public Lb/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static d:I

.field static e:I

.field static f:F

.field static g:F


# instance fields
.field a:F

.field b:F

.field c:Ltypes/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ltypes/a;

    invoke-direct {v0}, Ltypes/a;-><init>()V

    iput-object v0, p0, Lb/b;->c:Ltypes/a;

    iput p1, p0, Lb/b;->a:F

    iput p2, p0, Lb/b;->b:F

    return-void
.end method

.method public static a(FFZ)V
    .locals 1

    if-nez p2, :cond_0

    sget p2, Lb/b;->f:F

    sget v0, Lb/b;->g:F

    invoke-static {p0, p1, p2, v0}, Ltypes/i;->b(FFFF)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    return-void

    :cond_0
    sput p0, Lb/b;->f:F

    sput p1, Lb/b;->g:F

    new-instance p2, Lb/b;

    invoke-direct {p2, p0, p1}, Lb/b;-><init>(FF)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p2, p0}, Lb/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget p0, Lb/b;->d:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lb/b;->d:I

    sget p0, Lb/b;->e:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lb/b;->e:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lb/b;->c:Ltypes/a;

    iget v1, p0, Lb/b;->a:F

    iget v2, p0, Lb/b;->b:F

    invoke-virtual {v0, v1, v2}, Ltypes/a;->a(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object p1, p0, Lb/b;->c:Ltypes/a;

    const-string v1, "AirLoader.doInBackground"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 0

    iget-object p1, p0, Lb/b;->c:Ltypes/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b;->c:Ltypes/a;

    invoke-static {p1}, Lvmaps/a;->a(Ltypes/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b;->c:Ltypes/a;

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/xcglobe/xclog/ActivityMain;->a(I)V

    :cond_0
    sget p1, Lb/b;->e:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lb/b;->e:I

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lb/b;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lb/b;->a(Ljava/lang/Integer;)V

    return-void
.end method
