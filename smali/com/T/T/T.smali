.class public abstract Lcom/T/T/T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2;
.implements Lcom/T/T/Tw;


# static fields
.field public static T:Ljava/lang/String;

.field public static T2:Ljava/lang/String;

.field public static T3:I

.field public static TN:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v1, "@type"

    sput-object v1, Lcom/T/T/T;->T:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "features":I
    sget-object v1, Lcom/T/T/T3/TN;->T:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 64
    sget-object v1, Lcom/T/T/T3/TN;->Te:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 65
    sget-object v1, Lcom/T/T/T3/TN;->Tn:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 66
    sget-object v1, Lcom/T/T/T3/TN;->T2:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 67
    sget-object v1, Lcom/T/T/T3/TN;->TN:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 68
    sget-object v1, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 69
    sget-object v1, Lcom/T/T/T3/TN;->TR:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 70
    sget-object v1, Lcom/T/T/T3/TN;->TG:Lcom/T/T/T3/TN;

    invoke-virtual {v1}, Lcom/T/T/T3/TN;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 71
    sput v0, Lcom/T/T/T;->T3:I

    .line 74
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sput-object v1, Lcom/T/T/T;->T2:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    .line 79
    sget-object v1, Lcom/T/T/T2/T3c;->T:Lcom/T/T/T2/T3c;

    invoke-virtual {v1}, Lcom/T/T/T2/T3c;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 80
    sget-object v1, Lcom/T/T/T2/T3c;->TR:Lcom/T/T/T2/T3c;

    invoke-virtual {v1}, Lcom/T/T/T2/T3c;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 81
    sget-object v1, Lcom/T/T/T2/T3c;->TN:Lcom/T/T/T2/T3c;

    invoke-virtual {v1}, Lcom/T/T/T2/T3c;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 82
    sget-object v1, Lcom/T/T/T2/T3c;->TW:Lcom/T/T/T2/T3c;

    invoke-virtual {v1}, Lcom/T/T/T2/T3c;->T()I

    move-result v1

    or-int/2addr v0, v1

    .line 85
    sput v0, Lcom/T/T/T;->TN:I

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static T(Lcom/T/T/T3/T2;Ljava/lang/Object;)I
    .locals 8
    .param p0, "parser"    # Lcom/T/T/T3/T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->Ty()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 226
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/T/T/T3/T2;->Ty()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/T/T/T3/T2$T;

    .line 228
    .local v6, "task":Lcom/T/T/T3/T2$T;
    invoke-virtual {v6}, Lcom/T/T/T3/T2$T;->T2()Lcom/T/T/T3/T/T0;

    move-result-object v0

    .line 230
    .local v0, "fieldDeser":Lcom/T/T/T3/T/T0;
    const/4 v2, 0x0

    .line 231
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/T/T/T3/T2$T;->TN()Lcom/T/T/T3/TR;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 232
    invoke-virtual {v6}, Lcom/T/T/T3/T2$T;->TN()Lcom/T/T/T3/TR;

    move-result-object v7

    invoke-virtual {v7}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v2

    .line 235
    .end local v2    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v6}, Lcom/T/T/T3/T2$T;->T3()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "ref":Ljava/lang/String;
    const-string v7, "$"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 238
    invoke-virtual {p0, v3}, Lcom/T/T/T3/T2;->T(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 242
    .local v4, "refValue":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v0, v2, v4}, Lcom/T/T/T3/T/T0;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v4    # "refValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v6}, Lcom/T/T/T3/T2$T;->T()Lcom/T/T/T3/TR;

    move-result-object v7

    invoke-virtual {v7}, Lcom/T/T/T3/TR;->T3()Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "refValue":Ljava/lang/Object;
    goto :goto_1

    .line 245
    .end local v0    # "fieldDeser":Lcom/T/T/T3/T/T0;
    .end local v3    # "ref":Ljava/lang/String;
    .end local v4    # "refValue":Ljava/lang/Object;
    .end local v6    # "task":Lcom/T/T/T3/T2$T;
    :cond_2
    return v5
.end method

