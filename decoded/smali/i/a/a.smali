.class public Li/a/a;
.super Ljava/lang/Object;


# instance fields
.field public a:[I

.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field f:Z

.field public g:F

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Li/a/a;->a:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/a/a;->f:Z

    return-void
.end method


# virtual methods
.method a(IIIIII)V
    .locals 1

    iput p1, p0, Li/a/a;->c:I

    iget-object p1, p0, Li/a/a;->a:[I

    const/4 v0, 0x0

    aput p2, p1, v0

    iget-object p1, p0, Li/a/a;->a:[I

    const/4 p2, 0x1

    aput p3, p1, p2

    iget-object p1, p0, Li/a/a;->a:[I

    const/4 p2, 0x2

    aput p4, p1, p2

    iget-object p1, p0, Li/a/a;->a:[I

    const/4 p2, 0x3

    aput p5, p1, p2

    iget-object p1, p0, Li/a/a;->a:[I

    const/4 p2, 0x4

    aput p6, p1, p2

    return-void
.end method
