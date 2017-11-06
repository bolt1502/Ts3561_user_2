.class public Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;
.super Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;
.source "CanMzdCx4CarLightActivity.java"


# static fields
.field private static final ITEM_CLOSE_AUTO_OFF:I = 0x1

.field private static final ITEM_LIGHT_AUTO_OPEN:I = 0x5

.field private static final ITEM_LIGHT_OFF_NOTICER:I = 0x3

.field private static final ITEM_LIGHT_OFF_TIMER:I = 0x4

.field private static final ITEM_LIGHT_SYSTEM:I = 0x2

.field private static final ITEM_OPEN_AUTO_OFF:I


# instance fields
.field private mClosedArray:[I

.field private mClosedAutoOff:Lcom/ts/canview/CanItemPopupList;

.field private mLightArray:[I

.field private mLightAutoOpen:Lcom/ts/canview/CanItemPopupList;

.field private mLightNoticer:Lcom/ts/canview/CanItemPopupList;

.field private mLightSystem:Lcom/ts/canview/CanItemSwitchList;

.field private mLightTimer:Lcom/ts/canview/CanItemPopupList;

.field private mNoticerArray:[I

.field private mOpenedArray:[I

.field private mOpenedAutoOff:Lcom/ts/canview/CanItemPopupList;

.field private mTimerArray:[I


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
    new-array v0, v5, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_10min:I

    aput v1, v0, v2

    .line 26
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_30min:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_60min:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mOpenedArray:[I

    .line 28
    new-array v0, v6, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_7_5s:I

    aput v1, v0, v2

    .line 29
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_15s:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_30s:I

    aput v1, v0, v4

    .line 30
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_60s:I

    aput v1, v0, v5

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mClosedArray:[I

    .line 32
    new-array v0, v5, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_mode_off:I

    aput v1, v0, v2

    .line 33
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_voice_low:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_voice_high:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mNoticerArray:[I

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_mode_off:I

    aput v1, v0, v2

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_30s:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_60s:I

    aput v1, v0, v4

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_90s:I

    aput v1, v0, v5

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_120s:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mTimerArray:[I

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_dark:I

    aput v1, v0, v2

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_middle_dark:I

    aput v1, v0, v3

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_middle:I

    aput v1, v0, v4

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_middle_lighter:I

    aput v1, v0, v5

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_lighter:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mLightArray:[I

    .line 9
    return-void
.end method


# virtual methods
.method protected InitUI()V
    .locals 3

    .prologue
    .line 48
    .line 49
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_open_auto_off:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mOpenedArray:[I

    .line 50
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mOpenedAutoOff:Lcom/ts/canview/CanItemPopupList;

    .line 52
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_close_auto_off:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mClosedArray:[I

    .line 53
    const/4 v2, 0x1

    .line 51
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mClosedAutoOff:Lcom/ts/canview/CanItemPopupList;

    .line 54
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_turn_system:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mLightSystem:Lcom/ts/canview/CanItemSwitchList;

    .line 56
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_off_noticer:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mNoticerArray:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mLightNoticer:Lcom/ts/canview/CanItemPopupList;

    .line 57
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_off_timer:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mTimerArray:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mLightTimer:Lcom/ts/canview/CanItemPopupList;

    .line 58
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_auto_open:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mLightArray:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mLightAutoOpen:Lcom/ts/canview/CanItemPopupList;

    .line 59
    return-void
.end method

.method protected Query()V
    .locals 2

    .prologue
    .line 83
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->MzdCx4CarQuery(II)V

    .line 84
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->MzdCx4GetCarSetInfo()V

    .line 65
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->Update:I

    .line 71
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mOpenedAutoOff:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->cmdkscndzdxm:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mClosedAutoOff:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->cmgbscndzdxm:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 73
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mLightSystem:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->zsyzxqzdxt:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 74
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mLightNoticer:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->cdwgtsq:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 75
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mLightTimer:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->ddgbdsq:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 76
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mLightAutoOpen:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->zdddkq:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 79
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 91
    :pswitch_0
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->zsyzxqzdxt:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->MzdCx4SWCarSet(II)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    return-void

    .line 100
    :pswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 103
    :pswitch_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 106
    :pswitch_3
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 109
    :pswitch_4
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 112
    :pswitch_5
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4CarLightActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
