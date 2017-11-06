.class public Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;
.super Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;
.source "CanMzdCx4DriveDisplayActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field private static final ITEM_DRIVE_DISPLAY:I = 0x3

.field private static final ITEM_DRIVE_HEIGHT:I = 0x0

.field private static final ITEM_DRIVE_LIGHT:I = 0x2

.field private static final ITEM_JIAOZHUN:I = 0x5

.field private static final ITEM_LIGHT_CONTROL:I = 0x1

.field private static final ITEM_NAVIGATION:I = 0x4


# instance fields
.field private mControlArray:[I

.field private mItemDisplay:Lcom/ts/canview/CanItemSwitchList;

.field private mItemHeight:Lcom/ts/canview/CanItemProgressList;

.field private mItemJiaozhun:Lcom/ts/canview/CanItemProgressList;

.field private mItemLight:Lcom/ts/canview/CanItemProgressList;

.field private mItemLightControl:Lcom/ts/canview/CanItemPopupList;

.field private mItemNavigation:Lcom/ts/canview/CanItemSwitchList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4BaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/ts/MainUI/R$string;->can_mzd_cx4_drive_auto:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 29
    sget v2, Lcom/ts/MainUI/R$string;->can_mzd_cx4_drive_owner:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mControlArray:[I

    .line 11
    return-void
.end method

.method private AddProgressItem(IIII)Lcom/ts/canview/CanItemProgressList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 97
    new-instance v0, Lcom/ts/canview/CanItemProgressList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemProgressList;-><init>(Landroid/content/Context;I)V

    .line 98
    .local v0, "item":Lcom/ts/canview/CanItemProgressList;
    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetStep(I)V

    .line 99
    invoke-virtual {v0, p2, p3}, Lcom/ts/canview/CanItemProgressList;->SetMinMax(II)V

    .line 100
    invoke-virtual {v0, p4, p0}, Lcom/ts/canview/CanItemProgressList;->SetIdCallBack(ILcom/ts/canview/CanItemProgressList$onPosChange;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->ShowGone(Z)V

    .line 102
    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemProgressList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 103
    return-object v0
.end method


# virtual methods
.method protected InitUI()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 33
    .line 34
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_drive_light_control:I

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mControlArray:[I

    .line 35
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->AddPopupListItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemLightControl:Lcom/ts/canview/CanItemPopupList;

    .line 37
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_drive_display:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemDisplay:Lcom/ts/canview/CanItemSwitchList;

    .line 38
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_drive_navigation:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemNavigation:Lcom/ts/canview/CanItemSwitchList;

    .line 40
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_drive_height:I

    const/16 v1, -0xd

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->AddProgressItem(IIII)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemHeight:Lcom/ts/canview/CanItemProgressList;

    .line 41
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_drive_light:I

    const/16 v1, -0x14

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->AddProgressItem(IIII)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemLight:Lcom/ts/canview/CanItemProgressList;

    .line 42
    sget v0, Lcom/ts/MainUI/R$string;->can_mzd_cx4_drive_jiaozhun:I

    const/4 v1, -0x2

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->AddProgressItem(IIII)Lcom/ts/canview/CanItemProgressList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemJiaozhun:Lcom/ts/canview/CanItemProgressList;

    .line 43
    return-void
.end method

.method protected Query()V
    .locals 2

    .prologue
    .line 70
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->MzdCx4CarQuery(II)V

    .line 71
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->MzdCx4GetCarSetInfo()V

    .line 49
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->Update:I

    invoke-static {v0}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->Update:I

    .line 55
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemLightControl:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->jsxsldkz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 56
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemDisplay:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->jsxszdjsxs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 57
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemNavigation:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->jsxsdh:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemHeight:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->jsxsgd:I

    add-int/lit8 v1, v1, -0xd

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 60
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemLight:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->jsxsld:I

    add-int/lit8 v1, v1, -0x14

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 61
    iget-object v0, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mItemJiaozhun:Lcom/ts/canview/CanItemProgressList;

    iget-object v1, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->jsxsjz:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemProgressList;->SetCurVal(I)V

    .line 66
    :cond_1
    return-void
.end method

.method public onChanged(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 119
    :goto_0
    :pswitch_0
    return-void

    .line 110
    :pswitch_1
    const/16 v0, 0xe

    add-int/lit8 v1, p2, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 113
    :pswitch_2
    const/16 v0, 0x10

    add-int/lit8 v1, p2, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 116
    :pswitch_3
    const/16 v0, 0x13

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 77
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 79
    :pswitch_0
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->jsxszdjsxs:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->MzdCx4SWCarSet(II)V

    goto :goto_0

    .line 82
    :pswitch_1
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->mCarSetData:Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Cx4_CarSet_Data;->jsxsdh:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->MzdCx4SWCarSet(II)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 89
    packed-switch p1, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 91
    :pswitch_0
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/mzd/cx4/CanMzdCx4DriveDisplayActivity;->MzdCx4CarSet(II)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
