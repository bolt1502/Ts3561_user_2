.class public Lcom/T/T/T3/TR;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:Ljava/lang/Object;

.field private final T2:Ljava/lang/Object;

.field private final T3:Lcom/T/T/T3/TR;

.field private TN:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/T/T/T3/TR;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "parent"    # Lcom/T/T/T3/TR;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/T/T/T3/TR;->T3:Lcom/T/T/T3/TR;

    .line 15
    iput-object p2, p0, Lcom/T/T/T3/TR;->T:Ljava/lang/Object;

    .line 16
    iput-object p3, p0, Lcom/T/T/T3/TR;->T2:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public T()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/T/T/T3/TR;->TN:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public T(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/T/T/T3/TR;->T:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public T(Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/T/T/T3/TR;->TN:Ljava/lang/reflect/Type;

    .line 25
    return-void
.end method

.method public T2()Lcom/T/T/T3/TR;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/T/T/T3/TR;->T3:Lcom/T/T/T3/TR;

    return-object v0
.end method

.method public T3()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/T/T/T3/TR;->T:Ljava/lang/Object;

    return-object v0
.end method

.method public TN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/T/T/T3/TR;->T3:Lcom/T/T/T3/TR;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "$"

    .line 46
    :goto_0
    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/T/T/T3/TR;->T2:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/T/T/T3/TR;->T3:Lcom/T/T/T3/TR;

    invoke-virtual {v1}, Lcom/T/T/T3/TR;->TN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/T/T/T3/TR;->T2:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/T/T/T3/TR;->T3:Lcom/T/T/T3/TR;

    invoke-virtual {v1}, Lcom/T/T/T3/TR;->TN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/T/T/T3/TR;->T2:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/T/T/T3/TR;->TN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
