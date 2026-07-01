.class public Lf/b/b;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/b/b$a;
    }
.end annotation


# static fields
.field static c:Lcom/xcglobe/xclog/h; = null

.field static e:Z = false

.field private static w:I = 0x64


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/view/View$OnClickListener;

.field a:I

.field b:Z

.field d:Landroid/app/Activity;

.field f:Landroid/widget/ListView;

.field g:Lf/b/c;

.field h:Lf/b/b$a;

.field i:Ltypes/PoiPoint;

.field j:Ltypes/GpsVal;

.field k:Ltypes/PoiPoint;

.field l:Z

.field m:Landroid/widget/ToggleButton;

.field n:Landroid/widget/ToggleButton;

.field o:Landroid/widget/ToggleButton;

.field p:Landroid/widget/ToggleButton;

.field q:Landroid/widget/ToggleButton;

.field r:Landroid/widget/EditText;

.field s:Z

.field private final t:I

.field private final u:I

.field private final v:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xcglobe/xclog/h;

    invoke-direct {v0}, Lcom/xcglobe/xclog/h;-><init>()V

    sput-object v0, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    const/4 v0, 0x1

    sput-boolean v0, Lf/b/b;->e:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lf/b/b;->t:I

    const/4 v1, 0x1

    iput v1, p0, Lf/b/b;->u:I

    const/4 v1, 0x2

    iput v1, p0, Lf/b/b;->v:I

    new-instance v1, Ltypes/GpsVal;

    invoke-direct {v1}, Ltypes/GpsVal;-><init>()V

    iput-object v1, p0, Lf/b/b;->j:Ltypes/GpsVal;

    new-instance v1, Ltypes/PoiPoint;

    invoke-direct {v1}, Ltypes/PoiPoint;-><init>()V

    iput-object v1, p0, Lf/b/b;->k:Ltypes/PoiPoint;

    iput-boolean v0, p0, Lf/b/b;->l:Z

    iput-boolean v0, p0, Lf/b/b;->x:Z

    iput-boolean v0, p0, Lf/b/b;->s:Z

    new-instance v0, Lf/b/b$3;

    invoke-direct {v0, p0}, Lf/b/b$3;-><init>(Lf/b/b;)V

    iput-object v0, p0, Lf/b/b;->C:Landroid/view/View$OnClickListener;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lf/b/b;->d:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ltypes/GpsVal;Ltypes/PoiPoint;ZLf/b/b$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lf/b/b;->c(Landroid/app/Activity;Ltypes/GpsVal;Ltypes/PoiPoint;ZLf/b/b$a;)Lf/b/b;

    move-result-object p0

    invoke-direct {p0}, Lf/b/b;->d()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p1, p0, Lf/b/b;->s:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lb/g;->b:Z

    :cond_0
    iget-boolean p1, p0, Lf/b/b;->x:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lf/b/b;->z:Z

    sput-boolean p1, Lcom/xcglobe/xclog/l;->at:Z

    iget-boolean p1, p0, Lf/b/b;->A:Z

    sput-boolean p1, Lcom/xcglobe/xclog/l;->au:Z

    iget-boolean p1, p0, Lf/b/b;->y:Z

    sput-boolean p1, Lcom/xcglobe/xclog/l;->as:Z

    iget-boolean p1, p0, Lf/b/b;->B:Z

    sput-boolean p1, Lcom/xcglobe/xclog/l;->av:Z

    :cond_1
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lf/b/b;->r:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lf/b/b;->q:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lf/b/b;->r:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lf/b/b;)V
    .locals 0

    invoke-direct {p0}, Lf/b/b;->g()V

    return-void
.end method

