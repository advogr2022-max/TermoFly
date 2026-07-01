.class Ldisplay/vmap/VmpEditor$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldisplay/vmap/VmpEditor;->addBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldisplay/vmap/VmpEditor;

.field final synthetic val$snames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ldisplay/vmap/VmpEditor;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldisplay/vmap/VmpEditor$1;->this$0:Ldisplay/vmap/VmpEditor;

    iput-object p2, p0, Ldisplay/vmap/VmpEditor$1;->val$snames:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Ldisplay/vmap/VmpEditor$1;->val$snames:[Ljava/lang/String;

    aget-object p2, v0, p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iget-object p2, p0, Ldisplay/vmap/VmpEditor$1;->this$0:Ldisplay/vmap/VmpEditor;

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Ldisplay/vmap/VmpEditor;->access$000(Ldisplay/vmap/VmpEditor;Ldisplay/vmap/boxes/InfoBox;[Ljava/lang/String;)V

    return-void
.end method
