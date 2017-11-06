.class public Lcom/T/T/T3/T/T7;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/T/T/T3/T/T7;

    invoke-direct {v0}, Lcom/T/T/T3/T/T7;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T7;->T:Lcom/T/T/T3/T/T7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0xe

    return v0
.end method

.method public T(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 61
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Ljava/lang/Class;

    .line 64
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object p1

    .line 63
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 64
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/T/T/T3/T/T7;->T(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 66
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    new-instance v0, Lcom/T/T/TN;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    .line 22
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v4

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/T/T/T3/Te;->T(I)V

    .line 24
    const/4 v2, 0x0

    .line 56
    .end local p2    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object v2

    .line 27
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/T/T/T3/T/T7;->T(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 30
    .local v3, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/AbstractCollection;

    if-ne v3, v4, :cond_1

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v2, "list":Ljava/util/Collection;
    :goto_1
    instance-of v4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_6

    .line 50
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .end local p2    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 54
    .local v1, "itemType":Ljava/lang/reflect/Type;
    :goto_2
    invoke-virtual {p1, v1, v2, p3}, Lcom/T/T/T3/T2;->T(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 32
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    .end local v2    # "list":Ljava/util/Collection;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_1
    const-class v4, Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_1

    .line 34
    .end local v2    # "list":Ljava/util/Collection;
    :cond_2
    const-class v4, Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 35
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_1

    .line 36
    .end local v2    # "list":Ljava/util/Collection;
    :cond_3
    const-class v4, Ljava/util/TreeSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 37
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_1

    .line 38
    .end local v2    # "list":Ljava/util/Collection;
    :cond_4
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_1

    .line 42
    .end local v2    # "list":Ljava/util/Collection;
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_1

    .line 43
    .end local v2    # "list":Ljava/util/Collection;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/T/T/TN;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create instane error, class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "list":Ljava/util/Collection;
    :cond_6
    const-class v1, Ljava/lang/Object;

    .restart local v1    # "itemType":Ljava/lang/reflect/Type;
    goto :goto_2
.end method
