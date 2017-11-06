.class public Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;
.super Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;
.source "CanMzdCx4OtherSetupActivity.java"


# static fields
.field private static final ITEM_CONTROL_VOICE:I = 0x1

.field private static final ITEM_SHACHE_SYSTEM:I = 0x0

.field private static final ITEM_TRIP_A:I = 0x2


# instance fields
.field private mItemControlVoice:Lcom/ts/canview/CanItemPopupList;

.field private mItemShaChe:Lcom/ts/canview/CanItemSwitchList;

.field private mItemTripA:Lcom/ts/canview/CanItemSwitchList;

.field private mVoiceArray:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;-><init>()V

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/ts/MainUI/R$string;->can_mzd_cx4_mode_off:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 20
    sget v2, Lcom/ts/MainUI/R$string;->can_mzd_cx4_voice_low:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$string;->can_mzd_cx4_voice_high:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mVoiceArray:[I

    .line 9
    return-void
.end method


# virtual methods
.method protected InitUI()V
    .locals 3

    .prologue
    .line 25
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_other_sc_system:I

    .line 26
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mItemShaChe:Lcom/ts/canview/CanItemSwitchList;

    .line 28
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_other_control_voice:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mVoiceArray:[I

    .line 29
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mItemControlVoice:Lcom/ts/canview/CanItemPopupList;

    .line 30
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_other_sync_tripa:I

    .line 31
    const/4 v1, 0x2

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mItemTripA:Lcom/ts/canview/CanItemSwitchList;

    .line 32
    return-void
.end method

.method protected Query()V
    .locals 2

    .prologue
    .line 53
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->MzdCx4CarQuery(II)V

    .line 54
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->MzdCx4GetCarSetInfo()V

    .line 38
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->Update:I

    .line 44
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mItemShaChe:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->zncsscxt:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 45
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mItemControlVoice:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->mdjkyl:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 46
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mItemTripA:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->tbpjhlcA:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 49
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    :pswitch_0
    return-void

    .line 61
    :pswitch_1
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->zncsscxt:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->MzdCx4SWCarSet(II)V

    goto :goto_0

    .line 64
    :pswitch_2
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->tbpjhlcA:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->MzdCx4SWCarSet(II)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 71
    packed-switch p1, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 73
    :pswitch_0
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4OtherSetupActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
