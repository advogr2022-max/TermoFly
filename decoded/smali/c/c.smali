.class public Lc/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x0

.field private static b:Z = false

.field public static c:Lc/c;

.field private static q:[F


# instance fields
.field public d:Ljava/lang/String;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:F

.field private l:I

.field private m:I

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:[F

.field private r:Li/b;

.field private s:I

.field private t:Li/a/c;

.field private u:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [F

    sput-object v0, Lc/c;->q:[F

    const/4 v0, 0x0

    sput v0, Lc/c;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/c;->e:F

    iput v0, p0, Lc/c;->f:F

    iput v0, p0, Lc/c;->g:F

    iput v0, p0, Lc/c;->h:F

    const/4 v1, 0x0

    iput v1, p0, Lc/c;->i:I

    iput v1, p0, Lc/c;->j:I

    iput v0, p0, Lc/c;->k:F

    iput v1, p0, Lc/c;->l:I

    iput v1, p0, Lc/c;->m:I

    iput-boolean v1, p0, Lc/c;->n:Z

    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lc/c;->p:[F

    iput v1, p0, Lc/c;->s:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/c;->u:J

    sget-object v0, Lcom/xcglobe/xclog/App;->c:Landroid/os/Handler;

    new-instance v1, Lc/-$$Lambda$c$JRRut6aqCB3zlgHYOEzMVj67PWM;

    invoke-direct {v1, p0, p1, p2}, Lc/-$$Lambda$c$JRRut6aqCB3zlgHYOEzMVj67PWM;-><init>(Lc/c;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Li/a/c;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Li/a/c;->s:Li/a/a;

    iget-object v2, v2, Li/a/a;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lc/c;->p:[F

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lc/c;->r:Li/b;

    iget-object v5, v5, Li/b;->c:[F

    aget v5, v5, v2

    aput v5, v3, v1

    iget-object v1, p0, Lc/c;->p:[F

    add-int/lit8 v3, v4, 0x1

    iget-object v5, p0, Lc/c;->r:Li/b;

    iget-object v5, v5, Li/b;->d:[F

    aget v2, v5, v2

    aput v2, v1, v4

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    sget-boolean v0, Lc/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-object p1, p0, Lc/c;->o:Ljava/lang/String;

    iput-object p1, p0, Lc/c;->d:Ljava/lang/String;

    sput-object p1, Lm/a;->lastIgcName:Ljava/lang/String;

    iput-boolean p2, p0, Lc/c;->n:Z

    if-eqz p2, :cond_2

    new-instance p1, Li/e;

    invoke-direct {p1}, Li/e;-><init>()V

    sget-object p2, Lm/g;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Li/e;->b(Ljava/util/ArrayList;Z)Li/b;

    move-result-object p1

    iput-object p1, p0, Lc/c;->r:Li/b;

    iget-object p1, p0, Lc/c;->r:Li/b;

    invoke-virtual {p1}, Li/b;->a()I

    move-result p1

    iput p1, p0, Lc/c;->j:I

    new-instance p1, Ljava/util/Date;

    sget-object p2, Lm/g;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ltypes/GpsVal;

    iget-wide v1, p2, Ltypes/GpsVal;->d:J

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    sput-object p0, Lc/c;->c:Lc/c;

    sput-boolean v0, Lc/c;->b:Z

    # Start sensor logger synchronously with IGC recording
    invoke-static {}, Lcom/xcglobe/xclog/TermoFlyLogger;->getInstance()Lcom/xcglobe/xclog/TermoFlyLogger;

    move-result-object v1

    iget-object v2, p0, Lc/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xcglobe/xclog/TermoFlyLogger;->startWithIgc(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Li/a/c;

    invoke-direct {p1, v0}, Li/a/c;-><init>(Z)V

    iput-object p1, p0, Lc/c;->t:Li/a/c;

    invoke-static {}, Lc/a;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lc/c;->t:Li/a/c;

    iput-boolean v0, p1, Li/a/c;->u:Z

    :cond_3
    iget-object p1, p0, Lc/c;->t:Li/a/c;

    iput-boolean v0, p1, Li/a/c;->c:Z

    sget p1, Lc/a;->a:I

    iput p1, p0, Lc/c;->s:I

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lc/-$$Lambda$c$RyZxJN0-4yMdN1zeGCqouVVy2d8;

    invoke-direct {p2, p0}, Lc/-$$Lambda$c$RyZxJN0-4yMdN1zeGCqouVVy2d8;-><init>(Lc/c;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    sget-object v0, Lcom/xcglobe/xclog/App;->c:Landroid/os/Handler;

    new-instance v1, Lc/-$$Lambda$c$W6LZWR8qXgdqbInwwhIB9mdU5dk;

    invoke-direct {v1, p0, p1}, Lc/-$$Lambda$c$W6LZWR8qXgdqbInwwhIB9mdU5dk;-><init>(Lc/c;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lc/c;->b:Z

    return v0
.end method

.method private synthetic b(Ljava/lang/String;Z)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lc/c;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    sput-boolean p2, Lc/c;->b:Z

    const-string p2, "ScorerTask"

    invoke-static {p2, p1}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "igc time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lc/c;->u:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xcglobe/xclog/l;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lc/c;->t:Li/a/c;

    iget-wide v2, v0, Li/a/c;->r:J

    const-wide/16 v4, 0xa

    mul-long v2, v2, v4

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-static {}, Lc/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/c;->t:Li/a/c;

    iget-wide v2, v0, Li/a/c;->r:J

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    move-wide v2, v6

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/c;->t:Li/a/c;

    iget-wide v2, v0, Li/a/c;->r:J

    add-long/2addr v2, v6

    :cond_1
    :goto_0
    invoke-static {}, Lm/g;->d()Ltypes/GpsVal;

    move-result-object v0

    iget-wide v4, v0, Ltypes/GpsVal;->d:J

    add-long/2addr v4, v2

    sput-wide v4, Lm/g;->E:J

    iget-object v0, p0, Lc/c;->o:Ljava/lang/String;

    const-string v2, "demo-track.igc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lc/c;->s:I

    sget v2, Lc/a;->a:I

    if-eq v0, v2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_8

    iget p1, p0, Lc/c;->m:I

    iget v0, p0, Lc/c;->l:I

    const/4 v2, 0x0

    if-le p1, v0, :cond_3

    iput v2, p0, Lc/c;->l:I

    iput v2, p0, Lc/c;->m:I

    :cond_3
    iget-object p1, p0, Lc/c;->o:Ljava/lang/String;

    const-string v0, "duration"

    iget v3, p0, Lc/c;->j:I

    invoke-static {v3, v2}, Lcom/xcglobe/xclog/l;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/c;->o:Ljava/lang/String;

    const-string v0, "starttime"

    iget-object v3, p0, Lc/c;->d:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/c;->o:Ljava/lang/String;

    const-string v0, "kmmaxtype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lc/c;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/c;->o:Ljava/lang/String;

    const-string v0, "kmmax"

    const-string v3, "%.0f"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lc/c;->h:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/c;->o:Ljava/lang/String;

    const-string v0, "km1"

    const-string v3, "%.0f"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lc/c;->e:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/c;->o:Ljava/lang/String;

    const-string v0, "km2"

    iget v3, p0, Lc/c;->f:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    const-string v3, ""

    goto :goto_1

    :cond_4
    const-string v3, "%.0f"

    new-array v5, v1, [Ljava/lang/Object;

    iget v6, p0, Lc/c;->f:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {p1, v0, v3}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/c;->o:Ljava/lang/String;

    const-string v0, "km3"

    iget v3, p0, Lc/c;->g:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    const-string v3, ""

    goto :goto_2

    :cond_5
    const-string v3, "%.0f"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lc/c;->g:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {p1, v0, v3}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/c;->o:Ljava/lang/String;

    const-string v0, "altmax"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lc/c;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/c;->o:Ljava/lang/String;

    const-string v0, "altmin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lc/c;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/c;->o:Ljava/lang/String;

    const-string v0, "speed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%.0f"

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lc/c;->k:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const/16 v0, 0xa

    if-ge v2, v0, :cond_7

    sget-object v0, Lc/c;->q:[F

    iget-object v1, p0, Lc/c;->p:[F

    aget v1, v1, v2

    aput v1, v0, v2

    if-lez v2, :cond_6

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const v0, 0x461c4000    # 10000.0f

    sget-object v1, Lc/c;->q:[F

    aget v1, v1, v2

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lc/c;->o:Ljava/lang/String;

    const-string v1, "optpoints"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lc/c;->o:Ljava/lang/String;

    const-string v0, "kmmax"

    const-string v1, "?"

    invoke-static {p1, v0, v1}, Lcom/xcglobe/xclog/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xcglobe.action.main"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "event"

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/xcglobe/xclog/App;->b()Lcom/xcglobe/xclog/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xcglobe/xclog/App;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p1, Lc/c;->c:Lc/c;

    if-ne p1, p0, :cond_9

    const/4 p1, 0x0

    sput-object p1, Lc/c;->c:Lc/c;

    :cond_9
    return-void
.end method

.method private b()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Li/e;

    invoke-direct {v1}, Li/e;-><init>()V

    iget-boolean v2, p0, Lc/c;->n:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lc/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Li/e;->a(Ljava/lang/String;)Li/b;

    move-result-object v2

    iput-object v2, p0, Lc/c;->r:Li/b;

    iget-object v2, v1, Li/e;->a:Li/c;

    invoke-virtual {v2}, Li/c;->c()I

    move-result v2

    iput v2, p0, Lc/c;->j:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Li/e;->a:Li/c;

    iget-object v3, v3, Li/c;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Li/e;->a:Li/c;

    iget v1, v1, Li/c;->k:I

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/xcglobe/xclog/l;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/c;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/c;->r:Li/b;

    invoke-virtual {v1}, Li/b;->c()V

    invoke-static {}, Lc/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c;->r:Li/b;

    iget-object v1, v1, Li/b;->n:Ltypes/c;

    invoke-virtual {v1}, Ltypes/c;->d()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lc/c;->t:Li/a/c;

    iget v1, v1, Li/a/c;->e:I

    sput v1, Lc/c;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lc/c;->u:J

    iget-object v1, p0, Lc/c;->t:Li/a/c;

    iget-object v2, p0, Lc/c;->r:Li/b;

    invoke-virtual {v1, v2}, Li/a/c;->a(Li/b;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lc/c;->t:Li/a/c;

    iget-object v0, v0, Li/a/c;->n:Li/a/b;

    invoke-virtual {v0}, Li/a/b;->a()Li/a/a;

    move-result-object v0

    iget v0, v0, Li/a/a;->d:F

    iput v0, p0, Lc/c;->e:F

    iget-object v0, p0, Lc/c;->t:Li/a/c;

    iget-object v0, v0, Li/a/c;->o:Li/a/b;

    invoke-virtual {v0}, Li/a/b;->a()Li/a/a;

    move-result-object v0

    iget v0, v0, Li/a/a;->d:F

    iput v0, p0, Lc/c;->f:F

    iget-object v0, p0, Lc/c;->t:Li/a/c;

    iget-object v0, v0, Li/a/c;->p:Li/a/b;

    invoke-virtual {v0}, Li/a/b;->a()Li/a/a;

    move-result-object v0

    iget v0, v0, Li/a/a;->d:F

    iput v0, p0, Lc/c;->g:F

    iget-object v0, p0, Lc/c;->t:Li/a/c;

    iget-object v0, v0, Li/a/c;->s:Li/a/a;

    iget v1, v0, Li/a/a;->b:I

    iput v1, p0, Lc/c;->i:I

    iget v1, v0, Li/a/a;->d:F

    iput v1, p0, Lc/c;->h:F

    iget-object v1, p0, Lc/c;->r:Li/b;

    iget v1, v1, Li/b;->k:I

    iput v1, p0, Lc/c;->l:I

    iget-object v1, p0, Lc/c;->r:Li/b;

    iget v1, v1, Li/b;->l:I

    iput v1, p0, Lc/c;->m:I

    iget v0, v0, Li/a/a;->g:F

    iput v0, p0, Lc/c;->k:F

    iget-object v0, p0, Lc/c;->t:Li/a/c;

    invoke-direct {p0, v0}, Lc/c;->a(Li/a/c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c;->r:Li/b;

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "ScorerTask.doInBackground"

    invoke-static {v2, v1}, Lcom/xcglobe/xclog/App;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method private synthetic c()V
    .locals 1

    invoke-direct {p0}, Lc/c;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lc/c;->a(Z)V

    # Stop sensor logger only when scoring really ends (b:Z cleared for real)
    # Not here - scoring thread runs immediately and would kill logger prematurely
    const/4 v0, 0x0

    sput-boolean v0, Lc/c;->b:Z

    return-void
.end method

.method private synthetic c(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c;->b(Z)V

    return-void
.end method

.method public static synthetic lambda$JRRut6aqCB3zlgHYOEzMVj67PWM(Lc/c;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/c;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$RyZxJN0-4yMdN1zeGCqouVVy2d8(Lc/c;)V
    .locals 0

    invoke-direct {p0}, Lc/c;->c()V

    return-void
.end method

.method public static synthetic lambda$W6LZWR8qXgdqbInwwhIB9mdU5dk(Lc/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c;->c(Z)V

    return-void
.end method
