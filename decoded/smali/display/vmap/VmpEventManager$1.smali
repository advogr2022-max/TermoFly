.class Ldisplay/vmap/VmpEventManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldisplay/vmap/VmpEventManager;->startLongPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldisplay/vmap/VmpEventManager;


# direct methods
.method constructor <init>(Ldisplay/vmap/VmpEventManager;)V
    .locals 0

    iput-object p1, p0, Ldisplay/vmap/VmpEventManager$1;->this$0:Ldisplay/vmap/VmpEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ldisplay/vmap/VmpEventManager$1;->this$0:Ldisplay/vmap/VmpEventManager;

    invoke-virtual {v0}, Ldisplay/vmap/VmpEventManager;->longClick()V

    return-void
.end method
