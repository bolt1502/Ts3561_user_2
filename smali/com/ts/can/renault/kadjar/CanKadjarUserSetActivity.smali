.class public Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanKadjarUserSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;
.implements Lcom/ts/canview/CanItemFsSetList$onFsSetClick;


# static fields
.field protected static final ITEM_CMZDSS:I = 0x5

.field protected static final ITEM_DCSHYSKQ:I = 0x2

.field protected static final ITEM_HBZSQ:I = 0x1

.field protected static final ITEM_MAX:I = 0x7

.field protected static final ITEM_MIN:I = 0x1

.field protected static final ITEM_RESET:I = 0x7

.field protected static final ITEM_TSYL:I = 0x6

.field protected static final ITEM_WBHYD:I = 0x4

.field protected static final ITEM_ZDZCD:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanKadjarUserSetActivity"

.field protected static final mTsylArr:[Ljava/lang/String;


# instance fields
.field protected mItemCmzdss:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemDcshyskq:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemHbzsq:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemReset:Lcom/ts/canview/CanItemFsSetList;

.field protected mItemTsyl:Lcom/ts/canview/CanItemPopupList;

.field protected mItemWbhyd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZdzcd:Lcom/ts/canview/CanItemSwitchList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

.field protected mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 40
    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 41
    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 42
    const-string v2, "3"

    aput-object v2, v0, v1

    .line 38
    sput-object v0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mTsylArr:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    .line 21
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 296
    return-void
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 70
    sget v0, Lcom/ts/MainUI/R$string;->can_hbzsq:I

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemHbzsq:Lcom/ts/canview/CanItemSwitchList;

    .line 71
    sget v0, Lcom/ts/MainUI/R$string;->can_dcshyskq:I

    const/4 v1, 0x2

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemDcshyskq:Lcom/ts/canview/CanItemSwitchList;

    .line 72
    sget v0, Lcom/ts/MainUI/R$string;->can_zdzcd:I

    const/4 v1, 0x3

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemZdzcd:Lcom/ts/canview/CanItemSwitchList;

    .line 73
    sget v0, Lcom/ts/MainUI/R$string;->can_wbhyd:I

    const/4 v1, 0x4

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemWbhyd:Lcom/ts/canview/CanItemSwitchList;

    .line 74
    sget v0, Lcom/ts/MainUI/R$string;->can_jsscmzdss:I

    const/4 v1, 0x5

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemCmzdss:Lcom/ts/canview/CanItemSwitchList;

    .line 75
    sget v0, Lcom/ts/MainUI/R$string;->can_tsqyl:I

    sget-object v1, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mTsylArr:[Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemTsyl:Lcom/ts/canview/CanItemPopupList;

    .line 76
    sget v0, Lcom/ts/MainUI/R$string;->can_setup_reset:I

    const/4 v1, 0x7

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->AddFsSetItem(Lcom/ts/canview/CanItemFsSetList$onFsSetClick;II)Lcom/ts/canview/CanItemFsSetList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemReset:Lcom/ts/canview/CanItemFsSetList;

    .line 77
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemReset:Lcom/ts/canview/CanItemFsSetList;

    sget v1, Lcom/ts/MainUI/R$string;->can_sure_reset:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemFsSetList;->SetMsgText(I)V

    .line 79
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->LayoutUI()V

    .line 80
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 141
    const/4 v0, 0x1

    .line 142
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_0
    const/4 v0, 0x1

    .line 176
    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 145
    :pswitch_0
    const/4 v0, 0x0

    .line 146
    goto :goto_0

    .line 149
    :pswitch_1
    const/4 v0, 0x0

    .line 150
    goto :goto_0

    .line 153
    :pswitch_2
    const/4 v0, 0x0

    .line 154
    goto :goto_0

    .line 157
    :pswitch_3
    const/4 v0, 0x0

    .line 158
    goto :goto_0

    .line 161
    :pswitch_4
    const/4 v0, 0x0

    .line 162
    goto :goto_0

    .line 165
    :pswitch_5
    const/4 v0, 0x0

    .line 166
    goto :goto_0

    .line 169
    :pswitch_6
    const/4 v0, 0x0

    .line 170
    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 137
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->ShowItem(I)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->KadjarGetCarSet(Lcom/lgb/canmodule/CanDataInfo$KadjarSet;)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    .line 91
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemHbzsq:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Hbzsq:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 92
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemDcshyskq:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Dcshyskq:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 93
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemZdzcd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Zdzcd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 94
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemWbhyd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Wbhyd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 95
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemCmzdss:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Cmzdss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 96
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemTsyl:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Tsyl:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 100
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->IsHaveItem(I)Z

    move-result v0

    .line 184
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemHbzsq:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemDcshyskq:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 195
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemZdzcd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 199
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemWbhyd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 203
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemCmzdss:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 207
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemTsyl:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 211
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mItemReset:Lcom/ts/canview/CanItemFsSetList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemFsSetList;->ShowGone(Z)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->ResetData(Z)V

    .line 226
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 286
    .line 291
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 234
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 262
    :goto_0
    :pswitch_0
    return-void

    .line 237
    :pswitch_1
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Hbzsq:I

    invoke-virtual {p0, v2}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 241
    :pswitch_2
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Dcshyskq:I

    invoke-virtual {p0, v2}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 245
    :pswitch_3
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Zdzcd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 249
    :pswitch_4
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Wbhyd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 253
    :pswitch_5
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Cmzdss:I

    invoke-virtual {p0, v2}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->InitUI()V

    .line 66
    return-void
.end method

.method public onFsItem(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "sure"    # Z

    .prologue
    .line 303
    if-eqz p2, :cond_0

    .line 305
    const/16 v0, 0x80

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    .line 308
    :cond_0
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 271
    packed-switch p1, :pswitch_data_0

    .line 280
    :goto_0
    return-void

    .line 274
    :pswitch_0
    const/4 v0, 0x7

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 124
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 126
    const-string v0, "CanKadjarUserSetActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 111
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->ResetData(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarUserSetActivity;->QueryData()V

    .line 115
    const-string v0, "CanKadjarUserSetActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method
