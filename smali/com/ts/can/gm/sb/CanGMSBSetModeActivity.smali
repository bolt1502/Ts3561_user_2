.class public Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGMSBSetModeActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field private static final ITEM_MAX:I = 0x4

.field private static final ITEM_MIN:I = 0x1

.field private static final ITEM_YDXFXP:I = 0x1

.field private static final ITEM_YDXSLQD:I = 0x3

.field private static final ITEM_YDXXG:I = 0x2

.field private static final ITEM_ZDMS:I = 0x4

.field private static mZdmsArrays:[I


# instance fields
.field private mItemFxp:Lcom/ts/canview/CanItemSwitchList;

.field private mItemSlqd:Lcom/ts/canview/CanItemSwitchList;

.field private mItemXg:Lcom/ts/canview/CanItemSwitchList;

.field private mItemZdms:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

.field private mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 33
    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/ts/MainUI/R$string;->can_yiban:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$string;->can_ydg:I

    aput v2, v0, v1

    .line 32
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mZdmsArrays:[I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    .line 37
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    .line 15
    return-void
.end method

.method private IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 153
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 140
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Ydxfxp:I

    .line 141
    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Ydxxg:I

    .line 144
    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Ydxslqd:I

    .line 147
    goto :goto_0

    .line 149
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->AutoMode:I

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private LayoutUI()V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 114
    return-void

    .line 112
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->ShowItem(I)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->IsHaveItem(I)Z

    move-result v0

    .line 119
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemFxp:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemXg:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemSlqd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemZdms:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 72
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 74
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ydxfxp:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemFxp:Lcom/ts/canview/CanItemSwitchList;

    .line 75
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ydxxg:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemXg:Lcom/ts/canview/CanItemSwitchList;

    .line 76
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ydxslqd:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemSlqd:Lcom/ts/canview/CanItemSwitchList;

    .line 77
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_zdmszdy:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mZdmsArrays:[I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemZdms:Lcom/ts/canview/CanItemPopupList;

    .line 78
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarSetEx(Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;)V

    .line 83
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarSetExAdt(Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Update:I

    .line 90
    invoke-direct {p0}, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->LayoutUI()V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Update:I

    .line 100
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemFxp:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Ydxfxp:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 101
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemXg:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Ydxxg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 102
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemSlqd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Ydxslqd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mItemZdms:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->AutoMode:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 107
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 44
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 47
    :pswitch_0
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Ydxfxp:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 50
    :pswitch_1
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Ydxxg:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 53
    :pswitch_2
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->mSBSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Ydxslqd:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetModeActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 60
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 61
    const/16 v0, 0x1f

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    .line 63
    :cond_0
    return-void
.end method
