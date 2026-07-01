.class Lc/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:S

.field final synthetic d:J

.field final synthetic e:Lc/a;


# direct methods
.method constructor <init>(Lc/a;FFSJ)V
    .locals 0

    iput-object p1, p0, Lc/a$3;->e:Lc/a;

    iput p2, p0, Lc/a$3;->a:F

    iput p3, p0, Lc/a$3;->b:F

    iput-short p4, p0, Lc/a$3;->c:S

    iput-wide p5, p0, Lc/a$3;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/xcglobe/xclog/App;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget v1, p0, Lc/a$3;->a:F

    iget v2, p0, Lc/a$3;->b:F

    iget-short v3, p0, Lc/a$3;->c:S

    iget-wide v4, p0, Lc/a$3;->d:J

    const/4 v6, -0x1

    invoke-static/range {v1 .. v6}, Lm/g;->a(FFSJI)V

    :cond_0
    return-void
.end method
