.class Li/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field final synthetic e:Li/a/c;


# direct methods
.method constructor <init>(Li/a/c;III)V
    .locals 0

    iput-object p1, p0, Li/a/c$a;->e:Li/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Li/a/c$a;->a:I

    iput p3, p0, Li/a/c$a;->b:I

    iput p4, p0, Li/a/c$a;->c:I

    const/4 p1, 0x0

    iput p1, p0, Li/a/c$a;->d:I

    return-void
.end method
