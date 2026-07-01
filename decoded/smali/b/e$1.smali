.class Lb/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/e;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/e;

.field final synthetic b:Lb/e;


# direct methods
.method constructor <init>(Lb/e;Lb/e;)V
    .locals 0

    iput-object p1, p0, Lb/e$1;->b:Lb/e;

    iput-object p2, p0, Lb/e$1;->a:Lb/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lb/e$1;->a:Lb/e;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lb/e;->b:Z

    iget-object p1, p0, Lb/e$1;->a:Lb/e;

    iget-object p1, p1, Lb/e;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lb/e$1;->a:Lb/e;

    invoke-virtual {p1, p2}, Lb/e;->cancel(Z)Z

    return-void
.end method
