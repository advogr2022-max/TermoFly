.class public Lk/c;
.super Ltypes/PoiPoint;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Ltypes/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ltypes/PoiPoint;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk/c;->e:Z

    iput-boolean v0, p0, Lk/c;->f:Z

    iput-boolean v0, p0, Lk/c;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lk/c;->h:Ltypes/l;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lk/c;->m:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lk/c;->i:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lk/c;->j:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lk/c;->k:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lk/c;->a:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lk/c;)V
    .locals 1

    invoke-virtual {p0, p1}, Lk/c;->a(Ltypes/PoiPoint;)V

    iget v0, p1, Lk/c;->a:F

    iput v0, p0, Lk/c;->a:F

    iget v0, p1, Lk/c;->b:F

    iput v0, p0, Lk/c;->b:F

    iget-boolean v0, p1, Lk/c;->e:Z

    iput-boolean v0, p0, Lk/c;->e:Z

    iget-object v0, p1, Lk/c;->h:Ltypes/l;

    if-eqz v0, :cond_0

    new-instance v0, Ltypes/l;

    iget-object p1, p1, Lk/c;->h:Ltypes/l;

    invoke-direct {v0, p1}, Ltypes/l;-><init>(Ltypes/l;)V

    iput-object v0, p0, Lk/c;->h:Ltypes/l;

    :cond_0
    return-void
.end method

.method public b()Ltypes/l;
    .locals 3

    iget-object v0, p0, Lk/c;->h:Ltypes/l;

    if-nez v0, :cond_0

    new-instance v0, Ltypes/l;

    iget v1, p0, Lk/c;->i:F

    iget v2, p0, Lk/c;->j:F

    invoke-direct {v0, v1, v2}, Ltypes/l;-><init>(FF)V

    iput-object v0, p0, Lk/c;->h:Ltypes/l;

    :cond_0
    iget-object v0, p0, Lk/c;->h:Ltypes/l;

    return-object v0
.end method
