.class public Lb/i;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    new-instance p0, Lb/i;

    invoke-direct {p0}, Lb/i;-><init>()V

    invoke-virtual {p0}, Lb/i;->a()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lb/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    new-instance p1, Lk/b;

    invoke-direct {p1}, Lk/b;-><init>()V

    sget-object v0, Lk/a;->a:Lk/a;

    invoke-virtual {p1, v0}, Lk/b;->a(Lk/a;)J

    move-result-wide v0

    sget-object p1, Lk/a;->a:Lk/a;

    invoke-virtual {p1, v0, v1}, Lk/a;->a(J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/xcglobe/xclog/App;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/i;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lb/i;->a:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0043

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lb/i;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lb/i;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lb/i;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p1, p0, Lb/i;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const-string p1, "demo-task.igc"

    invoke-static {p1}, Lc/a;->a(Ljava/lang/String;)V

    const/16 p1, 0x20

    invoke-static {p1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    invoke-static {}, Lcom/xcglobe/xclog/l;->e()V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lb/i;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lb/i;->a(Ljava/lang/Boolean;)V

    return-void
.end method
