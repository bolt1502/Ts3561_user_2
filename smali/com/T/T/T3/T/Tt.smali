.class public Lcom/T/T/T3/T/Tt;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/Tt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/T/T/T3/T/Tt;

    invoke-direct {v0}, Lcom/T/T/T3/T/Tt;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/Tt;->T:Lcom/T/T/T3/T/Tt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xc

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
    const/16 v6, 0x11

    .line 18
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v2

    .line 20
    .local v2, "lexer":Lcom/T/T/T3/Te;
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 21
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->T()V

    .line 22
    const/4 v4, 0x0

    .line 59
    :goto_0
    return-object v4

    .line 25
    :cond_0
    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Lcom/T/T/T3/T2;->T3(I)V

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "address":Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 30
    .local v3, "port":I
    :goto_1
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/T/T/T3/Te;->T(I)V

    .line 34
    const-string v4, "address"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    invoke-virtual {p1, v6}, Lcom/T/T/T3/T2;->T3(I)V

    .line 36
    const-class v4, Ljava/net/InetAddress;

    invoke-virtual {p1, v4}, Lcom/T/T/T3/T2;->T(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "address":Ljava/net/InetAddress;
    check-cast v0, Ljava/net/InetAddress;

    .line 49
    .restart local v0    # "address":Ljava/net/InetAddress;
    :goto_2
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 50
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->T()V

    goto :goto_1

    .line 37
    :cond_1
    const-string v4, "port"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 38
    invoke-virtual {p1, v6}, Lcom/T/T/T3/T2;->T3(I)V

    .line 39
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->TN()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 40
    new-instance v4, Lcom/T/T/TN;

    const-string v5, "port is not int"

    invoke-direct {v4, v5}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v4

    .line 42
    :cond_2
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->To()I

    move-result v3

    .line 43
    invoke-virtual {v2}, Lcom/T/T/T3/Te;->T()V

    goto :goto_2

    .line 45
    :cond_3
    invoke-virtual {p1, v6}, Lcom/T/T/T3/T2;->T3(I)V

    .line 46
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    goto :goto_2

    .line 57
    :cond_4
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Lcom/T/T/T3/T2;->T3(I)V

    .line 59
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method
