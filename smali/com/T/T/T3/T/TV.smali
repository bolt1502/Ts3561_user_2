.class public Lcom/T/T/T3/T/TV;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/TV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/T/T/T3/T/TV;

    invoke-direct {v0}, Lcom/T/T/T3/T/TV;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/TV;->T:Lcom/T/T/T3/T/TV;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "parser"    # Lcom/T/T/T3/T2;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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
    const/16 v6, 0x10

    .line 17
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v0

    .line 18
    .local v0, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 19
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_0

    const-class v4, Ljava/lang/Double;

    if-ne p2, v4, :cond_2

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    .line 22
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 81
    .end local v1    # "val":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 25
    :cond_2
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TY()J

    move-result-wide v1

    .line 26
    .local v1, "val":J
    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    .line 28
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_3

    const-class v4, Ljava/lang/Short;

    if-ne p2, v4, :cond_4

    .line 29
    :cond_3
    long-to-int v4, v1

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 32
    :cond_4
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_5

    const-class v4, Ljava/lang/Byte;

    if-ne p2, v4, :cond_6

    .line 33
    :cond_5
    long-to-int v4, v1

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 36
    :cond_6
    const-wide/32 v4, -0x80000000

    cmp-long v4, v1, v4

    if-ltz v4, :cond_7

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gtz v4, :cond_7

    .line 37
    long-to-int v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 42
    .end local v1    # "val":J
    :cond_8
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    .line 43
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_9

    const-class v4, Ljava/lang/Double;

    if-ne p2, v4, :cond_a

    .line 44
    :cond_9
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TW()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    .line 46
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 49
    .end local v1    # "val":Ljava/lang/String;
    :cond_a
    invoke-virtual {v0}, Lcom/T/T/T3/Te;->TZ()Ljava/math/BigDecimal;

    move-result-object v1

    .line 50
    .local v1, "val":Ljava/math/BigDecimal;
    invoke-virtual {v0, v6}, Lcom/T/T/T3/Te;->T(I)V

    .line 52
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_b

    const-class v4, Ljava/lang/Short;

    if-ne p2, v4, :cond_c

    .line 53
    :cond_b
    invoke-virtual {v1}, Ljava/math/BigDecimal;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 56
    :cond_c
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_d

    const-class v4, Ljava/lang/Byte;

    if-ne p2, v4, :cond_1

    .line 57
    :cond_d
    invoke-virtual {v1}, Ljava/math/BigDecimal;->byteValue()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto/16 :goto_0

    .line 63
    .end local v1    # "val":Ljava/math/BigDecimal;
    :cond_e
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v3

    .line 65
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_f

    .line 66
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 69
    :cond_f
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_10

    const-class v4, Ljava/lang/Double;

    if-ne p2, v4, :cond_11

    .line 70
    :cond_10
    invoke-static {v3}, Lcom/T/T/TN/Ty;->Tn(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_0

    .line 73
    :cond_11
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_12

    const-class v4, Ljava/lang/Short;

    if-ne p2, v4, :cond_13

    .line 74
    :cond_12
    invoke-static {v3}, Lcom/T/T/TN/Ty;->TN(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v1

    goto/16 :goto_0

    .line 77
    :cond_13
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v4, :cond_14

    const-class v4, Ljava/lang/Byte;

    if-ne p2, v4, :cond_15

    .line 78
    :cond_14
    invoke-static {v3}, Lcom/T/T/TN/Ty;->T3(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v1

    goto/16 :goto_0

    .line 81
    :cond_15
    invoke-static {v3}, Lcom/T/T/TN/Ty;->Te(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    goto/16 :goto_0
.end method
