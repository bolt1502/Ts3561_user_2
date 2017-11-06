.class public Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;
.super Lcom/ts/canview/CanScrollBaseActivity;
.source "CanKadjarParkAssActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field protected static final ITEM_CFTCFZ:I = 0x3

.field protected static final ITEM_HFTCFZ:I = 0x5

.field protected static final ITEM_MAX:I = 0x5

.field protected static final ITEM_MIN:I = 0x1

.field protected static final ITEM_MQTX:I = 0x2

.field protected static final ITEM_QFTCFZ:I = 0x4

.field protected static final ITEM_ZNBCFZ:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanKadjarParkAssActivity"

.field protected static final mZnbcfzArr:[I


# instance fields
.field protected mItemCftcfz:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemHftcfz:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemMqtx:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemQftcfz:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemZnbcfz:Lcom/ts/canview/CanItemPopupList;

.field protected mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

.field protected mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 36
    sget v2, Lcom/ts/MainUI/R$string;->can_invalid:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 37
    sget v2, Lcom/ts/MainUI/R$string;->can_cfwtc:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 38
    sget v2, Lcom/ts/MainUI/R$string;->can_zjtc:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 39
    sget v2, Lcom/ts/MainUI/R$string;->can_xxtc:I

    aput v2, v0, v1

    .line 34
    sput-object v0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mZnbcfzArr:[I

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/canview/CanScrollBaseActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    .line 19
    return-void
.end method


# virtual methods
.method protected CarSet(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 263
    return-void
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 65
    sget v0, Lcom/ts/MainUI/R$string;->can_znbcfzxt:I

    sget-object v1, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mZnbcfzArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->AddPopup(Lcom/ts/canview/CanItemPopupList$onPopItemClick;I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemZnbcfz:Lcom/ts/canview/CanItemPopupList;

    .line 66
    sget v0, Lcom/ts/MainUI/R$string;->can_jsfz_mqtx:I

    const/4 v1, 0x2

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemMqtx:Lcom/ts/canview/CanItemSwitchList;

    .line 67
    sget v0, Lcom/ts/MainUI/R$string;->can_cftcfz:I

    const/4 v1, 0x3

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemCftcfz:Lcom/ts/canview/CanItemSwitchList;

    .line 68
    sget v0, Lcom/ts/MainUI/R$string;->can_qftcfz:I

    const/4 v1, 0x4

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemQftcfz:Lcom/ts/canview/CanItemSwitchList;

    .line 69
    sget v0, Lcom/ts/MainUI/R$string;->can_hftcfz:I

    const/4 v1, 0x5

    invoke-virtual {p0, p0, v0, v1}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->AddSwitch(Landroid/view/View$OnClickListener;II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemHftcfz:Lcom/ts/canview/CanItemSwitchList;

    .line 71
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->LayoutUI()V

    .line 72
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 157
    :goto_0
    const/4 v0, 0x1

    .line 158
    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 135
    :pswitch_0
    const/4 v0, 0x0

    .line 136
    goto :goto_0

    .line 139
    :pswitch_1
    const/4 v0, 0x0

    .line 140
    goto :goto_0

    .line 143
    :pswitch_2
    const/4 v0, 0x0

    .line 144
    goto :goto_0

    .line 147
    :pswitch_3
    const/4 v0, 0x0

    .line 148
    goto :goto_0

    .line 151
    :pswitch_4
    const/4 v0, 0x0

    .line 152
    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 127
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->ShowItem(I)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->KadjarGetCarSet(Lcom/lgb/canmodule/CanDataInfo$KadjarSet;)V

    .line 78
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Update:I

    .line 83
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemZnbcfz:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Znbcfz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemMqtx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Mqtx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemCftcfz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Cftcfz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 86
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemQftcfz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Qftcfz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 87
    iget-object v0, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemHftcfz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Hftcfz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 90
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->IsHaveItem(I)Z

    move-result v0

    .line 166
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemZnbcfz:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemMqtx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemCftcfz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemQftcfz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 185
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mItemHftcfz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->ResetData(Z)V

    .line 200
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 253
    .line 258
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 208
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 211
    :pswitch_0
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Mqtx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 215
    :pswitch_1
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Cftcfz:I

    invoke-virtual {p0, v2}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 219
    :pswitch_2
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Qftcfz:I

    invoke-virtual {p0, v2}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 223
    :pswitch_3
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$KadjarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$KadjarSet;->Hftcfz:I

    invoke-virtual {p0, v2}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ts/canview/CanScrollBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->InitUI()V

    .line 61
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 238
    packed-switch p1, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 241
    :pswitch_0
    const/16 v0, 0x13

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->KadjarCarSet(II)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 114
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onPause()V

    .line 116
    const-string v0, "CanKadjarParkAssActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/ts/canview/CanScrollBaseActivity;->onResume()V

    .line 101
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->ResetData(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/ts/can/renault/kadjar/CanKadjarParkAssActivity;->QueryData()V

    .line 105
    const-string v0, "CanKadjarParkAssActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
