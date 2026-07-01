.class public Lm/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:I

.field d:I

.field final synthetic e:Lm/h;


# direct methods
.method constructor <init>(Lm/h;FFI)V
    .locals 0

    iput-object p1, p0, Lm/h$a;->e:Lm/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lm/h$a;->a:F

    iput p3, p0, Lm/h$a;->b:F

    iput p4, p0, Lm/h$a;->c:I

    invoke-static {p1}, Lm/h;->a(Lm/h;)I

    move-result p1

    iput p1, p0, Lm/h$a;->d:I

    return-void
.end method
