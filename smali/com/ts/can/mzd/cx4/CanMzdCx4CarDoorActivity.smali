.class public Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;
.super Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;
.source "CanMzdCx4CarDoorActivity.java"


# static fields
.field private static final ITEM_LEAVE_LOCK:I = 0x5

.field private static final ITEM_LOCK_MODE:I = 0x1

.field private static final ITEM_LOCK_TIME:I = 0x3

.field private static final ITEM_LOCK_VOICE:I = 0x2

.field private static final ITEM_UNLOCK_MODE:I = 0x4

.field private static final ITEM_YUSHUA:I


# instance fields
.field private mLeaveLock:Lcom/ts/canview/CanItemSwitchList;

.field private mLockMode:Lcom/ts/canview/CanItemPopupList;

.field private mLockModeArray:[I

.field private mLockTime:Lcom/ts/canview/CanItemPopupList;

.field private mLockVoice:Lcom/ts/canview/CanItemPopupList;

.field private mTimeArray:[I

.field private mUnlockArray:[I

.field private mUnlockMode:Lcom/ts/canview/CanItemPopupList;

.field private mVoiceArray:[I

.field private mYuShua:Lcom/ts/canview/CanItemSwitchList;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    invoke-direct {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;-><init>()V

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 26
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_mode_off:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_lock_mode1:I

    aput v1, v0, v3

    .line 27
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_lock_mode2:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_lock_mode3:I

    aput v1, v0, v5

    .line 28
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_lock_mode4:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mLockModeArray:[I

    .line 31
    new-array v0, v6, [I

    .line 32
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_mode_off:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_voice_low:I

    aput v1, v0, v3

    .line 33
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_voice_middle:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_voice_high:I

    aput v1, v0, v5

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mVoiceArray:[I

    .line 36
    new-array v0, v5, [I

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_30s:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_60s:I

    aput v1, v0, v3

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_90s:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mTimeArray:[I

    .line 41
    new-array v0, v4, [I

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_unlock_all:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_unlock_driver:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mUnlockArray:[I

    .line 9
    return-void
.end method


# virtual methods
.method protected InitUI()V
    .locals 3

    .prologue
    .line 47
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_door_yushua:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mYuShua:Lcom/ts/canview/CanItemSwitchList;

    .line 48
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_door_lock_voice:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mVoiceArray:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mLockVoice:Lcom/ts/canview/CanItemPopupList;

    .line 49
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_door_lock_mode:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mLockModeArray:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mLockMode:Lcom/ts/canview/CanItemPopupList;

    .line 50
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_door_lock_time:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mTimeArray:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mLockTime:Lcom/ts/canview/CanItemPopupList;

    .line 51
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_door_unlock_mode:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mUnlockArray:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mUnlockMode:Lcom/ts/canview/CanItemPopupList;

    .line 52
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_door_leave_lock:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mLeaveLock:Lcom/ts/canview/CanItemSwitchList;

    .line 53
    return-void
.end method

.method protected Query()V
    .locals 2

    .prologue
    .line 78
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->MzdCx4CarQuery(II)V

    .line 79
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->MzdCx4GetCarSetInfo()V

    .line 59
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->Update:I

    .line 65
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mYuShua:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->gysys:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 66
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mLockMode:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->zdssms:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 67
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mLockVoice:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->wyssctsy:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 68
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mLockTime:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->zdcssj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mUnlockMode:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->jsms:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 70
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mLeaveLock:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->lccs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 74
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 102
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 104
    :sswitch_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->gysys:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->MzdCx4SWCarSet(II)V

    goto :goto_0

    .line 107
    :sswitch_1
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->lccs:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->MzdCx4SWCarSet(II)V

    goto :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 85
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 88
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 91
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 94
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarDoorActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
