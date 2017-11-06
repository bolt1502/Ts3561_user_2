.class public Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanRWRx5SetLockActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_YKJSMS:I = 0x0

.field private static final ITEM_ZNJCJS:I = 0x1

.field private static final MAX_ITEM:I = 0x1

.field private static final MIN_ITEM:I


# instance fields
.field private mItemYkjsms:Lcom/ts/canview/CanItemPopupList;

.field private mItemZnjcjs:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

.field private mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

.field private final mValueArray:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 28
    sget v2, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 29
    sget v2, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mValueArray:[I

    .line 32
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    .line 33
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    .line 14
    return-void
.end method

.method private showItem()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 61
    return-void

    .line 51
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mItemYkjsms:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Ykjssd:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(I)V

    goto :goto_1

    .line 56
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mItemZnjcjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Znjckssd:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(I)V

    goto :goto_1

    .line 51
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
    .line 37
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 44
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ykjssz:I

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mValueArray:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mItemYkjsms:Lcom/ts/canview/CanItemPopupList;

    .line 45
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_smart_near_lock:I

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mValueArray:[I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mItemZnjcjs:Lcom/ts/canview/CanItemPopupList;

    .line 46
    return-void
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/16 v2, 0x66

    invoke-static {v0, v1, v2}, Lcom/lgb/canmodule/CanJni;->RwRx5Query(III)V

    .line 94
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->RwRx5GetAdt(Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;)V

    .line 66
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->RwRx5GetSet(Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;)V

    .line 68
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Update:I

    .line 74
    invoke-direct {p0}, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->showItem()V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Update:I

    .line 84
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mItemYkjsms:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Ykjssd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mItemZnjcjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetLockActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Znjckssd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 89
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    const/16 v1, 0xff

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 104
    :pswitch_0
    const/16 v0, 0x12

    invoke-static {v0, p2, v1, v1}, Lcom/lgb/canmodule/CanJni;->RwRx5CarSet(IIII)V

    goto :goto_0

    .line 107
    :pswitch_1
    const/16 v0, 0x20

    invoke-static {v0, p2, v1, v1}, Lcom/lgb/canmodule/CanJni;->RwRx5CarSet(IIII)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
