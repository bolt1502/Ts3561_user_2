.class public Lcom/T/T/T3/T/T3G;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T3G;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/T/T/T3/T/T3G;

    invoke-direct {v0}, Lcom/T/T/T3/T/T3G;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T3G;->T:Lcom/T/T/T3/T/T3G;

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
    .line 73
    const/4 v0, 0x2

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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
    .line 17
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v1

    .line 19
    .local v1, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_4

    .line 20
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T(I)V

    .line 22
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 23
    new-instance v8, Lcom/T/T/TN;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v8

    .line 26
    :cond_0
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T3(I)V

    .line 28
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 29
    new-instance v8, Lcom/T/T/TN;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v8

    .line 32
    :cond_1
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TY()J

    move-result-wide v5

    .line 33
    .local v5, "time":J
    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T(I)V

    .line 34
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_2

    .line 35
    new-instance v8, Lcom/T/T/TN;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v8

    .line 37
    :cond_2
    const/16 v8, 0x10

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T(I)V

    .line 39
    new-instance v7, Ljava/sql/Time;

    invoke-direct {v7, v5, v6}, Ljava/sql/Time;-><init>(J)V

    .line 66
    .end local v5    # "time":J
    :cond_3
    :goto_0
    return-object v7

    .line 42
    :cond_4
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v7

    .line 44
    .local v7, "val":Ljava/lang/Object;
    if-nez v7, :cond_5

    .line 45
    const/4 v7, 0x0

    goto :goto_0

    .line 48
    :cond_5
    instance-of v8, v7, Ljava/sql/Time;

    if-nez v8, :cond_3

    .line 50
    instance-of v8, v7, Ljava/lang/Number;

    if-eqz v8, :cond_6

    .line 51
    new-instance v8, Ljava/sql/Time;

    check-cast v7, Ljava/lang/Number;

    .end local v7    # "val":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/sql/Time;-><init>(J)V

    move-object v7, v8

    goto :goto_0

    .line 52
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_6
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_9

    move-object v4, v7

    .line 53
    check-cast v4, Ljava/lang/String;

    .line 54
    .local v4, "strVal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 55
    const/4 v7, 0x0

    goto :goto_0

    .line 59
    :cond_7
    new-instance v0, Lcom/T/T/T3/Tw;

    invoke-direct {v0, v4}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "dateLexer":Lcom/T/T/T3/Tw;
    invoke-virtual {v0}, Lcom/T/T/T3/Tw;->TU()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 61
    invoke-virtual {v0}, Lcom/T/T/T3/Tw;->TO()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 65
    .local v2, "longVal":J
    :goto_1
    invoke-virtual {v0}, Lcom/T/T/T3/Tw;->close()V

    .line 66
    new-instance v7, Ljava/sql/Time;

    .end local v7    # "val":Ljava/lang/Object;
    invoke-direct {v7, v2, v3}, Ljava/sql/Time;-><init>(J)V

    goto :goto_0

    .line 63
    .end local v2    # "longVal":J
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_8
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .restart local v2    # "longVal":J
    goto :goto_1

    .line 69
    .end local v0    # "dateLexer":Lcom/T/T/T3/Tw;
    .end local v2    # "longVal":J
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_9
    new-instance v8, Lcom/T/T/TN;

    const-string v9, "parse error"

    invoke-direct {v8, v9}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v8
.end method
