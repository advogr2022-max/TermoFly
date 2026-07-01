.class public Lm/h$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field c:I

.field public d:F

.field e:I

.field f:I

.field final synthetic g:Lm/h;


# direct methods
.method public constructor <init>(Lm/h;)V
    .locals 0

    iput-object p1, p0, Lm/h$b;->g:Lm/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
