.class public Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanMzdCx5LightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_3_FLASH_TURN_SIGNAL:I = 0x4

.field public static final ITEM_AUTO_HEADLIGHT_ON:I = 0x5

.field public static final ITEM_HEADLIGHT_OFF_TIMER:I = 0x3

.field public static final ITEM_INT_LIGHT_TIMEOUT_DOOR_CLOSE:I = 0x2

.field public static final ITEM_INT_LIGHT_TIMEOUT_DOOR_OPEN:I = 0x1

.field private static final ITEM_MAX:I = 0x5

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanMzdCx5LightActivity"

.field private static final mAutoHeadlightOnArr:[I

.field private static final mHedalightOffTimeArr:[I

.field private static final mIntLightTimeoutDoorCloseArr:[I

.field private static final mIntLightTimeoutDoorOPenArr:[I


# instance fields
.field private mItem3flashTurnSignal:Lcom/ts/canview/CanItemSwitchList;

.field private mItemAutoHeadlightOn:Lcom/ts/canview/CanItemPopupList;

.field private mItemHeadlightOffTimer:Lcom/ts/canview/CanItemPopupList;

.field private mItemIntLightTimeoutDoorClose:Lcom/ts/canview/CanItemPopupList;

.field private mItemIntLightTimeoutDoorOpen:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-array v0, v6, [I

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_60min:I

    aput v1, v0, v2

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_30min:I

    aput v1, v0, v3

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_10min:I

    aput v1, v0, v4

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_tripbresettiming_4:I

    aput v1, v0, v5

    .line 34
    sput-object v0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mIntLightTimeoutDoorOPenArr:[I

    .line 43
    new-array v0, v6, [I

    .line 44
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_60s:I

    aput v1, v0, v2

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_30s:I

    aput v1, v0, v3

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_15s:I

    aput v1, v0, v4

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_7_5s:I

    aput v1, v0, v5

    .line 42
    sput-object v0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mIntLightTimeoutDoorCloseArr:[I

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_120s:I

    aput v1, v0, v2

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_90s:I

    aput v1, v0, v3

    .line 54
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_60s:I

    aput v1, v0, v4

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_30s:I

    aput v1, v0, v5

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v6

    .line 50
    sput-object v0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mHedalightOffTimeArr:[I

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 61
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_lighter:I

    aput v1, v0, v2

    .line 62
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_middle_lighter:I

    aput v1, v0, v3

    .line 63
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_middle:I

    aput v1, v0, v4

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_middle_dark:I

    aput v1, v0, v5

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_light_dark:I

    aput v1, v0, v6

    .line 59
    sput-object v0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mAutoHeadlightOnArr:[I

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 79
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    .line 19
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 191
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 192
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 193
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 195
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 201
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 202
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 203
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 204
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 145
    sget v0, Lcom/ts/MainUI/R$string;->can_int_door_open:I

    sget-object v1, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mIntLightTimeoutDoorOPenArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mItemIntLightTimeoutDoorOpen:Lcom/ts/canview/CanItemPopupList;

    .line 146
    sget v0, Lcom/ts/MainUI/R$string;->can_int_door_close:I

    sget-object v1, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mIntLightTimeoutDoorCloseArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mItemIntLightTimeoutDoorClose:Lcom/ts/canview/CanItemPopupList;

    .line 147
    sget v0, Lcom/ts/MainUI/R$string;->can_headlight_off_timer:I

    sget-object v1, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mHedalightOffTimeArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mItemHeadlightOffTimer:Lcom/ts/canview/CanItemPopupList;

    .line 148
    sget v0, Lcom/ts/MainUI/R$string;->can3_flash_signal:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mItem3flashTurnSignal:Lcom/ts/canview/CanItemSwitchList;

    .line 149
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_headlight_on:I

    sget-object v1, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mAutoHeadlightOnArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mItemAutoHeadlightOn:Lcom/ts/canview/CanItemPopupList;

    .line 151
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 172
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 161
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->ShowItem(I)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx5Query(I)V

    .line 117
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx5GetCarSet(Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->Update:I

    .line 104
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mItemIntLightTimeoutDoorOpen:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->InLightTimeout_DoorOpen:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 105
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mItemIntLightTimeoutDoorClose:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->InLightTimeout_DoorClose:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 106
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mItemHeadlightOffTimer:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->HeadLightOffTimer:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 107
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mItem3flashTurnSignal:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->FlashTurnSignal:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 108
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mItemAutoHeadlightOn:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->AutoHeadlightOn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 112
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->IsHaveItem(I)Z

    move-result v0

    .line 187
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->ResetData(Z)V

    .line 231
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 217
    :pswitch_0
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->FlashTurnSignal:I

    invoke-virtual {p0, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->MzdCx5CarSet(II)V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->InitUI()V

    .line 93
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 237
    packed-switch p1, :pswitch_data_0

    .line 259
    :goto_0
    :pswitch_0
    return-void

    .line 240
    :pswitch_1
    const/4 v0, 0x5

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->MzdCx5CarSet(II)V

    goto :goto_0

    .line 244
    :pswitch_2
    const/4 v0, 0x6

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->MzdCx5CarSet(II)V

    goto :goto_0

    .line 248
    :pswitch_3
    const/16 v0, 0x8

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->MzdCx5CarSet(II)V

    goto :goto_0

    .line 252
    :pswitch_4
    const/16 v0, 0x9

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->MzdCx5CarSet(II)V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 136
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 138
    const-string v0, "CanMzdCx5LightActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 123
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->ResetData(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LightActivity;->QueryData()V

    .line 127
    const-string v0, "CanMzdCx5LightActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method
