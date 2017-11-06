.class public Lcom/T/T/T3/T/Tu;
.super Lcom/T/T/T3/T/T0;
.source "Proguard"


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
    .line 16
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/T/T/T3/T/T0;-><init>(Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    .line 17
    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 7
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
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v6, 0x10

    .line 23
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    .line 24
    .local v0, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 25
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->To()I

    move-result v2

    .line 26
    .local v2, "val":I
    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    .line 27
    if-nez p2, :cond_1

    .line 28
    iget-object v4, p0, Lcom/T/T/T3/T/Tu;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v4}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v2    # "val":I
    :cond_0
    :goto_0
    return-void

    .line 30
    .restart local v2    # "val":I
    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/T/T/T3/T/Tu;->T(Ljava/lang/Object;I)V

    goto :goto_0

    .line 33
    .end local v2    # "val":I
    :cond_2
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 34
    const/4 v3, 0x0

    .line 35
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    .line 42
    :goto_1
    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/T/T/T3/T/Tu;->TN()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_0

    .line 47
    :cond_3
    if-nez p2, :cond_5

    .line 48
    iget-object v4, p0, Lcom/T/T/T3/T/Tu;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v4}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "obj":Ljava/lang/Object;
    invoke-static {v1}, Lcom/T/T/TN/Ty;->TB(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/Integer;
    goto :goto_1

    .line 50
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0, p2, v3}, Lcom/T/T/T3/T/Tu;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
