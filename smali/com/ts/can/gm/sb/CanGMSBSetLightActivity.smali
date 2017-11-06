.class public Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGMSBSetLightActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_DDYS:I = 0x2

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_XCD:I = 0x1

.field private static final mDdysArr:[I


# instance fields
.field private mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

.field private mItemDdys:Lcom/ts/canview/CanItemPopupList;

.field private mItemXcd:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/ts/MainUI/R$string;->can_off:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 24
    sget v2, Lcom/ts/MainUI/R$string;->can_1min:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/ts/MainUI/R$string;->can_2min:I

    aput v2, v0, v1

    .line 23
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mDdysArr:[I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    .line 15
    return-void
.end method

.method private IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 126
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 119
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;->XCD:I

    .line 120
    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;->LSDDYS:I

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private LayoutUI()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 98
    return-void

    .line 96
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->ShowItem(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->IsHaveItem(I)Z

    move-result v0

    .line 102
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mItemXcd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 102
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
    .line 54
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 61
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_xcd:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mItemXcd:Lcom/ts/canview/CanItemSwitchList;

    .line 62
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lsddys:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mDdysArr:[I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    .line 63
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetCarSet(Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;)V

    .line 68
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetAdtLight(Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;)V

    .line 70
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mAdtLightData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtLight;->Update:I

    .line 76
    invoke-direct {p0}, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->LayoutUI()V

    .line 77
    const/4 p1, 0x0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    .line 86
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mItemXcd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->XCD:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 87
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mItemDdys:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->LSDDYS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 91
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->XCD:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetLightActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 46
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 48
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    .line 50
    :cond_0
    return-void
.end method
