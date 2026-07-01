.class public Lconfigs/ActivityConfigTasks;
.super Lconfigs/a;


# static fields
.field public static a:I


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lconfigs/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lconfigs/ActivityConfigTasks;->b:Ljava/lang/String;

    iput-object v0, p0, Lconfigs/ActivityConfigTasks;->c:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lconfigs/ActivityConfigTasks;->m:Lconfigs/a;

    const-class v2, Lcom/xcglobe/xclog/ActivityCloudPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lconfigs/ActivityConfigTasks;->m:Lconfigs/a;

    invoke-virtual {p1, v0}, Lconfigs/a;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lconfigs/ActivityConfigTasks;)V
    .locals 0

    invoke-direct {p0}, Lconfigs/ActivityConfigTasks;->f()V

    return-void
.end method

.method static synthetic a(Lconfigs/ActivityConfigTasks;I)V
    .locals 0

    invoke-direct {p0, p1}, Lconfigs/ActivityConfigTasks;->a(I)V

    return-void
.end method

.method static synthetic a(Lconfigs/ActivityConfigTasks;Lconfigs/prefitems/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lconfigs/ActivityConfigTasks;->a(Lconfigs/prefitems/b;)V

    return-void
.end method

.method private a(Lconfigs/prefitems/b;)V
    .locals 2

    iget-object v0, p0, Lconfigs/ActivityConfigTasks;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lconfigs/ActivityConfigTasks$7;

    iget-object v1, p0, Lconfigs/ActivityConfigTasks;->c:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1}, Lconfigs/ActivityConfigTasks$7;-><init>(Lconfigs/ActivityConfigTasks;Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean p1, p1, Lconfigs/prefitems/b;->a:Z

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    const v1, 0x7f0c005b

    :goto_0
    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmymenu/a;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x14

    const/high16 v1, 0x7f0c0000

    goto :goto_0

    :goto_1
    const/16 p1, 0x1e

    const v1, 0x7f0c005d

    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmymenu/a;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Lmymenu/a;->a()V

    return-void
.end method

.method static synthetic b(Lconfigs/ActivityConfigTasks;)V
    .locals 0

    invoke-direct {p0}, Lconfigs/ActivityConfigTasks;->g()V

    return-void
.end method

.method static synthetic c(Lconfigs/ActivityConfigTasks;)V
    .locals 0

    invoke-direct {p0}, Lconfigs/ActivityConfigTasks;->h()V

    return-void
.end method

.method private d()V
    .locals 7

    const-string v0, "active_wpfiles"

    invoke-static {v0}, Lcom/xcglobe/xclog/j;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lconfigs/ActivityConfigTasks;->c()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "wpfilesCategory"

    invoke-virtual {p0, v2}, Lconfigs/ActivityConfigTasks;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    new-instance v4, Lconfigs/prefitems/b;

    invoke-direct {v4, p0}, Lconfigs/prefitems/b;-><init>(Landroid/content/Context;)V

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Lconfigs/prefitems/b;->setKey(Ljava/lang/String;)V

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Lconfigs/prefitems/b;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lconfigs/prefitems/b;->a:Z

    new-instance v5, Lconfigs/ActivityConfigTasks$1;

    invoke-direct {v5, p0}, Lconfigs/ActivityConfigTasks$1;-><init>(Lconfigs/ActivityConfigTasks;)V

    invoke-virtual {v4, v5}, Lconfigs/prefitems/b;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lconfigs/ActivityConfigTasks;)V
    .locals 0

    invoke-direct {p0}, Lconfigs/ActivityConfigTasks;->i()V

    return-void
.end method

