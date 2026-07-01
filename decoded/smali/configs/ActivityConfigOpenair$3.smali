.class Lconfigs/ActivityConfigOpenair$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lconfigs/ActivityConfigOpenair;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lconfigs/ActivityConfigOpenair;


# direct methods
.method constructor <init>(Lconfigs/ActivityConfigOpenair;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lconfigs/ActivityConfigOpenair$3;->b:Lconfigs/ActivityConfigOpenair;

    iput-object p2, p0, Lconfigs/ActivityConfigOpenair$3;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 p2, 0x2

    if-ge p3, p2, :cond_0

    return p1

    :cond_0
    iget-object p2, p0, Lconfigs/ActivityConfigOpenair$3;->b:Lconfigs/ActivityConfigOpenair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p2, Lconfigs/ActivityConfigOpenair;->c:J

    iget-object p2, p0, Lconfigs/ActivityConfigOpenair$3;->a:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/preference/CheckBoxPreference;

    new-instance p3, Lconfigs/ActivityConfigOpenair$3$1;

    iget-object p4, p0, Lconfigs/ActivityConfigOpenair$3;->b:Lconfigs/ActivityConfigOpenair;

    iget-object p4, p4, Lconfigs/ActivityConfigOpenair;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p0, p4, p5, p2}, Lconfigs/ActivityConfigOpenair$3$1;-><init>(Lconfigs/ActivityConfigOpenair$3;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)V

    const/16 p2, 0xa

    const p4, 0x7f0c005d

    invoke-static {p4}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lmymenu/a;->a(ILjava/lang/String;)V

    invoke-virtual {p3}, Lmymenu/a;->a()V

    return p1
.end method
