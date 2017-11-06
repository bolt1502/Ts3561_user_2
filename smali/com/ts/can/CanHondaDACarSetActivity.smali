.class public Lcom/ts/can/CanHondaDACarSetActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanHondaDACarSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_ADJUSTALARMVOL:I = 0x1

.field public static final ITEM_AUTOHEADLIGHT:I = 0x7

.field public static final ITEM_FUELEFFICIENCYL:I = 0x2

.field public static final ITEM_NEWMESSAGE:I = 0x3

.field public static final ITEM_SPEEDDISTANCE:I = 0x4

.field public static final ITEM_TACHOMETER:I = 0x5

.field public static final ITEM_WALKAWAY:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CanHondaDACarSetActivity"

.field private static final mAjustalarmArr:[I

.field private static final mSpeedDistanceArr:[I


# instance fields
.field protected mItemAdjustalarm:Lcom/ts/canview/CanItemPopupList;

.field protected mItemAutoHeadlight:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemFuelefficiency:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemNewMessage:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemSpeedDistance:Lcom/ts/canview/CanItemPopupList;

.field protected mItemTachometer:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemWalkLock:Lcom/ts/canview/CanItemSwitchList;

.field protected mManager:Lcom/ts/canview/CanScrollList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_high:I

    aput v1, v0, v2

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_mid:I

    aput v1, v0, v3

    .line 44
    sget v1, Lcom/ts/MainUI/R$string;->can_sensitivity_low:I

    aput v1, v0, v4

    .line 40
    sput-object v0, Lcom/ts/can/CanHondaDACarSetActivity;->mAjustalarmArr:[I

    .line 48
    new-array v0, v4, [I

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_speeddistanceunits_1:I

    aput v1, v0, v2

    .line 50
    sget v1, Lcom/ts/MainUI/R$string;->can_speeddistanceunits_2:I

    aput v1, v0, v3

    .line 47
    sput-object v0, Lcom/ts/can/CanHondaDACarSetActivity;->mSpeedDistanceArr:[I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 37
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    .line 17
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 100
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 101
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 102
    iget-object v1, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 104
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 91
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 92
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 93
    iget-object v1, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 95
    return-object v0
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->HondaDAGetCarSet(Lcom/lgb/canmodule/CanDataInfo$HondaSetData;)V

    .line 175
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->CarSetUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanHondaDACarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->CarSetUpdate:I

    invoke-static {v0}, Lcom/ts/can/CanHondaDACarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->CarSetUpdate:I

    .line 180
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemAdjustalarm:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->tzbjyl:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 181
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemFuelefficiency:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->jnmsdbjzm:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 182
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemNewMessage:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->xxxtx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 183
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemSpeedDistance:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->speeddisunit:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 184
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemTachometer:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->tachometer:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 185
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemWalkLock:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->lkszgxhsz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 186
    iget-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemAutoHeadlight:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->yshzdddldgxhsd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 190
    :cond_1
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaDACarSetActivity;->ResetData(Z)V

    .line 197
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    return-void

    .line 120
    :pswitch_1
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->jnmsdbjzm:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanHondaDACarSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 123
    :pswitch_2
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->xxxtx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanHondaDACarSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 128
    :pswitch_3
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->tachometer:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanHondaDACarSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 131
    :pswitch_4
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->lkszgxhsz:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanHondaDACarSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 134
    :pswitch_5
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$HondaSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaSetData;->yshzdddldgxhsd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanHondaDACarSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaDACarSetActivity;->setContentView(I)V

    .line 60
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 61
    sget v0, Lcom/ts/MainUI/R$string;->can_adjustalarmvolume:I

    sget-object v1, Lcom/ts/can/CanHondaDACarSetActivity;->mAjustalarmArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondaDACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemAdjustalarm:Lcom/ts/canview/CanItemPopupList;

    .line 62
    sget v0, Lcom/ts/MainUI/R$string;->can_fuelefficiencybacklight:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanHondaDACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemFuelefficiency:Lcom/ts/canview/CanItemSwitchList;

    .line 63
    sget v0, Lcom/ts/MainUI/R$string;->can_newmessage:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanHondaDACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemNewMessage:Lcom/ts/canview/CanItemSwitchList;

    .line 64
    sget v0, Lcom/ts/MainUI/R$string;->can_speeddistanceunits:I

    sget-object v1, Lcom/ts/can/CanHondaDACarSetActivity;->mSpeedDistanceArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/CanHondaDACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemSpeedDistance:Lcom/ts/canview/CanItemPopupList;

    .line 65
    sget v0, Lcom/ts/MainUI/R$string;->can_tachometer:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanHondaDACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemTachometer:Lcom/ts/canview/CanItemSwitchList;

    .line 66
    sget v0, Lcom/ts/MainUI/R$string;->can_walkawayautolock:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanHondaDACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemWalkLock:Lcom/ts/canview/CanItemSwitchList;

    .line 67
    sget v0, Lcom/ts/MainUI/R$string;->can_autoheadlinghtonwitchwiper:I

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanHondaDACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanHondaDACarSetActivity;->mItemAutoHeadlight:Lcom/ts/canview/CanItemSwitchList;

    .line 69
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 167
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    const/16 v0, 0x12

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 156
    :pswitch_2
    const/16 v0, 0x15

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->HondaDACarSet(II)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 76
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 84
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaDACarSetActivity;->ResetData(Z)V

    .line 86
    return-void
.end method
