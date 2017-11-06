.class public Lcom/T/T/T3/T/T3w;
.super Lcom/T/T/T3/T/T0;
.source "Proguard"


# instance fields
.field private final T2:Lcom/T/T/T3/T/TS;


# direct methods
.method public constructor <init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;Lcom/T/T/TN/T2;)V
    .locals 1
    .param p1, "config"    # Lcom/T/T/T3/TJ;
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
    .line 17
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/T/T/T3/T/T0;-><init>(Ljava/lang/Class;Lcom/T/T/TN/T2;)V

    .line 19
    invoke-virtual {p1, p3}, Lcom/T/T/T3/TJ;->T(Lcom/T/T/TN/T2;)Lcom/T/T/T3/T/TS;

    move-result-object v0

    iput-object v0, p0, Lcom/T/T/T3/T/T3w;->T2:Lcom/T/T/T3/T/TS;

    .line 20
    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/T/T/T3/T/T3w;->T2:Lcom/T/T/T3/T/TS;

    invoke-interface {v0}, Lcom/T/T/T3/T/TS;->T()I

    move-result v0

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 5
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
    .line 26
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    .line 27
    .local v0, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "value":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/T/T/T3/Te;->T(I)V

    .line 41
    :goto_0
    if-nez p2, :cond_2

    .line 42
    iget-object v3, p0, Lcom/T/T/T3/T/T3w;->T:Lcom/T/T/TN/T2;

    invoke-virtual {v3}, Lcom/T/T/TN/T2;->T2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_1
    return-void

    .line 32
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v1

    .line 34
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 35
    const/4 v2, 0x0

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 37
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 44
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p2, v2}, Lcom/T/T/T3/T/T3w;->T(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
