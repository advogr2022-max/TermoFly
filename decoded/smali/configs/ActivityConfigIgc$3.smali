.class Lconfigs/ActivityConfigIgc$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigIgc;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigIgc;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigIgc;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigIgc$3;->a:Lconfigs/ActivityConfigIgc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const p2, 0x7f0c0131

    invoke-static {p2}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method
