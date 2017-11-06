.class Lcom/txznet/sdk/TXZRecordWinManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/TN$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZRecordWinManager;->setRecordWin2(Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;

.field final synthetic T3:Lcom/txznet/sdk/TXZRecordWinManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZRecordWinManager;Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/txznet/sdk/TXZRecordWinManager$1;->T3:Lcom/txznet/sdk/TXZRecordWinManager;

    iput-object p2, p0, Lcom/txznet/sdk/TXZRecordWinManager$1;->T:Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/txznet/sdk/TXZRecordWinManager$1;->T:Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;

    new-instance v1, Lcom/txznet/sdk/TXZRecordWinManager$1$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZRecordWinManager$1$1;-><init>(Lcom/txznet/sdk/TXZRecordWinManager$1;)V

    invoke-interface {v0, v1}, Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;->setWinController(Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2$RecordWinController;)V

    .line 226
    return-void
.end method

.method public T3()V
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/Te;->T2()V

    .line 236
    return-void
.end method
