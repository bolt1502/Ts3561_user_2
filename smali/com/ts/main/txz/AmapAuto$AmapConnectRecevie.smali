.class public Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;
.super Landroid/content/BroadcastReceiver;
.source "AmapAuto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/txz/AmapAuto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AmapConnectRecevie"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/txz/AmapAuto;


# direct methods
.method public constructor <init>(Lcom/ts/main/txz/AmapAuto;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, "action":Ljava/lang/String;
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "action = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-nez v9, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const-string v21, "AUTONAVI_STANDARD_BROADCAST_SEND"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "KEY_TYPE"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 250
    .local v5, "KeyType":I
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "KeyType = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/16 v21, 0x2711

    move/from16 v0, v21

    if-ne v5, v0, :cond_6

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->Avalid:I

    .line 257
    sget-boolean v21, Lcom/ts/main/txz/AmapAuto;->bNaviState:Z

    if-eqz v21, :cond_2

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->Sta:I

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "SEG_REMAIN_DIS"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    mul-int/lit8 v22, v22, 0xa

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->MsgDis:I

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ts/can/CanIF$NaviInfo;->MsgDis:I

    move/from16 v21, v0

    const/16 v22, 0x1388

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ts/can/CanIF$NaviInfo;->MsgDis:I

    move/from16 v22, v0

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->MsgDis:I

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->MsgC:I

    .line 276
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "ROUTE_REMAIN_DIS"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    mul-int/lit8 v22, v22, 0xa

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->DestDis:I

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ts/can/CanIF$NaviInfo;->DestDis:I

    move/from16 v21, v0

    const/16 v22, 0x1388

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->DestDisDw:I

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ts/can/CanIF$NaviInfo;->DestDis:I

    move/from16 v22, v0

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->DestDis:I

    .line 289
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->RoadDirInfo:I

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "ICON"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->Para:I

    .line 318
    :cond_2
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "CUR_ROAD_NAME"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 319
    .local v12, "curRoad":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "NEXT_ROAD_NAME"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, "NextRoad":Ljava/lang/String;
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "curRoad = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "NextRoad = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "CanIF.mNaviInfo.MsgDis = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ts/can/CanIF$NaviInfo;->MsgDis:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "CanIF.mNaviInfo.DestDis = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ts/can/CanIF$NaviInfo;->DestDis:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    .end local v6    # "NextRoad":Ljava/lang/String;
    .end local v12    # "curRoad":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ts/can/CanIF$NaviInfo;->MsgDis:I

    move/from16 v21, v0

    const/16 v22, 0xbb8

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ts/can/CanIF$NaviInfo;->MsgDis:I

    move/from16 v21, v0

    const/16 v22, 0x1388

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->MsgC:I

    goto/16 :goto_1

    .line 272
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->MsgC:I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const-string v23, "SEG_REMAIN_DIS"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x12c

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->MsgDis:I

    goto/16 :goto_1

    .line 283
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->DestDisDw:I

    goto/16 :goto_2

    .line 293
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->Para:I

    goto/16 :goto_3

    .line 296
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->Para:I

    goto/16 :goto_3

    .line 299
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->Para:I

    goto/16 :goto_3

    .line 302
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->Para:I

    goto/16 :goto_3

    .line 305
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->Para:I

    goto/16 :goto_3

    .line 308
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->Para:I

    goto/16 :goto_3

    .line 311
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->MyNaviInfo:Lcom/ts/can/CanIF$NaviInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ts/can/CanIF$NaviInfo;->Para:I

    goto/16 :goto_3

    .line 325
    :cond_6
    const/16 v21, 0x2723

    move/from16 v0, v21

    if-ne v5, v0, :cond_7

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "EXTRA_STATE"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 327
    .local v17, "nEXTRA_STATE":I
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "EXTRA_STATE = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    packed-switch v17, :pswitch_data_1

    :pswitch_7
    goto/16 :goto_0

    .line 331
    :pswitch_8
    const/16 v21, 0x0

    sput-boolean v21, Lcom/ts/main/txz/AmapAuto;->bNaviState:Z

    goto/16 :goto_0

    .line 335
    :pswitch_9
    const/16 v21, 0x1

    sput-boolean v21, Lcom/ts/main/txz/AmapAuto;->bNaviState:Z

    goto/16 :goto_0

    .line 339
    :pswitch_a
    const/16 v21, 0x0

    sput-boolean v21, Lcom/ts/main/txz/AmapAuto;->bNaviState:Z

    goto/16 :goto_0

    .line 342
    :pswitch_b
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/ts/MainUI/Evc;->evol_navi_set_force(I)V

    goto/16 :goto_0

    .line 345
    :pswitch_c
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/ts/MainUI/Evc;->evol_navi_set_force(I)V

    goto/16 :goto_0

    .line 355
    .end local v17    # "nEXTRA_STATE":I
    :cond_7
    const/16 v21, 0x2720

    move/from16 v0, v21

    if-ne v5, v0, :cond_0

    .line 357
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetIll()I

    move-result v21

    if-nez v21, :cond_8

    const/16 v21, 0x1

    :goto_4
    invoke-static/range {v21 .. v21}, Lcom/ts/main/txz/AmapAuto;->SetHeadLight(I)V

    goto/16 :goto_0

    :cond_8
    const/16 v21, 0x0

    goto :goto_4

    .line 360
    .end local v5    # "KeyType":I
    :cond_9
    const-string v21, "check_cardvr.RESP_USB_CAMERA"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 363
    const-string v21, "exists"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 375
    :cond_a
    const-string v21, "broadcast_request_top_activity"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 377
    const-string v21, "AmapAuto"

    const-string v22, "BROADCAST_TOP_ACTIVITY = "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 379
    .local v14, "intent1":Landroid/content/Intent;
    const-string v21, "broadcast_send_top_activity"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v21, "Topname"

    invoke-static {}, Lcom/ts/main/common/WinShow;->getTopActivityName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    # getter for: Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->access$0()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 383
    .end local v14    # "intent1":Landroid/content/Intent;
    :cond_b
    const-string v21, "broadcast_request_tpms_state"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 385
    const-string v21, "AmapAuto"

    const-string v22, "BROADCAST_REQUEST_TPMS_STATE = "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ts/main/txz/AmapAuto;->UpdateTpmsInfo()V

    goto/16 :goto_0

    .line 388
    :cond_c
    const-string v21, "SYSTEM_VERSION_UPDATE_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 391
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/ts/main/common/MainUI;->GetMcuState()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 393
    const/16 v21, 0x13

    invoke-static/range {v21 .. v21}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    goto/16 :goto_0

    .line 397
    :cond_d
    const/16 v21, 0x16

    invoke-static/range {v21 .. v21}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    goto/16 :goto_0

    .line 401
    :cond_e
    const-string v21, "broadcast_local_request_state"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "SET_GSENSOR"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 405
    .local v4, "Gsensor":I
    if-lez v4, :cond_f

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetGsensor()I

    move-result v21

    move/from16 v0, v21

    if-eq v4, v0, :cond_f

    .line 407
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetGsensor(I)I

    .line 410
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "GET_MESSAGE"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 412
    .local v16, "message":Ljava/lang/String;
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "message= "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "message2= "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v15, "intent2":Landroid/content/Intent;
    if-eqz v16, :cond_10

    .line 419
    const-string v21, "broadcast_local_send_state"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v21, "HMI_INFO"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 422
    const-string v21, "HMI_INFO"

    new-instance v22, Ljava/lang/StringBuilder;

    # getter for: Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->access$0()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/ts/MainUI/R$string;->custom_num_show:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v23, Lcom/ts/main/common/MainVerSion;->HMIVER:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    :cond_10
    :goto_5
    # getter for: Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->access$0()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 424
    :cond_11
    const-string v21, "MCU_INFO"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->mcuVer:[C

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/yyw/ts70xhw/Mcu;->GetMcuVer([C)I

    .line 427
    const-string v21, "MCU_INFO"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->mcuVer:[C

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0xc

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "mcuVer= "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->mcuVer:[C

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0xc

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 430
    :cond_12
    const-string v21, "MEDIA_INFO"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 432
    const-string v21, "MEDIA_INFO"

    sget-object v22, Lcom/ts/main/common/MainVerSion;->MMP_VERSION:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 434
    :cond_13
    const-string v21, "BT_INFO"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 436
    const-string v21, "BT_INFO"

    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/ts/bt/BtExe;->getVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 438
    :cond_14
    const-string v21, "GET_GSENSOR"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 440
    const-string v21, "GET_GSENSOR"

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetGsensor()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5

    .line 447
    .end local v4    # "Gsensor":I
    .end local v15    # "intent2":Landroid/content/Intent;
    .end local v16    # "message":Ljava/lang/String;
    :cond_15
    const-string v21, "broadcast_request_carinfo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ts/main/txz/AmapAuto;->SendCarInfordata()V

    goto/16 :goto_0

    .line 451
    :cond_16
    const-string v21, "com.txznet.txz.record.show"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 453
    const-string v21, "AmapAuto"

    const-string v22, "BROADCAST_TXZ_WIN_CREATE= "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/16 v21, 0x1

    sput-boolean v21, Lcom/ts/main/txz/TxzReg;->bWinShow:Z

    goto/16 :goto_0

    .line 456
    :cond_17
    const-string v21, "com.txznet.txz.record.dismiss"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 458
    const-string v21, "AmapAuto"

    const-string v22, "BROADCAST_TXZ_WIN_DISMIS= "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/16 v21, 0x0

    sput-boolean v21, Lcom/ts/main/txz/TxzReg;->bWinShow:Z

    goto/16 :goto_0

    .line 461
    :cond_18
    const-string v21, "com.adasplus.adas.warning"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "type"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 464
    .local v7, "TYPE":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "value"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 465
    .local v8, "VALUE":I
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "TYPE= "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "VALUE= "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 468
    .end local v7    # "TYPE":I
    .end local v8    # "VALUE":I
    :cond_19
    const-string v21, "com.android.music.playstatechanged"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 470
    const-string v21, "AmapAuto"

    const-string v22, "BRAODCAST_MUSIC_METACHAGED"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v21, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 472
    .local v11, "artist":Ljava/lang/String;
    const-string v21, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 473
    .local v10, "album":Ljava/lang/String;
    const-string v21, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 474
    .local v19, "track":Ljava/lang/String;
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 476
    .end local v10    # "album":Ljava/lang/String;
    .end local v11    # "artist":Ljava/lang/String;
    .end local v19    # "track":Ljava/lang/String;
    :cond_1a
    const-string v21, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 477
    const-string v21, "AmapAuto"

    const-string v22, "USB DEV BroadcastReceiver, device attached"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v21, "device"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/hardware/usb/UsbDevice;

    .line 481
    .local v13, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v13}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v20

    .line 482
    .local v20, "vendorId":I
    invoke-virtual {v13}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v18

    .line 483
    .local v18, "productId":I
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "USB DEV BroadcastReceiver vendorId "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 484
    const-string v23, ", productId "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 483
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 486
    .end local v13    # "device":Landroid/hardware/usb/UsbDevice;
    .end local v18    # "productId":I
    .end local v20    # "vendorId":I
    :cond_1b
    const-string v21, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto;->ableoldString:Ljava/lang/String;

    move-object/from16 v21, v0

    # getter for: Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->access$0()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1c

    .line 494
    # getter for: Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->access$0()Landroid/content/Context;

    move-result-object v21

    # getter for: Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->access$0()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lcom/ts/MainUI/R$string;->language_change_restart:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 495
    new-instance v21, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie$1;-><init>(Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;)V

    .line 507
    invoke-virtual/range {v21 .. v21}, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie$1;->start()V

    .line 510
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/txz/AmapAuto$AmapConnectRecevie;->this$0:Lcom/ts/main/txz/AmapAuto;

    move-object/from16 v21, v0

    # getter for: Lcom/ts/main/txz/AmapAuto;->myContext:Landroid/content/Context;
    invoke-static {}, Lcom/ts/main/txz/AmapAuto;->access$0()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/ts/main/txz/AmapAuto;->ableoldString:Ljava/lang/String;

    goto/16 :goto_0

    .line 514
    :cond_1d
    const-string v21, "intent.action.mapgoo.simtool.info.triffic.v2"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "card_type"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 517
    .local v3, "CardType":I
    const-string v21, "AmapAuto"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "CardType="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-eqz v3, :cond_0

    .line 520
    const/16 v21, 0x1

    sput v21, Lcom/ts/main/common/MainSet;->nSimOwner:I

    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
