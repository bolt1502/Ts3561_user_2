.class public Lcom/T/T/T2/T6;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/T6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/T/T/T2/T6;

    invoke-direct {v0}, Lcom/T/T/T2/T6;-><init>()V

    sput-object v0, Lcom/T/T/T2/T6;->T:Lcom/T/T/T2/T6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 4
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
    .line 13
    if-nez p2, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TW()V

    .line 32
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v2

    .local v2, "out":Lcom/T/T/T2/T30;
    move-object v0, p2

    .line 19
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 21
    .local v0, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 23
    .local v1, "inetAddress":Ljava/net/InetAddress;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    .line 24
    if-eqz v1, :cond_1

    .line 25
    const-string v3, "address"

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v1}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    .line 27
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    .line 29
    :cond_1
    const-string v3, "port"

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T3(I)V

    .line 31
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0
.end method
