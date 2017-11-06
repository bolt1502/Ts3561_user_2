.class public Lcom/T/T/T2/T3w;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/T3w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/T/T/T2/T3w;

    invoke-direct {v0}, Lcom/T/T/T2/T3w;-><init>()V

    sput-object v0, Lcom/T/T/T2/T3w;->T:Lcom/T/T/T2/T3w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17
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
    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v11

    .line 38
    .local v11, "out":Lcom/T/T/T2/T30;
    if-nez p2, :cond_0

    .line 39
    invoke-virtual {v11}, Lcom/T/T/T2/T30;->T()V

    .line 147
    :goto_0
    return-void

    :cond_0
    move-object/from16 v9, p2

    .line 43
    check-cast v9, Ljava/util/Map;

    .line 45
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    sget-object v16, Lcom/T/T/T2/T3c;->TW:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 46
    instance-of v0, v9, Ljava/util/SortedMap;

    move/from16 v16, v0

    if-nez v16, :cond_1

    instance-of v0, v9, Ljava/util/LinkedHashMap;

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 48
    :try_start_0
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10, v9}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object v9, v10

    .line 55
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/T/T/T2/TS;->T3(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 56
    invoke-virtual/range {p1 .. p2}, Lcom/T/T/T2/TS;->T2(Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->T3()Lcom/T/T/T2/T3L;

    move-result-object v12

    .line 61
    .local v12, "parent":Lcom/T/T/T2/T3L;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    const/16 v16, 0x7b

    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(C)V

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->TN()V

    .line 67
    const/4 v13, 0x0

    .line 68
    .local v13, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x0

    .line 70
    .local v14, "preWriter":Lcom/T/T/T2/T3B;
    const/4 v6, 0x1

    .line 72
    .local v6, "first":Z
    sget-object v16, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 73
    sget-object v16, Lcom/T/T/T;->T:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    .line 75
    const/4 v6, 0x0

    .line 78
    :cond_3
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 79
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 81
    .local v15, "value":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 83
    .local v5, "entryKey":Ljava/lang/Object;
    if-eqz v5, :cond_5

    instance-of v0, v5, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 84
    :cond_5
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 86
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/T/T/T2/Tx;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 90
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8, v15}, Lcom/T/T/T2/Tx;->T2(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 94
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8, v15}, Lcom/T/T/T2/Tx;->T3(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 95
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8, v15}, Lcom/T/T/T2/Tx;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 97
    if-nez v15, :cond_6

    .line 98
    sget-object v16, Lcom/T/T/T2/T3c;->T2:Lcom/T/T/T2/T3c;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 103
    :cond_6
    if-nez v6, :cond_7

    .line 104
    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(C)V

    .line 107
    :cond_7
    sget-object v16, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    .line 110
    :cond_8
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v8, v0}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;Z)V

    .line 120
    .end local v8    # "key":Ljava/lang/String;
    :goto_3
    const/4 v6, 0x0

    .line 122
    if-nez v15, :cond_b

    .line 123
    invoke-virtual {v11}, Lcom/T/T/T2/T30;->T()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 139
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "entryKey":Ljava/lang/Object;
    .end local v6    # "first":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v13    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "preWriter":Lcom/T/T/T2/T3B;
    .end local v15    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    throw v16

    .line 112
    .restart local v4    # "entry":Ljava/util/Map$Entry;
    .restart local v5    # "entryKey":Ljava/lang/Object;
    .restart local v6    # "first":Z
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v13    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "preWriter":Lcom/T/T/T2/T3B;
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_9
    if-nez v6, :cond_a

    .line 113
    const/16 v16, 0x2c

    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(C)V

    .line 116
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    .line 117
    const/16 v16, 0x3a

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_3

    .line 127
    :cond_b
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 129
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v3, v13, :cond_c

    .line 130
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v5, v1}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_2

    .line 132
    :cond_c
    move-object v13, v3

    .line 133
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v14

    .line 135
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v15, v5, v1}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 139
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "entryKey":Ljava/lang/Object;
    .end local v15    # "value":Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Te()V

    .line 143
    sget-object v16, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v16

    if-lez v16, :cond_e

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T2/TS;->Tw()V

    .line 146
    :cond_e
    const/16 v16, 0x7d

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/T/T/T2/T30;->T(C)V

    goto/16 :goto_0

    .line 49
    .end local v6    # "first":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "parent":Lcom/T/T/T2/T3L;
    .end local v13    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "preWriter":Lcom/T/T/T2/T3B;
    :catch_0
    move-exception v16

    goto/16 :goto_1
.end method
