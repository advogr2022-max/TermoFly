.class Ldisplay/vmap/boxes/LayoutManager$RowInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldisplay/vmap/boxes/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RowInfo"
.end annotation


# instance fields
.field area:I

.field avgWidth:I

.field bottomY:I

.field customSizeCount:I

.field fullRowsCount:I

.field largestHeight:I

.field largestHeightIndex:I

.field largestWidth:I

.field largestWidthIndex:I

.field lastRowIndex:I

.field leftCount:I

.field leftSumWidth:I

.field rightCount:I

.field rightSumWidth:I

.field rowsCount:I

.field sumWidth:I

.field final synthetic this$0:Ldisplay/vmap/boxes/LayoutManager;

.field topBottomY:I

.field topY:I


# direct methods
.method constructor <init>(Ldisplay/vmap/boxes/LayoutManager;)V
    .locals 1

    iput-object p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->this$0:Ldisplay/vmap/boxes/LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rightCount:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rightSumWidth:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->leftCount:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->leftSumWidth:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->largestWidth:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->largestWidthIndex:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->largestHeight:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->largestHeightIndex:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->avgWidth:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->sumWidth:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->area:I

    const v0, 0xf423f

    iput v0, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->topY:I

    const v0, -0xf423f

    iput v0, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->bottomY:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->customSizeCount:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->rowsCount:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->fullRowsCount:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->topBottomY:I

    iput p1, p0, Ldisplay/vmap/boxes/LayoutManager$RowInfo;->lastRowIndex:I

    return-void
.end method
