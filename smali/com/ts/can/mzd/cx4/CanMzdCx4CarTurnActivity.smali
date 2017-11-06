.class public Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;
.super Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;
.source "CanMzdCx4CarTurnActivity.java"


# static fields
.field private static final ITEM_THREE_LIGHT:I = 0x0

.field private static final ITEM_TURN_VOICE:I = 0x1


# instance fields
.field private mThreeLight:Lcom/ts/canview/CanItemSwitchList;

.field private mTurnVoice:Lcom/ts/canview/CanItemPopupList;

.field private mVoiceArray:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;-><init>()V

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 18
    sget v2, Lcom/ts/MainUI/R$string;->can_mzd_cx4_voice_low:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/ts/MainUI/R$string;->can_mzd_cx4_voice_high:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mVoiceArray:[I

    .line 9
    return-void
.end method


# virtual methods
.method protected InitUI()V
    .locals 3

    .prologue
    .line 23
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_turn_three_light:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mThreeLight:Lcom/ts/canview/CanItemSwitchList;

    .line 24
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_turn_voice:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mVoiceArray:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mTurnVoice:Lcom/ts/canview/CanItemPopupList;

    .line 25
    return-void
.end method

.method protected Query()V
    .locals 2

    .prologue
    .line 45
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->MzdCx4CarQuery(II)V

    .line 46
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->MzdCx4GetCarSetInfo()V

    .line 31
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->Update:I

    .line 37
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mThreeLight:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->scsdzxxh:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 38
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mTurnVoice:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->zxxhyl:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 41
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 53
    :pswitch_0
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->scsdzxxh:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->MzdCx4SWCarSet(II)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 62
    :pswitch_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarTurnActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
