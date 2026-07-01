.class public Ltypes/Coord;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltypes/Coord;->a:F

    iput p2, p0, Ltypes/Coord;->b:F

    return-void
.end method

.method public constructor <init>(Ltypes/Coord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Ltypes/Coord;->a:F

    iput v0, p0, Ltypes/Coord;->a:F

    iget p1, p1, Ltypes/Coord;->b:F

    iput p1, p0, Ltypes/Coord;->b:F

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    iput p1, p0, Ltypes/Coord;->a:F

    iput p2, p0, Ltypes/Coord;->b:F

    return-void
.end method

.method public a(Ltypes/Coord;)V
    .locals 1

    iget v0, p1, Ltypes/Coord;->a:F

    iput v0, p0, Ltypes/Coord;->a:F

    iget p1, p1, Ltypes/Coord;->b:F

    iput p1, p0, Ltypes/Coord;->b:F

    return-void
.end method
