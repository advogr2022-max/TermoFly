.class public Lcom/xcglobe/xclog/ActivityFlights;
.super Landroid/app/ListActivity;


# instance fields
.field a:I

.field private b:Lcom/xcglobe/xclog/c;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xcglobe/xclog/ActivityFlights;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xcglobe/xclog/ActivityFlights;->a:I

    return-void
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityFlights;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xcglobe/xclog/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "demo-track.igc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "demo-task.igc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "igc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "IGC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/xcglobe/xclog/ActivityFlights;->c:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityFlights;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    invoke-direct {p0}, Lcom/xcglobe/xclog/ActivityFlights;->b()V

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityFlights;->b:Lcom/xcglobe/xclog/c;

    invoke-virtual {v0}, Lcom/xcglobe/xclog/c;->notifyDataSetChanged()V

    return-void
.end method

.method a(Z)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xcglobe/xclog/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v3, "uploaded"

    invoke-static {v2, v3}, Lcom/xcglobe/xclog/j;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/xcglobe/xclog/l;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/xcglobe/xclog/l;->c(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityFlights;->a()V

    return-void
.end method

.method b(Z)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f0c0127

    goto :goto_0

    :cond_0
    const v1, 0x7f0c012c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0160

    new-instance v2, Lcom/xcglobe/xclog/ActivityFlights$1;

    invoke-direct {v2, p0, p1}, Lcom/xcglobe/xclog/ActivityFlights$1;-><init>(Lcom/xcglobe/xclog/ActivityFlights;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0c00e6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-static {p0}, Lcom/xcglobe/xclog/l;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/xcglobe/xclog/ActivityFlights;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090003

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityFlights;->setContentView(I)V

    new-instance p1, Lcom/xcglobe/xclog/c;

    iget-object v0, p0, Lcom/xcglobe/xclog/ActivityFlights;->c:Ljava/util/List;

    const v1, 0x7f090016

    invoke-direct {p1, p0, v1, v0}, Lcom/xcglobe/xclog/c;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityFlights;->b:Lcom/xcglobe/xclog/c;

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityFlights;->b:Lcom/xcglobe/xclog/c;

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityFlights;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f0c0060

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f0c005e

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityFlights;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/xcglobe/xclog/ActivityFlights;->b(Z)V

    return v1

    :pswitch_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xcglobe/xclog/ActivityFlights;->b(Z)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-static {}, Lcom/xcglobe/xclog/App;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityFlights;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xcglobe/xclog/ActivityFlights;->a()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    return-void
.end method
