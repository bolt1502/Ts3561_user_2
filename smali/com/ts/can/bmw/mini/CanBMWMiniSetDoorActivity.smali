.class public Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniSetDoorActivity.java"


# static fields
.field public static final ITEM_AUTO_LOCK:I = 0x2

.field public static final ITEM_DOOR_UNLOCK:I = 0x0

.field public static final ITEM_DRIVE_LOCK:I = 0x3

.field public static final ITEM_LOCK_FLICKER:I = 0x4

.field public static final ITEM_REAR_UNLOCK:I = 0x1


# instance fields
.field private mDoorUnlockArrays:[I

.field private mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

.field private mItemDoorUnlock:Lcom/ts/canview/CanItemPopupList;

.field private mItemDriveLock:Lcom/ts/canview/CanItemSwitchList;

.field private mItemLockFlicker:Lcom/ts/canview/CanItemSwitchList;

.field private mItemRearUnLock:Lcom/ts/canview/CanItemPopupList;

.field private mRearUnlockArrays:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    .line 23
    new-array v0, v4, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_door_unlock_key1:I

    aput v1, v0, v2

    .line 24
    sget v1, Lcom/ts/MainUI/R$string;->can_door_unlock_key2:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mDoorUnlockArrays:[I

    .line 26
    new-array v0, v4, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_rear_unlock_key1:I

    aput v1, v0, v2

    .line 27
    sget v1, Lcom/ts/MainUI/R$string;->can_rear_unlock_key2:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mRearUnlockArrays:[I

    .line 9
    return-void
.end method

.method private getCarSetParam()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 118
    const/16 v0, 0x40

    .line 119
    .local v0, "param":I
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgAutoLock:I

    if-ne v1, v2, :cond_0

    .line 120
    add-int/lit8 v0, v0, 0x20

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgDriveLock:I

    if-ne v1, v2, :cond_1

    .line 123
    add-int/lit8 v0, v0, 0x10

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgLockFlash:I

    if-ne v1, v2, :cond_2

    .line 126
    add-int/lit8 v0, v0, 0x8

    .line 129
    :cond_2
    return v0
.end method


# virtual methods
.method protected AddItemView()V
    .locals 3

    .prologue
    .line 31
    sget v0, Lcom/ts/MainUI/R$string;->can_door_unlock_key:I

    .line 32
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mDoorUnlockArrays:[I

    const/4 v2, 0x0

    .line 31
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->AddItemPopup(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mItemDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    .line 33
    sget v0, Lcom/ts/MainUI/R$string;->can_rear_unlock_key:I

    .line 34
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mRearUnlockArrays:[I

    const/4 v2, 0x1

    .line 33
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->AddItemPopup(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mItemRearUnLock:Lcom/ts/canview/CanItemPopupList;

    .line 35
    sget v0, Lcom/ts/MainUI/R$string;->can_auto_lock_key:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

    .line 36
    sget v0, Lcom/ts/MainUI/R$string;->can_drive_lock_key:I

    .line 37
    const/4 v1, 0x3

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mItemDriveLock:Lcom/ts/canview/CanItemSwitchList;

    .line 38
    sget v0, Lcom/ts/MainUI/R$string;->can_lock_flicker:I

    .line 39
    const/4 v1, 0x4

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->AddItemCheck(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mItemLockFlicker:Lcom/ts/canview/CanItemSwitchList;

    .line 40
    return-void
.end method

.method protected Query()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x1

    .line 61
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->Query(I)V

    .line 62
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->Sleep(J)V

    .line 63
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->Query(I)V

    .line 64
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->Sleep(J)V

    .line 65
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->Query(I)V

    .line 66
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->Sleep(J)V

    .line 67
    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->Query(I)V

    .line 68
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->Sleep(J)V

    .line 69
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->Query(I)V

    .line 70
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->GetMiniSetData()V

    .line 46
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    .line 50
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mItemDoorUnlock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->DoorLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 51
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mItemRearUnLock:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->TrunkLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 52
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgAutoLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 53
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mItemDriveLock:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgDriveLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 54
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mItemLockFlicker:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgLockFlash:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 57
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    .local v0, "id":I
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->getCarSetParam()I

    move-result v1

    .line 77
    .local v1, "param":I
    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgAutoLock:I

    if-ne v2, v3, :cond_0

    .line 80
    add-int/lit8 v1, v1, -0x20

    .line 84
    :goto_1
    const/16 v2, 0x33

    invoke-virtual {p0, v2, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->CarSet(II)V

    goto :goto_0

    .line 82
    :cond_0
    add-int/lit8 v1, v1, 0x20

    goto :goto_1

    .line 87
    :pswitch_1
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgDriveLock:I

    if-ne v2, v3, :cond_1

    .line 88
    add-int/lit8 v1, v1, -0x10

    .line 92
    :goto_2
    const/16 v2, 0x34

    invoke-virtual {p0, v2, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->CarSet(II)V

    goto :goto_0

    .line 90
    :cond_1
    add-int/lit8 v1, v1, 0x10

    goto :goto_2

    .line 95
    :pswitch_2
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->fgLockFlash:I

    if-ne v2, v3, :cond_2

    .line 96
    add-int/lit8 v1, v1, -0x8

    .line 100
    :goto_3
    const/16 v2, 0x35

    invoke-virtual {p0, v2, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->CarSet(II)V

    goto :goto_0

    .line 98
    :cond_2
    add-int/lit8 v1, v1, 0x8

    goto :goto_3

    .line 77
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 109
    :pswitch_0
    const/16 v0, 0x31

    mul-int/lit16 v1, p2, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->CarSet(II)V

    goto :goto_0

    .line 112
    :pswitch_1
    const/16 v0, 0x32

    mul-int/lit8 v1, p2, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDoorActivity;->CarSet(II)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
