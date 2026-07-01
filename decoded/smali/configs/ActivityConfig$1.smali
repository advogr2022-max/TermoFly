.class Lconfigs/ActivityConfig$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfig;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfig;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfig;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfig$1;->a:Lconfigs/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    const/16 p1, 0x20

    invoke-static {p1}, Ldisplay/vmap/ViewVmp;->setFlag(I)V

    const-string p1, "demo.igc"

    invoke-static {p1}, Lc/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xcglobe/xclog/l;->e()V

    const/4 p1, 0x1

    return p1
.end method
