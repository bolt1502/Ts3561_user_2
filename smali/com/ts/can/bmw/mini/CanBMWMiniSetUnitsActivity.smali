.class public Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniSetUnitsActivity.java"


# static fields
.field public static final ITEM_CONSUMPTION:I = 0x1

.field public static final ITEM_LANGUAGE:I = 0x0

.field public static final ITEM_TEMPERTURE:I = 0x2


# instance fields
.field private mConsumptionArrays:[I

.field private mItemConsumption:Lcom/ts/canview/CanItemPopupList;

.field private mItemLanguage:Lcom/ts/canview/CanItemPopupList;

.field private mItemTemperture:Lcom/ts/canview/CanItemPopupList;

.field private mLanguageArrays:[I

.field private mTempArrays:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_lang_en:I

    aput v1, v0, v2

    .line 17
    sget v1, Lcom/ts/MainUI/R$string;->can_lang_cn:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_lang_tw:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mLanguageArrays:[I

    .line 19
    new-array v0, v4, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_lkm:I

    aput v1, v0, v2

    .line 20
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_kml:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mConsumptionArrays:[I

    .line 22
    new-array v0, v4, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_temperature_c:I

    aput v1, v0, v2

    .line 23
    sget v1, Lcom/ts/MainUI/R$string;->can_temperature_f:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mTempArrays:[I

    .line 6
    return-void
.end method


# virtual methods
.method protected AddItemView()V
    .locals 3

    .prologue
    .line 27
    sget v0, Lcom/ts/MainUI/R$string;->can_language:I

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mLanguageArrays:[I

    .line 28
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->AddItemPopup(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mItemLanguage:Lcom/ts/canview/CanItemPopupList;

    .line 29
    sget v0, Lcom/ts/MainUI/R$string;->can_consumption:I

    .line 30
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mConsumptionArrays:[I

    const/4 v2, 0x1

    .line 29
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->AddItemPopup(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mItemConsumption:Lcom/ts/canview/CanItemPopupList;

    .line 31
    sget v0, Lcom/ts/MainUI/R$string;->can_temperature:I

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mTempArrays:[I

    .line 32
    const/4 v2, 0x2

    .line 31
    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->AddItemPopup(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mItemTemperture:Lcom/ts/canview/CanItemPopupList;

    .line 33
    return-void
.end method

.method protected Query()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x1

    .line 52
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->Query(I)V

    .line 53
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->Sleep(J)V

    .line 54
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->Query(I)V

    .line 55
    invoke-virtual {p0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->Sleep(J)V

    .line 56
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->Query(I)V

    .line 57
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->GetMiniSetData()V

    .line 39
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Update:I

    .line 43
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mItemLanguage:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->Lang:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 44
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mItemConsumption:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->ConsumpDW:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 45
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mItemTemperture:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniCarSetData;->TempDW:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 48
    :cond_1
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 63
    :pswitch_0
    const/16 v0, 0x18

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->CarSet(II)V

    goto :goto_0

    .line 66
    :pswitch_1
    const/16 v0, 0x19

    mul-int/lit8 v1, p2, 0x34

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->CarSet(II)V

    goto :goto_0

    .line 69
    :pswitch_2
    const/16 v0, 0x1a

    mul-int/lit8 v1, p2, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniSetUnitsActivity;->CarSet(II)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
