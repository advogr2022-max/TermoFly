.class Lconfigs/ActivityConfigGlider$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigGlider;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigGlider;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigGlider;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigGlider$7;->a:Lconfigs/ActivityConfigGlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const-string p1, "user.gtype"

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/xcglobe/xclog/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lconfigs/ActivityConfigGlider$7;->a:Lconfigs/ActivityConfigGlider;

    invoke-virtual {p1}, Lconfigs/ActivityConfigGlider;->a()V

    const/4 p1, 0x1

    return p1
.end method
