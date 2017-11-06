.class public Lcom/txznet/comm/TN/T;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    .line 47
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public T(Ljava/lang/String;)Lcom/txznet/comm/TN/T;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    return-object p0
.end method

.method public T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 85
    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    if-nez v8, :cond_0

    .line 86
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iput-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    .line 88
    :cond_0
    if-eqz p2, :cond_2

    .line 90
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 91
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "val":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    .line 92
    .local v7, "objArr":[Ljava/lang/Object;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 93
    .local v4, "jArr":Lorg/json/JSONArray;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v1, v3

    .line 94
    .local v6, "obj":Ljava/lang/Object;
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "jArr":Lorg/json/JSONArray;
    .end local v5    # "len$":I
    .end local v7    # "objArr":[Ljava/lang/Object;
    :cond_2
    :goto_1
    return-object p0

    .line 97
    .restart local p2    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v8, p2, Ljava/util/Collection;

    if-eqz v8, :cond_4

    .line 98
    new-instance v4, Lorg/json/JSONArray;

    check-cast p2, Ljava/util/Collection;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-direct {v4, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 99
    .restart local v4    # "jArr":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    .end local v4    # "jArr":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 101
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local p2    # "val":Ljava/lang/Object;
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "def":Ljava/lang/Object;, "TT;"
    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 123
    :try_start_0
    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 124
    .local v7, "obj":Ljava/lang/Object;
    const-class v8, Ljava/lang/Double;

    if-ne p2, v8, :cond_1

    .line 125
    new-instance v1, Ljava/lang/Double;

    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Ljava/lang/Double;-><init>(D)V

    .line 159
    .end local v7    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 126
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_1
    const-class v8, Ljava/lang/Float;

    if-ne p2, v8, :cond_3

    .line 127
    new-instance v1, Ljava/lang/Float;

    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Ljava/lang/Float;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v7    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v1, p3

    .line 159
    goto :goto_0

    .line 128
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_3
    :try_start_1
    const-class v8, Ljava/lang/Integer;

    if-ne p2, v8, :cond_4

    .line 129
    new-instance v1, Ljava/lang/Integer;

    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 130
    :cond_4
    const-class v8, Ljava/lang/Long;

    if-ne p2, v8, :cond_5

    .line 131
    new-instance v1, Ljava/lang/Long;

    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 134
    :cond_5
    instance-of v8, v7, Lorg/json/JSONArray;

    if-eqz v8, :cond_a

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 135
    iget-object v8, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 136
    .local v5, "jArr":Lorg/json/JSONArray;
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 137
    .local v2, "componentType":Ljava/lang/Class;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 139
    .local v1, "arr":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .local v6, "len":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 140
    const-class v8, Ljava/lang/Double;

    if-ne v2, v8, :cond_6

    .line 141
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v1, v4

    .line 139
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 142
    :cond_6
    const-class v8, Ljava/lang/Float;

    if-ne v2, v8, :cond_7

    .line 143
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v1, v4

    goto :goto_2

    .line 144
    :cond_7
    const-class v8, Ljava/lang/Integer;

    if-ne v2, v8, :cond_8

    .line 145
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v4

    goto :goto_2

    .line 146
    :cond_8
    const-class v8, Ljava/lang/Long;

    if-ne v2, v8, :cond_9

    .line 147
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v1, v4

    goto :goto_2

    .line 149
    :cond_9
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v1    # "arr":[Ljava/lang/Object;
    .end local v2    # "componentType":Ljava/lang/Class;
    .end local v4    # "i":I
    .end local v5    # "jArr":Lorg/json/JSONArray;
    .end local v6    # "len":I
    :cond_a
    move-object v1, v7

    .line 154
    goto/16 :goto_0
.end method

.method public T()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    return-object v0
.end method

.method public T2()[B
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public T3()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/txznet/comm/TN/T;->T:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
