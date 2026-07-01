.class public Ltypes/GpsVal;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:S

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFSJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltypes/GpsVal;->a:F

    iput p2, p0, Ltypes/GpsVal;->b:F

    iput-short p3, p0, Ltypes/GpsVal;->c:S

    iput-wide p4, p0, Ltypes/GpsVal;->d:J

    return-void
.end method


# virtual methods
.method public a(Ltypes/GpsVal;)V
    .locals 2

    iget v0, p1, Ltypes/GpsVal;->a:F

    iput v0, p0, Ltypes/GpsVal;->a:F

    iget v0, p1, Ltypes/GpsVal;->b:F

    iput v0, p0, Ltypes/GpsVal;->b:F

    iget-short v0, p1, Ltypes/GpsVal;->c:S

    iput-short v0, p0, Ltypes/GpsVal;->c:S

    iget-wide v0, p1, Ltypes/GpsVal;->d:J

    iput-wide v0, p0, Ltypes/GpsVal;->d:J

    return-void
.end method
