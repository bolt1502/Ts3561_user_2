.class public Lcom/ts/can/zotye/CanZtY100BatteryActivity;
.super Lcom/ts/can/zotye/CanZtY100BaseActivity;
.source "CanZtY100BatteryActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanZtY100BatteryActivity"


# instance fields
.field protected mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;

.field protected mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;

.field protected mData3:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;

.field protected mItemDczdwd:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemDczgwd:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemDczzdl:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemDczzdy:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemDtzddcdy:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemDtzddch:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemDtzgdcdy:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemDtzgdch:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemSoc:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;

    .line 32
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;

    .line 33
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;

    .line 16
    return-void
.end method

.method private ResetData(Z)V
    .locals 13
    .param p1, "check"    # Z

    .prologue
    const-wide v11, 0x3fb999999999999aL    # 0.1

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 84
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget-object v1, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;

    iget-object v2, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;

    invoke-static {v0, v1, v2, v3}, Lcom/lgb/canmodule/CanJni;->ZtY100GetBatteryInfo(Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->Update:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->Update:I

    .line 91
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ZtY100GetWarn(Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;)V

    .line 93
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;->BatteryWarn:I

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->UpdateWarnNum(I)V

    .line 95
    invoke-virtual {p0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->RemoveAllWarn()V

    .line 96
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->BatTemp:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->Jybj:I

    const-string v1, "\u7edd\u7f18\u4e00\u7ea7\u62a5\u8b66"

    const-string v2, "\u7edd\u7f18\u4e8c\u7ea7\u62a5\u8b66"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn2(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->Dtqybj:I

    const-string v1, "\u5355\u4f53\u6b20\u538b\u4e00\u7ea7\u62a5\u8b66"

    const-string v2, "\u5355\u4f53\u6b20\u538b\u4e8c\u7ea7\u62a5\u8b66"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn2(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->Dtgybj:I

    const-string v1, "\u5355\u4f53\u8fc7\u538b\u62a5\u8b66"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->fgDldckd:I

    const-string v1, "\u52a8\u529b\u7535\u6c60\u9988\u7535\u62a5\u8b66"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->JdqSta:I

    const-string v1, "\u4e3b\u7ee7\u7535\u5668\u7c98\u8fde"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->fgSOH:I

    const-string v1, "SOH\u62a5\u8b66"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->fgDybjh:I

    const-string v1, "\u7535\u6c60\u7ec4\u7535\u538b\u4e0d\u5747\u8861\u62a5\u8b66"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->fgGl:I

    const-string v1, "\u8fc7\u6d41\u62a5\u8b66"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->fgMknbdcgz:I

    const-string v1, "\u6a21\u5757\u5185\u90e8\u7535\u6c60\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->fgMknbtxgz:I

    const-string v1, "\u6a21\u5757\u5185\u90e8\u901a\u8baf\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->Dczdyycbj:I

    const-string v1, "\u7535\u6c60\u7ec4\u7535\u538b\u5f02\u5e38\u62a5\u8b66-\u6b20\u538b"

    const-string v2, "\u7535\u6c60\u7ec4\u7535\u538b\u5f02\u5e38\u62a5\u8b66-\u8fc7\u538b"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn2(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->fgYjgz:I

    const-string v1, "BMS\u786c\u4ef6\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVSTA;->fgTxgz:I

    const-string v1, "\u901a\u8baf\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;->Update:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;->Update:I

    .line 141
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDczzdy:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%.1f V"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;->Zdy:I

    int-to-double v3, v3

    mul-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDczzdl:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%.1f A"

    new-array v2, v8, [Ljava/lang/Object;

    const-wide/high16 v3, -0x3f8c000000000000L    # -320.0

    iget-object v5, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;->Zdl:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemSoc:Lcom/ts/can/zotye/CanZtY100Item;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA1;->Soc:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;->Update:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;->Update:I

    .line 153
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDtzgdcdy:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%.3f V"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;->Dtzgdy:I

    int-to-double v3, v3

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDtzgdch:Lcom/ts/can/zotye/CanZtY100Item;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;->Dtzgdch:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDtzddcdy:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%.3f V"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;->Dtzddy:I

    int-to-double v3, v3

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDtzddch:Lcom/ts/can/zotye/CanZtY100Item;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA2;->Dtzddch:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 163
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;->Update:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;->Update:I

    .line 167
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDczgwd:Lcom/ts/can/zotye/CanZtY100Item;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;->Dczgwd:I

    add-int/lit8 v2, v2, -0x28

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDczdwd:Lcom/ts/can/zotye/CanZtY100Item;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DRVDATA3;->Dczdwd:I

    add-int/lit8 v2, v2, -0x28

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 172
    :cond_7
    return-void

    .line 99
    :pswitch_0
    const-string v0, "\u7535\u6c60\u6e29\u5ea6\u8fc7\u4f4e"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :pswitch_1
    const-string v0, "\u7535\u6c60\u6e29\u5ea6\u8fc7\u9ad8"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :pswitch_2
    const-string v0, "\u7535\u6c60\u6e29\u5ea6\u4e0d\u5747\u5300"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddWarn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->ResetData(Z)V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 186
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->ShowStatus(Z)V

    goto :goto_0

    .line 190
    :pswitch_1
    iget v1, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mWarnNum:I

    if-lez v1, :cond_0

    .line 191
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->ShowStatus(Z)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_zt_xx_icon_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_zt_xx_icon_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 43
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    const-string v1, "\u7535\u6c60\u72b6\u6001"

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-string v0, "\u7535\u6c60\u7ec4\u603b\u7535\u538b:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDczzdy:Lcom/ts/can/zotye/CanZtY100Item;

    .line 48
    const-string v0, "\u7535\u6c60\u7ec4\u603b\u7535\u6d41:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDczzdl:Lcom/ts/can/zotye/CanZtY100Item;

    .line 49
    const-string v0, "SOC:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemSoc:Lcom/ts/can/zotye/CanZtY100Item;

    .line 50
    const-string v0, "\u5355\u4f53\u6700\u9ad8\u7535\u6c60\u7535\u538b:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDtzgdcdy:Lcom/ts/can/zotye/CanZtY100Item;

    .line 51
    const-string v0, "\u5355\u4f53\u6700\u9ad8\u7535\u6c60\u53f7:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDtzgdch:Lcom/ts/can/zotye/CanZtY100Item;

    .line 52
    const-string v0, "\u5355\u4f53\u6700\u4f4e\u7535\u6c60\u7535\u538b:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDtzddcdy:Lcom/ts/can/zotye/CanZtY100Item;

    .line 53
    const-string v0, "\u5355\u4f53\u6700\u4f4e\u7535\u6c60\u53f7:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDtzddch:Lcom/ts/can/zotye/CanZtY100Item;

    .line 54
    const-string v0, "\u7535\u6c60\u6700\u9ad8\u6e29\u5ea6:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDczgwd:Lcom/ts/can/zotye/CanZtY100Item;

    .line 55
    const-string v0, "\u7535\u6c60\u6700\u4f4e\u6e29\u5ea6:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->mItemDczdwd:Lcom/ts/can/zotye/CanZtY100Item;

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 74
    invoke-super {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onPause()V

    .line 76
    const-string v0, "CanZtY100BatteryActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onResume()V

    .line 64
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/CanZtY100BatteryActivity;->ResetData(Z)V

    .line 66
    const-string v0, "CanZtY100BatteryActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method
