.class public Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanRWRx5SetLightActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_BWHJ:I = 0x0

.field private static final ITEM_XCZS:I = 0x1

.field private static final MAX_ITEM:I = 0x1

.field private static final MIN_ITEM:I


# instance fields
.field private mItemBwhj:Lcom/ts/canview/CanItemSwitchList;

.field private mItemXczs:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

.field private mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

.field private final mXczsArray:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    .line 29
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 32
    sget v2, Lcom/ts/MainUI/R$string;->can_only_light:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 33
    sget v2, Lcom/ts/MainUI/R$string;->can_dghlb:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mXczsArray:[I

    .line 15
    return-void
.end method

.method private showItem()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 62
    return-void

    .line 52
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mItemBwhj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Bwhjsn:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(I)V

    goto :goto_1

    .line 57
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mItemXczs:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Xczssn:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(I)V

    goto :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 45
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_bwhj:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mItemBwhj:Lcom/ts/canview/CanItemSwitchList;

    .line 46
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_xcd:I

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mXczsArray:[I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mItemXczs:Lcom/ts/canview/CanItemPopupList;

    .line 47
    return-void
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/16 v2, 0x66

    invoke-static {v0, v1, v2}, Lcom/lgb/canmodule/CanJni;->RwRx5Query(III)V

    .line 95
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->RwRx5GetAdt(Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;)V

    .line 67
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->RwRx5GetSet(Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Update:I

    .line 75
    invoke-direct {p0}, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->showItem()V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Update:I

    .line 85
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mItemBwhj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Bwhjsn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mItemXczs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Xczssn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 90
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xff

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const/16 v1, 0x3a

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Bwhjsn:I

    invoke-virtual {p0, v2}, Lcom/ts/can/saic/rx5/CanRWRx5SetLightActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2, v3, v3}, Lcom/lgb/canmodule/CanJni;->RwRx5CarSet(IIII)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    const/16 v1, 0xff

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 113
    :pswitch_0
    const/16 v0, 0x3b

    invoke-static {v0, p2, v1, v1}, Lcom/lgb/canmodule/CanJni;->RwRx5CarSet(IIII)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
