.class public Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGeelyBoySetLockActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_BSCMZDGC:I = 0x0

.field private static final ITEM_XHJS:I = 0x2

.field private static final ITEM_YKLSFK:I = 0x3

.field private static final ITEM_ZDXMWZDZT:I = 0x1

.field private static mYklsfkArray:[Ljava/lang/String;


# instance fields
.field private mItemBscmzdgc:Lcom/ts/canview/CanItemSwitchList;

.field private mItemXhjs:Lcom/ts/canview/CanItemSwitchList;

.field private mItemYklsfk:Lcom/ts/canview/CanItemPopupList;

.field private mItemZdxmwzdzt:Lcom/ts/canview/CanItemSwitchList;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;-><init>()V

    iput-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    .line 14
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_geely_boy_yklsfk:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mYklsfkArray:[Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 71
    .local v0, "manager":Lcom/ts/canview/CanScrollList;
    sget v1, Lcom/ts/MainUI/R$string;->can_geely_boy_bscmzdgc:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mItemBscmzdgc:Lcom/ts/canview/CanItemSwitchList;

    .line 72
    sget v1, Lcom/ts/MainUI/R$string;->can_geely_boy_zdxmwzdzt:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mItemZdxmwzdzt:Lcom/ts/canview/CanItemSwitchList;

    .line 73
    sget v1, Lcom/ts/MainUI/R$string;->can_kaiyi_3x_xhjs:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mItemXhjs:Lcom/ts/canview/CanItemSwitchList;

    .line 74
    sget v1, Lcom/ts/MainUI/R$string;->can_yklsts:I

    sget-object v2, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mYklsfkArray:[Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mItemYklsfk:Lcom/ts/canview/CanItemPopupList;

    .line 75
    return-void
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 98
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarQuery(II)V

    .line 99
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GeelyBoyGetInfo(Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;)V

    .line 81
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Update:I

    invoke-static {v0}, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Update:I

    .line 87
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mItemBscmzdgc:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Bscmzdgc:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 88
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mItemZdxmwzdzt:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Bshzdxmszdzt:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 89
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mItemXhjs:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Xhjs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 90
    iget-object v0, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mItemYklsfk:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Yklsfk:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 94
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 37
    :pswitch_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Bscmzdgc:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 41
    :pswitch_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Bshzdxmszdzt:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 45
    :pswitch_2
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GeelyBoy_Settings;->Xhjs:I

    invoke-virtual {p0, v2}, Lcom/ts/can/geely/boy/CanGeelyBoySetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 55
    :pswitch_0
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GeelyBoyCarSet(II)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
