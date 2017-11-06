.class public Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanJYX5CarInfoActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_CAR_TYPE:I = 0x4

.field private static final ITEM_CSSS:I = 0x2

.field private static final ITEM_DDYS:I = 0x0

.field private static final ITEM_JDSJ:I = 0x1

.field private static final ITEM_ZDCSS:I = 0x3

.field private static mCarTypeArray:[Ljava/lang/String;

.field private static mDdysArray:[Ljava/lang/String;

.field private static mJdsjArray:[Ljava/lang/String;


# instance fields
.field private mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

.field private mItemCarType:Lcom/ts/canview/CanItemCarType;

.field private mItemCsss:Lcom/ts/canview/CanItemSwitchList;

.field private mItemDdys:Lcom/ts/canview/CanItemPopupList;

.field private mItemJdsj:Lcom/ts/canview/CanItemPopupList;

.field private mItemZdcss:Lcom/ts/canview/CanItemSwitchList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    .line 17
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_df_jyx5_ddys:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mDdysArray:[Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_df_jyx5_jdsj:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mJdsjArray:[Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$array;->can_jyx5_car_type_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarTypeArray:[Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 85
    .local v0, "manager":Lcom/ts/canview/CanScrollList;
    sget v1, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v2, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarTypeArray:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemCarType(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemCarType;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 86
    sget v1, Lcom/ts/MainUI/R$string;->can_df_jyx5_ddys:I

    sget-object v2, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mDdysArray:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    .line 87
    sget v1, Lcom/ts/MainUI/R$string;->can_df_jyx5_jdsj:I

    sget-object v2, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mJdsjArray:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mItemJdsj:Lcom/ts/canview/CanItemPopupList;

    .line 88
    sget v1, Lcom/ts/MainUI/R$string;->can_df_jyx5_csss:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mItemCsss:Lcom/ts/canview/CanItemSwitchList;

    .line 89
    sget v1, Lcom/ts/MainUI/R$string;->can_df_jyx5_zdcss:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mItemZdcss:Lcom/ts/canview/CanItemSwitchList;

    .line 91
    iget-object v1, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 92
    return-void
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->DfJyX5CarQuery(I)V

    .line 115
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->DfJyX5GetInfo(Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;)V

    .line 98
    iget-object v0, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;->Update:I

    .line 104
    iget-object v0, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;->Ddys:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 105
    iget-object v0, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mItemJdsj:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;->Jdsj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 106
    iget-object v0, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mItemCsss:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;->Csss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 107
    iget-object v0, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mItemZdcss:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;->Zdcss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 110
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 41
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 44
    :pswitch_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;->Csss:I

    invoke-virtual {p0, v2}, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->DfJyX5CarSet(II)V

    goto :goto_0

    .line 47
    :pswitch_1
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->mCarInfo:Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JyX5_CarInfo;->Zdcss:I

    invoke-virtual {p0, v2}, Lcom/ts/can/df/jyx5/CanJYX5CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->DfJyX5CarSet(II)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 54
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    :pswitch_0
    return-void

    .line 57
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->DfJyX5CarSet(II)V

    goto :goto_0

    .line 61
    :pswitch_2
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->DfJyX5CarSet(II)V

    goto :goto_0

    .line 65
    :pswitch_3
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 66
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
