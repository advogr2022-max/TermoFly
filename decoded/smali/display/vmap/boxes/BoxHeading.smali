.class public Ldisplay/vmap/boxes/BoxHeading;
.super Ldisplay/vmap/boxes/InfoBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldisplay/vmap/boxes/InfoBox;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCaption()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0c00a0

    invoke-static {v0}, Lcom/xcglobe/xclog/App;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    sget v0, Lm/g;->m:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