.method public static final T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
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
    .line 292
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/T/T/T3/TN;

    invoke-static {p0, p1, v0}, Lcom/T/T/T;->T(Ljava/lang/String;Ljava/lang/Class;[Lcom/T/T/T3/TN;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs T(Ljava/lang/String;Ljava/lang/Class;[Lcom/T/T/T3/TN;)Ljava/lang/Object;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/T/T/T3/TN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Lcom/T/T/T3/TN;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/T/T/T3/TJ;->T()Lcom/T/T/T3/TJ;

    move-result-object v0

    sget v1, Lcom/T/T/T;->T3:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/T/T/T;->T(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;I[Lcom/T/T/T3/TN;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs T(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/T/T/T3/TJ;I[Lcom/T/T/T3/TN;)Ljava/lang/Object;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lcom/T/T/T3/TJ;
    .param p3, "featureValues"    # I
    .param p4, "features"    # [Lcom/T/T/T3/TN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/T/T/T3/TJ;",
            "I[",
            "Lcom/T/T/T3/TN;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    const/4 v5, 0x0

    .line 221
    :goto_0
    return-object v5

    .line 210
    :cond_0
    move-object v0, p4

    .local v0, "arr$":[Lcom/T/T/T3/TN;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 211
    .local v1, "featrue":Lcom/T/T/T3/TN;
    const/4 v6, 0x1

    invoke-static {p3, v1, v6}, Lcom/T/T/T3/TN;->T(ILcom/T/T/T3/TN;Z)I

    move-result p3

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    .end local v1    # "featrue":Lcom/T/T/T3/TN;
    :cond_1
    new-instance v4, Lcom/T/T/T3/T2;

    invoke-direct {v4, p0, p2, p3}, Lcom/T/T/T3/T2;-><init>(Ljava/lang/String;Lcom/T/T/T3/TJ;I)V

    .line 215
    .local v4, "parser":Lcom/T/T/T3/T2;
    invoke-virtual {v4, p1}, Lcom/T/T/T3/T2;->T(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 217
    .local v5, "value":Ljava/lang/Object;, "TT;"
    invoke-static {v4, v5}, Lcom/T/T/T;->T(Lcom/T/T/T3/T2;Ljava/lang/Object;)I

    .line 219
    invoke-virtual {v4}, Lcom/T/T/T3/T2;->close()V

    goto :goto_0
.end method

.method public static final T(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 371
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/T/T/T2/T3c;

    invoke-static {p0, v0}, Lcom/T/T/T;->T(Ljava/lang/Object;[Lcom/T/T/T2/T3c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs T(Ljava/lang/Object;[Lcom/T/T/T2/T3c;)Ljava/lang/String;
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "features"    # [Lcom/T/T/T2/T3c;

    .prologue
    .line 375
    new-instance v4, Lcom/T/T/T2/T30;

    invoke-direct {v4}, Lcom/T/T/T2/T30;-><init>()V

    .line 378
    .local v4, "out":Lcom/T/T/T2/T30;
    :try_start_0
    new-instance v5, Lcom/T/T/T2/TS;

    invoke-direct {v5, v4}, Lcom/T/T/T2/TS;-><init>(Lcom/T/T/T2/T30;)V

    .line 379
    .local v5, "serializer":Lcom/T/T/T2/TS;
    move-object v0, p1

    .local v0, "arr$":[Lcom/T/T/T2/T3c;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 380
    .local v1, "feature":Lcom/T/T/T2/T3c;
    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3c;Z)V

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    .end local v1    # "feature":Lcom/T/T/T2/T3c;
    :cond_0
    invoke-virtual {v5, p0}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    .line 385
    invoke-virtual {v4}, Lcom/T/T/T2/T30;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 387
    invoke-virtual {v4}, Lcom/T/T/T2/T30;->close()V

    return-object v6

    .end local v0    # "arr$":[Lcom/T/T/T2/T3c;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "serializer":Lcom/T/T/T2/TS;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Lcom/T/T/T2/T30;->close()V

    throw v6
.end method

.method public static final T3(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 324
    const/4 v1, 0x0

    .line 343
    :goto_0
    return-object v1

    .line 329
    :cond_0
    new-instance v2, Lcom/T/T/T3/T2;

    invoke-static {}, Lcom/T/T/T3/TJ;->T()Lcom/T/T/T3/TJ;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/T/T/T3/T2;-><init>(Ljava/lang/String;Lcom/T/T/T3/TJ;)V

    .line 330
    .local v2, "parser":Lcom/T/T/T3/T2;
    invoke-virtual {v2}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    .line 331
    .local v0, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 332
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->T()V

    .line 333
    const/4 v1, 0x0

    .line 341
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    invoke-virtual {v2}, Lcom/T/T/T3/T2;->close()V

    goto :goto_0

    .line 335
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v2, p1, v1}, Lcom/T/T/T3/T2;->T(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 338
    invoke-static {v2, v1}, Lcom/T/T/T;->T(Lcom/T/T/T3/T2;Ljava/lang/Object;)I

    goto :goto_1
.end method


# virtual methods
.method public T()Ljava/lang/String;
    .locals 2

    .prologue
    .line 551
    new-instance v0, Lcom/T/T/T2/T30;

    invoke-direct {v0}, Lcom/T/T/T2/T30;-><init>()V

    .line 553
    .local v0, "out":Lcom/T/T/T2/T30;
    :try_start_0
    new-instance v1, Lcom/T/T/T2/TS;

    invoke-direct {v1, v0}, Lcom/T/T/T2/TS;-><init>(Lcom/T/T/T2/T30;)V

    invoke-virtual {v1, p0}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    .line 554
    invoke-virtual {v0}, Lcom/T/T/T2/T30;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 556
    invoke-virtual {v0}, Lcom/T/T/T2/T30;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/T/T/T2/T30;->close()V

    throw v1
.end method

.method public T(Ljava/lang/Appendable;)V
    .locals 4
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 561
    new-instance v1, Lcom/T/T/T2/T30;

    invoke-direct {v1}, Lcom/T/T/T2/T30;-><init>()V

    .line 563
    .local v1, "out":Lcom/T/T/T2/T30;
    :try_start_0
    new-instance v2, Lcom/T/T/T2/TS;

    invoke-direct {v2, v1}, Lcom/T/T/T2/TS;-><init>(Lcom/T/T/T2/T30;)V

    invoke-virtual {v2, p0}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    .line 564
    invoke-virtual {v1}, Lcom/T/T/T2/T30;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-virtual {v1}, Lcom/T/T/T2/T30;->close()V

    .line 570
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lcom/T/T/TN;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/T/T/TN;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/T/T/T2/T30;->close()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/T/T/T;->T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
