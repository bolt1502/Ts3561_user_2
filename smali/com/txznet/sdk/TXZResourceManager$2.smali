.class Lcom/txznet/sdk/TXZResourceManager$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZResourceManager;->setRecordWin(Lcom/txznet/sdk/TXZResourceManager$RecordWin;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

.field final synthetic T3:Lcom/txznet/sdk/TXZResourceManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZResourceManager;Lcom/txznet/sdk/TXZResourceManager$RecordWin;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager$2;->T3:Lcom/txznet/sdk/TXZResourceManager;

    iput-object p2, p0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 673
    const-string v16, "show"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->open()V

    .line 851
    :cond_0
    :goto_0
    const/16 v16, 0x0

    :goto_1
    return-object v16

    .line 675
    :cond_1
    const-string v16, "dismiss"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->close()V

    goto :goto_0

    .line 677
    :cond_2
    const-string v16, "status"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 678
    new-instance v16, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/txznet/comm/TN/T;-><init>([B)V

    const-string v17, "status"

    const-class v18, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v18}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 680
    .local v10, "status":Ljava/lang/Integer;
    if-eqz v10, :cond_0

    .line 681
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    sget-object v17, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->STATUS_RECORDING:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->onStatusChange(Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;)V

    goto :goto_0

    .line 683
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    sget-object v17, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->STATUS_RECOGONIZING:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->onStatusChange(Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;)V

    goto :goto_0

    .line 686
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    sget-object v17, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;->STATUS_IDLE:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->onStatusChange(Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordStatus;)V

    goto :goto_0

    .line 689
    .end local v10    # "status":Ljava/lang/Integer;
    :cond_5
    const-string v16, "volume"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 690
    new-instance v16, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/txznet/comm/TN/T;-><init>([B)V

    const-string v17, "volume"

    const-class v18, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v18}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 692
    .local v13, "volume":Ljava/lang/Integer;
    if-eqz v13, :cond_0

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->onVolumeChange(I)V

    goto/16 :goto_0

    .line 695
    .end local v13    # "volume":Ljava/lang/Integer;
    :cond_6
    const-string v16, "progress"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 696
    new-instance v16, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/txznet/comm/TN/T;-><init>([B)V

    const-string v17, "progress"

    const-class v18, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v18}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 698
    .local v9, "progress":Ljava/lang/Integer;
    if-eqz v9, :cond_0

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->onProgressChanged(I)V

    goto/16 :goto_0

    .line 701
    .end local v9    # "progress":Ljava/lang/Integer;
    :cond_7
    const-string v16, "chat.sys"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 702
    new-instance v2, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 703
    .local v2, "doc":Lcom/txznet/comm/TN/T;
    const-string v16, "text"

    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 704
    .local v11, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->showSysText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 705
    .end local v2    # "doc":Lcom/txznet/comm/TN/T;
    .end local v11    # "text":Ljava/lang/String;
    :cond_8
    const-string v16, "chat.usr"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 706
    new-instance v2, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 707
    .restart local v2    # "doc":Lcom/txznet/comm/TN/T;
    const-string v16, "text"

    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 708
    .restart local v11    # "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->showUsrText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 709
    .end local v2    # "doc":Lcom/txznet/comm/TN/T;
    .end local v11    # "text":Ljava/lang/String;
    :cond_9
    const-string v16, "list"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 710
    if-eqz p3, :cond_0

    .line 712
    :try_start_0
    new-instance v2, Lcom/txznet/comm/TN/T;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 713
    .restart local v2    # "doc":Lcom/txznet/comm/TN/T;
    const-string v16, "type"

    const-class v17, Ljava/lang/Integer;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 714
    .local v12, "type":Ljava/lang/Integer;
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-eqz v16, :cond_d

    .line 715
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->showAddressChoice(Ljava/lang/String;)V

    .line 717
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 719
    :cond_a
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->showWxContactChoice(Ljava/lang/String;)V

    .line 721
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 723
    :cond_b
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->showAudioChoice(Ljava/lang/String;)V

    .line 725
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 728
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface/range {v16 .. v18}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->showListChoice(ILjava/lang/String;)V

    .line 729
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 731
    :cond_d
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-nez v16, :cond_0

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->showContactChoice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 734
    .end local v2    # "doc":Lcom/txznet/comm/TN/T;
    .end local v12    # "type":Ljava/lang/Integer;
    :catch_0
    move-exception v16

    goto/16 :goto_0

    .line 738
    :cond_e
    const-string v16, "list.pager"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 739
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 740
    .local v8, "next":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->snapPager(Z)V

    .line 741
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 742
    .end local v8    # "next":Ljava/lang/Boolean;
    :cond_f
    const-string v16, "stock"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 743
    if-eqz p3, :cond_0

    .line 745
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/TN/T/Ty/T$T;->T([B)Lcom/TN/T/Ty/T$T;

    move-result-object v4

    .line 746
    .local v4, "info":Lcom/TN/T/Ty/T$T;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 747
    .local v5, "jObj":Lorg/json/JSONObject;
    const-string v16, "strName"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->T3:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    const-string v16, "strCode"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->T2:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    const-string v16, "strUrl"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->TN:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    const-string v16, "strCurrentPrice"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->Te:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    const-string v16, "strChangeAmount"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->Tw:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 752
    const-string v16, "strChangeRate"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->Ty:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 753
    const-string v16, "strHighestPrice"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->Tn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    const-string v16, "strLowestPrice"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->TG:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    const-string v16, "strTradingVolume"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->TR:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 756
    const-string v16, "strYestodayClosePrice"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->TW:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    const-string v16, "strTodayOpenPrice"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->TJ:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    const-string v16, "strUpdateTime"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T;->TB:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->showStockInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 762
    .end local v4    # "info":Lcom/TN/T/Ty/T$T;
    .end local v5    # "jObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v16

    goto/16 :goto_0

    .line 765
    :cond_10
    const-string v16, "weather"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 766
    if-eqz p3, :cond_0

    .line 768
    :try_start_2
    invoke-static/range {p3 .. p3}, Lcom/TN/T/Ty/T$T2;->T([B)Lcom/TN/T/Ty/T$T2;

    move-result-object v4

    .line 769
    .local v4, "info":Lcom/TN/T/Ty/T$T2;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 770
    .restart local v5    # "jObj":Lorg/json/JSONObject;
    const-string v16, "strCityName"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T2;->T3:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 771
    const-string v16, "uint32FocusIndex"

    iget-object v0, v4, Lcom/TN/T/Ty/T$T2;->T2:Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 772
    iget-object v15, v4, Lcom/TN/T/Ty/T$T2;->TN:[Lcom/TN/T/Ty/T$T3;

    .line 773
    .local v15, "weatherDatas":[Lcom/TN/T/Ty/T$T3;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 774
    .local v7, "jWeatherArr":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v3, v0, :cond_11

    .line 775
    aget-object v14, v15, v3

    .line 776
    .local v14, "weatherData":Lcom/TN/T/Ty/T$T3;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 777
    .local v6, "jWeather":Lorg/json/JSONObject;
    const-string v16, "uint32Year"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->T3:Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 779
    const-string v16, "uint32Month"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->T2:Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 781
    const-string v16, "uint32Day"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TN:Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    const-string v16, "uint32DayOfWeek"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->Te:Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    const-string v16, "strWeather"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->Tw:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    const-string v16, "int32CurTemperature"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->Ty:Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    const-string v16, "int32LowTemperature"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->Tn:Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 790
    const-string v16, "int32HighTemperature"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TG:Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 792
    const-string v16, "int32Pm25"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TR:Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string v16, "strAirQuality"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TW:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v16, "strWind"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TJ:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    const-string v16, "strCarWashIndex"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TB:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-string v16, "strCarWashIndexDesc"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TP:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    const-string v16, "strTravelIndex"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->Tr:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    const-string v16, "strTravelIndexDesc"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->T7:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    const-string v16, "strSportIndex"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TO:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 806
    const-string v16, "strSportIndexDesc"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->To:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 808
    const-string v16, "strSuggest"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TQ:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    const-string v16, "strComfortIndex"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TL:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    const-string v16, "strComfortIndexDesc"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TH:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    const-string v16, "strColdIndex"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->T0:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    const-string v16, "strColdIndexDesc"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->Tc:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 818
    const-string v16, "strMorningExerciseIndex"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->Tk:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 820
    const-string v16, "strMorningExerciseIndexDesc"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TF:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 822
    const-string v16, "strDressIndex"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->Tt:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    const-string v16, "strDressIndexDesc"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->T5:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    const-string v16, "strUmbrellaIndex"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->Tu:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    const-string v16, "strUmbrellaIndexDesc"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->Tf:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 830
    const-string v16, "strSunBlockIndex"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->T1:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    const-string v16, "strSunBlockIndexDesc"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->Tg:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 834
    const-string v16, "strDryingIndex"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TY:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    const-string v16, "strDryingIndexDesc"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TZ:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    const-string v16, "strDatingIndex"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TM:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 840
    const-string v16, "strDatingIndexDesc"

    iget-object v0, v14, Lcom/TN/T/Ty/T$T3;->TU:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 842
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 774
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 844
    .end local v6    # "jWeather":Lorg/json/JSONObject;
    .end local v14    # "weatherData":Lcom/TN/T/Ty/T$T3;
    :cond_11
    const-string v16, "rptMsgWeather"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/sdk/TXZResourceManager$2;->T:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    move-object/from16 v16, v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->showWheatherInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 846
    .end local v3    # "i":I
    .end local v4    # "info":Lcom/TN/T/Ty/T$T2;
    .end local v5    # "jObj":Lorg/json/JSONObject;
    .end local v7    # "jWeatherArr":Lorg/json/JSONArray;
    .end local v15    # "weatherDatas":[Lcom/TN/T/Ty/T$T3;
    :catch_2
    move-exception v16

    goto/16 :goto_0
.end method
