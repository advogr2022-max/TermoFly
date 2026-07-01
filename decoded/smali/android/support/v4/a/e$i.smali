.class Landroid/support/v4/a/e$i;
.super Landroid/support/v4/a/e$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/a/e$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/e$b;Landroid/support/v4/a/e$c;)Landroid/app/Notification;
    .locals 45

    move-object/from16 v0, p1

    new-instance v15, Landroid/support/v4/a/i$a;

    move-object v1, v15

    iget-object v2, v0, Landroid/support/v4/a/e$b;->a:Landroid/content/Context;

    iget-object v3, v0, Landroid/support/v4/a/e$b;->L:Landroid/app/Notification;

    iget-object v4, v0, Landroid/support/v4/a/e$b;->b:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroid/support/v4/a/e$b;->c:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/support/v4/a/e$b;->h:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/support/v4/a/e$b;->f:Landroid/widget/RemoteViews;

    iget v8, v0, Landroid/support/v4/a/e$b;->i:I

    iget-object v9, v0, Landroid/support/v4/a/e$b;->d:Landroid/app/PendingIntent;

    iget-object v10, v0, Landroid/support/v4/a/e$b;->e:Landroid/app/PendingIntent;

    iget-object v11, v0, Landroid/support/v4/a/e$b;->g:Landroid/graphics/Bitmap;

    iget v12, v0, Landroid/support/v4/a/e$b;->p:I

    iget v13, v0, Landroid/support/v4/a/e$b;->q:I

    iget-boolean v14, v0, Landroid/support/v4/a/e$b;->r:Z

    move-object/from16 v41, v15

    iget-boolean v15, v0, Landroid/support/v4/a/e$b;->k:Z

    move-object/from16 v42, v41

    move-object/from16 v43, v1

    iget-boolean v1, v0, Landroid/support/v4/a/e$b;->l:Z

    move/from16 v16, v1

    iget v1, v0, Landroid/support/v4/a/e$b;->j:I

    move/from16 v17, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->n:Ljava/lang/CharSequence;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Landroid/support/v4/a/e$b;->w:Z

    move/from16 v19, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->z:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->M:Ljava/util/ArrayList;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->A:Landroid/os/Bundle;

    move-object/from16 v22, v1

    iget v1, v0, Landroid/support/v4/a/e$b;->B:I

    move/from16 v23, v1

    iget v1, v0, Landroid/support/v4/a/e$b;->C:I

    move/from16 v24, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->D:Landroid/app/Notification;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->s:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-boolean v1, v0, Landroid/support/v4/a/e$b;->t:Z

    move/from16 v27, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->u:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->o:[Ljava/lang/CharSequence;

    move-object/from16 v29, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->E:Landroid/widget/RemoteViews;

    move-object/from16 v30, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->F:Landroid/widget/RemoteViews;

    move-object/from16 v31, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->G:Landroid/widget/RemoteViews;

    move-object/from16 v32, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->H:Ljava/lang/String;

    move-object/from16 v33, v1

    iget v1, v0, Landroid/support/v4/a/e$b;->I:I

    move/from16 v34, v1

    iget-object v1, v0, Landroid/support/v4/a/e$b;->J:Ljava/lang/String;

    move-object/from16 v35, v1

    move-object/from16 v44, v2

    iget-wide v1, v0, Landroid/support/v4/a/e$b;->K:J

    move-wide/from16 v36, v1

    iget-boolean v1, v0, Landroid/support/v4/a/e$b;->x:Z

    move/from16 v38, v1

    iget-boolean v1, v0, Landroid/support/v4/a/e$b;->y:Z

    move/from16 v39, v1

    invoke-static/range {p1 .. p1}, Landroid/support/v4/a/e$b;->a(Landroid/support/v4/a/e$b;)I

    move-result v40

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-direct/range {v1 .. v40}, Landroid/support/v4/a/i$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/CharSequence;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;ILjava/lang/String;JZZI)V

    iget-object v1, v0, Landroid/support/v4/a/e$b;->v:Ljava/util/ArrayList;

    move-object/from16 v2, v42

    invoke-static {v2, v1}, Landroid/support/v4/a/e;->a(Landroid/support/v4/a/c;Ljava/util/ArrayList;)V

    iget-object v1, v0, Landroid/support/v4/a/e$b;->m:Landroid/support/v4/a/e$l;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/a/e$b;->m:Landroid/support/v4/a/e$l;

    invoke-virtual {v1, v2}, Landroid/support/v4/a/e$l;->a(Landroid/support/v4/a/d;)V

    :cond_0
    move-object/from16 v1, p2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/a/e$c;->a(Landroid/support/v4/a/e$b;Landroid/support/v4/a/d;)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/a/e$b;->m:Landroid/support/v4/a/e$l;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/support/v4/a/e$b;->m:Landroid/support/v4/a/e$l;

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/a/e$l;->a(Landroid/os/Bundle;)V

    :cond_1
    return-object v1
.end method
