.class Lcom/xcglobe/xclog/ActivityUpload$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xcglobe/xclog/ActivityUpload;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xcglobe/xclog/ActivityUpload;


# direct methods
.method constructor <init>(Lcom/xcglobe/xclog/ActivityUpload;)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityUpload$2;->a:Lcom/xcglobe/xclog/ActivityUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityUpload$2;->a:Lcom/xcglobe/xclog/ActivityUpload;

    invoke-virtual {p1}, Lcom/xcglobe/xclog/ActivityUpload;->a()Ljava/lang/String;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
