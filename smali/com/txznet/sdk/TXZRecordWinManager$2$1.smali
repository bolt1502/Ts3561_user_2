.class Lcom/txznet/sdk/TXZRecordWinManager$2$1;
.super Lcom/txznet/txz/util/T/T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZRecordWinManager$2;->T(Ljava/lang/String;Ljava/lang/String;[B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txznet/txz/util/T/T",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZRecordWinManager$2;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZRecordWinManager$2;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/txznet/sdk/TXZRecordWinManager$2$1;->T:Lcom/txznet/sdk/TXZRecordWinManager$2;

    invoke-direct {p0, p2}, Lcom/txznet/txz/util/T/T;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/txznet/comm/ui/Tw/T3;->T()Lcom/txznet/comm/ui/Tw/T3;

    move-result-object v1

    iget-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager$2$1;->T3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/txznet/comm/ui/Tw/T3;->T(Z)V

    .line 261
    return-void
.end method
