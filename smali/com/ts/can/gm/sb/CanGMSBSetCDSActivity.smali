.class public Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGMSBSetCDSActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CDBHJS:I = 0x7

.field public static final ITEM_CYMQBJ:I = 0x1

.field public static final ITEM_HFCLTGJS:I = 0x6

.field private static final ITEM_MAX:I = 0x7

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_QCZTTZ:I = 0x2

.field public static final ITEM_TSLX:I = 0x5

.field public static final ITEM_ZDFZZB:I = 0x3

.field public static final ITEM_ZSYXHZDTX:I = 0x4

.field private static final mQczttzArray:[I

.field private static final mTxlxArray:[I

.field private static final mZdfzzbArr:[I


# instance fields
.field private mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

.field private mItemCdbhjs:Lcom/ts/canview/CanItemSwitchList;

.field private mItemCymqbj:Lcom/ts/canview/CanItemSwitchList;

.field private mItemHfcltgjs:Lcom/ts/canview/CanItemSwitchList;

.field private mItemQczttz:Lcom/ts/canview/CanItemPopupList;

.field private mItemTslx:Lcom/ts/canview/CanItemPopupList;

.field private mItemZdfzzb:Lcom/ts/canview/CanItemPopupList;

.field private mItemZsyxhzdtx:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

.field private mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 32
    sget v1, Lcom/ts/MainUI/R$string;->can_baojing:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_bjhzd:I

    aput v1, v0, v4

    .line 31
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mZdfzzbArr:[I

    .line 34
    new-array v0, v4, [I

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->can_bjying:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_aqtszy:I

    aput v1, v0, v3

    .line 34
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mTxlxArray:[I

    .line 38
    new-array v0, v4, [I

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v3

    .line 38
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mQczttzArray:[I

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    .line 53
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    .line 54
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    .line 55
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    .line 17
    return-void
.end method

.method private IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 244
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 214
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;->CYMQJB:I

    .line 215
    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->TslxODI:I

    .line 219
    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Qczttz:I

    .line 223
    goto :goto_0

    .line 226
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Zdfzzb:I

    .line 227
    goto :goto_0

    .line 230
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Zsyxhqdtx:I

    .line 231
    goto :goto_0

    .line 234
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Cdbhts:I

    .line 235
    goto :goto_0

    .line 238
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Hfcltgts:I

    .line 239
    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private LayoutUI()V
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 173
    return-void

    .line 171
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->ShowItem(I)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->IsHaveItem(I)Z

    move-result v0

    .line 177
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemCymqbj:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemTslx:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemZdfzzb:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 192
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemHfcltgjs:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 196
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemCdbhjs:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 200
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemQczttz:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 204
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemZsyxhzdtx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 108
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_cymqbj:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemCymqbj:Lcom/ts/canview/CanItemSwitchList;

    .line 109
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_tslx:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mTxlxArray:[I

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemTslx:Lcom/ts/canview/CanItemPopupList;

    .line 110
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_zdfzzb:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mZdfzzbArr:[I

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemZdfzzb:Lcom/ts/canview/CanItemPopupList;

    .line 111
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_hfcltgjs:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemHfcltgjs:Lcom/ts/canview/CanItemSwitchList;

    .line 112
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_cdbhjs:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemCdbhjs:Lcom/ts/canview/CanItemSwitchList;

    .line 113
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_qczttz:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mQczttzArray:[I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemQczttz:Lcom/ts/canview/CanItemPopupList;

    .line 114
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_zsyxhzdtx:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemZsyxhzdtx:Lcom/ts/canview/CanItemSwitchList;

    .line 115
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetCarSet(Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetAdtPzjc(Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarSetEx(Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;)V

    .line 122
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarSetExAdt(Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mAdtPzjcData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtPzjc;->Update:I

    .line 130
    invoke-direct {p0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->LayoutUI()V

    .line 131
    const/4 p1, 0x0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Update:I

    .line 140
    invoke-direct {p0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->LayoutUI()V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    .line 149
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemCymqbj:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->CYMQJB:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 157
    :cond_6
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Update:I

    .line 159
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemZdfzzb:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Zdfzzb:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 160
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemZsyxhzdtx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Zsyxhqdtx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 161
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemHfcltgjs:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Hfcltgts:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 162
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mItemCdbhjs:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Cdbhts:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 166
    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 60
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    :pswitch_0
    return-void

    .line 63
    :pswitch_1
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->CYMQJB:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 67
    :pswitch_2
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Hfcltgts:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 71
    :pswitch_3
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Cdbhts:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 75
    :pswitch_4
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Zsyxhqdtx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetCDSActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 97
    :goto_0
    :pswitch_0
    return-void

    .line 85
    :pswitch_1
    const/16 v0, 0x10

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 89
    :pswitch_2
    const/16 v0, 0x11

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 93
    :pswitch_3
    const/16 v0, 0x12

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
