.class public Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanKY3XSetLockActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_AQKZ:I = 0x4

.field private static final ITEM_BDSG:I = 0x3

.field private static final ITEM_JJZDSS:I = 0x2

.field private static final ITEM_XHJS:I = 0x1

.field private static final ITEM_ZDLS:I

.field private static mAqkzArray:[Ljava/lang/String;

.field private static mBdsgArray:[Ljava/lang/String;


# instance fields
.field private mItemAqkz:Lcom/ts/canview/CanItemPopupList;

.field private mItemBdsg:Lcom/ts/canview/CanItemPopupList;

.field private mItemJjzdss:Lcom/ts/canview/CanItemSwitchList;

.field private mItemXhjs:Lcom/ts/canview/CanItemSwitchList;

.field private mItemZdjs:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    .line 14
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_kaiyi_3x_bdsg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mBdsgArray:[Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_kaiyi_3x_aqkz:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mAqkzArray:[Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 79
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_tigger7_auto_lock:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mItemZdjs:Lcom/ts/canview/CanItemSwitchList;

    .line 80
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_kaiyi_3x_xhjs:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mItemXhjs:Lcom/ts/canview/CanItemSwitchList;

    .line 81
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_kaiyi_3x_jjzdss:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mItemJjzdss:Lcom/ts/canview/CanItemSwitchList;

    .line 82
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_kaiyi_3x_bdsg:I

    sget-object v2, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mBdsgArray:[Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mItemBdsg:Lcom/ts/canview/CanItemPopupList;

    .line 83
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_kaiyi_3x_aqkz:I

    sget-object v2, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mAqkzArray:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mItemAqkz:Lcom/ts/canview/CanItemPopupList;

    .line 84
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->KaiYi3xGetInfo(Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;)V

    .line 90
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Update:I

    .line 96
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mItemZdjs:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Zdls:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 97
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mItemXhjs:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Xhjs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 98
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mItemJjzdss:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Jjzdss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mItemBdsg:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Bdsg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mItemAqkz:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Aqkz:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 104
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 42
    :pswitch_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Zdls:I

    invoke-virtual {p0, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 45
    :pswitch_1
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Xhjs:I

    invoke-virtual {p0, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 48
    :pswitch_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KaiYi3X_CarSet;->Jjzdss:I

    invoke-virtual {p0, v2}, Lcom/ts/can/kaiyi/x3/CanKY3XSetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 58
    :pswitch_0
    const/4 v0, 0x6

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 61
    :pswitch_1
    const/4 v0, 0x5

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->KaiYi3xCarSet(II)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
