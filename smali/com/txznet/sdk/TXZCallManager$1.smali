.class Lcom/txznet/sdk/TXZCallManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZCallManager$CallToolStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZCallManager;->setCallTool(Lcom/txznet/sdk/TXZCallManager$CallTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZCallManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZCallManager;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/txznet/sdk/TXZCallManager$1;->T:Lcom/txznet/sdk/TXZCallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/txznet/sdk/TXZCallManager$1;->T:Lcom/txznet/sdk/TXZCallManager;

    invoke-static {v0, p1}, Lcom/txznet/sdk/TXZCallManager;->T(Lcom/txznet/sdk/TXZCallManager;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.call.disable"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 352
    return-void
.end method

.method public onEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v0, p0, Lcom/txznet/sdk/TXZCallManager$1;->T:Lcom/txznet/sdk/TXZCallManager;

    invoke-static {v0, v3}, Lcom/txznet/sdk/TXZCallManager;->T(Lcom/txznet/sdk/TXZCallManager;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.call.enable"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 345
    return-void
.end method

.method public onIdle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.call.notifyIdle"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 338
    return-void
.end method

.method public onIncoming(Lcom/txznet/sdk/TXZCallManager$Contact;ZZ)V
    .locals 6
    .param p1, "con"    # Lcom/txznet/sdk/TXZCallManager$Contact;
    .param p2, "needTts"    # Z
    .param p3, "needAsr"    # Z

    .prologue
    .line 321
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 323
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "tts"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 324
    const-string v1, "asr"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 325
    const-string v1, "name"

    iget-object v2, p1, Lcom/txznet/sdk/TXZCallManager$Contact;->T:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v1, "num"

    iget-object v2, p1, Lcom/txznet/sdk/TXZCallManager$Contact;->T3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.call.notifyIncoming"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 332
    return-void

    .line 327
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onMakeCall(Lcom/txznet/sdk/TXZCallManager$Contact;)V
    .locals 6
    .param p1, "con"    # Lcom/txznet/sdk/TXZCallManager$Contact;

    .prologue
    .line 308
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 310
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "name"

    iget-object v2, p1, Lcom/txznet/sdk/TXZCallManager$Contact;->T:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v1, "num"

    iget-object v2, p1, Lcom/txznet/sdk/TXZCallManager$Contact;->T3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.call.notifyMakeCall"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 317
    return-void

    .line 312
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onOffhook()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.call.notifyOffhook"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 304
    return-void
.end method
