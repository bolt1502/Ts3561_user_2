.class public Lcom/ts/can/gm/comm/CanGMSetOtherActivity;
.super Lcom/ts/can/gm/comm/CanGMBaseActivity;
.source "CanGMSetOtherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# static fields
.field public static final ITEM_FS_SET:I = 0x3

.field private static final ITEM_MAX:I = 0x3

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_RADAR_SW:I = 0x1

.field public static final ITEM_WARN_VOICE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanGMSetOtherActivity"


# instance fields
.field private mItemFsSet:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemRadarSW:Lcom/ts/canview/CanItemSwitchList;

.field private mItemWarnVoice:Lcom/ts/canview/CanItemProgressList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

.field private mVoiceData:Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    .line 40
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;

    .line 21
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 178
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 179
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 180
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 181
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 107
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_warn_voice:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemWarnVoice:Lcom/ts/canview/CanItemProgressList;

    .line 108
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemWarnVoice:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 109
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemWarnVoice:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 110
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemWarnVoice:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 113
    sget v0, Lcom/ts/MainUI/R$string;->can_r_radar_sw:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemRadarSW:Lcom/ts/canview/CanItemSwitchList;

    .line 116
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    sget v1, Lcom/ts/MainUI/R$string;->can_factory_set:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemFsSet:Lcom/ts/canview/CanItemTextBtnList;

    .line 117
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemFsSet:Lcom/ts/canview/CanItemTextBtnList;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemFsSet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 149
    :pswitch_0
    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 130
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->ShowItem(I)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetCarRadar(Lcom/lgb/canmodule/CanDataInfo$GM_Radar;)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetWarnVoice(Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;)V

    .line 60
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;->Update:I

    .line 65
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemRadarSW:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;->fgOn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;->Update:I

    .line 74
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemWarnVoice:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mVoiceData:Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_WarnVoice;->Voice:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 78
    :cond_3
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->IsHaveItem(I)Z

    move-result v0

    .line 157
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemRadarSW:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemWarnVoice:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mItemFsSet:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->ResetData(Z)V

    .line 214
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 220
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 222
    invoke-static {p2}, Lcom/lgb/canmodule/CanJni;->GMWarnVoiceCtrl(I)V

    .line 224
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_0
    :pswitch_0
    return-void

    .line 193
    :pswitch_1
    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;->fgOn:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->Neg(I)I

    move-result v2

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->GMRadarCtrl(I)V

    goto :goto_0

    .line 200
    :pswitch_2
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    const/4 v2, 0x3

    sget v3, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    invoke-direct {v1, v2, p0, v3, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    .line 201
    .local v1, "msgbox":Lcom/ts/canview/CanItemMsgBox;
    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->InitUI()V

    .line 52
    return-void
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 230
    const/16 v0, 0x80

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    .line 231
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 100
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onPause()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onResume()V

    .line 89
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->ResetData(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetOtherActivity;->QueryData()V

    .line 93
    return-void
.end method
