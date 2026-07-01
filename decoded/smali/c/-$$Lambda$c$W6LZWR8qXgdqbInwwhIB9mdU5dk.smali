.class public final synthetic Lc/-$$Lambda$c$W6LZWR8qXgdqbInwwhIB9mdU5dk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lc/c;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lc/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/-$$Lambda$c$W6LZWR8qXgdqbInwwhIB9mdU5dk;->f$0:Lc/c;

    iput-boolean p2, p0, Lc/-$$Lambda$c$W6LZWR8qXgdqbInwwhIB9mdU5dk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/-$$Lambda$c$W6LZWR8qXgdqbInwwhIB9mdU5dk;->f$0:Lc/c;

    iget-boolean v1, p0, Lc/-$$Lambda$c$W6LZWR8qXgdqbInwwhIB9mdU5dk;->f$1:Z

    invoke-static {v0, v1}, Lc/c;->lambda$W6LZWR8qXgdqbInwwhIB9mdU5dk(Lc/c;Z)V

    return-void
.end method
