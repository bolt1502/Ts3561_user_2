.class public Lcom/ts/can/gm/comm/CanGMSetCDSActivity;
.super Lcom/ts/can/gm/comm/CanGMBaseActivity;
.source "CanGMSetCDSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CYMQBJ:I = 0x1

.field private static final ITEM_MAX:I = 0x4

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_QCZTTZ:I = 0x2

.field public static final ITEM_ZDFZZB:I = 0x3

.field public static final ITEM_ZSYXHZDTX:I = 0x4

.field public static final TAG:Ljava/lang/String; = "CanGMCarInfoActivity"

.field private static final mZdfzzbArr:[I


# instance fields
.field private mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

.field private mItemCymqbj:Lcom/ts/canview/CanItemSwitchList;

.field private mItemQczttz:Lcom/ts/canview/CanItemSwitchList;

.field private mItemZdfzzb:Lcom/ts/canview/CanItemPopupList;

.field private mItemZsyxhzdtx:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 35
    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 36
    sget v2, Lcom/ts/MainUI/R$string;->can_baojing:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 37
    sget v2, Lcom/ts/MainUI/R$string;->can_bjhzd:I

    aput v2, v0, v1

    .line 33
    sput-object v0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mZdfzzbArr:[I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    .line 19
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 213
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 214
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 215
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 216
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 223
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 224
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 225
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 226
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 137
    sget v0, Lcom/ts/MainUI/R$string;->can_cymqbj:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemCymqbj:Lcom/ts/canview/CanItemSwitchList;

    .line 138
    sget v0, Lcom/ts/MainUI/R$string;->can_qczttz:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemQczttz:Lcom/ts/canview/CanItemSwitchList;

    .line 139
    sget v0, Lcom/ts/MainUI/R$string;->can_zdfzzb:I

    sget-object v1, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mZdfzzbArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemZdfzzb:Lcom/ts/canview/CanItemPopupList;

    .line 140
    sget v0, Lcom/ts/MainUI/R$string;->can_gl8_2017_zsyxhzdtx:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemZsyxhzdtx:Lcom/ts/canview/CanItemSwitchList;

    .line 142
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 179
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 161
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;->CYMQJB:I

    .line 162
    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;->QCZTTZ:I

    .line 166
    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;->ZDFFZB:I

    .line 170
    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;->Zsyxhqdtx:I

    .line 174
    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 152
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->ShowItem(I)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->GetSetData()V

    .line 68
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetAdtPzjc(Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;)V

    .line 69
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;->Update:I

    .line 75
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->LayoutUI()V

    .line 76
    const/4 p1, 0x0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mbLayout:Z

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    :cond_2
    const-string v0, "CanGMCarInfoActivity"

    const-string v1, "mSetData.UpdateOnce"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    .line 93
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemCymqbj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->CYMQJB:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 94
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemQczttz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->QCZTTZ:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 95
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemZsyxhzdtx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Zsyxhqdtx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 97
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->ZDFFZB:I

    if-ne v0, v1, :cond_4

    .line 99
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemZdfzzb:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 109
    :cond_3
    :goto_0
    return-void

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemZdfzzb:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->ZDFFZB:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->IsHaveItem(I)Z

    move-result v0

    .line 187
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemCymqbj:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemQczttz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemZdfzzb:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 203
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mItemZsyxhzdtx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->ResetData(Z)V

    .line 267
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 235
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 259
    :goto_0
    :pswitch_0
    return-void

    .line 238
    :pswitch_1
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->CYMQJB:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 242
    :pswitch_2
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 244
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->QCZTTZ:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 248
    :cond_0
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->QCZTTZ:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 253
    :pswitch_3
    const/16 v1, 0x52

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Zsyxhqdtx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->InitUI()V

    .line 60
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 273
    packed-switch p1, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 277
    :pswitch_0
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 279
    :cond_0
    const/16 v0, 0x18

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 282
    :cond_1
    const/16 v0, 0x19

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 131
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onPause()V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onResume()V

    .line 120
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->ResetData(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetCDSActivity;->QueryData()V

    .line 124
    return-void
.end method
