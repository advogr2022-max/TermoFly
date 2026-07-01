.class public Ldisplay/vmap/VmpEditor;
.super Ljava/lang/Object;


# instance fields
.field private boxClassNames:[Ljava/lang/String;

.field boxClassPrefix:Ljava/lang/String;

.field private boxTitles:[I

.field view:Ldisplay/vmap/ViewVmp;


# direct methods
.method public constructor <init>(Ldisplay/vmap/ViewVmp;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "BoxVario"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "BoxAltitude"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "BoxSpeed"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "BoxWind"

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "BoxGroundProfile"

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const-string v2, "BoxGoal"

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const-string v2, "BoxAirspace"

    const/4 v5, 0x6

    aput-object v2, v1, v5

    const-string v2, "BoxAirspaceInfo"

    const/4 v5, 0x7

    aput-object v2, v1, v5

    const-string v2, "BoxNearThermal"

    const/16 v5, 0x8

    aput-object v2, v1, v5

    const-string v2, "BoxOlcScore"

    const/16 v5, 0x9

    aput-object v2, v1, v5

    const-string v2, "BoxCompetitionTask"

    const/16 v5, 0xa

    aput-object v2, v1, v5

    const-string v2, "BoxAgl"

    const/16 v5, 0xb

    aput-object v2, v1, v5

    const-string v2, "BoxGroundElev"

    const/16 v5, 0xc

    aput-object v2, v1, v5

    const-string v2, "BoxSpeedCircle"

    const/16 v5, 0xd

    aput-object v2, v1, v5

    const-string v2, "BoxFinesse"

    const/16 v5, 0xe

    aput-object v2, v1, v5

    const-string v2, "BoxHeading"

    const/16 v5, 0xf

    aput-object v2, v1, v5

    const-string v2, "BoxGlideToGoal"

    const/16 v5, 0x10

    aput-object v2, v1, v5

    iput-object v1, p0, Ldisplay/vmap/VmpEditor;->boxClassNames:[Ljava/lang/String;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ldisplay/vmap/VmpEditor;->boxTitles:[I

    iput-object p1, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    const-class p1, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/2addr v0, v4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ldisplay/vmap/VmpEditor;->boxClassPrefix:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string p1, ""

    goto :goto_0

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c003e
        0x7f0c003a
        0x7f0c003b
        0x7f0c003f
        0x7f0c0039
        0x7f0c0098
        0x7f0c0038
        0x7f0c0037
        0x7f0c003d
        0x7f0c00ed
        0x7f0c0054
        0x7f0c0036
        0x7f0c006e
        0x7f0c0119
        0x7f0c0089
        0x7f0c00a0
        0x7f0c008f
    .end array-data
.end method

.method static synthetic access$000(Ldisplay/vmap/VmpEditor;Ldisplay/vmap/boxes/InfoBox;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldisplay/vmap/VmpEditor;->changeBox(Ldisplay/vmap/boxes/InfoBox;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ldisplay/vmap/VmpEditor;[Ljava/lang/String;Landroid/util/SparseBooleanArray;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Ldisplay/vmap/VmpEditor;->getSelectedNames([Ljava/lang/String;Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private changeBox(Ldisplay/vmap/boxes/InfoBox;[Ljava/lang/String;)V
    .locals 5

    array-length v0, p2

    iget-object v1, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    iget-object v1, v1, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-nez v0, :cond_1

    if-eq v1, v2, :cond_0

    iget-object p2, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    iget-object p2, p2, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    aget-object p1, p2, p1

    invoke-direct {p0, p1}, Ldisplay/vmap/VmpEditor;->createBox(Ljava/lang/String;)Ldisplay/vmap/boxes/InfoBox;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v3, Ldisplay/vmap/boxes/BoxSet;

    invoke-direct {v3}, Ldisplay/vmap/boxes/BoxSet;-><init>()V

    :goto_0
    if-ge p1, v0, :cond_4

    aget-object v4, p2, p1

    invoke-direct {p0, v4}, Ldisplay/vmap/VmpEditor;->createBox(Ljava/lang/String;)Ldisplay/vmap/boxes/InfoBox;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Ldisplay/vmap/boxes/BoxSet;->add(Ldisplay/vmap/boxes/InfoBox;)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_6

    if-eq v1, v2, :cond_5

    iget-object p2, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    iget-object p2, p2, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object p2, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    iget-object p2, p2, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    iget-object p1, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    iget-object p1, p1, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ldisplay/vmap/VmpEditor;->saveBoxes(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "boxes"

    invoke-static {p2, p1}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    invoke-virtual {p1}, Ldisplay/vmap/ViewVmp;->initDisplay()V

    return-void
.end method

.method private createBox(Ljava/lang/String;)Ldisplay/vmap/boxes/InfoBox;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldisplay/vmap/VmpEditor;->boxClassPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldisplay/vmap/boxes/InfoBox;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getSelected([Ljava/lang/String;Ldisplay/vmap/boxes/InfoBox;)[Z
    .locals 9

    array-length v0, p1

    new-array v1, v0, [Z

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    instance-of v5, p2, Ldisplay/vmap/boxes/BoxSet;

    if-eqz v5, :cond_2

    move-object v5, p2

    check-cast v5, Ldisplay/vmap/boxes/BoxSet;

    const/4 v6, 0x0

    :goto_1
    iget-object v7, v5, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    aget-object v7, p1, v4

    iget-object v8, v5, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    aget-object v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v1, v4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private getSelectedNames([Ljava/lang/String;Landroid/util/SparseBooleanArray;)[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aget-object v4, p1, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private getSortedNames(Ldisplay/vmap/boxes/InfoBox;)[Ljava/lang/String;
    .locals 9

    if-nez p1, :cond_0

    iget-object p1, p0, Ldisplay/vmap/VmpEditor;->boxClassNames:[Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Ldisplay/vmap/VmpEditor;->boxClassNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v7, p0, Ldisplay/vmap/VmpEditor;->boxClassNames:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-direct {p0, v7, p1}, Ldisplay/vmap/VmpEditor;->hasName(Ljava/lang/String;Ldisplay/vmap/boxes/InfoBox;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v8, v5, 0x1

    aput-object v7, v1, v5

    move v5, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v6, 0x1

    aput-object v7, v2, v6

    move v6, v8

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v3, v6, :cond_3

    add-int/lit8 p1, v5, 0x1

    aget-object v0, v2, v3

    aput-object v0, v1, v5

    add-int/lit8 v3, v3, 0x1

    move v5, p1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method private getTitles([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Ldisplay/vmap/VmpEditor;->boxClassNames:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v4, p0, Ldisplay/vmap/VmpEditor;->boxTitles:[I

    aget v4, v4, v5

    invoke-static {v4}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private hasName(Ljava/lang/String;Ldisplay/vmap/boxes/InfoBox;)Z
    .locals 3

    instance-of v0, p2, Ldisplay/vmap/boxes/BoxSet;

    if-eqz v0, :cond_2

    check-cast p2, Ldisplay/vmap/boxes/BoxSet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p2, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p2, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addBox()V
    .locals 5

    iget-object v0, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    invoke-virtual {v0}, Ldisplay/vmap/ViewVmp;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldisplay/vmap/VmpEditor;->getSortedNames(Ldisplay/vmap/boxes/InfoBox;)[Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0, v0}, Ldisplay/vmap/VmpEditor;->getTitles([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ldisplay/vmap/VmpEditor$1;

    invoke-direct {v4, p0, v0}, Ldisplay/vmap/VmpEditor$1;-><init>(Ldisplay/vmap/VmpEditor;[Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public editBox(Ldisplay/vmap/boxes/InfoBox;)V
    .locals 5

    iget-object v0, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    invoke-virtual {v0}, Ldisplay/vmap/ViewVmp;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Ldisplay/vmap/VmpEditor;->getSortedNames(Ldisplay/vmap/boxes/InfoBox;)[Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0c006d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ldisplay/vmap/VmpEditor$3;

    invoke-direct {v3, p0, v0, p1}, Ldisplay/vmap/VmpEditor$3;-><init>(Ldisplay/vmap/VmpEditor;[Ljava/lang/String;Ldisplay/vmap/boxes/InfoBox;)V

    const v4, 0x7f0c00ec

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0, v0}, Ldisplay/vmap/VmpEditor;->getTitles([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, p1}, Ldisplay/vmap/VmpEditor;->getSelected([Ljava/lang/String;Ldisplay/vmap/boxes/InfoBox;)[Z

    move-result-object p1

    new-instance v0, Ldisplay/vmap/VmpEditor$2;

    invoke-direct {v0, p0}, Ldisplay/vmap/VmpEditor$2;-><init>(Ldisplay/vmap/VmpEditor;)V

    invoke-virtual {v2, v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public loadBoxes(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Ldisplay/vmap/VmpEditor;->createBox(Ljava/lang/String;)Ldisplay/vmap/boxes/InfoBox;

    move-result-object v3

    instance-of v4, v3, Ldisplay/vmap/boxes/BoxSet;

    if-eqz v4, :cond_1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p1, v2

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    aget-object v6, v4, v5

    invoke-direct {p0, v6}, Ldisplay/vmap/VmpEditor;->createBox(Ljava/lang/String;)Ldisplay/vmap/boxes/InfoBox;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v7, v3

    check-cast v7, Ldisplay/vmap/boxes/BoxSet;

    invoke-virtual {v7, v6}, Ldisplay/vmap/boxes/BoxSet;->add(Ldisplay/vmap/boxes/InfoBox;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public removeAllBoxes()V
    .locals 2

    iget-object v0, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->boxes:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ldisplay/vmap/VmpEditor;->saveBoxes(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "boxes"

    invoke-static {v1, v0}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldisplay/vmap/VmpEditor;->view:Ldisplay/vmap/ViewVmp;

    invoke-virtual {v0}, Ldisplay/vmap/ViewVmp;->initDisplay()V

    return-void
.end method

.method public saveBoxes(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ldisplay/vmap/boxes/InfoBox;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v5, v4, Ldisplay/vmap/boxes/BoxSet;

    if-eqz v5, :cond_1

    check-cast v4, Ldisplay/vmap/boxes/BoxSet;

    iget-object v5, v4, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    iget-object v7, v4, Ldisplay/vmap/boxes/BoxSet;->boxes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldisplay/vmap/boxes/InfoBox;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
