.class public Lcom/ts/can/CanToyotaSetLockActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanToyotaSetLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_AUTO_BY_FROM_P:I = 0x2

.field public static final ITEM_AUTO_BY_SPEED:I = 0x1

.field public static final ITEM_AUTO_BY_TO_P:I = 0x3

.field public static final ITEM_AUTO_RELOCK_TIMER:I = 0xa

.field public static final ITEM_FEEDBACK_TONE:I = 0xb

.field public static final ITEM_KEY2_UNLOCK:I = 0x5

.field public static final ITEM_LOCK_FLASH:I = 0x7

.field private static final ITEM_MAX:I = 0xb

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_ONE_KEY_START:I = 0x8

.field public static final ITEM_OPEN_LINK_UNLOCK:I = 0x6

.field public static final ITEM_REMOTE2_UNLOCK:I = 0x4

.field public static final ITEM_SMART_UNLOCK:I = 0x9

.field public static final TAG:Ljava/lang/String; = "CanToyotaSetLockActivity"

.field private static mStrRelockTimer:[I

.field private static mStrSmartUnlockArr:[I


# instance fields
.field private mItemAutoByFromP:Lcom/ts/canview/CanItemCheckList;

.field private mItemAutoBySpeed:Lcom/ts/canview/CanItemCheckList;

.field private mItemAutoByToP:Lcom/ts/canview/CanItemCheckList;

.field private mItemAutoRelockTimer:Lcom/ts/canview/CanItemPopupList;

.field private mItemFeedBackTone:Lcom/ts/canview/CanItemProgressList;

.field private mItemKey2Unlock:Lcom/ts/canview/CanItemCheckList;

.field private mItemLockFlash:Lcom/ts/canview/CanItemCheckList;

.field private mItemOneKeyStart:Lcom/ts/canview/CanItemCheckList;

.field private mItemOpenLinkUnlock:Lcom/ts/canview/CanItemCheckList;

.field private mItemRemote2Unlock:Lcom/ts/canview/CanItemCheckList;

.field private mItemSmartUnlock:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v4, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_unlock_all_seats:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_unlock_cab:I

    aput v1, v0, v3

    sput-object v0, Lcom/ts/can/CanToyotaSetLockActivity;->mStrSmartUnlockArr:[I

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v3

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v4

    const/4 v1, 0x3

    .line 58
    sget v2, Lcom/ts/MainUI/R$string;->can_90s:I

    aput v2, v0, v1

    .line 53
    sput-object v0, Lcom/ts/can/CanToyotaSetLockActivity;->mStrRelockTimer:[I

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 333
    new-instance v0, Lcom/ts/canview/CanItemCheckList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemCheckList;-><init>(Landroid/content/Context;I)V

    .line 334
    .local v0, "item":Lcom/ts/canview/CanItemCheckList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemCheckList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 336
    return-object v0
.end method

.method protected AddItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/ts/can/CanToyotaSetLockActivity;->IsHaveItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 278
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoBySpeed:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoByFromP:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 290
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoByToP:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 294
    :pswitch_3
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemRemote2Unlock:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 298
    :pswitch_4
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemKey2Unlock:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 302
    :pswitch_5
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemOpenLinkUnlock:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 306
    :pswitch_6
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemLockFlash:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 310
    :pswitch_7
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemOneKeyStart:Lcom/ts/canview/CanItemCheckList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCheckList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 314
    :pswitch_8
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemSmartUnlock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 318
    :pswitch_9
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoRelockTimer:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0

    .line 322
    :pswitch_a
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemFeedBackTone:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 278
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
    .end packed-switch
.end method

.method protected AddTextItem(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 341
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 342
    .local v0, "item":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 344
    return-object v0
.end method

.method protected InitItem(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 216
    packed-switch p1, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 219
    :pswitch_0
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_lock_by_speed:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanToyotaSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoBySpeed:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 223
    :pswitch_1
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_lock_by_from_p:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanToyotaSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoByFromP:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 227
    :pswitch_2
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_lock_by_to_p:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanToyotaSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoByToP:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 231
    :pswitch_3
    sget v0, Lcom/ts/MainUI/R$string;->can_remote2_unlock:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanToyotaSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemRemote2Unlock:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 235
    :pswitch_4
    sget v0, Lcom/ts/MainUI/R$string;->can_key2_unlock:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanToyotaSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemKey2Unlock:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 239
    :pswitch_5
    sget v0, Lcom/ts/MainUI/R$string;->can_door_link_unlock:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanToyotaSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemOpenLinkUnlock:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 243
    :pswitch_6
    sget v0, Lcom/ts/MainUI/R$string;->can_lock_flash:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanToyotaSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemLockFlash:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 247
    :pswitch_7
    sget v0, Lcom/ts/MainUI/R$string;->can_one_key_start:I

    invoke-virtual {p0, v0, p1}, Lcom/ts/can/CanToyotaSetLockActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemCheckList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemOneKeyStart:Lcom/ts/canview/CanItemCheckList;

    goto :goto_0

    .line 251
    :pswitch_8
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_smart_unlock:I

    sget-object v2, Lcom/ts/can/CanToyotaSetLockActivity;->mStrSmartUnlockArr:[I

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemSmartUnlock:Lcom/ts/canview/CanItemPopupList;

    .line 252
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemSmartUnlock:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, p1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    goto :goto_0

    .line 256
    :pswitch_9
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_auto_relock_timer:I

    sget-object v2, Lcom/ts/can/CanToyotaSetLockActivity;->mStrRelockTimer:[I

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoRelockTimer:Lcom/ts/canview/CanItemPopupList;

    .line 257
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoRelockTimer:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, p1}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    goto :goto_0

    .line 261
    :pswitch_a
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    sget v1, Lcom/ts/MainUI/R$string;->can_feedback_tone:I

    invoke-direct {v0, p0, v1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemFeedBackTone:Lcom/ts/canview/CanItemProgressList;

    .line 262
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemFeedBackTone:Lcom/ts/canview/CanItemProgressList;

    invoke-virtual {v0, p1, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 263
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemFeedBackTone:Lcom/ts/canview/CanItemProgressList;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    goto :goto_0

    .line 216
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
    .end packed-switch
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 138
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 141
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 145
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLockActivity;->InitItem(I)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 211
    :goto_0
    invoke-static {v0}, Lcom/ts/can/CanToyotaSetLockActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->AutoLockBySpeed:I

    .line 166
    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->ShiftFromP:I

    .line 170
    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->ShiftToP:I

    .line 174
    goto :goto_0

    .line 177
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->Remote2Unlock:I

    .line 178
    goto :goto_0

    .line 181
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->Key2Unlock:I

    .line 182
    goto :goto_0

    .line 185
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->DoorLinkUnlock:I

    .line 186
    goto :goto_0

    .line 189
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->LockFlash:I

    .line 190
    goto :goto_0

    .line 193
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->OneKeyStart:I

    .line 194
    goto :goto_0

    .line 197
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->SmartUnlock:I

    .line 198
    goto :goto_0

    .line 201
    :pswitch_9
    const/4 v0, 0x0

    .line 202
    goto :goto_0

    .line 205
    :pswitch_a
    const/4 v0, 0x0

    .line 206
    goto :goto_0

    .line 161
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
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v1}, Lcom/ts/canview/CanScrollList;->RemoveAllViews()V

    .line 152
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 156
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLockActivity;->AddItem(I)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetLockActivity;->GetSetData()V

    .line 75
    iget-boolean v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mbLayout:Z

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetLockActivity;->GetAdaptData()V

    .line 78
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSelfAdaptive;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetLockActivity;->LayoutUI()V

    .line 82
    const/4 p1, 0x0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mbLayout:Z

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->Update:I

    .line 97
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoBySpeed:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgAutoLockBySpeed:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 98
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoByFromP:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgAutoLockByShiftFromP:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoByToP:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgAutoLockByShitToP:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemRemote2Unlock:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgRemote2PressUnlock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemKey2Unlock:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgKey2TimesUnlock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemOpenLinkUnlock:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgDoorUnlock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemLockFlash:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgLightResponse:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 104
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemOneKeyStart:Lcom/ts/canview/CanItemCheckList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgSmartLockAnd1KeyStart:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemCheckList;->SetCheck(I)V

    .line 105
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemSmartUnlock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgSmartUnlock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 106
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemAutoRelockTimer:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->AutoRelockTimer:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 107
    iget-object v0, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mItemFeedBackTone:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->FeedBackTone:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 111
    :cond_2
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLockActivity;->ResetData(Z)V

    .line 396
    return-void
.end method

.method public onChanged(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 402
    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    .line 404
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/CanToyotaSetLockActivity;->CarSet(II)V

    .line 406
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 352
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 355
    :pswitch_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgAutoLockBySpeed:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 359
    :pswitch_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgAutoLockByShiftFromP:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 363
    :pswitch_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgAutoLockByShitToP:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 367
    :pswitch_3
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgRemote2PressUnlock:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 371
    :pswitch_4
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgKey2TimesUnlock:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 375
    :pswitch_5
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgDoorUnlock:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 379
    :pswitch_6
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgLightResponse:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 383
    :pswitch_7
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/ts/can/CanToyotaSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ToyotaSet;->fgSmartLockAnd1KeyStart:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 352
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
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLockActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetLockActivity;->InitUI()V

    .line 69
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 412
    packed-switch p1, :pswitch_data_0

    .line 425
    :goto_0
    return-void

    .line 415
    :pswitch_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/CanToyotaSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 419
    :pswitch_1
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/CanToyotaSetLockActivity;->CarSet(II)V

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 133
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 122
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLockActivity;->ResetData(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/ts/can/CanToyotaSetLockActivity;->QueryData()V

    .line 126
    return-void
.end method
