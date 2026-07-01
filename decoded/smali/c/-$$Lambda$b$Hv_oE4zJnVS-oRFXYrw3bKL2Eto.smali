.class public final synthetic Lc/-$$Lambda$b$Hv_oE4zJnVS-oRFXYrw3bKL2Eto;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lc/b;

.field private final synthetic f$1:F

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lc/b;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/-$$Lambda$b$Hv_oE4zJnVS-oRFXYrw3bKL2Eto;->f$0:Lc/b;

    iput p2, p0, Lc/-$$Lambda$b$Hv_oE4zJnVS-oRFXYrw3bKL2Eto;->f$1:F

    iput p3, p0, Lc/-$$Lambda$b$Hv_oE4zJnVS-oRFXYrw3bKL2Eto;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/-$$Lambda$b$Hv_oE4zJnVS-oRFXYrw3bKL2Eto;->f$0:Lc/b;

    iget v1, p0, Lc/-$$Lambda$b$Hv_oE4zJnVS-oRFXYrw3bKL2Eto;->f$1:F

    iget v2, p0, Lc/-$$Lambda$b$Hv_oE4zJnVS-oRFXYrw3bKL2Eto;->f$2:F

    invoke-static {v0, v1, v2}, Lc/b;->lambda$Hv_oE4zJnVS-oRFXYrw3bKL2Eto(Lc/b;FF)V

    return-void
.end method
