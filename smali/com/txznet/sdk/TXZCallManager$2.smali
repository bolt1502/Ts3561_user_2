.class Lcom/txznet/sdk/TXZCallManager$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


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
    .line 354
    iput-object p1, p0, Lcom/txznet/sdk/TXZCallManager$2;->T:Lcom/txznet/sdk/TXZCallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 358
    const-string v4, "getStatus"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    :try_start_0
    sget-object v4, Lcom/txznet/sdk/TXZCallManager$3;->T:[I

    iget-object v5, p0, Lcom/txznet/sdk/TXZCallManager$2;->T:Lcom/txznet/sdk/TXZCallManager;

    invoke-static {v5}, Lcom/txznet/sdk/TXZCallManager;->T(Lcom/txznet/sdk/TXZCallManager;)Lcom/txznet/sdk/TXZCallManager$CallTool;

    move-result-object v5

    invoke-interface {v5}, Lcom/txznet/sdk/TXZCallManager$CallTool;->getStatus()Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txznet/sdk/TXZCallManager$CallTool$CallStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 411
    :cond_0
    :goto_0
    return-object v3

    .line 362
    :pswitch_0
    const-string v4, "idle"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_0

    .line 364
    :pswitch_1
    const-string v4, "offhook"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_0

    .line 366
    :pswitch_2
    const-string v4, "ringing"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 370
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 375
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v4, "makeCall"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    :try_start_1
    new-instance v0, Lcom/txznet/sdk/TXZCallManager$Contact;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZCallManager$Contact;-><init>()V

    .line 378
    .local v0, "con":Lcom/txznet/sdk/TXZCallManager$Contact;
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 379
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/txznet/sdk/TXZCallManager$Contact;->setName(Ljava/lang/String;)V

    .line 380
    const-string v4, "num"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/txznet/sdk/TXZCallManager$Contact;->setNumber(Ljava/lang/String;)V

    .line 381
    iget-object v4, p0, Lcom/txznet/sdk/TXZCallManager$2;->T:Lcom/txznet/sdk/TXZCallManager;

    invoke-static {v4}, Lcom/txznet/sdk/TXZCallManager;->T(Lcom/txznet/sdk/TXZCallManager;)Lcom/txznet/sdk/TXZCallManager$CallTool;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/txznet/sdk/TXZCallManager$CallTool;->makeCall(Lcom/txznet/sdk/TXZCallManager$Contact;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 382
    .end local v0    # "con":Lcom/txznet/sdk/TXZCallManager$Contact;
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 383
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "acceptIncoming"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 389
    :try_start_2
    iget-object v4, p0, Lcom/txznet/sdk/TXZCallManager$2;->T:Lcom/txznet/sdk/TXZCallManager;

    invoke-static {v4}, Lcom/txznet/sdk/TXZCallManager;->T(Lcom/txznet/sdk/TXZCallManager;)Lcom/txznet/sdk/TXZCallManager$CallTool;

    move-result-object v4

    invoke-interface {v4}, Lcom/txznet/sdk/TXZCallManager$CallTool;->acceptIncoming()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 390
    :catch_2
    move-exception v1

    .line 391
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "rejectIncoming"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 397
    :try_start_3
    iget-object v4, p0, Lcom/txznet/sdk/TXZCallManager$2;->T:Lcom/txznet/sdk/TXZCallManager;

    invoke-static {v4}, Lcom/txznet/sdk/TXZCallManager;->T(Lcom/txznet/sdk/TXZCallManager;)Lcom/txznet/sdk/TXZCallManager$CallTool;

    move-result-object v4

    invoke-interface {v4}, Lcom/txznet/sdk/TXZCallManager$CallTool;->rejectIncoming()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 398
    :catch_3
    move-exception v1

    .line 399
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 403
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v4, "hangupCall"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    :try_start_4
    iget-object v4, p0, Lcom/txznet/sdk/TXZCallManager$2;->T:Lcom/txznet/sdk/TXZCallManager;

    invoke-static {v4}, Lcom/txznet/sdk/TXZCallManager;->T(Lcom/txznet/sdk/TXZCallManager;)Lcom/txznet/sdk/TXZCallManager$CallTool;

    move-result-object v4

    invoke-interface {v4}, Lcom/txznet/sdk/TXZCallManager$CallTool;->hangupCall()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 406
    :catch_4
    move-exception v1

    .line 407
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
