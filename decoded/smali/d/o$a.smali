.class Ld/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ld/k;


# direct methods
.method constructor <init>(Ld/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o$a;->a:Ld/k;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    sget v2, Ld/o;->e:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/xcglobe/xclog/App;->f()Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v2, Ld/o;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v2, :cond_4

    :try_start_1
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    sget-boolean v4, Ld/o;->d:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    sput-boolean v5, Ld/o;->c:Z

    iget-object v5, p0, Ld/o$a;->a:Ld/k;

    invoke-virtual {v5, v4}, Ld/k;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v3

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catch_2
    move-exception v3

    move-object v2, v0

    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_3

    :goto_5
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_4
    move-exception v2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_6
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    move-exception v1

    iget-object v2, p0, Ld/o$a;->a:Ld/k;

    const/4 v3, 0x0

    iput v3, v2, Ld/k;->d:I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const-string v1, "Terminating looper"

    invoke-static {v1}, Ld/d;->a(Ljava/lang/String;)V

    iput-object v0, p0, Ld/o$a;->a:Ld/k;

    sput-object v0, Ld/o;->a:Ld/o$a;

    return-void
.end method
