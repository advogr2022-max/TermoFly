.class Lc/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a;


# direct methods
.method constructor <init>(Lc/a;)V
    .locals 0

    iput-object p1, p0, Lc/a$1;->a:Lc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/a$1;->a:Lc/a;

    invoke-static {v0}, Lc/a;->a(Lc/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GpsPlayer"

    invoke-static {v1, v0}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    iget-object v0, p0, Lc/a$1;->a:Lc/a;

    invoke-static {v0}, Lc/a;->b(Lc/a;)V

    return-void
.end method
