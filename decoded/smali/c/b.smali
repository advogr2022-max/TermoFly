.class public Lc/b;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x0

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xcglobe/xclog/App;->c:Landroid/os/Handler;

    new-instance v1, Lc/-$$Lambda$b$Hv_oE4zJnVS-oRFXYrw3bKL2Eto;

    invoke-direct {v1, p0, p1, p2}, Lc/-$$Lambda$b$Hv_oE4zJnVS-oRFXYrw3bKL2Eto;-><init>(Lc/b;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(FF)V
    .locals 2

    sget-boolean v0, Lc/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lc/b;->b:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc/-$$Lambda$b$asU2JdzDflJV-c-1Wr67xQiwph4;

    invoke-direct {v1, p0, p1, p2}, Lc/-$$Lambda$b$asU2JdzDflJV-c-1Wr67xQiwph4;-><init>(Lc/b;FF)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Ltypes/k;)V
    .locals 2

    sget-object v0, Lcom/xcglobe/xclog/App;->c:Landroid/os/Handler;

    new-instance v1, Lc/-$$Lambda$b$_qkeqfR506e4OoKGw2lHX3oXLDQ;

    invoke-direct {v1, p1}, Lc/-$$Lambda$b$_qkeqfR506e4OoKGw2lHX3oXLDQ;-><init>(Ltypes/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic b(FF)V
    .locals 2

    :try_start_0
    sget v0, Lvmaps/d;->a:F

    float-to-int v0, v0

    const/16 v1, 0x190

    invoke-static {v1, v1, p1, p2, v0}, Ltypes/k;->a(IIFFI)Ltypes/k;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/b;->a(Ltypes/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "GroundCreator"

    invoke-static {p2, p1}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/b;->a(Ltypes/k;)V

    :goto_0
    return-void
.end method

.method private static synthetic b(Ltypes/k;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lvmaps/d;->a(Ltypes/k;)V

    :cond_0
    sget p0, Lc/b;->a:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lc/b;->a:I

    const/4 p0, 0x0

    sput-boolean p0, Lc/b;->b:Z

    return-void
.end method

.method public static synthetic lambda$Hv_oE4zJnVS-oRFXYrw3bKL2Eto(Lc/b;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/b;->a(FF)V

    return-void
.end method

.method public static synthetic lambda$_qkeqfR506e4OoKGw2lHX3oXLDQ(Ltypes/k;)V
    .locals 0

    invoke-static {p0}, Lc/b;->b(Ltypes/k;)V

    return-void
.end method

.method public static synthetic lambda$asU2JdzDflJV-c-1Wr67xQiwph4(Lc/b;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/b;->b(FF)V

    return-void
.end method
