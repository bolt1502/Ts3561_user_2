.class public abstract Lcom/T/T/T2/TZ;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field protected final T:Lcom/T/T/TN/T2;

.field private final T2:Ljava/lang/String;

.field private final T3:Ljava/lang/String;

.field private final TN:Ljava/lang/String;

.field private Te:Z


# direct methods
.method public constructor <init>(Lcom/T/T/TN/T2;)V
    .locals 8
    .param p1, "fieldInfo"    # Lcom/T/T/TN/T2;

    .prologue
    const/4 v7, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/T/T/T2/TZ;->Te:Z

    .line 38
    iput-object p1, p0, Lcom/T/T/T2/TZ;->T:Lcom/T/T/TN/T2;

    .line 39
    invoke-virtual {p1, v7}, Lcom/T/T/TN/T2;->T(Z)V

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/T/T/T2/TZ;->T3:Ljava/lang/String;

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\':"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/T/T/T2/TZ;->T2:Ljava/lang/String;

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/T/T/T2/TZ;->TN:Ljava/lang/String;

    .line 47
    const-class v5, Lcom/T/T/T/T3;

    invoke-virtual {p1, v5}, Lcom/T/T/TN/T2;->T(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/T/T/T/T3;

    .line 48
    .local v0, "annotation":Lcom/T/T/T/T3;
    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Lcom/T/T/T/T3;->Te()[Lcom/T/T/T2/T3c;

    move-result-object v1

    .local v1, "arr$":[Lcom/T/T/T2/T3c;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 50
    .local v2, "feature":Lcom/T/T/T2/T3c;
    sget-object v5, Lcom/T/T/T2/T3c;->T2:Lcom/T/T/T2/T3c;

    if-ne v2, v5, :cond_0

    .line 51
    iput-boolean v7, p0, Lcom/T/T/T2/TZ;->Te:Z

    .line 49
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "arr$":[Lcom/T/T/T2/T3c;
    .end local v2    # "feature":Lcom/T/T/T2/T3c;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-void
.end method


# virtual methods
.method public T(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/T/T/T2/TZ;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v0, p1}, Lcom/T/T/TN/T2;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/T/T/T2/TS;)V
    .locals 2
    .param p1, "serializer"    # Lcom/T/T/T2/TS;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v0

    .line 76
    .local v0, "out":Lcom/T/T/T2/T30;
    sget-object v1, Lcom/T/T/T2/T3c;->T:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    sget-object v1, Lcom/T/T/T2/T3c;->T3:Lcom/T/T/T2/T3c;

    invoke-virtual {p1, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/T/T/T2/TZ;->T2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/T/T/T2/TZ;->T3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/T/T/T2/TZ;->TN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract T(Lcom/T/T/T2/TS;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public T()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/T/T/T2/TZ;->Te:Z

    return v0
.end method

.method public T2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/T/T/T2/TZ;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v0}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T3()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/T/T/T2/TZ;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v0}, Lcom/T/T/TN/T2;->Te()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method
