.class public Lcom/T/T/T3/T/T3y;
.super Lcom/T/T/T3/T/TM;
.source "Proguard"


# direct methods
.method public constructor <init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;)V
    .locals 0
    .param p1, "mapping"    # Lcom/T/T/T3/TJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/T/T/T3/TJ;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/T/T/T3/T/TM;-><init>(Lcom/T/T/T3/TJ;Ljava/lang/Class;)V

    .line 21
    return-void
.end method

.method private T(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x0

    .line 128
    .local v6, "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x0

    .line 129
    .local v1, "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 130
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_1

    .line 131
    move-object v3, v2

    .line 129
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v10, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v9

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_2

    .line 136
    move-object v6, v2

    .line 137
    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v11, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v9

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v10

    const-class v8, Ljava/lang/Throwable;

    if-ne v7, v8, :cond_0

    .line 142
    move-object v1, v2

    .line 143
    goto :goto_1

    .line 147
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    if-eqz v1, :cond_4

    .line 148
    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v9

    aput-object p2, v7, v10

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    .line 159
    :goto_2
    return-object v7

    .line 151
    :cond_4
    if-eqz v6, :cond_5

    .line 152
    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    goto :goto_2

    .line 155
    :cond_5
    if-eqz v3, :cond_6

    .line 156
    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    goto :goto_2

    .line 159
    :cond_6
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0xc

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p1, "parser"    # Lcom/T/T/T3/T2;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v9

    .line 27
    .local v9, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->TN()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_1

    .line 28
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->T()V

    .line 29
    const/4 v4, 0x0

    .line 122
    :cond_0
    :goto_0
    return-object v4

    .line 32
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->TN()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_6

    .line 33
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/T/T/T3/T2;->T(I)V

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    .local v1, "cause":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 43
    .local v6, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/lang/Class;

    if-eqz v13, :cond_3

    move-object/from16 v2, p2

    .line 44
    check-cast v2, Ljava/lang/Class;

    .line 45
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Ljava/lang/Throwable;

    invoke-virtual {v13, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 46
    move-object v6, v2

    .line 50
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/4 v10, 0x0

    .line 51
    .local v10, "message":Ljava/lang/String;
    const/4 v12, 0x0

    .line 52
    .local v12, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v11, "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->T3()Lcom/T/T/T3/TB;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TB;)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "key":Ljava/lang/String;
    if-nez v8, :cond_8

    .line 59
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->TN()I

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_7

    .line 60
    const/16 v13, 0x10

    invoke-virtual {v9, v13}, Lcom/T/T/T3/Te;->T(I)V

    .line 104
    :goto_1
    const/4 v4, 0x0

    .line 105
    .local v4, "ex":Ljava/lang/Throwable;
    if-nez v6, :cond_10

    .line 106
    new-instance v4, Ljava/lang/Exception;

    .end local v4    # "ex":Ljava/lang/Throwable;
    invoke-direct {v4, v10, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .restart local v4    # "ex":Ljava/lang/Throwable;
    :cond_5
    :goto_2
    if-eqz v12, :cond_0

    .line 119
    invoke-virtual {v4, v12}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0

    .line 35
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v6    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_6
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->TN()I

    move-result v13

    const/16 v14, 0xc

    if-eq v13, v14, :cond_2

    .line 36
    new-instance v13, Lcom/T/T/TN;

    const-string v14, "syntax error"

    invoke-direct {v13, v14}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v13

    .line 63
    .restart local v1    # "cause":Ljava/lang/Throwable;
    .restart local v6    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v10    # "message":Ljava/lang/String;
    .restart local v11    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_7
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->TN()I

    move-result v13

    const/16 v14, 0x10

    if-ne v13, v14, :cond_8

    .line 64
    sget-object v13, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    invoke-virtual {v9, v13}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 70
    :cond_8
    const/4 v13, 0x4

    invoke-virtual {v9, v13}, Lcom/T/T/T3/Te;->T3(I)V

    .line 72
    sget-object v13, Lcom/T/T/T;->T:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 73
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->TN()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_9

    .line 74
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "exClassName":Ljava/lang/String;
    invoke-static {v7}, Lcom/T/T/TN/Ty;->T(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 79
    const/16 v13, 0x10

    invoke-virtual {v9, v13}, Lcom/T/T/T3/Te;->T(I)V

    .line 98
    .end local v7    # "exClassName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->TN()I

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_4

    .line 99
    const/16 v13, 0x10

    invoke-virtual {v9, v13}, Lcom/T/T/T3/Te;->T(I)V

    goto :goto_1

    .line 77
    :cond_9
    new-instance v13, Lcom/T/T/TN;

    const-string v14, "syntax error"

    invoke-direct {v13, v14}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v13

    .line 80
    :cond_a
    const-string v13, "message"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 81
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->TN()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_b

    .line 82
    const/4 v10, 0x0

    .line 88
    :goto_4
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->T()V

    goto :goto_3

    .line 83
    :cond_b
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->TN()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_c

    .line 84
    invoke-virtual {v9}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 86
    :cond_c
    new-instance v13, Lcom/T/T/TN;

    const-string v14, "syntax error"

    invoke-direct {v13, v14}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v13

    .line 89
    :cond_d
    const-string v13, "cause"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 90
    const/4 v13, 0x0

    const-string v14, "cause"

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v13, v14}, Lcom/T/T/T3/T/T3y;->T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cause":Ljava/lang/Throwable;
    check-cast v1, Ljava/lang/Throwable;

    .restart local v1    # "cause":Ljava/lang/Throwable;
    goto :goto_3

    .line 91
    :cond_e
    const-string v13, "stackTrace"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 92
    const-class v13, [Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/T/T/T3/T2;->T(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "stackTrace":[Ljava/lang/StackTraceElement;
    check-cast v12, [Ljava/lang/StackTraceElement;

    .restart local v12    # "stackTrace":[Ljava/lang/StackTraceElement;
    goto :goto_3

    .line 95
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 109
    .restart local v4    # "ex":Ljava/lang/Throwable;
    :cond_10
    :try_start_0
    invoke-direct {p0, v10, v1, v6}, Lcom/T/T/T3/T/T3y;->T(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v4

    .line 110
    if-nez v4, :cond_5

    .line 111
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v10, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "ex":Ljava/lang/Throwable;
    .local v5, "ex":Ljava/lang/Throwable;
    move-object v4, v5

    .end local v5    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_2

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Exception;
    new-instance v13, Lcom/T/T/TN;

    const-string v14, "create instance error"

    invoke-direct {v13, v14, v3}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method
