.class public abstract Lcom/ts/can/df/er70/CanDFQCBaseActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanDFQCBaseActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# instance fields
.field protected mBmsVersion:Lcom/lgb/canmodule/CanDataInfo$BMS_Version;

.field protected mChargerSta1:Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mMotorSpd:Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;

.field protected mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

.field protected mVcuLife:Lcom/lgb/canmodule/CanDataInfo$VCU_life;

.field protected mVcuSta:Lcom/lgb/canmodule/CanDataInfo$VCU_STA;

.field protected mVcuSta1:Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;

.field protected mVcuSta2:Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;

.field protected mVcuSta3:Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

.field protected mVcuSta4:Lcom/lgb/canmodule/CanDataInfo$VCU_STA4;

.field protected mVcuSta5:Lcom/lgb/canmodule/CanDataInfo$VCU_STA5;

.field protected mVcuVp:Lcom/lgb/canmodule/CanDataInfo$VCU_VP;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mMotorSpd:Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    .line 33
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$VCU_life;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$VCU_life;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuLife:Lcom/lgb/canmodule/CanDataInfo$VCU_life;

    .line 34
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$VCU_STA;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta:Lcom/lgb/canmodule/CanDataInfo$VCU_STA;

    .line 35
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta1:Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;

    .line 36
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta2:Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;

    .line 37
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta3:Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

    .line 38
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA4;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$VCU_STA4;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta4:Lcom/lgb/canmodule/CanDataInfo$VCU_STA4;

    .line 39
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA5;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$VCU_STA5;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta5:Lcom/lgb/canmodule/CanDataInfo$VCU_STA5;

    .line 41
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mChargerSta1:Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;

    .line 42
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$VCU_VP;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$VCU_VP;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuVp:Lcom/lgb/canmodule/CanDataInfo$VCU_VP;

    .line 44
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$BMS_Version;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$BMS_Version;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mBmsVersion:Lcom/lgb/canmodule/CanDataInfo$BMS_Version;

    .line 26
    return-void
.end method


# virtual methods
.method protected AddText(III)Landroid/widget/TextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddText(II)Landroid/widget/TextView;

    move-result-object v0

    .line 132
    .local v0, "text":Landroid/widget/TextView;
    if-eqz p3, :cond_0

    .line 133
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    return-object v0
.end method

.method protected AddText(IIII)Landroid/widget/TextView;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 142
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "#0099ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    return-object v0
.end method

.method protected abstract InitLayout()V
.end method

.method protected abstract Query()V
.end method

.method protected abstract ResetData(Z)V
.end method

.method protected SetBackground(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 100
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 101
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 102
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->ResetData(Z)V

    .line 128
    return-void
.end method

.method protected VenuciaGetBmsVersion()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mBmsVersion:Lcom/lgb/canmodule/CanDataInfo$BMS_Version;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetBmsVersion(Lcom/lgb/canmodule/CanDataInfo$BMS_Version;)V

    .line 48
    return-void
.end method

.method protected VenuciaGetChargerSta1()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mChargerSta1:Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetChargerSta1(Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;)V

    .line 56
    return-void
.end method

.method protected VenuciaGetMotorSpd()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mMotorSpd:Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetPowerSpd(Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;)V

    .line 60
    return-void
.end method

.method protected VenuciaGetMotorSta3()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetMotoRcSta3(Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;)V

    .line 64
    return-void
.end method

.method protected VenuciaGetVcuLife()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuLife:Lcom/lgb/canmodule/CanDataInfo$VCU_life;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetVcuLife(Lcom/lgb/canmodule/CanDataInfo$VCU_life;)V

    .line 68
    return-void
.end method

.method protected VenuciaGetVcuSta()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta:Lcom/lgb/canmodule/CanDataInfo$VCU_STA;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetVcuSta(Lcom/lgb/canmodule/CanDataInfo$VCU_STA;)V

    .line 72
    return-void
.end method

.method protected VenuciaGetVcuSta1()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta1:Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetVcuSta1(Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;)V

    .line 75
    return-void
.end method

.method protected VenuciaGetVcuSta2()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta2:Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetVcuSta2(Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;)V

    .line 78
    return-void
.end method

.method protected VenuciaGetVcuSta3()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta3:Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetVcuSta3(Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;)V

    .line 81
    return-void
.end method

.method protected VenuciaGetVcuSta4()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta4:Lcom/lgb/canmodule/CanDataInfo$VCU_STA4;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetVcuSta4(Lcom/lgb/canmodule/CanDataInfo$VCU_STA4;)V

    .line 84
    return-void
.end method

.method protected VenuciaGetVcuSta5()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuSta5:Lcom/lgb/canmodule/CanDataInfo$VCU_STA5;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetVcuSta5(Lcom/lgb/canmodule/CanDataInfo$VCU_STA5;)V

    .line 87
    return-void
.end method

.method protected VenuciaGetVcuVp()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->mVcuVp:Lcom/lgb/canmodule/CanDataInfo$VCU_VP;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->VenuciaGetVcuVp(Lcom/lgb/canmodule/CanDataInfo$VCU_VP;)V

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->InitLayout()V

    .line 96
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 115
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 116
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 107
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->ResetData(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCBaseActivity;->Query()V

    .line 110
    return-void
.end method
