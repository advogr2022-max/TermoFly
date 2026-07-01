.class Ldisplay/ViewSwipeButton$Item;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldisplay/ViewSwipeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field id:I

.field final synthetic this$0:Ldisplay/ViewSwipeButton;

.field title:Ljava/lang/String;

.field width:I

.field xLast:I


# direct methods
.method private constructor <init>(Ldisplay/ViewSwipeButton;)V
    .locals 0

    iput-object p1, p0, Ldisplay/ViewSwipeButton$Item;->this$0:Ldisplay/ViewSwipeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldisplay/ViewSwipeButton;Ldisplay/ViewSwipeButton$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ldisplay/ViewSwipeButton$Item;-><init>(Ldisplay/ViewSwipeButton;)V

    return-void
.end method
