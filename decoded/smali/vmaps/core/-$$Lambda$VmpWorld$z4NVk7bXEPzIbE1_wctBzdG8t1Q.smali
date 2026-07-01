.class public final synthetic Lvmaps/core/-$$Lambda$VmpWorld$z4NVk7bXEPzIbE1_wctBzdG8t1Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lvmaps/core/VmpWorld;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ltypes/g;


# direct methods
.method public synthetic constructor <init>(Lvmaps/core/VmpWorld;ILtypes/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvmaps/core/-$$Lambda$VmpWorld$z4NVk7bXEPzIbE1_wctBzdG8t1Q;->f$0:Lvmaps/core/VmpWorld;

    iput p2, p0, Lvmaps/core/-$$Lambda$VmpWorld$z4NVk7bXEPzIbE1_wctBzdG8t1Q;->f$1:I

    iput-object p3, p0, Lvmaps/core/-$$Lambda$VmpWorld$z4NVk7bXEPzIbE1_wctBzdG8t1Q;->f$2:Ltypes/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvmaps/core/-$$Lambda$VmpWorld$z4NVk7bXEPzIbE1_wctBzdG8t1Q;->f$0:Lvmaps/core/VmpWorld;

    iget v1, p0, Lvmaps/core/-$$Lambda$VmpWorld$z4NVk7bXEPzIbE1_wctBzdG8t1Q;->f$1:I

    iget-object v2, p0, Lvmaps/core/-$$Lambda$VmpWorld$z4NVk7bXEPzIbE1_wctBzdG8t1Q;->f$2:Ltypes/g;

    invoke-static {v0, v1, v2}, Lvmaps/core/VmpWorld;->lambda$z4NVk7bXEPzIbE1_wctBzdG8t1Q(Lvmaps/core/VmpWorld;ILtypes/g;)V

    return-void
.end method
