.class public Ldisplay/vmap/features/FaiAssistant;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldisplay/vmap/features/FaiAssistant$Line;
    }
.end annotation


# static fields
.field private static MIN_SIDE_KM:I = 0x1

.field private static baseCenter:Ltypes/Coord; = null

.field private static baseCenterGps:Ltypes/l; = null

.field static baseLine:Ldisplay/vmap/features/FaiAssistant$Line; = null

.field private static cc:Ltypes/Coord; = null

.field private static cc2:[Ltypes/Coord; = null

.field private static cfgDrawTriangle:Z = true

.field static currentBounds:Ltypes/g;

.field private static fa:Ltypes/d;

.field public static isReady:Z

.field private static lastUpdateTimeMs:J

.field static lineWidth:I

.field static longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

.field private static paint:Landroid/graphics/Paint;

.field static path:Landroid/graphics/Path;

.field private static pointGlider:Ltypes/Coord;

.field private static testPointGps:Ltypes/l;

.field private static textFaiSize:I

.field private static triangleEqu:Ltypes/Coord;

.field private static triangleEquGps:Ltypes/l;

.field private static triangleHi:Ltypes/Coord;

.field private static triangleHiExtended:Ltypes/Coord;

.field private static triangleHiExtendedGps:Ltypes/l;

.field private static triangleHiGps:Ltypes/l;

.field private static triangleLo:Ltypes/Coord;

.field private static triangleLoGps:Ltypes/l;

.field private static triangleMaxHeightKm:F

.field private static triangleMinHeightKm:F

.field private static triangleWing1:Ltypes/Coord;

.field private static triangleWing1Gps:Ltypes/l;

.field private static triangleWing2:Ltypes/Coord;

.field private static triangleWing2Gps:Ltypes/l;

.field static view:Ldisplay/vmap/ViewVmp;

.field private static wing1TopArcPoint:Ltypes/Coord;

.field private static wing1TopArcPointGps:Ltypes/l;

.field private static wing2TopArcPoint:Ltypes/Coord;

.field private static wing2TopArcPointGps:Ltypes/l;

.field private static xyBase1:[F

.field private static xyBase2:[F

.field private static xyTriHi:[F

.field private static xyTriLo:[F

.field private static xyWing1:[F

.field private static xyWing2:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldisplay/vmap/features/FaiAssistant$Line;

    invoke-direct {v0}, Ldisplay/vmap/features/FaiAssistant$Line;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

    new-instance v0, Ldisplay/vmap/features/FaiAssistant$Line;

    invoke-direct {v0}, Ldisplay/vmap/features/FaiAssistant$Line;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    new-instance v0, Ltypes/g;

    invoke-direct {v0}, Ltypes/g;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->currentBounds:Ltypes/g;

    const-wide/16 v0, 0x0

    sput-wide v0, Ldisplay/vmap/features/FaiAssistant;->lastUpdateTimeMs:J

    const/4 v0, 0x0

    sput-boolean v0, Ldisplay/vmap/features/FaiAssistant;->isReady:Z

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->pointGlider:Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleHi:Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleLo:Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleEqu:Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleWing1:Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleWing2:Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleHiExtended:Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->wing1TopArcPoint:Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->wing2TopArcPoint:Ltypes/Coord;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->baseCenterGps:Ltypes/l;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleHiGps:Ltypes/l;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleLoGps:Ltypes/l;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleEquGps:Ltypes/l;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleWing1Gps:Ltypes/l;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleWing2Gps:Ltypes/l;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleHiExtendedGps:Ltypes/l;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->wing1TopArcPointGps:Ltypes/l;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->wing2TopArcPointGps:Ltypes/l;

    new-instance v0, Ltypes/l;

    invoke-direct {v0}, Ltypes/l;-><init>()V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->testPointGps:Ltypes/l;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Ldisplay/vmap/features/FaiAssistant;->xyTriHi:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Ldisplay/vmap/features/FaiAssistant;->xyWing1:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Ldisplay/vmap/features/FaiAssistant;->xyWing2:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Ldisplay/vmap/features/FaiAssistant;->xyBase1:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Ldisplay/vmap/features/FaiAssistant;->xyBase2:[F

    new-instance v1, Ltypes/Coord;

    invoke-direct {v1}, Ltypes/Coord;-><init>()V

    sput-object v1, Ldisplay/vmap/features/FaiAssistant;->cc:Ltypes/Coord;

    new-array v0, v0, [Ltypes/Coord;

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcMaxSymmetricSide(F)F
    .locals 1

    const v0, 0x3fa4924a

    mul-float p0, p0, v0

    return p0
.end method

.method private static calcMaxUnsymmetricSide(F)F
    .locals 1

    const v0, 0x3fc92492

    mul-float p0, p0, v0

    return p0
.end method

.method private static calcMinSide(F)F
    .locals 1

    const v0, 0x3fc92492

    div-float/2addr p0, v0

    return p0
.end method

.method private static calcTriangleFrameKm(FFF)V
    .locals 7

    sget-object p1, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget-object p1, p1, Ldisplay/vmap/features/FaiAssistant$Line;->c1:Ltypes/Coord;

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    invoke-static {p1, v0}, Ltypes/e;->b(Ltypes/Coord;Ltypes/Coord;)Ltypes/Coord;

    move-result-object p1

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->testPointGps:Ltypes/l;

    invoke-virtual {v0, p1, v1}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    sget v4, Ldisplay/vmap/features/FaiAssistant;->triangleMaxHeightKm:F

    sget-object v5, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;F[Ltypes/Coord;Z)Z

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->pointGlider:Ltypes/Coord;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    invoke-static {v0, v1}, Ldisplay/vmap/features/FaiAssistant;->findNearPoint(Ltypes/Coord;[Ltypes/Coord;)I

    move-result v0

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->triangleHi:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ltypes/Coord;->a(Ltypes/Coord;)V

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    sget v4, Ldisplay/vmap/features/FaiAssistant;->triangleMinHeightKm:F

    sget-object v5, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;F[Ltypes/Coord;Z)Z

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleHi:Ltypes/Coord;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    invoke-static {v0, v1}, Ldisplay/vmap/features/FaiAssistant;->findNearPoint(Ltypes/Coord;[Ltypes/Coord;)I

    move-result v0

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->triangleLo:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ltypes/Coord;->a(Ltypes/Coord;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    const v1, 0x3f5db22d    # 0.866f

    mul-float v4, v0, v1

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    sget-object v5, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;F[Ltypes/Coord;Z)Z

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleHi:Ltypes/Coord;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    invoke-static {v0, v1}, Ldisplay/vmap/features/FaiAssistant;->findNearPoint(Ltypes/Coord;[Ltypes/Coord;)I

    move-result v0

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->triangleEqu:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ltypes/Coord;->a(Ltypes/Coord;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget-object v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->c2:Ltypes/Coord;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget-object v1, v1, Ldisplay/vmap/features/FaiAssistant$Line;->c1:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v2, v2, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    invoke-static {v0, p2, v1, v2, v3}, Ltypes/e;->a(Ltypes/Coord;FLtypes/Coord;F[Ltypes/Coord;)Z

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleHi:Ltypes/Coord;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    invoke-static {v0, v1}, Ldisplay/vmap/features/FaiAssistant;->findNearPoint(Ltypes/Coord;[Ltypes/Coord;)I

    move-result v0

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->triangleWing1:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ltypes/Coord;->a(Ltypes/Coord;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget-object v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->c1:Ltypes/Coord;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget-object v1, v1, Ldisplay/vmap/features/FaiAssistant$Line;->c2:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v2, v2, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    invoke-static {v0, p2, v1, v2, v3}, Ltypes/e;->a(Ltypes/Coord;FLtypes/Coord;F[Ltypes/Coord;)Z

    sget-object p2, Ldisplay/vmap/features/FaiAssistant;->triangleHi:Ltypes/Coord;

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    invoke-static {p2, v0}, Ldisplay/vmap/features/FaiAssistant;->findNearPoint(Ltypes/Coord;[Ltypes/Coord;)I

    move-result p2

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->triangleWing2:Ltypes/Coord;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Ltypes/Coord;->a(Ltypes/Coord;)V

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    sget p2, Ldisplay/vmap/features/FaiAssistant;->triangleMaxHeightKm:F

    const v0, 0x3f970a3d    # 1.18f

    mul-float v4, p2, v0

    sget-object v5, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;F[Ltypes/Coord;Z)Z

    sget-object p1, Ldisplay/vmap/features/FaiAssistant;->triangleHi:Ltypes/Coord;

    sget-object p2, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    invoke-static {p1, p2}, Ldisplay/vmap/features/FaiAssistant;->findNearPoint(Ltypes/Coord;[Ltypes/Coord;)I

    move-result p1

    sget-object p2, Ldisplay/vmap/features/FaiAssistant;->triangleHiExtended:Ltypes/Coord;

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ltypes/Coord;->a(Ltypes/Coord;)V

    sget-object p1, Ldisplay/vmap/features/FaiAssistant;->triangleLo:Ltypes/Coord;

    sget-object p2, Ldisplay/vmap/features/FaiAssistant;->triangleWing1:Ltypes/Coord;

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->cc:Ltypes/Coord;

    invoke-static {p1, p2, v0}, Ltypes/e;->b(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)Ltypes/Coord;

    sget-object p1, Ldisplay/vmap/features/FaiAssistant;->triangleLo:Ltypes/Coord;

    sget-object p2, Ldisplay/vmap/features/FaiAssistant;->cc:Ltypes/Coord;

    invoke-static {p1, p2}, Ltypes/e;->b(Ltypes/Coord;Ltypes/Coord;)Ltypes/Coord;

    move-result-object v0

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->cc:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->cc:Ltypes/Coord;

    const p1, 0x3eeb851f    # 0.46f

    mul-float v3, p0, p1

    sget-object v4, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;F[Ltypes/Coord;Z)Z

    sget-object p0, Ldisplay/vmap/features/FaiAssistant;->triangleHi:Ltypes/Coord;

    sget-object p1, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    invoke-static {p0, p1}, Ldisplay/vmap/features/FaiAssistant;->findNearPoint(Ltypes/Coord;[Ltypes/Coord;)I

    move-result p0

    sget-object p1, Ldisplay/vmap/features/FaiAssistant;->wing1TopArcPoint:Ltypes/Coord;

    sget-object p2, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ltypes/Coord;->a(Ltypes/Coord;)V

    sget-object p0, Ldisplay/vmap/features/FaiAssistant;->wing1TopArcPoint:Ltypes/Coord;

    sget-object p1, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    sget-object p2, Ldisplay/vmap/features/FaiAssistant;->triangleHi:Ltypes/Coord;

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->wing2TopArcPoint:Ltypes/Coord;

    invoke-static {p0, p1, p2, v0}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)V

    return-void
.end method

.method private static calcTriangleHeightsKm(FF)V
    .locals 3

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    mul-float p0, p0, p0

    sub-float/2addr p1, v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    sput p1, Ldisplay/vmap/features/FaiAssistant;->triangleMaxHeightKm:F

    sub-float/2addr p0, v0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    sput p0, Ldisplay/vmap/features/FaiAssistant;->triangleMinHeightKm:F

    return-void
.end method

.method private static convertKmToGps()V
    .locals 3

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->triangleHi:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->triangleHiGps:Ltypes/l;

    invoke-virtual {v0, v1, v2}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->triangleLo:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->triangleLoGps:Ltypes/l;

    invoke-virtual {v0, v1, v2}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->triangleEqu:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->triangleEquGps:Ltypes/l;

    invoke-virtual {v0, v1, v2}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->baseCenterGps:Ltypes/l;

    invoke-virtual {v0, v1, v2}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->triangleWing1:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->triangleWing1Gps:Ltypes/l;

    invoke-virtual {v0, v1, v2}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->triangleWing2:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->triangleWing2Gps:Ltypes/l;

    invoke-virtual {v0, v1, v2}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->triangleHiExtended:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->triangleHiExtendedGps:Ltypes/l;

    invoke-virtual {v0, v1, v2}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->wing1TopArcPoint:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->wing1TopArcPointGps:Ltypes/l;

    invoke-virtual {v0, v1, v2}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->wing2TopArcPoint:Ltypes/Coord;

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->wing2TopArcPointGps:Ltypes/l;

    invoke-virtual {v0, v1, v2}, Ltypes/d;->a(Ltypes/Coord;Ltypes/l;)V

    return-void
.end method

.method public static create(Ldisplay/vmap/ViewVmp;)V
    .locals 3

    sput-object p0, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    new-instance v0, Ltypes/d;

    iget-object v1, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v1, v1, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v1, v1, Ltypes/d;->b:F

    iget-object p0, p0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object p0, p0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget p0, p0, Ltypes/d;->c:F

    invoke-direct {v0, v1, p0}, Ltypes/d;-><init>(FF)V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object p0, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object p0, Ldisplay/vmap/features/FaiAssistant;->cc2:[Ltypes/Coord;

    new-instance v0, Ltypes/Coord;

    invoke-direct {v0}, Ltypes/Coord;-><init>()V

    const/4 v2, 0x1

    aput-object v0, p0, v2

    sget-object p0, Ldisplay/vmap/features/FaiAssistant;->paint:Landroid/graphics/Paint;

    sget v0, Lcom/xcglobe/xclog/l;->j:I

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Ldisplay/vmap/features/FaiAssistant;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p0, Ldisplay/vmap/features/FaiAssistant;->paint:Landroid/graphics/Paint;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    sget p0, Lcom/xcglobe/xclog/l;->c:I

    int-to-float p0, p0

    const v0, 0x3fa66666    # 1.3f

    mul-float p0, p0, v0

    float-to-int p0, p0

    sput p0, Ldisplay/vmap/features/FaiAssistant;->textFaiSize:I

    sput-boolean v1, Ldisplay/vmap/features/FaiAssistant;->isReady:Z

    return-void
.end method

.method private static dist(Ltypes/GpsVal;)F
    .locals 2

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    iget v1, p0, Ltypes/GpsVal;->a:F

    iget p0, p0, Ltypes/GpsVal;->b:F

    invoke-virtual {v0, v1, p0}, Ltypes/d;->b(FF)F

    move-result p0

    return p0
.end method

.method public static draw(Landroid/graphics/Canvas;)V
    .locals 14

    sget-boolean v0, Lcom/xcglobe/xclog/l;->V:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ldisplay/vmap/features/FaiAssistant;->update()Z

    sget-boolean v0, Ldisplay/vmap/features/FaiAssistant;->isReady:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v0, v0, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->triangleHiExtendedGps:Ltypes/l;

    iget v2, v2, Ltypes/l;->a:F

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->triangleHiExtendedGps:Ltypes/l;

    iget v3, v3, Ltypes/l;->b:F

    invoke-virtual {v0, v2, v3, v1}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v2, v2, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->triangleLoGps:Ltypes/l;

    iget v6, v6, Ltypes/l;->a:F

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->triangleLoGps:Ltypes/l;

    iget v7, v7, Ltypes/l;->b:F

    sget-object v8, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    invoke-virtual {v0, v6, v7, v8}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v6, v6, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->triangleHiGps:Ltypes/l;

    iget v6, v6, Ltypes/l;->a:F

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->triangleHiGps:Ltypes/l;

    iget v7, v7, Ltypes/l;->b:F

    sget-object v8, Ldisplay/vmap/features/FaiAssistant;->xyTriHi:[F

    invoke-virtual {v0, v6, v7, v8}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v6, v6, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyTriHi:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->triangleWing1Gps:Ltypes/l;

    iget v6, v6, Ltypes/l;->a:F

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->triangleWing1Gps:Ltypes/l;

    iget v7, v7, Ltypes/l;->b:F

    sget-object v8, Ldisplay/vmap/features/FaiAssistant;->xyWing1:[F

    invoke-virtual {v0, v6, v7, v8}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v6, v6, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyWing1:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->triangleWing2Gps:Ltypes/l;

    iget v6, v6, Ltypes/l;->a:F

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->triangleWing2Gps:Ltypes/l;

    iget v7, v7, Ltypes/l;->b:F

    sget-object v8, Ldisplay/vmap/features/FaiAssistant;->xyWing2:[F

    invoke-virtual {v0, v6, v7, v8}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v6, v6, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyWing2:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-boolean v6, Ldisplay/vmap/features/FaiAssistant;->cfgDrawTriangle:Z

    if-eqz v6, :cond_4

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v6, v6, Ldisplay/vmap/features/FaiAssistant$Line;->lat1:F

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v7, v7, Ldisplay/vmap/features/FaiAssistant$Line;->lng1:F

    sget-object v8, Ldisplay/vmap/features/FaiAssistant;->xyBase1:[F

    invoke-virtual {v0, v6, v7, v8}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v6, v6, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyBase1:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v6, v6, Ldisplay/vmap/features/FaiAssistant$Line;->lat2:F

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v7, v7, Ldisplay/vmap/features/FaiAssistant$Line;->lng2:F

    sget-object v8, Ldisplay/vmap/features/FaiAssistant;->xyBase2:[F

    invoke-virtual {v0, v6, v7, v8}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v6, v6, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyBase2:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v6, v6, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyBase1:[F

    invoke-virtual {v6, v7}, Lvmaps/core/VmpWorld;->c([F)Z

    move-result v6

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v7, v7, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sget-object v8, Ldisplay/vmap/features/FaiAssistant;->xyBase2:[F

    invoke-virtual {v7, v8}, Lvmaps/core/VmpWorld;->c([F)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v7, v7, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    sget-object v8, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    invoke-virtual {v7, v8}, Lvmaps/core/VmpWorld;->c([F)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    if-le v6, v4, :cond_4

    const/4 v6, 0x0

    sget v7, Lcom/xcglobe/xclog/l;->j:I

    invoke-static {v6, v7}, Lcom/xcglobe/xclog/g;->a(FI)Landroid/graphics/Paint;

    move-result-object v6

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyBase1:[F

    aget v9, v7, v2

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyBase1:[F

    aget v10, v7, v4

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyBase2:[F

    aget v11, v7, v2

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyBase2:[F

    aget v12, v7, v4

    move-object v8, p0

    move-object v13, v6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyBase2:[F

    aget v9, v7, v2

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyBase2:[F

    aget v10, v7, v4

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    aget v11, v7, v2

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    aget v12, v7, v4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    aget v9, v7, v2

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    aget v10, v7, v4

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyBase1:[F

    aget v11, v7, v2

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyBase1:[F

    aget v12, v7, v4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->wing1TopArcPointGps:Ltypes/l;

    iget v6, v6, Ltypes/l;->a:F

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->wing1TopArcPointGps:Ltypes/l;

    iget v7, v7, Ltypes/l;->b:F

    invoke-virtual {v0, v6, v7, v1}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v6, v6, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->path:Landroid/graphics/Path;

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    aget v7, v7, v2

    sget-object v8, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    aget v8, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->path:Landroid/graphics/Path;

    aget v7, v1, v2

    aget v8, v1, v4

    sget-object v9, Ldisplay/vmap/features/FaiAssistant;->xyWing1:[F

    aget v9, v9, v2

    sget-object v10, Ldisplay/vmap/features/FaiAssistant;->xyWing1:[F

    aget v10, v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    sget-object v6, Ldisplay/vmap/features/FaiAssistant;->path:Landroid/graphics/Path;

    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->xyWing2:[F

    aget v7, v7, v2

    sget-object v8, Ldisplay/vmap/features/FaiAssistant;->xyWing2:[F

    aget v8, v8, v4

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->wing2TopArcPointGps:Ltypes/l;

    iget v3, v3, Ltypes/l;->a:F

    sget-object v5, Ldisplay/vmap/features/FaiAssistant;->wing2TopArcPointGps:Ltypes/l;

    iget v5, v5, Ltypes/l;->b:F

    invoke-virtual {v0, v3, v5, v1}, Lvmaps/core/VmpWorld;->b(FF[F)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v0, v0, Ldisplay/vmap/ViewVmp;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->path:Landroid/graphics/Path;

    aget v3, v1, v2

    aget v1, v1, v4

    sget-object v5, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    aget v2, v5, v2

    sget-object v5, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    aget v4, v5, v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->path:Landroid/graphics/Path;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {p0}, Ldisplay/vmap/features/FaiAssistant;->drawKmText(Landroid/graphics/Canvas;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static drawKmText(Landroid/graphics/Canvas;)V
    .locals 7

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    const v1, 0x3e8f5c29    # 0.28f

    div-float/2addr v0, v1

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v1, v1, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    const v2, 0x3ee147ae    # 0.44f

    div-float/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ltypes/q;->a(F)F

    move-result v1

    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ltypes/q;->a(F)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    double-to-int v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ltypes/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ldisplay/vmap/features/PoiPainter;->paintOutline:Landroid/graphics/Paint;

    sget v3, Ldisplay/vmap/features/FaiAssistant;->textFaiSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v5, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {p0, v1, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->xyTriHi:[F

    aget v3, v3, v4

    sget-object v5, Ldisplay/vmap/features/FaiAssistant;->xyTriHi:[F

    aget v5, v5, v6

    invoke-virtual {p0, v0, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget v3, Lcom/xcglobe/xclog/l;->c:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget v2, Ldisplay/vmap/features/FaiAssistant;->textFaiSize:I

    int-to-float v2, v2

    sget v3, Lcom/xcglobe/xclog/l;->k:I

    invoke-static {v2, v3}, Lcom/xcglobe/xclog/g;->c(FI)Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    aget v3, v3, v4

    sget-object v5, Ldisplay/vmap/features/FaiAssistant;->xyTriLo:[F

    aget v5, v5, v6

    invoke-virtual {p0, v1, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->xyTriHi:[F

    aget v1, v1, v4

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->xyTriHi:[F

    aget v3, v3, v6

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static findBaseLine()V
    .locals 15

    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    sget-object v7, Ldisplay/vmap/features/FaiAssistant;->longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v7, v7, Ldisplay/vmap/features/FaiAssistant$Line;->i1:I

    const/high16 v8, 0x40000000    # 2.0f

    if-gt v3, v7, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltypes/GpsVal;

    invoke-static {v7}, Ldisplay/vmap/features/FaiAssistant;->moveFa(Ltypes/GpsVal;)V

    move v7, v6

    move v6, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltypes/GpsVal;

    invoke-static {v9}, Ldisplay/vmap/features/FaiAssistant;->dist(Ltypes/GpsVal;)F

    move-result v9

    cmpl-float v10, v9, v5

    if-lez v10, :cond_0

    move v7, v3

    move v6, v4

    move v5, v9

    goto :goto_2

    :cond_0
    div-float v10, v5, v8

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    add-int/lit8 v4, v4, 0x8

    :cond_1
    :goto_2
    add-int/2addr v4, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    move v6, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltypes/GpsVal;

    invoke-static {v1}, Ldisplay/vmap/features/FaiAssistant;->moveFa(Ltypes/GpsVal;)V

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v1, v1, Ldisplay/vmap/features/FaiAssistant$Line;->i2:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltypes/GpsVal;

    invoke-static {v1}, Ldisplay/vmap/features/FaiAssistant;->dist(Ltypes/GpsVal;)F

    move-result v1

    float-to-double v9, v5

    const-wide v11, 0x3fe3333333333333L    # 0.6

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v3, v3, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    float-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v11

    cmpl-double v3, v9, v13

    if-lez v3, :cond_7

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v3, v3, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    div-float/2addr v3, v8

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v1, v1, Ldisplay/vmap/features/FaiAssistant$Line;->i1:I

    sub-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v6

    move v3, v4

    :goto_3
    if-ge v3, v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltypes/GpsVal;

    invoke-static {v7}, Ldisplay/vmap/features/FaiAssistant;->dist(Ltypes/GpsVal;)F

    move-result v7

    cmpl-float v9, v7, v5

    if-lez v9, :cond_4

    move v6, v3

    move v5, v7

    goto :goto_4

    :cond_4
    div-float v9, v5, v8

    cmpg-float v7, v7, v9

    if-gez v7, :cond_5

    add-int/lit8 v3, v3, 0x8

    :cond_5
    :goto_4
    add-int/2addr v3, v2

    goto :goto_3

    :cond_6
    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    invoke-virtual {v0, v4, v6, v5}, Ldisplay/vmap/features/FaiAssistant$Line;->set(IIF)V

    goto :goto_5

    :cond_7
    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

    invoke-virtual {v0, v1}, Ldisplay/vmap/features/FaiAssistant$Line;->set(Ldisplay/vmap/features/FaiAssistant$Line;)V

    :goto_5
    invoke-static {}, Ldisplay/vmap/features/FaiAssistant;->restoreFa()V

    return-void
.end method

.method private static findLongestLine()Z
    .locals 13

    new-instance v0, Ltypes/g;

    invoke-direct {v0}, Ltypes/g;-><init>()V

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->currentBounds:Ltypes/g;

    const v2, -0x457ced91    # -0.001f

    invoke-virtual {v0, v1, v2, v2}, Ltypes/g;->a(Ltypes/g;FF)V

    sget-object v1, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltypes/GpsVal;

    invoke-virtual {v0, v9}, Ltypes/g;->b(Ltypes/GpsVal;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    iget v11, v9, Ltypes/GpsVal;->a:F

    iget v9, v9, Ltypes/GpsVal;->b:F

    invoke-virtual {v10, v11, v9}, Ltypes/d;->a(FF)V

    move v9, v8

    move v8, v7

    move v7, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltypes/GpsVal;

    invoke-virtual {v0, v10}, Ltypes/g;->b(Ltypes/GpsVal;)Z

    move-result v11

    if-nez v11, :cond_0

    sget-object v11, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    iget v12, v10, Ltypes/GpsVal;->a:F

    iget v10, v10, Ltypes/GpsVal;->b:F

    invoke-virtual {v11, v12, v10}, Ltypes/d;->b(FF)F

    move-result v10

    cmpl-float v11, v10, v9

    if-lez v11, :cond_0

    move v8, v5

    move v7, v6

    move v9, v10

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v7

    move v7, v8

    move v8, v9

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->i1:I

    if-ne v6, v0, :cond_5

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->i2:I

    if-eq v7, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

    invoke-virtual {v0, v6, v7, v8}, Ldisplay/vmap/features/FaiAssistant$Line;->set(IIF)V

    invoke-static {}, Ldisplay/vmap/features/FaiAssistant;->restoreFa()V

    return v3
.end method

.method private static findNearPoint(Ltypes/Coord;[Ltypes/Coord;)I
    .locals 3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {p0, v1}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;)F

    move-result v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p0, p1}, Ltypes/e;->a(Ltypes/Coord;Ltypes/Coord;)F

    move-result p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static moveFa(Ltypes/GpsVal;)V
    .locals 2

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    iget v1, p0, Ltypes/GpsVal;->a:F

    iget p0, p0, Ltypes/GpsVal;->b:F

    invoke-virtual {v0, v1, p0}, Ltypes/d;->a(FF)V

    return-void
.end method

.method private static restoreFa()V
    .locals 3

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v1, v1, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v1, v1, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v1, v1, Ltypes/d;->b:F

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v2, v2, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v2, v2, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v2, v2, Ltypes/d;->c:F

    invoke-virtual {v0, v1, v2}, Ltypes/d;->a(FF)V

    return-void
.end method

.method private static update()Z
    .locals 6

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    iget-wide v0, v0, Ltypes/GpsVal;->d:J

    sget-object v2, Ldisplay/vmap/features/FaiAssistant;->currentBounds:Ltypes/g;

    sget-object v3, Lm/g;->f:Ltypes/g;

    invoke-virtual {v2, v3}, Ltypes/g;->a(Ltypes/g;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-wide v4, Ldisplay/vmap/features/FaiAssistant;->lastUpdateTimeMs:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    return v3

    :cond_0
    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    sput-boolean v2, Ldisplay/vmap/features/FaiAssistant;->isReady:Z

    return v2

    :cond_1
    sput-boolean v3, Ldisplay/vmap/features/FaiAssistant;->isReady:Z

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->currentBounds:Ltypes/g;

    sget-object v1, Lm/g;->f:Ltypes/g;

    invoke-virtual {v0, v1}, Ltypes/g;->b(Ltypes/g;)V

    new-instance v0, Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v1, v1, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v1, v1, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v1, v1, Ltypes/d;->b:F

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->view:Ldisplay/vmap/ViewVmp;

    iget-object v3, v3, Ldisplay/vmap/ViewVmp;->world:Lvmaps/core/VmpWorld;

    iget-object v3, v3, Lvmaps/core/VmpWorld;->e:Ltypes/d;

    iget v3, v3, Ltypes/d;->c:F

    invoke-direct {v0, v1, v3}, Ltypes/d;-><init>(FF)V

    sput-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    invoke-static {}, Ldisplay/vmap/features/FaiAssistant;->updateFrame()V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->longestLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    sget v1, Ldisplay/vmap/features/FaiAssistant;->MIN_SIDE_KM:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    sput-boolean v2, Ldisplay/vmap/features/FaiAssistant;->isReady:Z

    return v2

    :cond_2
    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->i1:I

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v1, v1, Ldisplay/vmap/features/FaiAssistant$Line;->i2:I

    sget-object v3, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltypes/GpsVal;

    iget v0, v0, Ltypes/GpsVal;->b:F

    sget-object v3, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltypes/GpsVal;

    iget v1, v1, Ltypes/GpsVal;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->i1:I

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->i2:I

    :cond_3
    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v1, v1, Ldisplay/vmap/features/FaiAssistant$Line;->lat1:F

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v3, v3, Ldisplay/vmap/features/FaiAssistant$Line;->lng1:F

    sget-object v4, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget-object v4, v4, Ldisplay/vmap/features/FaiAssistant$Line;->c1:Ltypes/Coord;

    invoke-virtual {v0, v1, v3, v4}, Ltypes/d;->a(FFLtypes/Coord;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v1, v1, Ldisplay/vmap/features/FaiAssistant$Line;->lat2:F

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v3, v3, Ldisplay/vmap/features/FaiAssistant$Line;->lng2:F

    sget-object v4, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget-object v4, v4, Ldisplay/vmap/features/FaiAssistant$Line;->c2:Ltypes/Coord;

    invoke-virtual {v0, v1, v3, v4}, Ltypes/d;->a(FFLtypes/Coord;)V

    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->fa:Ltypes/d;

    iget v3, v0, Ltypes/GpsVal;->a:F

    iget v0, v0, Ltypes/GpsVal;->b:F

    sget-object v4, Ldisplay/vmap/features/FaiAssistant;->pointGlider:Ltypes/Coord;

    invoke-virtual {v1, v3, v0, v4}, Ltypes/d;->a(FFLtypes/Coord;)V

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget-object v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->c1:Ltypes/Coord;

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget-object v1, v1, Ldisplay/vmap/features/FaiAssistant$Line;->c2:Ltypes/Coord;

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->baseCenter:Ltypes/Coord;

    invoke-static {v0, v1, v3}, Ltypes/e;->b(Ltypes/Coord;Ltypes/Coord;Ltypes/Coord;)Ltypes/Coord;

    sget-object v0, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v0, v0, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    invoke-static {v0}, Ldisplay/vmap/features/FaiAssistant;->calcMinSide(F)F

    move-result v0

    sget-object v1, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v1, v1, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    invoke-static {v1}, Ldisplay/vmap/features/FaiAssistant;->calcMaxSymmetricSide(F)F

    move-result v1

    sget-object v3, Ldisplay/vmap/features/FaiAssistant;->baseLine:Ldisplay/vmap/features/FaiAssistant$Line;

    iget v3, v3, Ldisplay/vmap/features/FaiAssistant$Line;->distKm:F

    invoke-static {v3}, Ldisplay/vmap/features/FaiAssistant;->calcMaxUnsymmetricSide(F)F

    move-result v3

    invoke-static {v0, v1}, Ldisplay/vmap/features/FaiAssistant;->calcTriangleHeightsKm(FF)V

    invoke-static {v0, v1, v3}, Ldisplay/vmap/features/FaiAssistant;->calcTriangleFrameKm(FFF)V

    invoke-static {}, Ldisplay/vmap/features/FaiAssistant;->convertKmToGps()V

    return v2
.end method

.method private static updateFrame()V
    .locals 1

    invoke-static {}, Ldisplay/vmap/features/FaiAssistant;->findLongestLine()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldisplay/vmap/features/FaiAssistant;->findBaseLine()V

    :cond_0
    return-void
.end method
