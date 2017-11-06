.class public Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanRWRx5SetOtherActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_FS_SET:I = 0x2

.field private static final ITEM_LANGUAGE:I = 0x0

.field private static final ITEM_TYFW:I = 0x1

.field private static final MAX_ITEM:I = 0x2

.field private static final MIN_ITEM:I


# instance fields
.field private mItemFsSet:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemTyfw:Lcom/ts/canview/CanItemTextBtnList;

.field private final mLanguageArray:[I

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

.field private mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    .line 32
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 35
    sget v2, Lcom/ts/MainUI/R$string;->can_language_english:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 36
    sget v2, Lcom/ts/MainUI/R$string;->can_language_chinese:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mLanguageArray:[I

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;)Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    return-object v0
.end method

.method private showItem()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 66
    return-void

    .line 56
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mItemTyfw:Lcom/ts/canview/CanItemTextBtnList;

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Tyfw:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(I)V

    goto :goto_1

    .line 61
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mItemFsSet:Lcom/ts/canview/CanItemTextBtnList;

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Hfccszsn:I

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(I)V

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 48
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lang_set:I

    iget-object v2, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mLanguageArray:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    .line 49
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_rw_rx5_tyfw:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemFsSetList(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mItemTyfw:Lcom/ts/canview/CanItemTextBtnList;

    .line 50
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_rw_rx5_hfccsz:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemFsSetList(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mItemFsSet:Lcom/ts/canview/CanItemTextBtnList;

    .line 51
    return-void
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/16 v2, 0x66

    invoke-static {v0, v1, v2}, Lcom/lgb/canmodule/CanJni;->RwRx5Query(III)V

    .line 101
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->RwRx5GetAdt(Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;)V

    .line 71
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->RwRx5GetSet(Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;)V

    .line 73
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5Adt:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetAdt;->Update:I

    .line 79
    invoke-direct {p0}, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->showItem()V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Update:I

    .line 89
    iget-object v0, p0, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;->mRx5SetInfo:Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$RwRx5_SetInfo;->Tyfw:I

    if-nez v0, :cond_4

    .line 90
    sget v0, Lcom/ts/MainUI/R$string;->can_rw_rx5_tyfw_finish:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    :cond_3
    :goto_0
    return-void

    .line 92
    :cond_4
    sget v0, Lcom/ts/MainUI/R$string;->can_rw_rx5_tyfw_running:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 110
    :pswitch_0
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    const/4 v2, 0x1

    sget v3, Lcom/ts/MainUI/R$string;->can_rw_rx5_sure:I

    new-instance v4, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity$1;

    invoke-direct {v4, p0}, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity$1;-><init>(Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;)V

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    goto :goto_0

    .line 120
    :pswitch_1
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    const/4 v2, 0x2

    sget v3, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    new-instance v4, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity$2;

    invoke-direct {v4, p0}, Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity$2;-><init>(Lcom/ts/can/saic/rx5/CanRWRx5SetOtherActivity;)V

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 133
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 135
    :pswitch_0
    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->RwRx5LangSet(II)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
