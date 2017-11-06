.class public Lcom/ts/can/jiangling/CanJlBmsActivity;
.super Lcom/ts/can/jiangling/CanJlBaseActivity;
.source "CanJlBmsActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanJlBmsActivity"


# instance fields
.field protected mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

.field protected mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

.field protected mFault:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

.field protected mItemDjwd:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemDjzs:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemMxdl:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemMxdy:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemRunMode:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mItemRunSta:Lcom/ts/can/jiangling/CanJianglingItem;

.field protected mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/jiangling/CanJlBaseActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    .line 29
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA1;

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$JL_BAT_DATA2;

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mFault:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_FAULT_DATA;

    .line 16
    return-void
.end method

.method private ResetData(Z)V
    .locals 11
    .param p1, "check"    # Z

    .prologue
    const-wide v9, 0x3fb999999999999aL    # 0.1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 77
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->JLGetCarMsg(Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;)V

    .line 78
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlBmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->Update:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlBmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->Update:I

    .line 83
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->fgReady:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->JLGetWarn(Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;->MachineWarn:I

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBmsActivity;->UpdateWarnNum(I)V

    .line 99
    invoke-virtual {p0}, Lcom/ts/can/jiangling/CanJlBmsActivity;->RemoveAllWarn()V

    .line 100
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->TooHot:I

    const-string v1, "\u7535\u673a\u6216\u63a7\u5236\u5668\u8fc7\u70ed"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBmsActivity;->AddWarn(ILjava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->fgDldzgz:I

    const-string v1, "\u52a8\u529b\u7535\u6c60\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBmsActivity;->AddWarn(ILjava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->fgDlgz:I

    const-string v1, "\u7535\u6d41\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBmsActivity;->AddWarn(ILjava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->fgXtgz:I

    const-string v1, "\u7cfb\u7edf\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBmsActivity;->AddWarn(ILjava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->Dldcqd:I

    const-string v1, "\u52a8\u529b\u7535\u6c60\u5207\u65ad\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/jiangling/CanJlBmsActivity;->AddWarn(ILjava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mItemMxdy:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "%.1f V"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->DY:I

    int-to-double v3, v3

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mItemMxdl:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "%.1f A"

    new-array v2, v8, [Ljava/lang/Object;

    const-wide/high16 v3, 0x40a9000000000000L    # 3200.0

    iget-object v5, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->Dl:I

    int-to-double v5, v5

    mul-double/2addr v5, v9

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mItemDjwd:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "%d  \u2103"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$JL_CAR_DATA;->DjTmp:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    .line 111
    :cond_1
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mItemRunSta:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "\u7cfb\u7edf\u5c31\u7eea"

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mItemRunSta:Lcom/ts/can/jiangling/CanJianglingItem;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Lcom/ts/can/jiangling/CanJianglingItem;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/jiangling/CanJlBmsActivity;->ResetData(Z)V

    .line 142
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ts/can/jiangling/CanJlBmsActivity;->ShowStatus(Z)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget v1, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mWarnNum:I

    if-lez v1, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/jiangling/CanJlBmsActivity;->ShowStatus(Z)V

    goto :goto_0

    .line 119
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
    .line 36
    invoke-super {p0, p1}, Lcom/ts/can/jiangling/CanJlBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_jl_xx_icon_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_jl_xx_icon_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 39
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    const-string v1, "\u7535\u673a\u72b6\u6001"

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const-string v0, "\u8fd0\u884c\u72b6\u6001:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBmsActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mItemRunSta:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 42
    const-string v0, "\u6bcd\u7ebf\u7535\u538b:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBmsActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mItemMxdy:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 43
    const-string v0, "\u6bcd\u7ebf\u7535\u6d41:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBmsActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mItemMxdl:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 44
    const-string v0, "\u7535\u673a\u6e29\u5ea6:"

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlBmsActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/jiangling/CanJianglingItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mItemDjwd:Lcom/ts/can/jiangling/CanJianglingItem;

    .line 47
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlBmsActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 67
    invoke-super {p0}, Lcom/ts/can/jiangling/CanJlBaseActivity;->onPause()V

    .line 69
    const-string v0, "CanJlBmsActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/ts/can/jiangling/CanJlBaseActivity;->onResume()V

    .line 57
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/jiangling/CanJlBmsActivity;->ResetData(Z)V

    .line 59
    const-string v0, "CanJlBmsActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method
