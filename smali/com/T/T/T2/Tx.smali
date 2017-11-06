.class public Lcom/T/T/T2/Tx;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "serializer"    # Lcom/T/T/T2/TS;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/T/T/T2/TS;->T2()Ljava/util/List;

    move-result-object v2

    .line 9
    .local v2, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/T/T/T2/T31;>;"
    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T2/T31;

    .line 11
    .local v1, "valueFilter":Lcom/T/T/T2/T31;
    invoke-interface {v1, p1, p2, p3}, Lcom/T/T/T2/T31;->T(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 12
    goto :goto_0

    .line 15
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "valueFilter":Lcom/T/T/T2/T31;
    :cond_0
    return-object p3
.end method

.method public static T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5
    .param p0, "serializer"    # Lcom/T/T/T2/TS;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 30
    invoke-virtual {p0}, Lcom/T/T/T2/TS;->Tn()Ljava/util/List;

    move-result-object v1

    .line 32
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/T/T/T2/T3O;>;"
    if-nez v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v3

    .line 36
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T/T/T2/T3O;

    .line 37
    .local v0, "filter":Lcom/T/T/T2/T3O;
    invoke-interface {v0, p0, p1, p2}, Lcom/T/T/T2/T3O;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 38
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static T2(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "serializer"    # Lcom/T/T/T2/TS;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-virtual {p0}, Lcom/T/T/T2/TS;->TG()Ljava/util/List;

    move-result-object v2

    .line 48
    .local v2, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/T/T/T2/T37;>;"
    if-nez v2, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v3

    .line 52
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T2/T37;

    .line 53
    .local v1, "propertyFilter":Lcom/T/T/T2/T37;
    invoke-interface {v1, p1, p2, p3}, Lcom/T/T/T2/T37;->T(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static T3(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "serializer"    # Lcom/T/T/T2/TS;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/T/T/T2/TS;->Ty()Ljava/util/List;

    move-result-object v2

    .line 20
    .local v2, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/T/T/T2/T3y;>;"
    if-eqz v2, :cond_0

    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/T/T/T2/T3y;

    .line 22
    .local v1, "nameFilter":Lcom/T/T/T2/T3y;
    invoke-interface {v1, p1, p2, p3}, Lcom/T/T/T2/T3y;->T(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 23
    goto :goto_0

    .line 26
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "nameFilter":Lcom/T/T/T2/T3y;
    :cond_0
    return-object p2
.end method
