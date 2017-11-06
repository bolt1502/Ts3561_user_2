.class public Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;
.super Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;
.source "CanXbsygSetDiaplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_DISTANCE_UNIT:I = 0x6

.field public static final ITEM_DWDISTANCE:I = 0x3

.field public static final ITEM_DWFUEL:I = 0x7

.field public static final ITEM_DWPRESENCE:I = 0x4

.field public static final ITEM_DWTEMP:I = 0x5

.field public static final ITEM_LANG:I = 0x1

.field private static final ITEM_MAX:I = 0x7

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_UNITS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanRZygSetDiaplayActivity"

.field private static final mDWArr:[I

.field private static final mDWDistanceArr:[I

.field private static final mDWPressure:[I

.field private static final mDWTemperature:[I

.field private static final mDistanceUnits:[I

.field private static final mDwFuelUnis:[I

.field private static final mLangArr:[I


# instance fields
.field protected mItemDistance:Lcom/ts/canview/CanItemPopupList;

.field protected mItemDistanceUnit:Lcom/ts/canview/CanItemPopupList;

.field protected mItemDwFuel:Lcom/ts/canview/CanItemPopupList;

.field protected mItemLang:Lcom/ts/canview/CanItemPopupList;

.field protected mItemPressure:Lcom/ts/canview/CanItemPopupList;

.field protected mItemTemperature:Lcom/ts/canview/CanItemPopupList;

.field protected mItemUnits:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v4, [I

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->lang_en_us:I

    aput v1, v0, v2

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->lang_cn:I

    aput v1, v0, v3

    .line 33
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mLangArr:[I

    .line 40
    new-array v0, v4, [I

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_dw_mz:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_dw_gz:I

    aput v1, v0, v3

    .line 39
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mDWArr:[I

    .line 46
    new-array v0, v4, [I

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_service_distance_km:I

    aput v1, v0, v2

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_service_distance_mi:I

    aput v1, v0, v3

    .line 45
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mDWDistanceArr:[I

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_pressure_bar:I

    aput v1, v0, v2

    .line 54
    sget v1, Lcom/ts/MainUI/R$string;->can_pressure_kpa:I

    aput v1, v0, v3

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_pressure_psi:I

    aput v1, v0, v4

    .line 51
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mDWPressure:[I

    .line 59
    new-array v0, v4, [I

    .line 60
    sget v1, Lcom/ts/MainUI/R$string;->can_temperature_c:I

    aput v1, v0, v2

    .line 61
    sget v1, Lcom/ts/MainUI/R$string;->can_temperature_f:I

    aput v1, v0, v3

    .line 58
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mDWTemperature:[I

    .line 64
    new-array v0, v4, [I

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->can_service_distance_mi:I

    aput v1, v0, v2

    .line 66
    sget v1, Lcom/ts/MainUI/R$string;->can_service_distance_km:I

    aput v1, v0, v3

    .line 64
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mDistanceUnits:[I

    .line 69
    new-array v0, v4, [I

    .line 70
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_lkm:I

    aput v1, v0, v2

    .line 71
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_kml:I

    aput v1, v0, v3

    .line 69
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mDwFuelUnis:[I

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 285
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 286
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 287
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 289
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 295
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 296
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 297
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 298
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 299
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 183
    sget v0, Lcom/ts/MainUI/R$string;->can_lang_set:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mLangArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 184
    sget v0, Lcom/ts/MainUI/R$string;->can_units:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mDWArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemUnits:Lcom/ts/canview/CanItemPopupList;

    .line 185
    sget v0, Lcom/ts/MainUI/R$string;->can_distance:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mDWDistanceArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemDistance:Lcom/ts/canview/CanItemPopupList;

    .line 186
    sget v0, Lcom/ts/MainUI/R$string;->can_temperature:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mDWTemperature:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemTemperature:Lcom/ts/canview/CanItemPopupList;

    .line 187
    sget v0, Lcom/ts/MainUI/R$string;->can_pressure:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mDWPressure:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemPressure:Lcom/ts/canview/CanItemPopupList;

    .line 189
    sget v0, Lcom/ts/MainUI/R$string;->can_consumption:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mDwFuelUnis:[I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemDwFuel:Lcom/ts/canview/CanItemPopupList;

    .line 190
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    :pswitch_0
    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtLang:I

    .line 211
    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Units:I

    .line 215
    goto :goto_0

    .line 218
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DWDistance:I

    .line 219
    goto :goto_0

    .line 222
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Pressure:I

    .line 223
    goto :goto_0

    .line 226
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DWTemp:I

    .line 227
    goto :goto_0

    .line 234
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DWFuel:I

    .line 235
    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->GetAdtData()V

    .line 198
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 202
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->ShowItem(I)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->Query2(I)V

    .line 153
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->GetSetData()V

    .line 100
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LangUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LangUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LangUpdate:I

    .line 105
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Lang:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->UnitsUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->UnitsUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->UnitsUpdate:I

    .line 127
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemUnits:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Units:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemDistance:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DWDistance:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemPressure:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Pressure:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemTemperature:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DWTemp:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DWDistance:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DWFuel:I

    if-nez v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemDwFuel:Lcom/ts/canview/CanItemPopupList;

    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_mpg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetVal(I)V

    .line 148
    :cond_3
    :goto_1
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemDwFuel:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DWFuel:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_1

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->IsHaveItem(I)Z

    move-result v0

    .line 248
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 281
    :goto_0
    :pswitch_0
    return-void

    .line 251
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemUnits:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 259
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemDistance:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 263
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemPressure:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 267
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemTemperature:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 275
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->mItemDwFuel:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->ResetData(Z)V

    .line 328
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 307
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 320
    :pswitch_0
    return-void

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->InitUI()V

    .line 95
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    const/16 v1, 0x61

    .line 334
    packed-switch p1, :pswitch_data_0

    .line 381
    :goto_0
    :pswitch_0
    return-void

    .line 338
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 341
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 345
    :pswitch_3
    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 355
    :pswitch_4
    const/16 v0, 0x51

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 359
    :pswitch_5
    const/16 v0, 0x52

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 363
    :pswitch_6
    const/16 v0, 0x54

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 367
    :pswitch_7
    const/16 v0, 0x55

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 375
    :pswitch_8
    const/16 v0, 0x53

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 338
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 173
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onPause()V

    .line 175
    const-string v0, "CanRZygSetDiaplayActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onResume()V

    .line 159
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->ResetData(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->QueryData()V

    .line 162
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetDiaplayActivity;->LayoutUI()V

    .line 164
    const-string v0, "CanRZygSetDiaplayActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method
