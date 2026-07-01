.class Ldisplay/vmap/features/FaiAssistant$Line;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldisplay/vmap/features/FaiAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Line"
.end annotation


# instance fields
.field c1:Ltypes/Coord;

.field c2:Ltypes/Coord;

.field distKm:F

.field i1:I

.field i2:I

.field lat1:F

.field lat2:F

.field lng1:F

.field lng2:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    iput-object v0, p0, Ldisplay/vmap/features/FaiAssistant$Line;->c1:Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    iput-object v0, p0, Ldisplay/vmap/features/FaiAssistant$Line;->c2:Ltypes/Coord;

    return-void
.end method


# virtual methods
.method set(IIF)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Ldisplay/vmap/features/FaiAssistant$Line;->setIndex(II)V

    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltypes/GpsVal;

    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltypes/GpsVal;

    iget v0, p1, Ltypes/GpsVal;->a:F

    iget p1, p1, Ltypes/GpsVal;->b:F

    iget v1, p2, Ltypes/GpsVal;->a:F

    iget p2, p2, Ltypes/GpsVal;->b:F

    invoke-virtual {p0, v0, p1, v1, p2}, Ldisplay/vmap/features/FaiAssistant$Line;->setGps(FFFF)V

    iput p3, p0, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    return-void
.end method

.method set(Ldisplay/vmap/features/FaiAssistant$Line;)V
    .locals 2

    iget v0, p1, Ldisplay/vmap/features/FaiAssistant$Line;->i1:I

    iget v1, p1, Ldisplay/vmap/features/FaiAssistant$Line;->i2:I

    iget p1, p1, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    invoke-virtual {p0, v0, v1, p1}, Ldisplay/vmap/features/FaiAssistant$Line;->set(IIF)V

    return-void
.end method

.method setGps(FFFF)V
    .locals 0

    iput p1, p0, Ldisplay/vmap/features/FaiAssistant$Line;->lat1:F

    iput p2, p0, Ldisplay/vmap/features/FaiAssistant$Line;->lng1:F

    iput p3, p0, Ldisplay/vmap/features/FaiAssistant$Line;->lat2:F

    iput p4, p0, Ldisplay/vmap/features/FaiAssistant$Line;->lng2:F

    return-void
.end method

.method setIndex(II)V
    .locals 0

    iput p1, p0, Ldisplay/vmap/features/FaiAssistant$Line;->i1:I

    iput p2, p0, Ldisplay/vmap/features/FaiAssistant$Line;->i2:I

    return-void
.end method
