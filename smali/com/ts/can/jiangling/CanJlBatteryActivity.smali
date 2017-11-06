.class public Lcom/ts/can/jiangling/CanJlBatteryActivity;
.super Lcom/ts/can/jiangling/CanJlBaseActivity;
.source "CanJlBatteryActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanJlBatteryActivity"


# instance fields
.field protected mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

.field protected mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

.field protected mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

.field protected mItemDczzdwd:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemDczzdwdzh:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemDczzgwd:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemDczzgwdzh:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemDtzddy:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemDtzdyzh:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemDtzgdy:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemDtzgdyzh:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemSoc:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/jiangling/CanJlBaseActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    .line 32
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    .line 33
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    .line 16
    return-void
.end method

.method private ResetData(Z)V
    .locals 10
    .param p1, "check"    # Z

    .prologue
    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 83
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->JLGetCarFault(Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->Update:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->Update:I

    .line 90
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->JLGetWarn(Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;)V

    .line 92
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;->BatteryWarn:I

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->UpdateWarnNum(I)V

    .line 94
    invoke-virtual {p0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->RemoveAllWarn()V

    .line 96
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgYzgy:I

    const-string v1, "\u4e25\u91cd\u8fc7\u538b"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgYzgw:I

    const-string v1, "\u4e25\u91cd\u8fc7\u6e29"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgGl:I

    const-string v1, "\u8fc7\u6d41"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgIgbtgz:I

    const-string v1, "IGBT\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgZjgz:I

    const-string v1, "\u4e3b\u63a5\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgYcgz:I

    const-string v1, "\u9884\u5145\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgCangz:I

    const-string v1, "\u603b\u7ebf\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgCs:I

    const-string v1, "\u8d85\u901f"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgYzdz:I

    const-string v1, "\u4e25\u91cd\u5835\u8f6c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgYzqy:I

    const-string v1, "\u4e25\u91cd\u6b20\u538b"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgIgbtgw:I

    const-string v1, "IGBT\u8fc7\u6e29"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgXbyj:I

    const-string v1, "\u65cb\u53d8\u786c\u4ef6"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgXbjd:I

    const-string v1, "\u65cb\u53d8\u89d2\u5ea6"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgZddy:I

    const-string v1, "\u4e2d\u70b9\u7535\u538b"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgYmgz:I

    const-string v1, "\u6cb9\u95e8\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgDwgz:I

    const-string v1, "\u6863\u4f4d\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgTxyc:I

    const-string v1, "\u901a\u8baf\u5f02\u5e38"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgJygd:I

    const-string v1, "\u7edd\u7f18\u8fc7\u4f4e"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgFdgl:I

    const-string v1, "\u653e\u7535\u8fc7\u6d41"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgDcwdgg:I

    const-string v1, "\u7535\u6c60\u6e29\u5ea6\u8fc7\u9ad8"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgDtgb:I

    const-string v1, "\u5355\u4f53\u8fc7\u653e"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgDlbh:I

    const-string v1, "\u77ed\u8def\u4fdd\u62a4"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgWsgk:I

    const-string v1, "\u6e29\u5347\u8fc7\u5feb"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgYcgd:I

    const-string v1, "\u538b\u5dee\u8fc7\u5927"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgWcgd:I

    const-string v1, "\u6e29\u5dee\u8fc7\u5927"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgWdgd:I

    const-string v1, "\u6e29\u5ea6\u8fc7\u4f4e"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgCdgl:I

    const-string v1, "\u5145\u7535\u8fc7\u6d41"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgZygd:I

    const-string v1, "\u603b\u538b\u8fc7\u4f4e"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData3:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;->fgZygg:I

    const-string v1, "\u603b\u538b\u8fc7\u9ad8"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddWarn(ILjava/lang/String;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->JLGetBatData(Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;->Update:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;->Update:I

    .line 136
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDtzgdy:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "%.3f V"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;->Dtzgdy:I

    int-to-double v3, v3

    mul-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDtzgdyzh:Lcom/ts/can/jiangling/CanJianglingItem;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;->Dtzgdzzh:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDtzddy:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "%.3f V"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;->Dtzddy:I

    int-to-double v3, v3

    mul-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDtzdyzh:Lcom/ts/can/jiangling/CanJianglingItem;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;->Dtzddyzh:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;->Update:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;->Update:I

    .line 148
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDczzgwd:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "%d  \u2103"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;->Dczzgwd:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDczzdwd:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "%d  \u2103"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;->Dczzdwd:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDczzgwdzh:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "%d   "

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;->Dczzgwdzh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDczzdwdzh:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "%d   "

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;->Dczzdwdzh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->JLGetCarMsg(Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;)V

    .line 156
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 158
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->Update:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemSoc:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "%.1f %%"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->SOC:I

    int-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 165
    :cond_7
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->ResetData(Z)V

    .line 199
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 176
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 179
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->ShowStatus(Z)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget v1, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mWarnNum:I

    if-lez v1, :cond_0

    .line 184
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->ShowStatus(Z)V

    goto :goto_0

    .line 176
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
    invoke-super {p0, p1}, Lcom/ts/can/jiangling/CanJlBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_jl_xx_icon_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jl_xx_icon_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 43
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    const-string v1, "\u7535\u6c60\u72b6\u6001"

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-string v0, "\u5355\u4f53\u6700\u9ad8\u7535\u538b:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDtzgdy:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 48
    const-string v0, "\u5355\u4f53\u6700\u9ad8\u7535\u538b\u7ec4\u53f7:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDtzgdyzh:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 49
    const-string v0, "\u5355\u4f53\u6700\u4f4e\u7535\u538b:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDtzddy:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 50
    const-string v0, "\u5355\u4f53\u6700\u4f4e\u7535\u538b\u7ec4\u53f7:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDtzdyzh:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 51
    const-string v0, "\u7535\u6c60\u7ec4\u6700\u9ad8\u6e29\u5ea6:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDczzgwd:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 52
    const-string v0, "\u7535\u6c60\u7ec4\u6700\u4f4e\u6e29\u5ea6:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDczzdwd:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 53
    const-string v0, "\u7535\u6c60\u7ec4\u6700\u9ad8\u6e29\u5ea6\u7ec4\u53f7:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDczzgwdzh:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 54
    const-string v0, "\u7535\u6c60\u7ec4\u6700\u4f4e\u6e29\u5ea6\u7ec4\u53f7:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemDczzdwdzh:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 55
    const-string v0, "\u5269\u4f59\u7535\u91cf:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBatteryActivity;->mItemSoc:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 73
    invoke-super {p0}, Lcom/ts/can/jiangling/CanJlBaseActivity;->onPause()V

    .line 75
    const-string v0, "CanJlBatteryActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/ts/can/jiangling/CanJlBaseActivity;->onResume()V

    .line 63
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/jiangling/CanJlBatteryActivity;->ResetData(Z)V

    .line 65
    const-string v0, "CanJlBatteryActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
