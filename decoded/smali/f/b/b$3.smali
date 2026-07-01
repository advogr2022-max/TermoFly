.class Lf/b/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lf/b/b;

.field final synthetic b:Lf/b/b;


# direct methods
.method constructor <init>(Lf/b/b;)V
    .locals 0

    iput-object p1, p0, Lf/b/b$3;->b:Lf/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lf/b/b$3;->b:Lf/b/b;

    iput-object p1, p0, Lf/b/b$3;->a:Lf/b/b;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/xcglobe/xclog/l;->at:Z

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->m:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/xcglobe/xclog/l;->as:Z

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/xcglobe/xclog/l;->au:Z

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->p:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/xcglobe/xclog/l;->av:Z

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    invoke-virtual {v0}, Lf/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    const v2, 0x497423f0    # 999999.0f

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v3, v0, Lf/b/b;->j:Ltypes/GpsVal;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/xcglobe/xclog/h;->a(FLtypes/GpsVal;ZZZ)Z

    goto :goto_0

    :cond_0
    sget-object v7, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    invoke-static {}, Lf/b/b;->c()I

    move-result v0

    int-to-float v8, v0

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v9, v0, Lf/b/b;->j:Ltypes/GpsVal;

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
    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    new-instance v7, Lf/b/c;

    iget-object v1, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v2, v1, Lf/b/b;->d:Landroid/app/Activity;

    const v3, 0x7f090010

    sget-object v1, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    iget-object v4, v1, Lcom/xcglobe/xclog/h;->d:[Ltypes/PoiPoint;

    sget-object v1, Lf/b/b;->c:Lcom/xcglobe/xclog/h;

    iget-object v5, v1, Lcom/xcglobe/xclog/h;->e:[I

    iget-object v6, p0, Lf/b/b$3;->a:Lf/b/b;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lf/b/c;-><init>(Landroid/content/Context;I[Ltypes/PoiPoint;[ILf/b/b;)V

    iput-object v7, v0, Lf/b/b;->g:Lf/b/c;

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v1, v1, Lf/b/b;->g:Lf/b/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lf/b/c;

    invoke-virtual {v0}, Lf/b/c;->notifyDataSetChanged()V

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lf/b/b;->s:Z

    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->n:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const p1, 0x7f0c00f7

    :goto_2
    invoke-static {p1, v1}, Lcom/xcglobe/xclog/l;->b(IZ)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->m:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_3

    const p1, 0x7f0c00f9

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->o:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_4

    const p1, 0x7f0c00f8

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lf/b/b$3;->b:Lf/b/b;

    iget-object v0, v0, Lf/b/b;->p:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_5

    const p1, 0x7f0c00fa

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
