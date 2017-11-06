.class Lcom/txznet/sdk/TXZTtsManager$1$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZTtsManager$TtsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZTtsManager$1;->T(Ljava/lang/String;Ljava/lang/String;[B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:[B

.field final synthetic T3:Lcom/txznet/sdk/TXZTtsManager$1;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZTtsManager$1;[B)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/txznet/sdk/TXZTtsManager$1$1;->T3:Lcom/txznet/sdk/TXZTtsManager$1;

    iput-object p2, p0, Lcom/txznet/sdk/TXZTtsManager$1$1;->T:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 5

    .prologue
    .line 451
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.tts.onCancel"

    iget-object v3, p0, Lcom/txznet/sdk/TXZTtsManager$1$1;->T:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 454
    return-void
.end method

.method public onError()V
    .locals 5

    .prologue
    .line 444
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.tts.onError"

    iget-object v3, p0, Lcom/txznet/sdk/TXZTtsManager$1$1;->T:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 447
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .prologue
    .line 437
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.tts.onSuccess"

    iget-object v3, p0, Lcom/txznet/sdk/TXZTtsManager$1$1;->T:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 440
    return-void
.end method