.method private e()V
    .locals 10

    invoke-virtual {p0}, Lconfigs/ActivityConfigTasks;->b()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetCategory"

    invoke-virtual {p0, v1}, Lconfigs/ActivityConfigTasks;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    aget-object v4, v0, v3

    invoke-static {v4}, Lk/d;->a(Ljava/lang/String;)Lk/a;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v4, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Lconfigs/prefitems/a;

    invoke-direct {v5, p0}, Lconfigs/prefitems/a;-><init>(Landroid/content/Context;)V

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Lconfigs/prefitems/a;->setKey(Ljava/lang/String;)V

    sget-object v6, Lk/a;->a:Lk/a;

    if-eqz v6, :cond_2

    aget-object v6, v0, v3

    sget-object v7, Lk/a;->a:Lk/a;

    iget-object v7, v7, Lk/a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    iput-boolean v6, v5, Lconfigs/prefitems/a;->a:Z

    :cond_2
    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Lconfigs/prefitems/a;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lk/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk/c;

    iget-object v7, v7, Lk/c;->l:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/xcglobe/xclog/l;->E:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Lk/a;->h()F

    move-result v4

    invoke-static {v4}, Ltypes/q;->a(F)F

    move-result v4

    float-to-double v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lconfigs/prefitems/a;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v4, Lconfigs/ActivityConfigTasks$2;

    invoke-direct {v4, p0}, Lconfigs/ActivityConfigTasks$2;-><init>(Lconfigs/ActivityConfigTasks;)V

    invoke-virtual {v5, v4}, Lconfigs/prefitems/a;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lconfigs/ActivityConfigTasks;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lconfigs/ActivityConfigTasks$6;

    iget-object v1, p0, Lconfigs/ActivityConfigTasks;->b:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1}, Lconfigs/ActivityConfigTasks$6;-><init>(Lconfigs/ActivityConfigTasks;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lk/a;->a:Lk/a;

    if-eqz v1, :cond_1

    sget-object v1, Lk/a;->a:Lk/a;

    iget-object v1, v1, Lk/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lconfigs/ActivityConfigTasks;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x14

    if-eqz v1, :cond_2

    const v1, 0x7f0c005b

    goto :goto_1

    :cond_2
    const/high16 v1, 0x7f0c0000

    :goto_1
    invoke-static {v1}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lmymenu/a;->a(ILjava/lang/String;)V

    const/16 v1, 0xa

    const v2, 0x7f0c006c

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(ILjava/lang/String;)V

    const/16 v1, 0x32

    const v2, 0x7f0c0061

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(ILjava/lang/String;)V

    const/16 v1, 0x1e

    const v2, 0x7f0c005d

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(ILjava/lang/String;)V

    const/16 v1, 0x28

    const v2, 0x7f0c00bb

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmymenu/a;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Lmymenu/a;->a()V

    return-void
.end method

.method private g()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lconfigs/ActivityConfigTasks;->m:Lconfigs/a;

    const-class v2, Lconfigs/ActivityConfigTask;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "taskname"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lconfigs/ActivityConfigTasks;->a:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lconfigs/ActivityConfigTasks;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lconfigs/ActivityConfigTasks;->m:Lconfigs/a;

    invoke-virtual {v1, v0}, Lconfigs/a;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private h()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c012a

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lconfigs/ActivityConfigTasks;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lconfigs/ActivityConfigTasks$8;

    invoke-direct {v1, p0}, Lconfigs/ActivityConfigTasks$8;-><init>(Lconfigs/ActivityConfigTasks;)V

    const v2, 0x7f0c0160

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private i()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0128

    invoke-static {v2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lconfigs/ActivityConfigTasks;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lconfigs/ActivityConfigTasks$9;

    invoke-direct {v1, p0}, Lconfigs/ActivityConfigTasks$9;-><init>(Lconfigs/ActivityConfigTasks;)V

    const v2, 0x7f0c0160

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    invoke-direct {p0}, Lconfigs/ActivityConfigTasks;->e()V

    invoke-direct {p0}, Lconfigs/ActivityConfigTasks;->d()V

    const-string v0, "settingsCategory"

    invoke-virtual {p0, v0}, Lconfigs/ActivityConfigTasks;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f0c00e4

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    new-instance v2, Lconfigs/ActivityConfigTasks$3;

    invoke-direct {v2, p0}, Lconfigs/ActivityConfigTasks$3;-><init>(Lconfigs/ActivityConfigTasks;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c00b3

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    new-instance v2, Lconfigs/ActivityConfigTasks$4;

    invoke-direct {v2, p0}, Lconfigs/ActivityConfigTasks$4;-><init>(Lconfigs/ActivityConfigTasks;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    new-instance v2, Lconfigs/ActivityConfigTasks$5;

    invoke-direct {v2, p0}, Lconfigs/ActivityConfigTasks$5;-><init>(Lconfigs/ActivityConfigTasks;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method protected a(ILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "file"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lconfigs/ActivityConfigTasks;->a()V

    :cond_0
    return-void
.end method

.method b()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/io/File;

    const-string v1, "tasks"

    invoke-static {v1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".cup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    :cond_0
    aput-object v4, v1, v3

    :goto_1
    aget-object v4, v1, v3

    const-string v5, "task-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    aget-object v4, v1, v3

    const-string v5, "task-"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lconfigs/ActivityConfigTasks;->a:I

    if-le v4, v5, :cond_1

    sput v4, Lconfigs/ActivityConfigTasks;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method c()[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "waypoints"

    invoke-static {v1}, Lcom/xcglobe/xclog/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lconfigs/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f000a

    invoke-virtual {p0, p1}, Lconfigs/ActivityConfigTasks;->addPreferencesFromResource(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lconfigs/ActivityConfigTasks;->n:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    :goto_0
    invoke-direct {p0, v0}, Lconfigs/ActivityConfigTasks;->a(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lconfigs/ActivityConfigTasks;->g()V

    :goto_1
    invoke-super {p0, p1}, Lconfigs/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onPause()V

    invoke-static {}, Lb/g;->a()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0c00e4

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x28

    const/4 v3, 0x4

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f0c00b3

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x32

    const/4 v3, 0x5

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f0c00b4

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c

    const/4 v3, 0x6

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return v1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lconfigs/a;->onResume()V

    invoke-virtual {p0}, Lconfigs/ActivityConfigTasks;->a()V

    return-void
.end method
