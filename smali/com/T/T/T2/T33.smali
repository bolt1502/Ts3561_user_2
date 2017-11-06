.class public Lcom/T/T/T2/T33;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# instance fields
.field private final T:[Lcom/T/T/T2/TZ;

.field private final T3:[Lcom/T/T/T2/TZ;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/T/T/T2/T33;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/T/T/T2/TZ;>;"
    const/4 v4, 0x0

    invoke-static {p1, p2, v4}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/T/T/TN/T2;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T/T/TN/T2;

    .line 68
    .local v0, "fieldInfo":Lcom/T/T/TN/T2;
    invoke-virtual {p0, v0}, Lcom/T/T/T2/T33;->T(Lcom/T/T/TN/T2;)Lcom/T/T/T2/TZ;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v0    # "fieldInfo":Lcom/T/T/TN/T2;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/T/T/T2/TZ;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/T/T/T2/TZ;

    iput-object v4, p0, Lcom/T/T/T2/T33;->T:[Lcom/T/T/T2/TZ;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/T/T/T2/TZ;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .restart local v2    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/T/T/T2/TZ;>;"
    const/4 v4, 0x1

    invoke-static {p1, p2, v4}, Lcom/T/T/TN/Ty;->T(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T/T/TN/T2;

    .line 78
    .restart local v0    # "fieldInfo":Lcom/T/T/TN/T2;
    invoke-virtual {p0, v0}, Lcom/T/T/T2/T33;->T(Lcom/T/T/TN/T2;)Lcom/T/T/T2/TZ;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    .end local v0    # "fieldInfo":Lcom/T/T/TN/T2;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/T/T/T2/TZ;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/T/T/T2/TZ;

    iput-object v4, p0, Lcom/T/T/T2/T33;->T3:[Lcom/T/T/T2/TZ;

    .line 83
    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/TN/T2;)Lcom/T/T/T2/TZ;
    .locals 2
    .param p1, "fieldInfo"    # Lcom/T/T/TN/T2;

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/T/T/TN/T2;->T()Ljava/lang/Class;

    move-result-object v0

    .line 206
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Number;

    if-ne v0, v1, :cond_0

    .line 207
    new-instance v1, Lcom/T/T/T2/T3G;

    invoke-direct {v1, p1}, Lcom/T/T/T2/T3G;-><init>(Lcom/T/T/TN/T2;)V

    .line 210
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/T/T/T2/T3J;

    invoke-direct {v1, p1}, Lcom/T/T/T2/T3J;-><init>(Lcom/T/T/TN/T2;)V

    goto :goto_0
.end method

.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;)V
    .locals 0
    .param p1, "serializer"    # Lcom/T/T/T2/TS;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 200
    invoke-virtual {p1, p2}, Lcom/T/T/T2/TS;->T2(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 19
    .param p1, "serializer"    # Lcom/T/T/T2/TS;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v14

    .line 92
    .local v14, "out":Lcom/T/T/T2/T30;
    if-nez p2, :cond_0

    .line 93
    invoke-virtual {v14}, Lcom/T/T/T2/T30;->T()V

    .line 197
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/T/T/T2/TS;->T3(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 98
    invoke-virtual/range {p0 .. p2}, Lcom/T/T/T2/T33;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_1
    sget-object v17, Lcom/T/T/T2/T3c;->TW:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 105
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/T/T/T2/T33;->T3:[Lcom/T/T/T2/TZ;

    .line 110
    .local v9, "getters":[Lcom/T/T/T2/TZ;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->T3()Lcom/T/T/T2/T3L;

    move-result-object v15

    .line 111
    .local v15, "parent":Lcom/T/T/T2/T3L;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    const/16 v17, 0x7b

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    .line 116
    array-length v0, v9

    move/from16 v17, v0

    if-lez v17, :cond_2

    sget-object v17, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TN()V

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    .line 121
    :cond_2
    const/4 v5, 0x0

    .line 123
    .local v5, "commaFlag":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/T/T/T2/T33;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 124
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 125
    .local v12, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p4

    if-eq v12, v0, :cond_3

    .line 126
    sget-object v17, Lcom/T/T/T;->T:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    .line 128
    const/4 v5, 0x1

    .line 132
    .end local v12    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_b

    .line 133
    aget-object v8, v9, v10

    .line 135
    .local v8, "fieldSerializer":Lcom/T/T/T2/TZ;
    sget-object v17, Lcom/T/T/T2/T3c;->TR:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 136
    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T3()Ljava/lang/reflect/Field;

    move-result-object v7

    .line 137
    .local v7, "field":Ljava/lang/reflect/Field;
    if-eqz v7, :cond_6

    .line 138
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isTransient(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    if-eqz v17, :cond_6

    .line 132
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 107
    .end local v5    # "commaFlag":Z
    .end local v8    # "fieldSerializer":Lcom/T/T/T2/TZ;
    .end local v9    # "getters":[Lcom/T/T/T2/TZ;
    .end local v10    # "i":I
    .end local v15    # "parent":Lcom/T/T/T2/T3L;
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/T/T/T2/T33;->T:[Lcom/T/T/T2/TZ;

    .restart local v9    # "getters":[Lcom/T/T/T2/TZ;
    goto/16 :goto_1

    .line 144
    .restart local v5    # "commaFlag":Z
    .restart local v8    # "fieldSerializer":Lcom/T/T/T2/TZ;
    .restart local v10    # "i":I
    .restart local v15    # "parent":Lcom/T/T/T2/T3L;
    :cond_6
    :try_start_1
    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/T/T/T2/Tx;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 148
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/T/T/T2/TZ;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 150
    .local v16, "propertyValue":Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/T/T/T2/Tx;->T2(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 154
    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/T/T/T2/Tx;->T3(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v13, v16

    .line 157
    .local v13, "originalValue":Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/T/T/T2/Tx;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 159
    if-nez v16, :cond_7

    .line 160
    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T()Z

    move-result v17

    if-nez v17, :cond_7

    sget-object v17, Lcom/T/T/T2/T3c;->T2:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 166
    :cond_7
    if-eqz v5, :cond_8

    .line 167
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    .line 168
    sget-object v17, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    .line 173
    :cond_8
    invoke-virtual {v8}, Lcom/T/T/T2/TZ;->T2()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    if-eq v11, v0, :cond_9

    .line 174
    invoke-virtual {v14, v11}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    .line 183
    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 176
    :cond_9
    move-object/from16 v0, v16

    if-eq v13, v0, :cond_a

    .line 177
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/T/T/T2/TZ;->T(Lcom/T/T/T2/TS;)V

    .line 178
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 192
    .end local v5    # "commaFlag":Z
    .end local v8    # "fieldSerializer":Lcom/T/T/T2/TZ;
    .end local v10    # "i":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "originalValue":Ljava/lang/Object;
    .end local v16    # "propertyValue":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 193
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v17, Lcom/T/T/TN;

    const-string v18, "write javaBean error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    throw v17

    .line 180
    .restart local v5    # "commaFlag":Z
    .restart local v8    # "fieldSerializer":Lcom/T/T/T2/TZ;
    .restart local v10    # "i":I
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v13    # "originalValue":Ljava/lang/Object;
    .restart local v16    # "propertyValue":Ljava/lang/Object;
    :cond_a
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Lcom/T/T/T2/TZ;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;)V

    goto :goto_4

    .line 186
    .end local v8    # "fieldSerializer":Lcom/T/T/T2/TZ;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "originalValue":Ljava/lang/Object;
    .end local v16    # "propertyValue":Ljava/lang/Object;
    :cond_b
    array-length v0, v9

    move/from16 v17, v0

    if-lez v17, :cond_c

    sget-object v17, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Te()V

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    .line 191
    :cond_c
    const/16 v17, 0x7d

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    goto/16 :goto_0
.end method

.method protected T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "serializer"    # Lcom/T/T/T2/TS;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "fieldType"    # Ljava/lang/reflect/Type;
    .param p4, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-virtual {p1, p3, p2}, Lcom/T/T/T2/TS;->T(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
