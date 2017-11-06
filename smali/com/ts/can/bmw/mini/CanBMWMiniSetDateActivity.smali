.class public Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniSetDateActivity.java"


# static fields
.field public static final ITEM_DATE_FORMAT:I = 0x1

.field public static final ITEM_TIME_FORMAT:I


# instance fields
.field private mDateArrays:[I

.field private mItemDate:Lcom/ts/canview/CanItemPopupList;

.field private mItemTime:Lcom/ts/canview/CanItemPopupList;

.field private mTimeArrays:[I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_date_format1:I

    aput v1, v0, v3

    .line 15
    sget v1, Lcom/ts/MainUI/R$string;->can_date_format2:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$string;->can_date_format3:I

    aput v1, v0, v5

    const/4 v1, 0x3

    .line 16
    sget v2, Lcom/ts/MainUI/R$string;->can_date_format4:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mDateArrays:[I

    .line 18
    new-array v0, v5, [I

    sget v1, Lcom/ts/MainUI/R$string;->can12_hours:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can24_hours:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mTimeArrays:[I

    .line 6
    return-void
.end method


# virtual methods
.method protected AddItemView()V
    .locals 3

    .prologue
    .line 22
    sget v0, Lcom/ts/MainUI/R$string;->can_time_format:I

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mTimeArrays:[I

    .line 23
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->AddItemPopup(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mItemTime:Lcom/ts/canview/CanItemPopupList;

    .line 24
    sget v0, Lcom/ts/MainUI/R$string;->can_date_format:I

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mDateArrays:[I

    .line 25
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->AddItemPopup(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mItemDate:Lcom/ts/canview/CanItemPopupList;

    .line 26
    return-void
.end method

.method protected Query()V
    .locals 2

    .prologue
    .line 44
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->Query(I)V

    .line 45
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->Sleep(J)V

    .line 46
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->Query(I)V

    .line 47
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->GetMiniSetData()V

    .line 32
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    .line 36
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mItemTime:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->TimeFormat:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 37
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mItemDate:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->DateFormat:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 40
    :cond_1
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 53
    :pswitch_0
    const/16 v0, 0x12

    mul-int/lit16 v1, p2, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->CarSet(II)V

    goto :goto_0

    .line 56
    :pswitch_1
    const/16 v0, 0x14

    mul-int/lit8 v1, p2, 0x10

    add-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetDateActivity;->CarSet(II)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
