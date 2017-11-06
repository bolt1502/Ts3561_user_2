.class public Lcom/ts/can/jiangling/CanJlCarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanJlCarInfoActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_BATTERY:I = 0x1

.field public static final ITEM_BMS:I = 0x0

.field public static final ITEM_QUICK:I = 0x3

.field public static final ITEM_SLOW:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanZtY100CarInfoActivity"


# instance fields
.field protected mBtnBattery:Lcom/ts/other/ParamButton;

.field protected mBtnBms:Lcom/ts/other/ParamButton;

.field protected mBtnQuick:Lcom/ts/other/ParamButton;

.field protected mBtnSlow:Lcom/ts/other/ParamButton;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mTvBattery:Lcom/ts/other/CustomTextView;

.field protected mTvBms:Lcom/ts/other/CustomTextView;

.field protected mTvQuick:Lcom/ts/other/CustomTextView;

.field protected mTvSlow:Lcom/ts/other/CustomTextView;

.field protected mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    .line 20
    return-void
.end method

.method private ResetData(Z)V
    .locals 8
    .param p1, "check"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 128
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->JLGetWarn(Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;->Update:I

    invoke-static {v0}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;->Update:I

    .line 134
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnBms:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;->MachineWarn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_jl_jdxx_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jl_jdxx_dn:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jl_jdxx_warning:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->SetWarn(Lcom/ts/other/ParamButton;IIII)V

    .line 135
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnBattery:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;->BatteryWarn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_jl_dcxx_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jl_dcxx_dn:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jl_dcxx_warning:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->SetWarn(Lcom/ts/other/ParamButton;IIII)V

    .line 136
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnSlow:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;->SlowWarn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_jl_mc_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jl_mc_dn:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jl_mc_warning:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->SetWarn(Lcom/ts/other/ParamButton;IIII)V

    .line 137
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnQuick:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;->QuickWarn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_jl_kc_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jl_kc_dn:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jl_kc_warning:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->SetWarn(Lcom/ts/other/ParamButton;IIII)V

    .line 139
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnSlow:Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;->SlowEnter:I

    if-eqz v0, :cond_2

    move v0, v6

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ts/other/ParamButton;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnQuick:Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JL_WARN_ENTER;->QuickEnter:I

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v0, v6}, Lcom/ts/other/ParamButton;->setEnabled(Z)V

    .line 145
    :cond_1
    return-void

    :cond_2
    move v0, v7

    .line 139
    goto :goto_0

    :cond_3
    move v6, v7

    .line 140
    goto :goto_1
.end method


# virtual methods
.method protected AddBtn(IIIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "up"    # I
    .param p5, "dn"    # I
    .param p6, "sel"    # I

    .prologue
    .line 98
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p2, p3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 99
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v0, p4, p5, p6}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 102
    return-object v0
.end method

.method protected AddText(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 108
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 110
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 111
    return-object v0
.end method

.method protected SetWarn(Lcom/ts/other/ParamButton;IIII)V
    .locals 0
    .param p1, "btn"    # Lcom/ts/other/ParamButton;
    .param p2, "warn"    # I
    .param p3, "upImg"    # I
    .param p4, "dnImg"    # I
    .param p5, "warnImg"    # I

    .prologue
    .line 116
    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p1, p5, p4}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p1, p3, p4}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    goto :goto_0
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->ResetData(Z)V

    .line 186
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 193
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    return-void

    .line 159
    :pswitch_1
    const-class v1, Lcom/ts/can/jiangling/CanJlBmsActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 163
    :pswitch_2
    const-class v1, Lcom/ts/can/jiangling/CanJlBatteryActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->setContentView(I)V

    .line 52
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 54
    const/4 v1, 0x0

    const/16 v2, 0x9b

    const/16 v3, 0x84

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jl_jdxx_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jl_jdxx_dn:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_jl_jdxx_warning:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->AddBtn(IIIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnBms:Lcom/ts/other/ParamButton;

    .line 55
    const/4 v1, 0x1

    const/16 v2, 0x159

    const/16 v3, 0x84

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jl_dcxx_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jl_dcxx_dn:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_jl_dcxx_warning:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->AddBtn(IIIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnBattery:Lcom/ts/other/ParamButton;

    .line 56
    const/4 v1, 0x2

    const/16 v2, 0x216

    const/16 v3, 0x84

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jl_mc_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jl_mc_dn:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_jl_mc_warning:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->AddBtn(IIIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnSlow:Lcom/ts/other/ParamButton;

    .line 57
    const/4 v1, 0x3

    const/16 v2, 0x2d4

    const/16 v3, 0x84

    sget v4, Lcom/ts/MainUI/R$drawable;->can_jl_kc_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_jl_kc_dn:I

    sget v6, Lcom/ts/MainUI/R$drawable;->can_jl_kc_warning:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->AddBtn(IIIIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnQuick:Lcom/ts/other/ParamButton;

    .line 60
    const/16 v7, 0x14

    .line 61
    .local v7, "xAdd":I
    const/16 v8, 0x9b

    .line 62
    .local v8, "yAdd":I
    const/16 v0, 0x87

    const/16 v1, 0x11f

    const/16 v2, 0xbc

    const/16 v3, 0x28

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->AddText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mTvBms:Lcom/ts/other/CustomTextView;

    .line 63
    const/16 v0, 0x145

    const/16 v1, 0x11f

    const/16 v2, 0xbc

    const/16 v3, 0x28

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->AddText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mTvBattery:Lcom/ts/other/CustomTextView;

    .line 64
    const/16 v0, 0x202

    const/16 v1, 0x11f

    const/16 v2, 0xbc

    const/16 v3, 0x28

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->AddText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mTvSlow:Lcom/ts/other/CustomTextView;

    .line 65
    const/16 v0, 0x2c0

    const/16 v1, 0x11f

    const/16 v2, 0xbc

    const/16 v3, 0x28

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->AddText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mTvQuick:Lcom/ts/other/CustomTextView;

    .line 67
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mTvBms:Lcom/ts/other/CustomTextView;

    const-string v1, "\u7535\u673a\u4fe1\u606f"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mTvBattery:Lcom/ts/other/CustomTextView;

    const-string v1, "\u7535\u6c60\u4fe1\u606f"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mTvSlow:Lcom/ts/other/CustomTextView;

    const-string v1, "\u6162\u5145"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mTvQuick:Lcom/ts/other/CustomTextView;

    const-string v1, "\u5feb\u5145"

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnSlow:Lcom/ts/other/ParamButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->mBtnQuick:Lcom/ts/other/ParamButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setEnabled(Z)V

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 91
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 93
    const-string v0, "CanZtY100CarInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 81
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/jiangling/CanJlCarInfoActivity;->ResetData(Z)V

    .line 83
    const-string v0, "CanZtY100CarInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
