.class Lconfigs/ActivityConfigVario$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigVario;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lconfigs/ActivityConfigVario;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigVario;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigVario$1;->a:Lconfigs/ActivityConfigVario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p1, p0, Lconfigs/ActivityConfigVario$1;->a:Lconfigs/ActivityConfigVario;

    invoke-virtual {p1}, Lconfigs/ActivityConfigVario;->a()V

    const/4 p1, 0x1

    return p1
.end method
