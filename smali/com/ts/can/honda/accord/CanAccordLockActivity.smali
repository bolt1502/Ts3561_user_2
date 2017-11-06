.class public Lcom/ts/can/honda/accord/CanAccordLockActivity;
.super Lcom/ts/can/honda/accord/CanAccordBaseActivity;
.source "CanAccordLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_ACCESS_BEEP:I = 0x7

.field public static final ITEM_AUTO_DOOR_LOCK:I = 0x5

.field public static final ITEM_AUTO_DOOR_UNLOCK:I = 0x4

.field public static final ITEM_DOOR_UNLOCK_MODE:I = 0x8

.field public static final ITEM_KEYLESS_BEEP_VOL:I = 0x6

.field public static final ITEM_KEYLESS_LOCK:I = 0x1

.field public static final ITEM_KEY_LIGHT_FLASH:I = 0x9

.field public static final ITEM_KEY_RMT_UNLOCK:I = 0x2

.field private static final ITEM_MAX:I = 0x9

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SECURITY_RELOCK:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanAccordLockActivity"

.field private static final mAllDoorsArr:[I

.field private static final mAutoLockArr:[I

.field private static final mBeepVolArr:[I

.field private static final mKeyRmtArr:[I

.field private static final mKeylessLockArr:[I

.field private static final mSecurityArr:[I

.field private static final mUnlockModeArr:[I


# instance fields
.field private mItemAccessBeep:Lcom/ts/canview/CanItemSwitchList;

.field private mItemAutoDoorLock:Lcom/ts/canview/CanItemPopupList;

.field private mItemAutoDoorUnlock:Lcom/ts/canview/CanItemPopupList;

.field private mItemDoorUnlockMode:Lcom/ts/canview/CanItemPopupList;

.field private mItemKeyFlash:Lcom/ts/canview/CanItemSwitchList;

.field private mItemKeyRmtUnlock:Lcom/ts/canview/CanItemPopupList;

.field private mItemKeylessBeepVol:Lcom/ts/canview/CanItemPopupList;

.field private mItemKeylessLock:Lcom/ts/canview/CanItemPopupList;

.field private mItemSecuRelock:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v4, [I

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v2

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v3

    .line 33
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mKeyRmtArr:[I

    .line 40
    new-array v0, v4, [I

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v3

    .line 39
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mKeylessLockArr:[I

    .line 46
    new-array v0, v5, [I

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v2

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v3

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v4

    .line 45
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSecurityArr:[I

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_qkdjsymk:I

    aput v1, v0, v2

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_qkdtzs:I

    aput v1, v0, v3

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_qkdth:I

    aput v1, v0, v4

    .line 58
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v5

    .line 53
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAllDoorsArr:[I

    .line 62
    new-array v0, v5, [I

    .line 63
    sget v1, Lcom/ts/MainUI/R$string;->can_qcsd:I

    aput v1, v0, v2

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->can_pdax:I

    aput v1, v0, v3

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v4

    .line 61
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAutoLockArr:[I

    .line 69
    new-array v0, v4, [I

    .line 70
    sget v1, Lcom/ts/MainUI/R$string;->can_cdjd:I

    aput v1, v0, v2

    .line 71
    sget v1, Lcom/ts/MainUI/R$string;->can_cdjg:I

    aput v1, v0, v3

    .line 68
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mBeepVolArr:[I

    .line 75
    new-array v0, v4, [I

    .line 76
    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v2

    .line 77
    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v3

    .line 74
    sput-object v0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mUnlockModeArr:[I

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 281
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 282
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 283
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 285
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 290
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 291
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 292
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 293
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 294
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 161
    sget v0, Lcom/ts/MainUI/R$string;->can_yklsts:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mKeylessLockArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeylessLock:Lcom/ts/canview/CanItemPopupList;

    .line 162
    sget v0, Lcom/ts/MainUI/R$string;->can_key_rmt_unlock:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mKeyRmtArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeyRmtUnlock:Lcom/ts/canview/CanItemPopupList;

    .line 163
    sget v0, Lcom/ts/MainUI/R$string;->can_zdcssj:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSecurityArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemSecuRelock:Lcom/ts/canview/CanItemPopupList;

    .line 164
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_door_unlock:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAllDoorsArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemAutoDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    .line 165
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_lock_with:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAutoLockArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemAutoDoorLock:Lcom/ts/canview/CanItemPopupList;

    .line 166
    sget v0, Lcom/ts/MainUI/R$string;->can_access_beep:I

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemAccessBeep:Lcom/ts/canview/CanItemSwitchList;

    .line 167
    sget v0, Lcom/ts/MainUI/R$string;->can_keyless_vol:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mBeepVolArr:[I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeylessBeepVol:Lcom/ts/canview/CanItemPopupList;

    .line 168
    sget v0, Lcom/ts/MainUI/R$string;->can_door_unlock_mode:I

    sget-object v1, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mUnlockModeArr:[I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemDoorUnlockMode:Lcom/ts/canview/CanItemPopupList;

    .line 169
    sget v0, Lcom/ts/MainUI/R$string;->can_keyless_flash:I

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeyFlash:Lcom/ts/canview/CanItemSwitchList;

    .line 171
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 228
    :goto_0
    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 190
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->KeyAnswerBackSW:I

    .line 191
    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->KeyAndRemoteUnlockMode:I

    .line 195
    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->SecurityTimer:I

    .line 199
    goto :goto_0

    .line 202
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->AutoDoorUnlockWith:I

    .line 203
    goto :goto_0

    .line 206
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->AutoDoorLockWith:I

    .line 207
    goto :goto_0

    .line 210
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->KeyBeepVol:I

    .line 211
    goto :goto_0

    .line 214
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->KeyBeepSW:I

    .line 215
    goto :goto_0

    .line 218
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->UnlockMode:I

    .line 219
    goto :goto_0

    .line 222
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->KeylessFlash:I

    .line 223
    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->GetAdtData()V

    .line 178
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 182
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->ShowItem(I)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->GetSetData()V

    .line 111
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Update:I

    .line 117
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeylessLock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeyAnswerBackSW:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeyRmtUnlock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeyAndRemoteUnlockMode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 119
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemSecuRelock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->SecurityTimer:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemAutoDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->AutoDoorUnlockWith:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemAutoDoorLock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->AutoDoorLockWith:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 122
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemAccessBeep:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeyBeepSW:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeylessBeepVol:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeyBeepVol:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemDoorUnlockMode:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->UnlockMode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 125
    iget-object v0, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeyFlash:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeylessFlash:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 131
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->IsHaveItem(I)Z

    move-result v0

    .line 236
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeylessLock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeyRmtUnlock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemSecuRelock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 251
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemAutoDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 255
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemAutoDoorLock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 259
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeylessBeepVol:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 263
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemAccessBeep:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 267
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemDoorUnlockMode:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 271
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mItemKeyFlash:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->ResetData(Z)V

    .line 328
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    .local v0, "item":I
    sparse-switch v0, :sswitch_data_0

    .line 320
    :goto_0
    return-void

    .line 306
    :sswitch_0
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->CarSet(I)V

    goto :goto_0

    .line 310
    :sswitch_1
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->CarSet(I)V

    goto :goto_0

    .line 314
    :sswitch_2
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/ts/can/honda/accord/CanAccordLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeylessFlash:I

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->CarSet(II)V

    goto :goto_0

    .line 302
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->InitUI()V

    .line 105
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 334
    packed-switch p1, :pswitch_data_0

    .line 368
    :goto_0
    :pswitch_0
    return-void

    .line 337
    :pswitch_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->CarSet(II)V

    goto :goto_0

    .line 342
    :pswitch_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->CarSet(II)V

    goto :goto_0

    .line 346
    :pswitch_3
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->CarSet(II)V

    goto :goto_0

    .line 350
    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->CarSet(II)V

    goto :goto_0

    .line 354
    :pswitch_5
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->CarSet(II)V

    goto :goto_0

    .line 358
    :pswitch_6
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->CarSet(II)V

    goto :goto_0

    .line 362
    :pswitch_7
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->CarSet(II)V

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 154
    invoke-super {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onPause()V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/ts/can/honda/accord/CanAccordBaseActivity;->onResume()V

    .line 142
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->ResetData(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->QueryData()V

    .line 145
    invoke-virtual {p0}, Lcom/ts/can/honda/accord/CanAccordLockActivity;->LayoutUI()V

    .line 147
    return-void
.end method
