.class Landroid/support/v4/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/f$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Notification$Builder;Landroid/support/v4/a/j$a;)V
    .locals 5

    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Landroid/support/v4/a/j$a;->a()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/a/j$a;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/a/j$a;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/support/v4/a/j$a;->i()[Landroid/support/v4/a/o$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/a/j$a;->i()[Landroid/support/v4/a/o$a;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/n;->a([Landroid/support/v4/a/o$a;)[Landroid/app/RemoteInput;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/a/j$a;->d()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/a/j$a;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_1
    const-string v2, "android.support.allowGeneratedReplies"

    invoke-virtual {p1}, Landroid/support/v4/a/j$a;->e()Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method
