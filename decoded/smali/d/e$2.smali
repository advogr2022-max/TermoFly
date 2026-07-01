.class final Ld/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/e;->b(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    iput-boolean p1, p0, Ld/e$2;->a:Z

    iput-boolean p2, p0, Ld/e$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Ld/e$2;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lm/a;->e()V

    :cond_0
    iget-boolean v0, p0, Ld/e$2;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lm/d;->b()V

    :cond_1
    return-void
.end method
