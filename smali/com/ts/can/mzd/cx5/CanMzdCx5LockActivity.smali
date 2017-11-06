.class public Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanMzdCx5LockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_AUTO_DOOR_LOCK_MODE:I = 0x1

.field public static final ITEM_AUTO_RELOCK_TIME:I = 0x3

.field public static final ITEM_LOCK_BEEP_VOLUME:I = 0x4

.field private static final ITEM_MAX:I = 0x5

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_UNLOCK_MODE:I = 0x2

.field public static final ITEM_WALK_AWAY_LOCK:I = 0x5

.field public static final TAG:Ljava/lang/String; = "CanMzdCx5LockActivity"

.field private static final mAutoDoorLockModeArr:[I

.field private static final mAutoRelockTimeArr:[I

.field private static final mLockBeepVolArr:[I

.field private static final mUnlockModeArr:[I


# instance fields
.field private mItemAutoDoorLockMode:Lcom/ts/canview/CanItemPopupList;

.field private mItemAutoRelockTime:Lcom/ts/canview/CanItemPopupList;

.field private mItemLockBeepVol:Lcom/ts/canview/CanItemPopupList;

.field private mItemUnlockMode:Lcom/ts/canview/CanItemPopupList;

.field private mItemWalkAwayLock:Lcom/ts/canview/CanItemSwitchList;

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

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 34
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_mode_off:I

    aput v1, v0, v2

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->can_lock_mode1:I

    aput v1, v0, v3

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can_lock_mode2:I

    aput v1, v0, v4

    .line 37
    sget v1, Lcom/ts/MainUI/R$string;->can_lcok_mode3:I

    aput v1, v0, v5

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->can_lock_mode4:I

    aput v1, v0, v6

    .line 32
    sput-object v0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mAutoDoorLockModeArr:[I

    .line 42
    new-array v0, v4, [I

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_touch_once:I

    aput v1, v0, v2

    .line 44
    sget v1, Lcom/ts/MainUI/R$string;->can_once_dr_twice_all:I

    aput v1, v0, v3

    .line 41
    sput-object v0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mUnlockModeArr:[I

    .line 48
    new-array v0, v6, [I

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_90s:I

    aput v1, v0, v2

    .line 50
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_60s:I

    aput v1, v0, v3

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_mzd_cx4_time_30s:I

    aput v1, v0, v4

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_tripbresettiming_4:I

    aput v1, v0, v5

    .line 47
    sput-object v0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mAutoRelockTimeArr:[I

    .line 57
    new-array v0, v6, [I

    .line 58
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_high:I

    aput v1, v0, v2

    .line 59
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_mid:I

    aput v1, v0, v3

    .line 60
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_low:I

    aput v1, v0, v4

    .line 61
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v5

    .line 56
    sput-object v0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mLockBeepVolArr:[I

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;-><init>()V

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    .line 19
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 186
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 187
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 188
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 190
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 196
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 197
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 198
    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 199
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 140
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_door_lock_mode:I

    sget-object v1, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mAutoDoorLockModeArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mItemAutoDoorLockMode:Lcom/ts/canview/CanItemPopupList;

    .line 141
    sget v0, Lcom/ts/MainUI/R$string;->can_unlock_mode:I

    sget-object v1, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mUnlockModeArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mItemUnlockMode:Lcom/ts/canview/CanItemPopupList;

    .line 142
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_relock_timer:I

    sget-object v1, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mAutoRelockTimeArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mItemAutoRelockTime:Lcom/ts/canview/CanItemPopupList;

    .line 143
    sget v0, Lcom/ts/MainUI/R$string;->can_lock_beep_vol:I

    sget-object v1, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mLockBeepVolArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mItemLockBeepVol:Lcom/ts/canview/CanItemPopupList;

    .line 144
    sget v0, Lcom/ts/MainUI/R$string;->can_walk_away_lock:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mItemWalkAwayLock:Lcom/ts/canview/CanItemSwitchList;

    .line 146
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 167
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 156
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->ShowItem(I)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx5Query(I)V

    .line 112
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->MzdCx5GetCarSet(Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;)V

    .line 94
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->Update:I

    .line 99
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mItemAutoDoorLockMode:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->AutoDoorLockMode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mItemUnlockMode:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->UnlockMode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mItemAutoRelockTime:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->AutoRelockMode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mItemLockBeepVol:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->LockBeepVol:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mItemWalkAwayLock:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->WalkAwayLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 107
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->IsHaveItem(I)Z

    move-result v0

    .line 182
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->ResetData(Z)V

    .line 225
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 207
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 210
    :pswitch_0
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MZD_CX5_Info;->WalkAwayLock:I

    invoke-virtual {p0, v2}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->MzdCx5CarSet(II)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->InitUI()V

    .line 88
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 231
    packed-switch p1, :pswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 234
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->MzdCx5CarSet(II)V

    goto :goto_0

    .line 238
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->MzdCx5CarSet(II)V

    goto :goto_0

    .line 242
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->MzdCx5CarSet(II)V

    goto :goto_0

    .line 246
    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->MzdCx5CarSet(II)V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 131
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 133
    const-string v0, "CanMzdCx5LockActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 118
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->ResetData(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx5/CanMzdCx5LockActivity;->QueryData()V

    .line 122
    const-string v0, "CanMzdCx5LockActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method
