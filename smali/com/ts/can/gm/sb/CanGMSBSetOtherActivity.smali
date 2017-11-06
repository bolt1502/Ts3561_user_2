.class public Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGMSBSetOtherActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;


# static fields
.field public static final ITEM_FS_SET:I = 0x3

.field public static final ITEM_LANGUAGE:I = 0x1

.field public static final ITEM_RADAR_TOGGLE:I = 0x2

.field private static final mLangArray:[I


# instance fields
.field private mItemRadar:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 26
    sget v2, Lcom/ts/MainUI/R$string;->can_lang_en:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/ts/MainUI/R$string;->can_language_chinese:I

    aput v2, v0, v1

    .line 25
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mLangArray:[I

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    .line 15
    return-void
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 67
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lang_set:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mLangArray:[I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    .line 68
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_r_radar_sw:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mItemRadar:Lcom/ts/canview/CanItemSwitchList;

    .line 69
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_factory_set:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemFsSetList(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemTextBtnList;

    .line 70
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetCarRadar(Lcom/lgb/canmodule/CanDataInfo$GM_Radar;)V

    .line 76
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;->Update:I

    .line 81
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mItemRadar:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;->fgOn:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 84
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->mRadarData:Lcom/lgb/canmodule/CanDataInfo$GM_Radar;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_Radar;->fgOn:I

    invoke-virtual {p0, v1}, Lcom/ts/can/gm/sb/CanGMSBSetOtherActivity;->Neg(I)I

    move-result v1

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->GMRadarCtrl(I)V

    goto :goto_0

    .line 41
    :pswitch_1
    new-instance v1, Lcom/ts/canview/CanItemMsgBox;

    const/4 v2, 0x3

    sget v3, Lcom/ts/MainUI/R$string;->can_sure_setup:I

    invoke-direct {v1, v2, p0, v3, p0}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;)V

    goto :goto_0

    .line 34
    nop

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
    .line 48
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 49
    const/16 v0, 0x20

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    .line 51
    :cond_0
    return-void
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 55
    const/16 v0, 0x21

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    .line 56
    return-void
.end method
