.class public Lcom/ts/can/lifan/CanLiFanCarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanLiFanCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final ITEM_RADAR_STATUS:I = 0x1

.field private static final ITEM_WARN_VOICE:I = 0x2


# instance fields
.field private mItemRadarStatus:Lcom/ts/canview/CanItemCheckList;

.field private mItemWarnVoice:Lcom/ts/canview/CanItemCheckList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mRadarData:Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;

.field private mVoiceData:Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;

    .line 29
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;-><init>()V

    iput-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;

    .line 17
    return-void
.end method

.method private AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 48
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    .line 49
    .local v0, "item":Lcom/ts/canview/CanItemCheckList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 50
    iget-object v1, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 51
    return-object v0
.end method

.method private InitViews()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 42
    sget v0, Lcom/ts/MainUI/R$string;->can_r_radar_sw:I

    .line 43
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0, v0, v1}, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mItemRadarStatus:Lcom/ts/canview/CanItemCheckList;

    .line 44
    sget v0, Lcom/ts/MainUI/R$string;->can_warn_voice:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mItemWarnVoice:Lcom/ts/canview/CanItemCheckList;

    .line 45
    return-void
.end method

.method private ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->LifanGetRadarSta(Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->LifanGetWarnVoice(Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;)V

    .line 71
    iget-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;->Update:I

    invoke-static {v0}, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;->Update:I

    .line 77
    iget-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mItemRadarStatus:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;->Sta:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;->Update:I

    invoke-static {v0}, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;->Update:I

    .line 87
    iget-object v0, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mItemWarnVoice:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;->Voice:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 90
    :cond_3
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->ResetData(Z)V

    .line 117
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    .local v0, "id":I
    const/4 v1, 0x0

    .line 98
    .local v1, "param":I
    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v2, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Lifan_RadarSta;->Sta:I

    if-ne v2, v1, :cond_0

    .line 101
    const/4 v1, 0x1

    .line 103
    :cond_0
    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->LifanSetRadarCtrl(I)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v2, p0, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Lifan_WarnVoice;->Voice:I

    if-ne v2, v1, :cond_1

    .line 107
    const/16 v1, 0xff

    .line 109
    :cond_1
    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->LifanSetWarnVoice(I)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->InitViews()V

    .line 37
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 64
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 57
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/lifan/CanLiFanCarInfoActivity;->ResetData(Z)V

    .line 59
    return-void
.end method
