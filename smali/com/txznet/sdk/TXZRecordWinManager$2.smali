.class Lcom/txznet/sdk/TXZRecordWinManager$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZRecordWinManager;->setRecordWin2(Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZRecordWinManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZRecordWinManager;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/txznet/sdk/TXZRecordWinManager$2;->T:Lcom/txznet/sdk/TXZRecordWinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 242
    const-string v2, "show"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Tw/Te;->Te()V

    .line 266
    :cond_0
    :goto_0
    return-object v4

    .line 245
    :cond_1
    const-string v2, "dismiss"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Tw/Te;->Tw()V

    goto :goto_0

    .line 248
    :cond_2
    const-string v2, "showData"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 250
    .local v1, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/txznet/sdk/TXZRecordWinManager$2;->T:Lcom/txznet/sdk/TXZRecordWinManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZRecordWinManager;->T(Lcom/txznet/sdk/TXZRecordWinManager;)Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/txznet/sdk/TXZRecordWinManager$RecordWin2;->showData(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/txznet/comm/ui/Tw/Te;->T(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    .end local v1    # "json":Ljava/lang/String;
    :cond_3
    const-string v2, "fullScreen"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 256
    .local v0, "isFull":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 257
    new-instance v2, Lcom/txznet/sdk/TXZRecordWinManager$2$1;

    invoke-direct {v2, p0, v0}, Lcom/txznet/sdk/TXZRecordWinManager$2$1;-><init>(Lcom/txznet/sdk/TXZRecordWinManager$2;Ljava/lang/Boolean;)V

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
