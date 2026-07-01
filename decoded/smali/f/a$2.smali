.class Lf/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/a;


# direct methods
.method constructor <init>(Lf/a;)V
    .locals 0

    iput-object p1, p0, Lf/a$2;->a:Lf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf/a$2;->a:Lf/a;

    invoke-virtual {p1}, Lf/a;->dismiss()V

    return-void
.end method
