.class public Lcom/ts/can/zotye/CanZtY100SlowActivity;
.super Lcom/ts/can/zotye/CanZtY100BaseActivity;
.source "CanZtY100SlowActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanZtY100SlowActivity"


# instance fields
.field protected mItemCdzt:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemDjwd:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemScdl:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemScdy:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;-><init>()V

    .line 23
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    .line 13
    return-void
.end method

.method private ResetData(Z)V
    .locals 11
    .param p1, "check"    # Z

    .prologue
    const-wide v9, 0x3fb999999999999aL    # 0.1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 67
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ZtY100GetSlowCharge(Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;)V

    .line 68
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;->Update:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;->Update:I

    .line 76
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mItemScdy:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%.1f V"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;->Sjscdy:I

    int-to-double v3, v3

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mItemScdl:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%.1f A"

    new-array v2, v8, [Ljava/lang/Object;

    const-wide/high16 v3, -0x3f8c000000000000L    # -320.0

    iget-object v5, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;->Sjscdl:I

    int-to-double v5, v5

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mItemDjwd:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%d \u2103"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;->FdjTemp:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->RemoveAllWarn()V

    .line 81
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;->fgTemp:I

    const-string v1, "\u5145\u7535\u673a\u8fc7\u6e29"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->AddWarn(ILjava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;->fgCddyl:I

    const-string v1, "\u8f93\u5165\u7535\u538b\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->AddWarn(ILjava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;->fgYjgz:I

    const-string v1, "\u786c\u4ef6\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->AddWarn(ILjava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mSlowData:Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_CAR_CHARGE;->fgTxgz:I

    const-string v1, "\u901a\u8baf\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->AddWarn(ILjava/lang/String;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ZtY100GetWarn(Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;)V

    .line 90
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;->Update:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;->SlowWarn:I

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->UpdateWarnNum(I)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;->SlowEnter:I

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mItemCdzt:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "\u5f00\u542f\u5145\u7535"

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 108
    :cond_3
    :goto_0
    return-void

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mItemCdzt:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "\u5173\u95ed\u5145\u7535"

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->ResetData(Z)V

    .line 141
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

    .line 132
    :goto_0
    return-void

    .line 122
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->ShowStatus(Z)V

    goto :goto_0

    .line 126
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->ShowStatus(Z)V

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
    .line 29
    invoke-super {p0, p1}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_zt_xx_icon_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_zt_xx_icon_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 32
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    const-string v1, "\u6162\u5145\u72b6\u6001"

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const-string v0, "\u5145\u7535\u72b6\u6001:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mItemCdzt:Lcom/ts/can/zotye/CanZtY100Item;

    .line 38
    const-string v0, "\u5145\u7535\u673a\u6e29\u5ea6:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mItemDjwd:Lcom/ts/can/zotye/CanZtY100Item;

    .line 39
    const-string v0, "\u5145\u7535\u673a\u5b9e\u9645\u8f93\u51fa\u7535\u538b:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mItemScdy:Lcom/ts/can/zotye/CanZtY100Item;

    .line 40
    const-string v0, "\u5145\u7535\u673a\u5b9e\u9645\u8f93\u51fa\u7535\u6d41:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100SlowActivity;->mItemScdl:Lcom/ts/can/zotye/CanZtY100Item;

    .line 41
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 58
    invoke-super {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onPause()V

    .line 60
    const-string v0, "CanZtY100SlowActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onResume()V

    .line 48
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/CanZtY100SlowActivity;->ResetData(Z)V

    .line 50
    const-string v0, "CanZtY100SlowActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method
