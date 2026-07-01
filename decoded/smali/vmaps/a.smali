.class public Lvmaps/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = "xcglobe"

.field public static b:Ltypes/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltypes/a;

    invoke-direct {v0}, Ltypes/a;-><init>()V

    sput-object v0, Lvmaps/a;->b:Ltypes/a;

    return-void
.end method

.method public static a(Ltypes/a;)V
    .locals 2

    sget-object v0, Lvmaps/a;->b:Ltypes/a;

    const/4 v1, 0x0

    iput-object v1, v0, Ltypes/a;->b:[B

    sget-object v0, Lvmaps/a;->b:Ltypes/a;

    iput-object v1, v0, Ltypes/a;->c:[B

    sput-object v1, Lvmaps/a;->b:Ltypes/a;

    sput-object p0, Lvmaps/a;->b:Ltypes/a;

    return-void
.end method
