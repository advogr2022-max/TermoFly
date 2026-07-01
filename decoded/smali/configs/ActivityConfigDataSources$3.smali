.class Lconfigs/ActivityConfigDataSources$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigDataSources;->a(ILandroid/preference/CheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/preference/CheckBoxPreference;

.field final synthetic c:Lconfigs/ActivityConfigDataSources;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigDataSources;ILandroid/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigDataSources$3;->c:Lconfigs/ActivityConfigDataSources;

    iput p2, p0, Lconfigs/ActivityConfigDataSources$3;->a:I

    iput-object p3, p0, Lconfigs/ActivityConfigDataSources$3;->b:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lconfigs/ActivityConfigDataSources$3;->a:I

    invoke-static {p1}, Lb/d;->b(I)V

    iget-object p1, p0, Lconfigs/ActivityConfigDataSources$3;->b:Landroid/preference/CheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/4 p1, 0x1

    sput-boolean p1, Lb/g;->b:Z

    return-void
.end method
