.class Ldisplay/vmap/VmpEditor$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldisplay/vmap/VmpEditor;->editBox(Ldisplay/vmap/boxes/InfoBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldisplay/vmap/VmpEditor;

.field final synthetic val$ib:Ldisplay/vmap/boxes/InfoBox;

.field final synthetic val$snames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ldisplay/vmap/VmpEditor;[Ljava/lang/String;Ldisplay/vmap/boxes/InfoBox;)V
    .locals 0

    iput-object p1, p0, Ldisplay/vmap/VmpEditor$3;->this$0:Ldisplay/vmap/VmpEditor;

    iput-object p2, p0, Ldisplay/vmap/VmpEditor$3;->val$snames:[Ljava/lang/String;

    iput-object p3, p0, Ldisplay/vmap/VmpEditor$3;->val$ib:Ldisplay/vmap/boxes/InfoBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget-object p2, p0, Ldisplay/vmap/VmpEditor$3;->this$0:Ldisplay/vmap/VmpEditor;

    iget-object v0, p0, Ldisplay/vmap/VmpEditor$3;->val$snames:[Ljava/lang/String;

    invoke-static {p2, v0, p1}, Ldisplay/vmap/VmpEditor;->access$100(Ldisplay/vmap/VmpEditor;[Ljava/lang/String;Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ldisplay/vmap/VmpEditor$3;->this$0:Ldisplay/vmap/VmpEditor;

    iget-object v0, p0, Ldisplay/vmap/VmpEditor$3;->val$ib:Ldisplay/vmap/boxes/InfoBox;

    invoke-static {p2, v0, p1}, Ldisplay/vmap/VmpEditor;->access$000(Ldisplay/vmap/VmpEditor;Ldisplay/vmap/boxes/InfoBox;[Ljava/lang/String;)V

    return-void
.end method
