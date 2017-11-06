.class public Lcom/ts/can/df/CanT70CarInfoActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanT70CarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemFsSetList$onFsSetClick;


# static fields
.field protected static final ITEM_A_V_M_FLASH:I = 0x3

.field protected static final ITEM_CAR_TYPE:I = 0x5

.field protected static final ITEM_FIRST_BOOT:I = 0x2

.field protected static final ITEM_FXPCF:I = 0x8

.field protected static final ITEM_LT_LIGHT:I = 0x6

.field protected static final ITEM_MAX:I = 0x9

.field protected static final ITEM_MIN:I = 0x1

.field protected static final ITEM_QJDCF:I = 0x9

.field protected static final ITEM_RESET:I = 0x4

.field protected static final ITEM_RT_LIGHT:I = 0x7

.field protected static final ITEM_SMART_IN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanT70CarInfoActivity"

.field private static mTypeArray:[Ljava/lang/String;


# instance fields
.field protected mItemAVMFlash:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemCarType:Lcom/ts/canview/CanItemCarType;

.field protected mItemFirstBoot:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemFxpCf:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemLtLight:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemQjdCf:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemReset:Lcom/ts/canview/CanItemFsSetList;

.field protected mItemRtLight:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemSmartIn:Lcom/ts/canview/CanItemSwitchList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

.field protected mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    .line 61
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;-><init>()V

    iput-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    .line 24
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 347
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->QCCamSet(II)V

    .line 348
    return-void
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/ts/can/df/CanT70CarInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->can_qc_t70_car_type_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ts/can/df/CanT70CarInfoActivity;->mTypeArray:[Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_car_type_select:I

    sget-object v2, Lcom/ts/can/df/CanT70CarInfoActivity;->mTypeArray:[Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemCarType(I[Ljava/lang/String;ILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemCarType;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    .line 79
    const-string v0, "\u667a\u80fd\u8fdb\u5165"

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/df/CanT70CarInfoActivity;->AddSwitch(Landroid/view/View$OnClickListener;Ljava/lang/String;I)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemSmartIn:Lcom/ts/canview/CanItemSwitchList;

    .line 80
    const-string v0, "\u9996\u6b21\u524d\u8fdb\u6863\u81ea\u52a8\u542f\u52a8"

    const/4 v1, 0x2

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/df/CanT70CarInfoActivity;->AddSwitch(Landroid/view/View$OnClickListener;Ljava/lang/String;I)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemFirstBoot:Lcom/ts/canview/CanItemSwitchList;

    .line 81
    const-string v0, "AVM\u5f00\u673a\u52a8\u753b"

    const/4 v1, 0x3

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/df/CanT70CarInfoActivity;->AddSwitch(Landroid/view/View$OnClickListener;Ljava/lang/String;I)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemAVMFlash:Lcom/ts/canview/CanItemSwitchList;

    .line 83
    const-string v0, "\u5de6\u8f6c\u5411\u706f\u89e6\u53d1"

    const/4 v1, 0x6

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/df/CanT70CarInfoActivity;->AddSwitch(Landroid/view/View$OnClickListener;Ljava/lang/String;I)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemLtLight:Lcom/ts/canview/CanItemSwitchList;

    .line 84
    const-string v0, "\u53f3\u8f6c\u5411\u706f\u89e6\u53d1"

    const/4 v1, 0x7

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/df/CanT70CarInfoActivity;->AddSwitch(Landroid/view/View$OnClickListener;Ljava/lang/String;I)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemRtLight:Lcom/ts/canview/CanItemSwitchList;

    .line 85
    const-string v0, "\u65b9\u5411\u76d8\u89e6\u53d1"

    const/16 v1, 0x8

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/df/CanT70CarInfoActivity;->AddSwitch(Landroid/view/View$OnClickListener;Ljava/lang/String;I)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemFxpCf:Lcom/ts/canview/CanItemSwitchList;

    .line 86
    const-string v0, "\u524d\u8fdb\u6863\u89e6\u53d1"

    const/16 v1, 0x9

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/df/CanT70CarInfoActivity;->AddSwitch(Landroid/view/View$OnClickListener;Ljava/lang/String;I)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemQjdCf:Lcom/ts/canview/CanItemSwitchList;

    .line 88
    new-instance v0, Lcom/ts/canview/CanItemFsSetList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanItemFsSetList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemReset:Lcom/ts/canview/CanItemFsSetList;

    .line 89
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemReset:Lcom/ts/canview/CanItemFsSetList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/ts/canview/CanItemFsSetList;->SetIdClickListener(ILcom/ts/canview/CanItemFsSetList$onFsSetClick;)V

    .line 90
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemReset:Lcom/ts/canview/CanItemFsSetList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemFsSetList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemCarType:Lcom/ts/canview/CanItemCarType;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemCarType;->GetPopItem()Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 94
    invoke-virtual {p0}, Lcom/ts/can/df/CanT70CarInfoActivity;->LayoutUI()V

    .line 95
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 5
    .param p1, "item"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 178
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    .line 179
    .local v1, "subType":I
    const/4 v0, 0x0

    .line 181
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 218
    :goto_0
    :pswitch_0
    invoke-static {v0}, Lcom/ts/can/df/CanT70CarInfoActivity;->i2b(I)Z

    move-result v2

    return v2

    .line 184
    :pswitch_1
    if-ne v1, v4, :cond_0

    move v0, v2

    .line 185
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v3

    .line 184
    goto :goto_1

    .line 188
    :pswitch_2
    if-ne v1, v4, :cond_1

    move v0, v2

    .line 189
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v3

    .line 188
    goto :goto_2

    .line 192
    :pswitch_3
    if-ne v1, v4, :cond_2

    move v0, v2

    .line 193
    :goto_3
    goto :goto_0

    :cond_2
    move v0, v3

    .line 192
    goto :goto_3

    .line 196
    :pswitch_4
    if-ne v1, v4, :cond_3

    move v0, v2

    .line 197
    :goto_4
    goto :goto_0

    :cond_3
    move v0, v3

    .line 196
    goto :goto_4

    .line 200
    :pswitch_5
    if-ne v1, v3, :cond_4

    move v0, v3

    .line 201
    :goto_5
    goto :goto_0

    :cond_4
    move v0, v2

    .line 200
    goto :goto_5

    .line 204
    :pswitch_6
    if-ne v1, v3, :cond_5

    move v0, v3

    .line 205
    :goto_6
    goto :goto_0

    :cond_5
    move v0, v2

    .line 204
    goto :goto_6

    .line 208
    :pswitch_7
    if-ne v1, v3, :cond_6

    move v0, v3

    .line 209
    :goto_7
    goto :goto_0

    :cond_6
    move v0, v2

    .line 208
    goto :goto_7

    .line 212
    :pswitch_8
    if-ne v1, v3, :cond_7

    move v0, v3

    .line 213
    :goto_8
    goto :goto_0

    :cond_7
    move v0, v2

    .line 212
    goto :goto_8

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 174
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/df/CanT70CarInfoActivity;->ShowItem(I)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 141
    const/16 v0, 0x61

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->QCQuery(II)V

    .line 142
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->QCGetCamSetup(Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/df/CanT70CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->Update:I

    invoke-static {v0}, Lcom/ts/can/df/CanT70CarInfoActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->Update:I

    .line 125
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemSmartIn:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgSmartIn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 126
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemFirstBoot:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgFirstBoot:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 127
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemAVMFlash:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgAVMFlash:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemLtLight:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgZzxdcf:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemRtLight:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgYzxdcf:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemFxpCf:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgFxpcf:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemQjdCf:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgQjdcf:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 137
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/ts/can/df/CanT70CarInfoActivity;->IsHaveItem(I)Z

    move-result v0

    .line 226
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 263
    :goto_0
    :pswitch_0
    return-void

    .line 229
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemSmartIn:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemFirstBoot:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 237
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemAVMFlash:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 241
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemReset:Lcom/ts/canview/CanItemFsSetList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemFsSetList;->ShowGone(Z)V

    goto :goto_0

    .line 245
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemLtLight:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 249
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemRtLight:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 253
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemFxpCf:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 257
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mItemQjdCf:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/df/CanT70CarInfoActivity;->ResetData(Z)V

    .line 272
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 338
    .line 343
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 280
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 313
    :goto_0
    :pswitch_0
    return-void

    .line 283
    :pswitch_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgSmartIn:I

    invoke-virtual {p0, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->CarSet(II)V

    goto :goto_0

    .line 287
    :pswitch_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgFirstBoot:I

    invoke-virtual {p0, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->CarSet(II)V

    goto :goto_0

    .line 291
    :pswitch_3
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgAVMFlash:I

    invoke-virtual {p0, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->CarSet(II)V

    goto :goto_0

    .line 295
    :pswitch_4
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgZzxdcf:I

    invoke-virtual {p0, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->CarSet(II)V

    goto :goto_0

    .line 299
    :pswitch_5
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgYzxdcf:I

    invoke-virtual {p0, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->CarSet(II)V

    goto :goto_0

    .line 303
    :pswitch_6
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgFxpcf:I

    invoke-virtual {p0, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->CarSet(II)V

    goto :goto_0

    .line 307
    :pswitch_7
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/ts/can/df/CanT70CarInfoActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VenuciaCam;->fgQjdcf:I

    invoke-virtual {p0, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/df/CanT70CarInfoActivity;->CarSet(II)V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/ts/can/df/CanT70CarInfoActivity;->InitUI()V

    .line 72
    return-void
.end method

.method public onFsItem(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "sure"    # Z

    .prologue
    const/4 v1, 0x4

    .line 354
    if-eqz p2, :cond_0

    .line 356
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->QCCamSet(II)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/lgb/canmodule/CanJni;->QCCamSet(II)V

    goto :goto_0
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 325
    :pswitch_0
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetCanSubT(I)I

    .line 326
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 161
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 163
    const-string v0, "CanT70CarInfoActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 148
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/df/CanT70CarInfoActivity;->ResetData(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/ts/can/df/CanT70CarInfoActivity;->QueryData()V

    .line 152
    const-string v0, "CanT70CarInfoActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method
