.class public Lmymenu/a;
.super Landroid/app/Dialog;


# instance fields
.field c:Landroid/content/Context;

.field d:Ljava/lang/String;

.field e:Lmymenu/MenuListView;

.field public f:I

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmymenu/c;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field i:I

.field j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, "Menu"

    iput-object v0, p0, Lmymenu/a;->d:Ljava/lang/String;

    const v0, 0x7f090012

    iput v0, p0, Lmymenu/a;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmymenu/a;->g:Ljava/util/ArrayList;

    sget v0, Lcom/xcglobe/xclog/l;->ax:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmymenu/a;->h:I

    const/4 v0, -0x2

    iput v0, p0, Lmymenu/a;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lmymenu/a;->j:I

    iput-object p1, p0, Lmymenu/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lmymenu/a;->d:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmymenu/a;->requestWindowFeature(I)Z

    :cond_0
    const p1, 0x7f090011

    invoke-virtual {p0, p1}, Lmymenu/a;->setContentView(I)V

    invoke-direct {p0}, Lmymenu/a;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmymenu/a;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lmymenu/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmymenu/MenuListView;

    iput-object v0, p0, Lmymenu/a;->e:Lmymenu/MenuListView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lmymenu/a;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lmymenu/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmymenu/c;

    new-instance v1, Lmymenu/b;

    iget-object v2, p0, Lmymenu/a;->c:Landroid/content/Context;

    iget v3, p0, Lmymenu/a;->f:I

    invoke-direct {v1, v2, v3, v0}, Lmymenu/b;-><init>(Landroid/content/Context;I[Lmymenu/c;)V

    iput-object p0, v1, Lmymenu/b;->d:Lmymenu/a;

    iget-object v0, p0, Lmymenu/a;->e:Lmymenu/MenuListView;

    invoke-virtual {v0, v1}, Lmymenu/MenuListView;->a(Lmymenu/b;)V

    iget-object v0, p0, Lmymenu/a;->e:Lmymenu/MenuListView;

    new-instance v2, Lmymenu/a$1;

    invoke-direct {v2, p0, p0, v1}, Lmymenu/a$1;-><init>(Lmymenu/a;Lmymenu/a;Lmymenu/b;)V

    invoke-virtual {v0, v2}, Lmymenu/MenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lmymenu/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmymenu/a;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Lmymenu/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget v1, p0, Lmymenu/a;->h:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lmymenu/a;->i:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lmymenu/a;->show()V

    invoke-virtual {p0}, Lmymenu/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lmymenu/a;->e:Lmymenu/MenuListView;

    invoke-virtual {v0}, Lmymenu/MenuListView;->a()V

    return-void
.end method

.method public a(II)V
    .locals 0

    if-eqz p1, :cond_0

    iput p1, p0, Lmymenu/a;->h:I

    :cond_0
    if-eqz p2, :cond_1

    iput p2, p0, Lmymenu/a;->i:I

    :cond_1
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lmymenu/c;

    invoke-direct {v0}, Lmymenu/c;-><init>()V

    iput p1, v0, Lmymenu/c;->a:I

    iput-object p2, v0, Lmymenu/c;->b:Ljava/lang/String;

    iget-object p1, p0, Lmymenu/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lmymenu/a;->e:Lmymenu/MenuListView;

    iput p1, v0, Lmymenu/MenuListView;->d:I

    return-void
.end method
