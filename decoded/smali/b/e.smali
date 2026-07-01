.class public Lb/e;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/e;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lb/e;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-ge v1, v0, :cond_0

    move v0, v1

    :cond_0
    if-eq v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lb/e;->d:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/e;->d:Ljava/lang/String;

    invoke-static {v1}, Lb/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/e;->f:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lb/e;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lb/e;->f:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_0

    int-to-long v9, v5

    add-long/2addr v3, v9

    new-array v6, v8, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x64

    mul-long v9, v9, v3

    int-to-long v11, v0

    div-long/2addr v9, v11

    long-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lb/e;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "0"

    aput-object v0, p1, v7

    const v0, 0x7f0c0143

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v8

    invoke-virtual {p0, p1}, Lb/e;->publishProgress([Ljava/lang/Object;)V

    const p1, 0x7f0c0144

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/e;->c:Ljava/lang/String;

    iput-boolean v8, p0, Lb/e;->g:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const p1, 0x7f0c00e2

    invoke-static {p1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/e;->c:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/e;->g:Z

    iput-object p1, p0, Lb/e;->e:Ljava/lang/String;

    iput-object p2, p0, Lb/e;->d:Ljava/lang/String;

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/xcglobe/xclog/App;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lb/e;->a:Landroid/app/ProgressDialog;

    iget-object p1, p0, Lb/e;->a:Landroid/app/ProgressDialog;

    const p2, 0x7f0c006b

    invoke-static {p2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lb/e;->a:Landroid/app/ProgressDialog;

    const p2, 0x7f0c0047

    invoke-static {p2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lb/e$1;

    invoke-direct {v1, p0, p0}, Lb/e$1;-><init>(Lb/e;Lb/e;)V

    const/4 v2, -0x2

    invoke-virtual {p1, v2, p2, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lb/e;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    new-array p1, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lb/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    invoke-static {}, Lcom/xcglobe/xclog/App;->a()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0c006a

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/e;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/xcglobe/xclog/l;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lb/e;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-boolean p1, p0, Lb/e;->g:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "url"

    iget-object v1, p0, Lb/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "file"

    iget-object v1, p0, Lb/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1a

    invoke-static {v0, p1}, Lcom/xcglobe/xclog/ActivityMain;->a(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lb/e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lb/e;->a(Ljava/lang/Void;)V

    return-void
.end method
