.class Lcom/txznet/sdk/TXZWechatManager$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZWechatManager;->setWechatTool(Lcom/txznet/sdk/TXZWechatManager$WechatTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

.field final synthetic T3:Lcom/txznet/sdk/TXZWechatManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZWechatManager;Lcom/txznet/sdk/TXZWechatManager$WechatTool;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/txznet/sdk/TXZWechatManager$3;->T3:Lcom/txznet/sdk/TXZWechatManager;

    iput-object p2, p0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wxsdk::on cmd: "

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 461
    const-string v2, "launch"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    invoke-interface {v2}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->launch()V

    .line 520
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 463
    :cond_1
    const-string v2, "qr.show"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    new-instance v2, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    const-string v20, "qrcode"

    const-class v21, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 466
    .local v17, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->showQR(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    .end local v17    # "str":Ljava/lang/String;
    :cond_2
    const-string v2, "qr.update"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 468
    new-instance v2, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    const-string v20, "qrcode"

    const-class v21, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 470
    .restart local v17    # "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->updateQR(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    .end local v17    # "str":Ljava/lang/String;
    :cond_3
    const-string v2, "qr.scanned"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 472
    new-instance v2, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    const-string v20, "icon"

    const-class v21, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 474
    .local v19, "uIcon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->QRScanned(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    .end local v19    # "uIcon":Ljava/lang/String;
    :cond_4
    const-string v2, "login"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    invoke-interface {v2}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->login()V

    goto/16 :goto_0

    .line 477
    :cond_5
    const-string v2, "update.self"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 478
    new-instance v8, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 479
    .local v8, "builder":Lcom/txznet/comm/TN/T;
    const-string v2, "id"

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 480
    .local v12, "id":Ljava/lang/String;
    const-string v2, "nick"

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 481
    .local v16, "nick":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    move-object/from16 v0, v16

    invoke-interface {v2, v12, v0}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->updateSelf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    .end local v8    # "builder":Lcom/txznet/comm/TN/T;
    .end local v12    # "id":Ljava/lang/String;
    .end local v16    # "nick":Ljava/lang/String;
    :cond_6
    const-string v2, "logout"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    invoke-interface {v2}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->logout()V

    goto/16 :goto_0

    .line 484
    :cond_7
    const-string v2, "record.update"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 485
    new-instance v8, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 486
    .restart local v8    # "builder":Lcom/txznet/comm/TN/T;
    const-string v2, "time"

    const-class v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 487
    .local v18, "timeRemain":I
    const-string v2, "id"

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 488
    .restart local v12    # "id":Ljava/lang/String;
    const-string v2, "nick"

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 490
    .restart local v16    # "nick":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v12, v1}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->updateRecordWin(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    .end local v8    # "builder":Lcom/txznet/comm/TN/T;
    .end local v12    # "id":Ljava/lang/String;
    .end local v16    # "nick":Ljava/lang/String;
    .end local v18    # "timeRemain":I
    :cond_8
    const-string v2, "record.dismiss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 492
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 493
    .local v13, "isErr":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    move/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->dismissRecordWin(Z)V

    goto/16 :goto_0

    .line 494
    .end local v13    # "isErr":Ljava/lang/Boolean;
    :cond_9
    const-string v2, "notify.status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 495
    new-instance v2, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    const-string v20, "enabled"

    const-class v21, Ljava/lang/Boolean;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 497
    .local v11, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    invoke-interface {v2, v11}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->updateNotifyStatus(Z)V

    goto/16 :goto_0

    .line 498
    .end local v11    # "enabled":Z
    :cond_a
    const-string v2, "chat.show"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 499
    new-instance v8, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 500
    .restart local v8    # "builder":Lcom/txznet/comm/TN/T;
    const-string v2, "demo"

    invoke-virtual {v8}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v2, "contactId"

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 503
    .local v9, "contactId":Ljava/lang/String;
    const-string v2, "contactNick"

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 505
    .local v10, "contactNick":Ljava/lang/String;
    const-string v2, "message"

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 506
    .local v14, "msgArr":Ljava/lang/String;
    const-class v2, Lcom/txznet/sdk/bean/WechatMessage;

    invoke-static {v14, v2}, Lcom/T/T/T;->T3(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v15

    .line 508
    .local v15, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/bean/WechatMessage;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    invoke-interface {v2, v9, v10, v15}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->showChat(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 509
    .end local v8    # "builder":Lcom/txznet/comm/TN/T;
    .end local v9    # "contactId":Ljava/lang/String;
    .end local v10    # "contactNick":Ljava/lang/String;
    .end local v14    # "msgArr":Ljava/lang/String;
    .end local v15    # "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/txznet/sdk/bean/WechatMessage;>;"
    :cond_b
    const-string v2, "notify.show"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 510
    new-instance v8, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 511
    .restart local v8    # "builder":Lcom/txznet/comm/TN/T;
    const-string v2, "msgId"

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 512
    .local v3, "msgId":Ljava/lang/String;
    const-string v2, "id"

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 513
    .local v4, "senderId":Ljava/lang/String;
    const-string v2, "hasSpeak"

    sget-object v20, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 514
    .local v7, "casting":Z
    const-string v2, "isGroup"

    sget-object v20, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 515
    .local v6, "isGroup":Z
    const-string v2, "nick"

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 516
    .local v5, "senderNick":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    invoke-interface/range {v2 .. v7}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->updateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 517
    .end local v3    # "msgId":Ljava/lang/String;
    .end local v4    # "senderId":Ljava/lang/String;
    .end local v5    # "senderNick":Ljava/lang/String;
    .end local v6    # "isGroup":Z
    .end local v7    # "casting":Z
    .end local v8    # "builder":Lcom/txznet/comm/TN/T;
    :cond_c
    const-string v2, "notify.cancel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/txznet/sdk/TXZWechatManager$3;->T:Lcom/txznet/sdk/TXZWechatManager$WechatTool;

    invoke-interface {v2}, Lcom/txznet/sdk/TXZWechatManager$WechatTool;->dismissNotify()V

    goto/16 :goto_0
.end method
