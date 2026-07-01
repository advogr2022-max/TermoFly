.class public final synthetic Lc/-$$Lambda$c$JRRut6aqCB3zlgHYOEzMVj67PWM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lc/c;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lc/c;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/-$$Lambda$c$JRRut6aqCB3zlgHYOEzMVj67PWM;->f$0:Lc/c;

    iput-object p2, p0, Lc/-$$Lambda$c$JRRut6aqCB3zlgHYOEzMVj67PWM;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lc/-$$Lambda$c$JRRut6aqCB3zlgHYOEzMVj67PWM;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/-$$Lambda$c$JRRut6aqCB3zlgHYOEzMVj67PWM;->f$0:Lc/c;

    iget-object v1, p0, Lc/-$$Lambda$c$JRRut6aqCB3zlgHYOEzMVj67PWM;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lc/-$$Lambda$c$JRRut6aqCB3zlgHYOEzMVj67PWM;->f$2:Z

    invoke-static {v0, v1, v2}, Lc/c;->lambda$JRRut6aqCB3zlgHYOEzMVj67PWM(Lc/c;Ljava/lang/String;Z)V

    return-void
.end method
