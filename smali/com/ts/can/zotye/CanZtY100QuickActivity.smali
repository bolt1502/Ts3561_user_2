.class public Lcom/ts/can/zotye/CanZtY100QuickActivity;
.super Lcom/ts/can/zotye/CanZtY100BaseActivity;
.source "CanZtY100QuickActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanZtY100QuickActivity"


# instance fields
.field protected mItemCdzt:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemDjwd:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemScdl:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemScdy:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;-><init>()V

    .line 23
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    .line 13
    return-void
.end method

.method private ResetData(Z)V
    .locals 9
    .param p1, "check"    # Z

    .prologue
    const/4 v8, 0x1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/4 v5, 0x0

    .line 68
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ZtY100GetQuickCharge(Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;->Update:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;->Update:I

    .line 75
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;->Off:I

    if-nez v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mItemCdzt:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "\u5f00\u542f\u5145\u7535"

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mItemScdy:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%.1f V"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;->Scdy:I

    int-to-double v3, v3

    mul-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mItemScdl:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%.1f A"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;->Scdl:I

    int-to-double v3, v3

    mul-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ZtY100GetWarn(Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;)V

    .line 91
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;->QuickWarn:I

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->UpdateWarnNum(I)V

    .line 93
    invoke-virtual {p0}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->RemoveAllWarn()V

    .line 94
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;->fgTx:I

    const-string v1, "\u901a\u8baf\u8d85\u65f6"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->AddWarn(ILjava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;->fgDy:I

    const-string v1, "\u8f93\u5165\u7535\u538b\u9519\u8bef\uff0c\u5145\u7535\u673a\u505c\u6b62\u5de5\u4f5c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->AddWarn(ILjava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;->fgTemp:I

    const-string v1, "\u5145\u7535\u673a\u8fc7\u6e29"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->AddWarn(ILjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mQuickData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_QUICK;->fgYjgz:I

    const-string v1, "\u786c\u4ef6\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->AddWarn(ILjava/lang/String;)V

    .line 102
    :cond_1
    return-void

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mItemCdzt:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "\u5173\u95ed\u5145\u7535"

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->ResetData(Z)V

    .line 135
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 113
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 116
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->ShowStatus(Z)V

    goto :goto_0

    .line 120
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->ShowStatus(Z)V

    goto :goto_0

    .line 113
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
    .line 30
    invoke-super {p0, p1}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_zt_xx_icon_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_zt_xx_icon_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 33
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    const-string v1, "\u5feb\u51b2\u72b6\u6001"

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const-string v0, "\u5145\u7535\u72b6\u6001:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mItemCdzt:Lcom/ts/can/zotye/CanZtY100Item;

    .line 40
    const-string v0, "\u5145\u7535\u673a\u5b9e\u9645\u8f93\u51fa\u7535\u538b:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mItemScdy:Lcom/ts/can/zotye/CanZtY100Item;

    .line 41
    const-string v0, "\u5145\u7535\u673a\u5b9e\u9645\u8f93\u51fa\u7535\u6d41:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100QuickActivity;->mItemScdl:Lcom/ts/can/zotye/CanZtY100Item;

    .line 42
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 59
    invoke-super {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onPause()V

    .line 61
    const-string v0, "CanZtY100QuickActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onResume()V

    .line 49
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/CanZtY100QuickActivity;->ResetData(Z)V

    .line 51
    const-string v0, "CanZtY100QuickActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
