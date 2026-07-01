.class Lcom/xcglobe/xclog/ActivityPocket$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xcglobe/xclog/ActivityPocket;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xcglobe/xclog/ActivityPocket;


# direct methods
.method constructor <init>(Lcom/xcglobe/xclog/ActivityPocket;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityPocket$1;->a:Lcom/xcglobe/xclog/ActivityPocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    sput-boolean p2, Lcom/xcglobe/xclog/l;->ac:Z

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityPocket$1;->a:Lcom/xcglobe/xclog/ActivityPocket;

    iget-object p1, p1, Lcom/xcglobe/xclog/ActivityPocket;->R:Lcom/xcglobe/xclog/a;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "enable_pocket_livetrack"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_0

    invoke-static {}, Lj/a;->b()V

    :cond_0
    return-void
.end method
