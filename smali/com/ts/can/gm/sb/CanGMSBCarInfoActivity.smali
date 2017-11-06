.class public Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGMSBCarInfoActivity.java"


# static fields
.field public static final ITEM_AC:I = 0x2

.field public static final ITEM_CAR_TYPE:I = 0x0

.field public static final ITEM_CDS:I = 0x5

.field public static final ITEM_CONV:I = 0x4

.field public static final ITEM_LIGHT:I = 0x3

.field public static final ITEM_LOCK:I = 0x1

.field private static final ITEM_MAX:I = 0x8

.field private static final ITEM_MIN:I = 0x0

.field public static final ITEM_MODE_CUSTOM:I = 0x6

.field public static final ITEM_OTHER:I = 0x7

.field public static final ITEM_STATUS:I = 0x8


# instance fields
.field private mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

.field private mItemAc:Lcom/ts/canview/CanItemIcoList;

.field private mItemCarType:Lcom/ts/canview/CanItemIcoList;

.field private mItemCds:Lcom/ts/canview/CanItemIcoList;

.field private mItemConv:Lcom/ts/canview/CanItemIcoList;

.field private mItemLight:Lcom/ts/canview/CanItemIcoList;

.field private mItemLock:Lcom/ts/canview/CanItemIcoList;

.field private mItemModeCustom:Lcom/ts/canview/CanItemIcoList;

.field private mItemOther:Lcom/ts/canview/CanItemIcoList;

.field private mItemStatus:Lcom/ts/canview/CanItemIcoList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    .line 12
    return-void
.end method

.method private LayoutUI()V
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 126
    return-void

    .line 124
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->ShowItem(I)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->isHaveItem(I)Z

    move-result v0

    .line 131
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemAc:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 150
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemConv:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 154
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemCds:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 158
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemModeCustom:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 162
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemOther:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    goto :goto_0

    .line 166
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemStatus:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemIcoList;->ShowArrow(Z)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
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

.method private isHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 212
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 177
    :pswitch_0
    const/4 v0, 0x1

    .line 178
    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->AutoLock:I

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->RmtLock:I

    add-int v0, v1, v2

    .line 182
    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->AC:I

    .line 186
    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->Light:I

    .line 190
    goto :goto_0

    .line 193
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->Conv:I

    .line 194
    goto :goto_0

    .line 197
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->Pzjc:I

    .line 198
    goto :goto_0

    .line 201
    :pswitch_6
    const/4 v0, 0x1

    .line 202
    goto :goto_0

    .line 205
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->Other:I

    .line 206
    goto :goto_0

    .line 209
    :pswitch_8
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 93
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 94
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_esc:I

    sget v2, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    .line 95
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_lock:I

    sget v2, Lcom/ts/MainUI/R$string;->can_car_lock_set:I

    invoke-virtual {v0, v1, v2, v4, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemLock:Lcom/ts/canview/CanItemIcoList;

    .line 96
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_ac:I

    sget v2, Lcom/ts/MainUI/R$string;->can_ac_set:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemAc:Lcom/ts/canview/CanItemIcoList;

    .line 97
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_light:I

    sget v2, Lcom/ts/MainUI/R$string;->can_c4_l_light:I

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemLight:Lcom/ts/canview/CanItemIcoList;

    .line 98
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_cds:I

    sget v2, Lcom/ts/MainUI/R$string;->can_cds:I

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemCds:Lcom/ts/canview/CanItemIcoList;

    .line 99
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_service:I

    sget v2, Lcom/ts/MainUI/R$string;->can_sshbl:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemConv:Lcom/ts/canview/CanItemIcoList;

    .line 100
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_tyres:I

    sget v2, Lcom/ts/MainUI/R$string;->can_mszdy:I

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemModeCustom:Lcom/ts/canview/CanItemIcoList;

    .line 101
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_driver_assist:I

    sget v2, Lcom/ts/MainUI/R$string;->can_vehi_status:I

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemStatus:Lcom/ts/canview/CanItemIcoList;

    .line 102
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    sget v2, Lcom/ts/MainUI/R$string;->can_other_set:I

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemIconList(IIILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemIcoList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemOther:Lcom/ts/canview/CanItemIcoList;

    .line 104
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemIcoList;

    invoke-virtual {v0, v4}, Lcom/ts/canview/CanItemIcoList;->ShowGone(Z)V

    .line 105
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetAdtAll(Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;)V

    .line 110
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->mAdtAllData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAll;->Update:I

    .line 116
    invoke-direct {p0}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->LayoutUI()V

    .line 119
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 45
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 48
    :pswitch_0
    const-class v1, Lcom/ts/can/gm/sb/CanGMSBCarTypeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 52
    :pswitch_1
    const-class v1, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 56
    :pswitch_2
    const-class v1, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 60
    :pswitch_3
    const-class v1, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 64
    :pswitch_4
    const-class v1, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 68
    :pswitch_5
    const-class v1, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 72
    :pswitch_6
    const-class v1, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 76
    :pswitch_7
    const-class v1, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 80
    :pswitch_8
    const-class v1, Lcom/ts/can/gm/sb/CanGMSBCarStatusActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/sb/CanGMSBCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
