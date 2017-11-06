.class public Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGMSBSetConvActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_DCHYSZDQD:I = 0x1

.field public static final ITEM_DDHSJQX:I = 0x4

.field public static final ITEM_DYJYWZ:I = 0x2

.field public static final ITEM_HSJZDZD:I = 0x5

.field public static final ITEM_JSYBLXC:I = 0x3

.field private static final ITEM_MAX:I = 0x6

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_ZDYS:I = 0x6


# instance fields
.field private mAdtData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

.field private mItemDchyszdqd:Lcom/ts/canview/CanItemSwitchList;

.field private mItemDdhsjqx:Lcom/ts/canview/CanItemSwitchList;

.field private mItemDyjywz:Lcom/ts/canview/CanItemSwitchList;

.field private mItemHsjzdzd:Lcom/ts/canview/CanItemSwitchList;

.field private mItemJsyblxc:Lcom/ts/canview/CanItemSwitchList;

.field private mItemZdys:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

.field private mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    .line 39
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    .line 41
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    .line 42
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    .line 16
    return-void
.end method

.method private IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 193
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->DCYHSZDQD:I

    .line 194
    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Dyjywz:I

    .line 198
    goto :goto_0

    .line 201
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Jsyblxc:I

    .line 202
    goto :goto_0

    .line 205
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Dchszdqx:I

    .line 206
    goto :goto_0

    .line 209
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Zdhszd:I

    .line 210
    goto :goto_0

    .line 213
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Zdys:I

    .line 214
    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private LayoutUI()V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 153
    return-void

    .line 151
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->ShowItem(I)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->IsHaveItem(I)Z

    move-result v0

    .line 157
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemDchyszdqd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemDyjywz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemJsyblxc:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 172
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemDdhsjqx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 176
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemHsjzdzd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 180
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemZdys:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 88
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_dcyhszdqd:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemDchyszdqd:Lcom/ts/canview/CanItemSwitchList;

    .line 89
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_dyjywz:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemDyjywz:Lcom/ts/canview/CanItemSwitchList;

    .line 90
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_jsyblxc:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemJsyblxc:Lcom/ts/canview/CanItemSwitchList;

    .line 91
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_dchsjzdqx:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemDdhsjqx:Lcom/ts/canview/CanItemSwitchList;

    .line 92
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_zdhsjzd:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemHsjzdzd:Lcom/ts/canview/CanItemSwitchList;

    .line 93
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_zdys:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemZdys:Lcom/ts/canview/CanItemSwitchList;

    .line 94
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarSetEx(Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;)V

    .line 99
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarSetExAdt(Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetCarSet(Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetAdtConv(Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Update:I

    .line 109
    invoke-direct {p0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->LayoutUI()V

    .line 110
    const/4 p1, 0x0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtConv;->Update:I

    .line 119
    invoke-direct {p0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->LayoutUI()V

    .line 120
    const/4 p1, 0x0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Update:I

    .line 130
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemDyjywz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Dyjywz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemJsyblxc:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Jsyblxc:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemDdhsjqx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Dchszdqx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemHsjzdzd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Zdhszd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 134
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemZdys:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Zdys:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 138
    :cond_5
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    .line 143
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mItemDchyszdqd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->DCYHSZDQD:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 146
    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 47
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 50
    :pswitch_0
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->DCYHSZDQD:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 54
    :pswitch_1
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Dyjywz:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 58
    :pswitch_2
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Jsyblxc:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 62
    :pswitch_3
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Dchszdqx:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 66
    :pswitch_4
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Zdhszd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 70
    :pswitch_5
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Zdys:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetConvActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 77
    return-void
.end method
