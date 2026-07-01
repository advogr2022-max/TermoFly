.class Ld/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a;->a(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ld/a;


# direct methods
.method constructor <init>(Ld/a;Z)V
    .locals 0

    iput-object p1, p0, Ld/a$1;->b:Ld/a;

    iput-boolean p2, p0, Ld/a$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/a$1;->b:Ld/a;

    iget-boolean v1, p0, Ld/a$1;->a:Z

    invoke-virtual {v0, v1}, Ld/a;->a(Z)V

    return-void
.end method
