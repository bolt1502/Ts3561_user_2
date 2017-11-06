.class public Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;
.super Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;
.source "CanAccordXbsLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_ACCESS_BEEP:I = 0x7

.field public static final ITEM_AUTO_DOOR_LOCK:I = 0x5

.field public static final ITEM_AUTO_DOOR_UNLOCK:I = 0x4

.field public static final ITEM_DOOR_UNLOCK_MODE:I = 0x8

.field public static final ITEM_FDJJNZDQTXS:I = 0xc

.field public static final ITEM_JNMSDBJZM:I = 0xa

.field public static final ITEM_KEYLESS_BEEP_VOL:I = 0x6

.field public static final ITEM_KEYLESS_LOCK:I = 0x1

.field public static final ITEM_KEY_LIGHT_FLASH:I = 0x9

.field public static final ITEM_KEY_RMT_UNLOCK:I = 0x2

.field public static final ITEM_LANG:I = 0xd

.field private static final ITEM_MAX:I = 0xe

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_SDQFWXJGJL:I = 0xe

.field public static final ITEM_SECURITY_RELOCK:I = 0x3

.field public static final ITEM_ZNYSQDZNXS:I = 0xb

.field public static final TAG:Ljava/lang/String; = "CanAccordLockActivity"

.field private static final mAllDoorsArr:[I

.field private static final mAutoLockArr:[I

.field private static final mBeepVolArr:[I

.field private static final mDangFarArr:[I

.field private static final mKeyRmtArr:[I

.field private static final mKeylessLockArr:[I

.field private static final mLangArr:[I

.field private static final mSecurityArr:[I

.field private static final mUnlockModeArr:[I


# instance fields
.field private mItemAccessBeep:Lcom/ts/canview/CanItemSwitchList;

.field private mItemAutoDoorLock:Lcom/ts/canview/CanItemPopupList;

.field private mItemAutoDoorUnlock:Lcom/ts/canview/CanItemPopupList;

.field private mItemDoorUnlockMode:Lcom/ts/canview/CanItemPopupList;

.field private mItemFdjjnzdqtxs:Lcom/ts/canview/CanItemSwitchList;

.field private mItemJnmsdmjzm:Lcom/ts/canview/CanItemSwitchList;

.field private mItemKeyFlash:Lcom/ts/canview/CanItemSwitchList;

.field private mItemKeyRmtUnlock:Lcom/ts/canview/CanItemPopupList;

.field private mItemKeylessBeepVol:Lcom/ts/canview/CanItemPopupList;

.field private mItemKeylessLock:Lcom/ts/canview/CanItemPopupList;

.field private mItemLang:Lcom/ts/canview/CanItemPopupList;

.field private mItemSdqfwxjgjl:Lcom/ts/canview/CanItemPopupList;

.field private mItemSecuRelock:Lcom/ts/canview/CanItemPopupList;

.field private mItemZnysqdznxs:Lcom/ts/canview/CanItemSwitchList;

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

    .line 41
    new-array v0, v4, [I

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v2

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v3

    .line 40
    sput-object v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mKeyRmtArr:[I

    .line 47
    new-array v0, v4, [I

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v3

    .line 46
    sput-object v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mKeylessLockArr:[I

    .line 53
    new-array v0, v5, [I

    .line 54
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v2

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v3

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v1, v0, v4

    .line 52
    sput-object v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSecurityArr:[I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 62
    sget v1, Lcom/ts/MainUI/R$string;->can_qkdjsymk:I

    aput v1, v0, v2

    .line 63
    sget v1, Lcom/ts/MainUI/R$string;->can_qkdtzs:I

    aput v1, v0, v3

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->can_qkdth:I

    aput v1, v0, v4

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v5

    .line 60
    sput-object v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAllDoorsArr:[I

    .line 69
    new-array v0, v5, [I

    .line 70
    sget v1, Lcom/ts/MainUI/R$string;->can_qcsd:I

    aput v1, v0, v2

    .line 71
    sget v1, Lcom/ts/MainUI/R$string;->can_pdax:I

    aput v1, v0, v3

    .line 72
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v4

    .line 68
    sput-object v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAutoLockArr:[I

    .line 76
    new-array v0, v4, [I

    .line 77
    sget v1, Lcom/ts/MainUI/R$string;->can_cdjd:I

    aput v1, v0, v2

    .line 78
    sget v1, Lcom/ts/MainUI/R$string;->can_cdjg:I

    aput v1, v0, v3

    .line 75
    sput-object v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mBeepVolArr:[I

    .line 82
    new-array v0, v4, [I

    .line 83
    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v2

    .line 84
    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v3

    .line 81
    sput-object v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mUnlockModeArr:[I

    .line 88
    new-array v0, v4, [I

    .line 89
    sget v1, Lcom/ts/MainUI/R$string;->can_lang_cn:I

    aput v1, v0, v2

    .line 90
    sget v1, Lcom/ts/MainUI/R$string;->can_language_english:I

    aput v1, v0, v3

    .line 87
    sput-object v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mLangArr:[I

    .line 94
    new-array v0, v5, [I

    .line 95
    sget v1, Lcom/ts/MainUI/R$string;->can_sdqfwxjgjl_3:I

    aput v1, v0, v2

    .line 96
    sget v1, Lcom/ts/MainUI/R$string;->can_sdqfwxjgjl_2:I

    aput v1, v0, v3

    .line 97
    sget v1, Lcom/ts/MainUI/R$string;->can_sdqfwxjgjl_1:I

    aput v1, v0, v4

    .line 93
    sput-object v0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mDangFarArr:[I

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 356
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 357
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 358
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 359
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 360
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 365
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 366
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 367
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 368
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 369
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 190
    sget v0, Lcom/ts/MainUI/R$string;->can_yklsts:I

    sget-object v1, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mKeylessLockArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeylessLock:Lcom/ts/canview/CanItemPopupList;

    .line 191
    sget v0, Lcom/ts/MainUI/R$string;->can_key_rmt_unlock:I

    sget-object v1, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mKeyRmtArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeyRmtUnlock:Lcom/ts/canview/CanItemPopupList;

    .line 192
    sget v0, Lcom/ts/MainUI/R$string;->can_zdcssj:I

    sget-object v1, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSecurityArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemSecuRelock:Lcom/ts/canview/CanItemPopupList;

    .line 193
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_door_unlock:I

    sget-object v1, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAllDoorsArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemAutoDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    .line 194
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_lock_with:I

    sget-object v1, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAutoLockArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemAutoDoorLock:Lcom/ts/canview/CanItemPopupList;

    .line 195
    sget v0, Lcom/ts/MainUI/R$string;->can_access_beep:I

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemAccessBeep:Lcom/ts/canview/CanItemSwitchList;

    .line 196
    sget v0, Lcom/ts/MainUI/R$string;->can_keyless_vol:I

    sget-object v1, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mBeepVolArr:[I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeylessBeepVol:Lcom/ts/canview/CanItemPopupList;

    .line 197
    sget v0, Lcom/ts/MainUI/R$string;->can_door_unlock_mode:I

    sget-object v1, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mUnlockModeArr:[I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemDoorUnlockMode:Lcom/ts/canview/CanItemPopupList;

    .line 198
    sget v0, Lcom/ts/MainUI/R$string;->can_keyless_flash:I

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeyFlash:Lcom/ts/canview/CanItemSwitchList;

    .line 200
    sget v0, Lcom/ts/MainUI/R$string;->can_fuelefficiencybacklight:I

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemJnmsdmjzm:Lcom/ts/canview/CanItemSwitchList;

    .line 201
    sget v0, Lcom/ts/MainUI/R$string;->can_znysqdznxs:I

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemZnysqdznxs:Lcom/ts/canview/CanItemSwitchList;

    .line 202
    sget v0, Lcom/ts/MainUI/R$string;->can_fdjjnzdqtxs:I

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemFdjjnzdqtxs:Lcom/ts/canview/CanItemSwitchList;

    .line 203
    sget v0, Lcom/ts/MainUI/R$string;->can_lang_set:I

    sget-object v1, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mLangArr:[I

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 204
    sget v0, Lcom/ts/MainUI/R$string;->can_sdqfwxjgjl:I

    sget-object v1, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mDangFarArr:[I

    const/16 v2, 0xe

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemSdqfwxjgjl:Lcom/ts/canview/CanItemPopupList;

    .line 205
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_0
    invoke-static {v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 224
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->KeyAnswerBackSW:I

    .line 225
    goto :goto_0

    .line 228
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->KeyAndRemoteUnlockMode:I

    .line 229
    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->SecurityTimer:I

    .line 233
    goto :goto_0

    .line 236
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->AutoDoorUnlockWith:I

    .line 237
    goto :goto_0

    .line 240
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->AutoDoorLockWith:I

    .line 241
    goto :goto_0

    .line 244
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->KeyBeepVol:I

    .line 245
    goto :goto_0

    .line 248
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->KeyAccessBeep:I

    .line 249
    goto :goto_0

    .line 252
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->UnlockMode:I

    .line 253
    goto :goto_0

    .line 256
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->KeylessFlash:I

    .line 257
    goto :goto_0

    .line 260
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->Jnmsbjzm:I

    .line 261
    goto :goto_0

    .line 264
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->Znystsznxs:I

    .line 265
    goto :goto_0

    .line 268
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->Fdjjnzdqtxs:I

    .line 269
    goto :goto_0

    .line 272
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->Lang:I

    .line 273
    goto :goto_0

    .line 276
    :pswitch_d
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$AccordAdtAll;->Sdqfwxjgjl:I

    .line 277
    goto :goto_0

    .line 221
    nop

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->GetAdtData()V

    .line 212
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 216
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->ShowItem(I)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 164
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->Query(II)V

    .line 165
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->GetSetData()V

    .line 136
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Update:I

    .line 142
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeylessLock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeyAnswerBackSW:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 143
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeyRmtUnlock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeyAndRemoteUnlockMode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 144
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemSecuRelock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->SecurityTimer:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 145
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemAutoDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->AutoDoorUnlockWith:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 146
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemAutoDoorLock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->AutoDoorLockWith:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 147
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemAccessBeep:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeyAccessBeep:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 148
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeylessBeepVol:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeyBeepVol:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 149
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemDoorUnlockMode:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->UnlockMode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 150
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeyFlash:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeylessFlash:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 152
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemJnmsdmjzm:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Jnmsbjzm:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 153
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemZnysqdznxs:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Znystsznxs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 154
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemFdjjnzdqtxs:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Fdjjnzdqtxs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 155
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Lang:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 156
    iget-object v0, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemSdqfwxjgjl:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Sdqfwxjgjl:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 160
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->IsHaveItem(I)Z

    move-result v0

    .line 291
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 294
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeylessLock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeyRmtUnlock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemSecuRelock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 306
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemAutoDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 310
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemAutoDoorLock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 314
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeylessBeepVol:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 318
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemAccessBeep:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 322
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemDoorUnlockMode:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 326
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemKeyFlash:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 330
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemJnmsdmjzm:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 334
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemZnysqdznxs:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 338
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemFdjjnzdqtxs:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 342
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 346
    :pswitch_d
    iget-object v1, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mItemSdqfwxjgjl:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 291
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->ResetData(Z)V

    .line 410
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 377
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 402
    :goto_0
    :pswitch_0
    return-void

    .line 380
    :pswitch_1
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeyAccessBeep:I

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 384
    :pswitch_2
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->KeylessFlash:I

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 388
    :pswitch_3
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Jnmsbjzm:I

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 392
    :pswitch_4
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Znystsznxs:I

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 396
    :pswitch_5
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$AccordSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$AccordSetData;->Fdjjnzdqtxs:I

    invoke-virtual {p0, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->InitUI()V

    .line 130
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 416
    packed-switch p1, :pswitch_data_0

    .line 458
    :goto_0
    :pswitch_0
    return-void

    .line 419
    :pswitch_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 424
    :pswitch_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 428
    :pswitch_3
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 432
    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 436
    :pswitch_5
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 440
    :pswitch_6
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 444
    :pswitch_7
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 448
    :pswitch_8
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 452
    :pswitch_9
    const/16 v0, 0x1b

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->CarSet(II)V

    goto :goto_0

    .line 416
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 183
    invoke-super {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onPause()V

    .line 184
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsBaseActivity;->onResume()V

    .line 171
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->ResetData(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->QueryData()V

    .line 174
    invoke-virtual {p0}, Lcom/ts/can/honda/accord_xbs/CanAccordXbsLockActivity;->LayoutUI()V

    .line 176
    return-void
.end method
