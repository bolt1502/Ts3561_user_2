.class public Lcom/T/T/T3/T/TL;
.super Lcom/T/T/T3/T/T0;
.source "Proguard"


# instance fields
.field private T2:Lcom/T/T/T3/T/TS;


# direct methods
.method public constructor <init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V
    .locals 0
    .param p1, "mapping"    # Lcom/T/T/T3/TJ;
    .param p3, "fieldInfo"    # Lcom/T/T/TN/T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/TJ;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/T/T/TN/T2;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/T/T/T3/T/T0;-><init>(Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    .line 20
    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/T/T/T3/T/TL;->T2:Lcom/T/T/T3/T/TS;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/T/T/T3/T/TL;->T2:Lcom/T/T/T3/T/TS;

    invoke-interface {v0}, Lcom/T/T/T3/T/TS;->T()I

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 6
    .param p1, "parser"    # Lcom/T/T/T3/T2;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/T/T/T3/T/TL;->T2:Lcom/T/T/T3/T/TS;

    if-nez v3, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->T2()Lcom/T/T/T3/TJ;

    move-result-object v3

    iget-object v4, p0, Lcom/T/T/T3/T/TL;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v3, v4}, Lcom/T/T/T3/TJ;->T(Lcom/T/T/TN/T2;)Lcom/T/T/T3/T/TS;

    move-result-object v3

    iput-object v3, p0, Lcom/T/T/T3/T/TL;->T2:Lcom/T/T/T3/T/TS;

    .line 28
    :cond_0
    instance-of v3, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v0

    .line 30
    .local v0, "objContext":Lcom/T/T/T3/TR;
    invoke-virtual {v0, p3}, Lcom/T/T/T3/TR;->T(Ljava/lang/reflect/Type;)V

    .line 33
    .end local v0    # "objContext":Lcom/T/T/T3/TR;
    :cond_1
    iget-object v3, p0, Lcom/T/T/T3/T/TL;->T2:Lcom/T/T/T3/T/TS;

    invoke-virtual {p0}, Lcom/T/T/T3/T/TL;->Te()Ljava/lang/reflect/Type;

    move-result-object v4

    iget-object v5, p0, Lcom/T/T/T3/T/TL;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v5}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v4, v5}, Lcom/T/T/T3/T/TS;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TN()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->Tn()Lcom/T/T/T3/T2$T;

    move-result-object v1

    .line 36
    .local v1, "task":Lcom/T/T/T3/T2$T;
    invoke-virtual {v1, p0}, Lcom/T/T/T3/T2$T;->T(Lcom/T/T/T3/T/T0;)V

    .line 37
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->Tw()Lcom/T/T/T3/TR;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/T/T/T3/T2$T;->T(Lcom/T/T/T3/TR;)V

    .line 38
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/T/T/T3/T2;->T(I)V

    .line 46
    .end local v1    # "task":Lcom/T/T/T3/T2$T;
    :goto_0
    return-void

    .line 40
    :cond_2
    if-nez p2, :cond_3

    .line 41
    iget-object v3, p0, Lcom/T/T/T3/T/TL;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v3}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p0, p2, v2}, Lcom/T/T/T3/T/TL;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
