.class Lcom/xcglobe/xclog/ActivityFlights$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xcglobe/xclog/ActivityFlights;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xcglobe/xclog/ActivityFlights;


# direct methods
.method constructor <init>(Lcom/xcglobe/xclog/ActivityFlights;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xcglobe/xclog/ActivityFlights$1;->b:Lcom/xcglobe/xclog/ActivityFlights;

    iput-boolean p2, p0, Lcom/xcglobe/xclog/ActivityFlights$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/xcglobe/xclog/ActivityFlights$1;->b:Lcom/xcglobe/xclog/ActivityFlights;

    iget-boolean p2, p0, Lcom/xcglobe/xclog/ActivityFlights$1;->a:Z

    invoke-virtual {p1, p2}, Lcom/xcglobe/xclog/ActivityFlights;->a(Z)V

    return-void
.end method
