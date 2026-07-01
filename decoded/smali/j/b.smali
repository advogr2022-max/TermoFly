.class public Lj/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ltypes/GpsVal;

.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:Ljava/lang/String;

.field protected e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltypes/GpsVal;

    invoke-direct {v0}, Ltypes/GpsVal;-><init>()V

    iput-object v0, p0, Lj/b;->a:Ltypes/GpsVal;

    const/4 v0, 0x0

    iput-object v0, p0, Lj/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/b;->e:Z

    return-void
.end method
