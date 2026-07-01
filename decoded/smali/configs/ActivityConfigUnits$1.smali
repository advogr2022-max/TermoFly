.class Lconfigs/ActivityConfigUnits$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigUnits;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigUnits;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigUnits;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigUnits$1;->a:Lconfigs/ActivityConfigUnits;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object p1, p0, Lconfigs/ActivityConfigUnits$1;->a:Lconfigs/ActivityConfigUnits;

    const-string v0, "unit_distance"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lconfigs/ActivityConfigUnits;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