.method private synthetic a(Lf/b/b;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    invoke-interface {p2, p4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltypes/PoiPoint;

    iget-object p1, p1, Lf/b/b;->h:Lf/b/b$a;

    invoke-interface {p1, p2}, Lf/b/b$a;->call(Ltypes/PoiPoint;)V

    invoke-virtual {p0}, Lf/b/b;->dismiss()V

    return-void
.end method

.method private synthetic a(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltypes/PoiPoint;

    iget-char p2, p1, Ltypes/PoiPoint;->m:C

    const/4 p3, 0x1

    const/16 p4, 0x77

    if-ne p2, p4, :cond_0

    iget-object p2, p0, Lf/b/b;->k:Ltypes/PoiPoint;

    invoke-virtual {p2, p1}, Ltypes/PoiPoint;->a(Ltypes/PoiPoint;)V

    iput-boolean p3, p0, Lf/b/b;->l:Z

    invoke-virtual {p0}, Lf/b/b;->openOptionsMenu()V

    :cond_0
    return p3
.end method

.method public static b(Landroid/app/Activity;Ltypes/GpsVal;Ltypes/PoiPoint;ZLf/b/b$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lf/b/b;->c(Landroid/app/Activity;Ltypes/GpsVal;Ltypes/PoiPoint;ZLf/b/b$a;)Lf/b/b;

    move-result-object p0

    sget-boolean p1, Lcom/xcglobe/xclog/l;->as:Z

    iput-boolean p1, p0, Lf/b/b;->y:Z

    sget-boolean p1, Lcom/xcglobe/xclog/l;->at:Z

    iput-boolean p1, p0, Lf/b/b;->z:Z

    sget-boolean p1, Lcom/xcglobe/xclog/l;->au:Z

    iput-boolean p1, p0, Lf/b/b;->A:Z

    sget-boolean p1, Lcom/xcglobe/xclog/l;->av:Z

    iput-boolean p1, p0, Lf/b/b;->B:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf/b/b;->x:Z

    const/4 p2, 0x0

    sput-boolean p2, Lcom/xcglobe/xclog/l;->as:Z

    sput-boolean p2, Lcom/xcglobe/xclog/l;->au:Z

    sput-boolean p2, Lcom/xcglobe/xclog/l;->at:Z

    sput-boolean p1, Lcom/xcglobe/xclog/l;->av:Z

    invoke-direct {p0}, Lf/b/b;->d()V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lf/b/b;->openOptionsMenu()V

    return-void
.end method

.method private synthetic b(Ltypes/PoiPoint;)V
    .locals 3

    iget-object v0, p0, Lf/b/b;->k:Ltypes/PoiPoint;

    iget-object v0, v0, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iget-object v1, p0, Lf/b/b;->k:Ltypes/PoiPoint;

    iget v1, v1, Ltypes/PoiPoint;->i:F

    iget-object v2, p0, Lf/b/b;->k:Ltypes/PoiPoint;

    iget v2, v2, Ltypes/PoiPoint;->j:F

    invoke-static {v0, v1, v2}, Lb/g;->a(Ljava/lang/String;FF)V

    invoke-virtual {p0, p1}, Lf/b/b;->a(Ltypes/PoiPoint;)V

    iget-object v0, p0, Lf/b/b;->j:Ltypes/GpsVal;

    iget v1, p1, Ltypes/PoiPoint;->i:F

    iput v1, v0, Ltypes/GpsVal;->a:F

    iget-object v0, p0, Lf/b/b;->j:Ltypes/GpsVal;

    iget p1, p1, Ltypes/PoiPoint;->j:F

    iput p1, v0, Ltypes/GpsVal;->b:F

    invoke-virtual {p0}, Lf/b/b;->a()V

    return-void
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lf/b/b;->w:I

    return v0
.end method

.method private static c(Landroid/app/Activity;Ltypes/GpsVal;Ltypes/PoiPoint;ZLf/b/b$a;)Lf/b/b;
    .locals 1

    new-instance v0, Lf/b/b;

    invoke-direct {v0, p0}, Lf/b/b;-><init>(Landroid/content/Context;)V

    iput-object p4, v0, Lf/b/b;->h:Lf/b/b$a;

    iput-boolean p3, v0, Lf/b/b;->b:Z

    if-eqz p2, :cond_0

    new-instance p0, Ltypes/PoiPoint;

    invoke-direct {p0}, Ltypes/PoiPoint;-><init>()V

    iput-object p0, v0, Lf/b/b;->i:Ltypes/PoiPoint;

    iget-object p0, v0, Lf/b/b;->i:Ltypes/PoiPoint;

    invoke-virtual {p0, p2}, Ltypes/PoiPoint;->a(Ltypes/PoiPoint;)V

    :cond_0
    iget-object p0, v0, Lf/b/b;->j:Ltypes/GpsVal;

    invoke-virtual {p0, p1}, Ltypes/GpsVal;->a(Ltypes/GpsVal;)V

    return-object v0
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lf/b/b;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lf/b/b;->d:Landroid/app/Activity;

    const-class v1, Lconfigs/ActivityConfigTasks;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lf/b/b;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lf/b/b;->g()V

    :goto_0
    invoke-virtual {p0}, Lf/b/b;->dismiss()V

    return-void
.end method

.method private synthetic c(Ltypes/PoiPoint;)V
    .locals 2

    invoke-virtual {p0, p1}, Lf/b/b;->a(Ltypes/PoiPoint;)V

    iget-object v0, p0, Lf/b/b;->j:Ltypes/GpsVal;

    iget v1, p1, Ltypes/PoiPoint;->i:F

    iput v1, v0, Ltypes/GpsVal;->a:F

    iget-object v0, p0, Lf/b/b;->j:Ltypes/GpsVal;

    iget p1, p1, Ltypes/PoiPoint;->j:F

    iput p1, v0, Ltypes/GpsVal;->b:F

    invoke-virtual {p0}, Lf/b/b;->a()V

    return-void
.end method

.method private d()V
    .locals 14

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lf/b/b;->requestWindowFeature(I)Z

    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lf/b/b;->setContentView(I)V

    const v0, 0x7f0c010d

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/b/b;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lf/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xcglobe/xclog/l;->q:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v0, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    iget-object v1, p0, Lf/b/b;->j:Ltypes/GpsVal;

    const/4 v7, 0x1

    invoke-static {v0, v1, v7}, Lb/g;->a(Lcom/xcglobe/xclog/h;Ltypes/GpsVal;Z)V

    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lf/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lf/b/b;->f:Landroid/widget/ListView;

    invoke-virtual {p0}, Lf/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v8, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    const v9, 0x497423f0    # 999999.0f

    iget-object v10, p0, Lf/b/b;->j:Ltypes/GpsVal;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/xcglobe/xclog/h;->a(FLtypes/GpsVal;ZZZ)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    sget v1, Lf/b/b;->w:I

    int-to-float v1, v1

    iget-object v2, p0, Lf/b/b;->j:Ltypes/GpsVal;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xcglobe/xclog/h;->a(FLtypes/GpsVal;ZZZ)Z

    :goto_0
    sget-boolean v0, Lf/b/b;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    invoke-virtual {v0}, Lcom/xcglobe/xclog/h;->a()V

    goto :goto_1

    :cond_1
    sget-object v0, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    invoke-virtual {v0}, Lcom/xcglobe/xclog/h;->b()V

    :goto_1
    new-instance v8, Lf/b/c;

    iget-object v1, p0, Lf/b/b;->d:Landroid/app/Activity;

    const v2, 0x7f090010

    sget-object v0, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    iget-object v3, v0, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    sget-object v0, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    iget-object v4, v0, Lcom/xcglobe/xclog/h;->e:[I

    move-object v0, v8

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lf/b/c;-><init>(Landroid/content/Context;I[Ltypes/PoiPoint;[ILf/b/b;)V

    iput-object v8, p0, Lf/b/b;->g:Lf/b/c;

    iget-object v0, p0, Lf/b/b;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lf/b/b;->g:Lf/b/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lf/b/b;->f:Landroid/widget/ListView;

    new-instance v1, Lf/b/-$$Lambda$b$pVOWCq2LSQWXqPJq0qF8GHUAes4;

    invoke-direct {v1, p0, p0}, Lf/b/-$$Lambda$b$pVOWCq2LSQWXqPJq0qF8GHUAes4;-><init>(Lf/b/b;Lf/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lf/b/b;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setLongClickable(Z)V

    iget-object v0, p0, Lf/b/b;->f:Landroid/widget/ListView;

    new-instance v1, Lf/b/-$$Lambda$b$g0SHu32sQcyb2-SF8UAnM3B1hKQ;

    invoke-direct {v1, p0}, Lf/b/-$$Lambda$b$g0SHu32sQcyb2-SF8UAnM3B1hKQ;-><init>(Lf/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-boolean v0, p0, Lf/b/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lk/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Ltypes/f;->g:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lf/b/b;->a:I

    goto :goto_2

    :cond_2
    iput v7, p0, Lf/b/b;->a:I

    goto :goto_2

    :cond_3
    iput v1, p0, Lf/b/b;->a:I

    :goto_2
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lf/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v2, p0, Lf/b/b;->a:I

    if-nez v2, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lf/b/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lf/b/-$$Lambda$b$eJ1S-kSHZgMXqzOuXwRJKQl-aho;

    invoke-direct {v2, p0}, Lf/b/-$$Lambda$b$eJ1S-kSHZgMXqzOuXwRJKQl-aho;-><init>(Lf/b/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lf/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lf/b/-$$Lambda$b$b_QKNDeneaiJQAxlG1dKcKMh_8o;

    invoke-direct {v2, p0}, Lf/b/-$$Lambda$b$b_QKNDeneaiJQAxlG1dKcKMh_8o;-><init>(Lf/b/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lf/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lf/b/b;->n:Landroid/widget/ToggleButton;

    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lf/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lf/b/b;->m:Landroid/widget/ToggleButton;

    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lf/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lf/b/b;->o:Landroid/widget/ToggleButton;

    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lf/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lf/b/b;->p:Landroid/widget/ToggleButton;

    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lf/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lf/b/b;->q:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lf/b/b;->n:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/xcglobe/xclog/l;->at:Z

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lf/b/b;->m:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/xcglobe/xclog/l;->as:Z

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lf/b/b;->o:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/xcglobe/xclog/l;->au:Z

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lf/b/b;->p:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/xcglobe/xclog/l;->av:Z

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lf/b/b;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lf/b/b;->n:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lf/b/b;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lf/b/b;->m:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lf/b/b;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lf/b/b;->o:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lf/b/b;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lf/b/b;->p:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lf/b/b;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lf/b/b;->q:Landroid/widget/ToggleButton;

    new-instance v1, Lf/b/-$$Lambda$b$Dkp-tDbX9bgTutw8O4Pb2QTqG4Q;

    invoke-direct {v1, p0}, Lf/b/-$$Lambda$b$Dkp-tDbX9bgTutw8O4Pb2QTqG4Q;-><init>(Lf/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lf/b/-$$Lambda$b$Gf3pOkEltuWNfn1gUuQWEyS3NYg;

    invoke-direct {v0, p0}, Lf/b/-$$Lambda$b$Gf3pOkEltuWNfn1gUuQWEyS3NYg;-><init>(Lf/b/b;)V

    invoke-virtual {p0, v0}, Lf/b/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Lf/b/b;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lf/b/b;->show()V

    const v1, 0x7f060015

    invoke-virtual {p0, v6, v1}, Lf/b/b;->setFeatureDrawableResource(II)V

    invoke-virtual {p0}, Lf/b/b;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0}, Lf/b/b;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lf/b/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lf/b/b;->r:Landroid/widget/EditText;

    iget-object v0, p0, Lf/b/b;->r:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lf/b/b;->r:Landroid/widget/EditText;

    new-instance v1, Lf/b/b$1;

    invoke-direct {v1, p0}, Lf/b/b$1;-><init>(Lf/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lf/b/b;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lk/a;->a:Lk/a;

    iget-object v0, v0, Lk/a;->b:Ljava/lang/String;

    return-object v0

    :pswitch_1
    const v0, 0x7f0c0137

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lf/b/b;->h:Lf/b/b$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lf/b/b$a;->call(Ltypes/PoiPoint;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xcglobe.action.main"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "event"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xcglobe/xclog/App;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lf/b/b;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$4w-H6PaNEpS9n04xW3SxBSXfIwk(Lf/b/b;Ltypes/PoiPoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/b/b;->b(Ltypes/PoiPoint;)V

    return-void
.end method

.method public static synthetic lambda$DhvL_jLmhCo-t5rVoyT34ygKwm8(Lf/b/b;Ltypes/PoiPoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/b/b;->c(Ltypes/PoiPoint;)V

    return-void
.end method

.method public static synthetic lambda$Dkp-tDbX9bgTutw8O4Pb2QTqG4Q(Lf/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/b/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Gf3pOkEltuWNfn1gUuQWEyS3NYg(Lf/b/b;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/b/b;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$b_QKNDeneaiJQAxlG1dKcKMh_8o(Lf/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/b/b;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$eJ1S-kSHZgMXqzOuXwRJKQl-aho(Lf/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/b/b;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$g0SHu32sQcyb2-SF8UAnM3B1hKQ(Lf/b/b;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lf/b/b;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pVOWCq2LSQWXqPJq0qF8GHUAes4(Lf/b/b;Lf/b/b;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lf/b/b;->a(Lf/b/b;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    sget-object v0, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    iget-object v1, p0, Lf/b/b;->j:Ltypes/GpsVal;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lb/g;->a(Lcom/xcglobe/xclog/h;Ltypes/GpsVal;Z)V

    invoke-virtual {p0}, Lf/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    const v2, 0x497423f0    # 999999.0f

    iget-object v3, p0, Lf/b/b;->j:Ltypes/GpsVal;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/xcglobe/xclog/h;->a(FLtypes/GpsVal;ZZZ)Z

    goto :goto_0

    :cond_0
    sget-object v7, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    sget v0, Lf/b/b;->w:I

    int-to-float v8, v0

    iget-object v9, p0, Lf/b/b;->j:Ltypes/GpsVal;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/xcglobe/xclog/h;->a(FLtypes/GpsVal;ZZZ)Z

    :goto_0
    sget-boolean v0, Lf/b/b;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    invoke-virtual {v0}, Lcom/xcglobe/xclog/h;->a()V

    goto :goto_1

    :cond_1
    sget-object v0, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    invoke-virtual {v0}, Lcom/xcglobe/xclog/h;->b()V

    :goto_1
    new-instance v0, Lf/b/c;

    iget-object v2, p0, Lf/b/b;->d:Landroid/app/Activity;

    const v3, 0x7f090010

    sget-object v1, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    iget-object v4, v1, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    sget-object v1, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    iget-object v5, v1, Lcom/xcglobe/xclog/h;->e:[I

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lf/b/c;-><init>(Landroid/content/Context;I[Ltypes/PoiPoint;[ILf/b/b;)V

    iput-object v0, p0, Lf/b/b;->g:Lf/b/c;

    iget-object v0, p0, Lf/b/b;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lf/b/b;->g:Lf/b/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lf/b/b;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lf/b/c;

    invoke-virtual {v0}, Lf/b/c;->notifyDataSetChanged()V

    iget-object v0, p0, Lf/b/b;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    invoke-static {v0}, Lb/g;->a(Ltypes/GpsVal;)V

    return-void
.end method

.method public a(Ltypes/PoiPoint;)V
    .locals 6

    const-string v0, "poi/waypoints.cup"

    invoke-static {v0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",,,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Ltypes/PoiPoint;->i:F

    float-to-double v4, v2

    invoke-static {v4, v5, v3}, Lcom/xcglobe/xclog/l;->a(DZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Ltypes/PoiPoint;->j:F

    float-to-double v2, v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xcglobe/xclog/l;->a(DZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p1, p1, Ltypes/PoiPoint;->k:S

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "m,,,"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method b()Z
    .locals 1

    sget-boolean v0, Lcom/xcglobe/xclog/l;->av:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xcglobe/xclog/l;->at:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xcglobe/xclog/l;->au:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xcglobe/xclog/l;->as:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lf/b/b;->k:Ltypes/PoiPoint;

    iget-object p1, p1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    iget-object v1, p0, Lf/b/b;->k:Ltypes/PoiPoint;

    iget v1, v1, Ltypes/PoiPoint;->i:F

    iget-object v2, p0, Lf/b/b;->k:Ltypes/PoiPoint;

    iget v2, v2, Ltypes/PoiPoint;->j:F

    invoke-static {p1, v1, v2}, Lb/g;->a(Ljava/lang/String;FF)V

    iput-boolean v0, p0, Lf/b/b;->l:Z

    invoke-virtual {p0}, Lf/b/b;->a()V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lf/b/b;->d:Landroid/app/Activity;

    iget-object v0, p0, Lf/b/b;->k:Ltypes/PoiPoint;

    new-instance v1, Lf/b/-$$Lambda$b$4w-H6PaNEpS9n04xW3SxBSXfIwk;

    invoke-direct {v1, p0}, Lf/b/-$$Lambda$b$4w-H6PaNEpS9n04xW3SxBSXfIwk;-><init>(Lf/b/b;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lf/b/b;->d:Landroid/app/Activity;

    const/4 v0, 0x0

    new-instance v1, Lf/b/-$$Lambda$b$DhvL_jLmhCo-t5rVoyT34ygKwm8;

    invoke-direct {v1, p0}, Lf/b/-$$Lambda$b$DhvL_jLmhCo-t5rVoyT34ygKwm8;-><init>(Lf/b/b;)V

    :goto_0
    invoke-static {p1, v0, v1}, Lf/a;->a(Landroid/app/Activity;Ltypes/PoiPoint;Lf/a$a;)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0}, Lf/b/b;->g()V

    goto :goto_2

    :pswitch_4
    sput-boolean v0, Lf/b/b;->e:Z

    sget-object p1, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    invoke-virtual {p1}, Lcom/xcglobe/xclog/h;->b()V

    goto :goto_1

    :pswitch_5
    const/4 p1, 0x1

    sput-boolean p1, Lf/b/b;->e:Z

    sget-object p1, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    invoke-virtual {p1}, Lcom/xcglobe/xclog/h;->a()V

    :goto_1
    iget-object p1, p0, Lf/b/b;->f:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lf/b/c;

    invoke-virtual {p1}, Lf/b/c;->notifyDataSetChanged()V

    iget-object p1, p0, Lf/b/b;->f:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    :goto_2
    invoke-super {p0, p2}, Landroid/app/Dialog;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean p1, p0, Lf/b/b;->l:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/b/b;->k:Ltypes/PoiPoint;

    iget-object p1, p1, Ltypes/PoiPoint;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lf/b/b$2;

    iget-object v1, p0, Lf/b/b;->d:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lf/b/b$2;-><init>(Lf/b/b;Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean p1, p0, Lf/b/b;->l:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x62

    const v1, 0x7f0c006c

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmymenu/a;->a(ILjava/lang/String;)V

    const/16 p1, 0x63

    const v1, 0x7f0c005d

    :goto_1
    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmymenu/a;->a(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    const v1, 0x7f0c0117

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmymenu/a;->a(ILjava/lang/String;)V

    const/4 p1, 0x2

    const v1, 0x7f0c0116

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmymenu/a;->a(ILjava/lang/String;)V

    const/4 p1, 0x4

    const v1, 0x7f0c0004

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmymenu/a;->a(ILjava/lang/String;)V

    sget-boolean p1, Ltypes/f;->g:Z

    if-nez p1, :cond_2

    sget-object p1, Ltypes/f;->a:Ltypes/PoiPoint;

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    const v1, 0x7f0c0048

    goto :goto_1

    :cond_2
    :goto_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lf/b/b;->l:Z

    invoke-virtual {v0}, Lmymenu/a;->a()V

    return p1
.end method
