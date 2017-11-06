.class public Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;
.super Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;
.source "CanRZygSetDiaplayActivity.java"

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
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-array v0, v4, [I

    .line 33
    sget v1, Lcom/ts/MainUI/R$string;->lang_en_us:I

    aput v1, v0, v2

    .line 34
    sget v1, Lcom/ts/MainUI/R$string;->lang_cn:I

    aput v1, v0, v3

    .line 31
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mLangArr:[I

    .line 38
    new-array v0, v4, [I

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_dw_gz:I

    aput v1, v0, v2

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_dw_mz:I

    aput v1, v0, v3

    .line 37
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDWArr:[I

    .line 44
    new-array v0, v4, [I

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_lkm:I

    aput v1, v0, v2

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_kml:I

    aput v1, v0, v3

    .line 43
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDWDistanceArr:[I

    .line 50
    new-array v0, v5, [I

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_pressure_bar:I

    aput v1, v0, v2

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_pressure_kpa:I

    aput v1, v0, v3

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_pressure_psi:I

    aput v1, v0, v4

    .line 49
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDWPressure:[I

    .line 57
    new-array v0, v4, [I

    .line 58
    sget v1, Lcom/ts/MainUI/R$string;->can_temperature_c:I

    aput v1, v0, v2

    .line 59
    sget v1, Lcom/ts/MainUI/R$string;->can_temperature_f:I

    aput v1, v0, v3

    .line 56
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDWTemperature:[I

    .line 62
    new-array v0, v4, [I

    .line 63
    sget v1, Lcom/ts/MainUI/R$string;->can_service_distance_mi:I

    aput v1, v0, v2

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->can_service_distance_km:I

    aput v1, v0, v3

    .line 62
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDistanceUnits:[I

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 68
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_mpg_us:I

    aput v1, v0, v2

    .line 69
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_mpg_uk:I

    aput v1, v0, v3

    .line 70
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_lkm:I

    aput v1, v0, v4

    .line 71
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_kml:I

    aput v1, v0, v5

    .line 67
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDwFuelUnis:[I

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 279
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 280
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 281
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 282
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 283
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 289
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 290
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 291
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 292
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 293
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 176
    sget v0, Lcom/ts/MainUI/R$string;->can_lang_set:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mLangArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 177
    sget v0, Lcom/ts/MainUI/R$string;->can_units:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDWArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemUnits:Lcom/ts/canview/CanItemPopupList;

    .line 178
    sget v0, Lcom/ts/MainUI/R$string;->can_consumption:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDWDistanceArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemDistance:Lcom/ts/canview/CanItemPopupList;

    .line 179
    sget v0, Lcom/ts/MainUI/R$string;->can_temperature:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDWTemperature:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemTemperature:Lcom/ts/canview/CanItemPopupList;

    .line 180
    sget v0, Lcom/ts/MainUI/R$string;->can_pressure:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDWPressure:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemPressure:Lcom/ts/canview/CanItemPopupList;

    .line 181
    sget v0, Lcom/ts/MainUI/R$string;->can_distance:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDistanceUnits:[I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemDistanceUnit:Lcom/ts/canview/CanItemPopupList;

    .line 182
    sget v0, Lcom/ts/MainUI/R$string;->can_consumption:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mDwFuelUnis:[I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemDwFuel:Lcom/ts/canview/CanItemPopupList;

    .line 184
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 234
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 204
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtLang:I

    .line 205
    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Units:I

    .line 209
    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DWDistance:I

    .line 213
    goto :goto_0

    .line 216
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Pressure:I

    .line 217
    goto :goto_0

    .line 220
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DWTemp:I

    .line 221
    goto :goto_0

    .line 224
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DistanceDW:I

    .line 225
    goto :goto_0

    .line 228
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DWFuel:I

    .line 229
    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->GetAdtData()V

    .line 192
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 196
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->ShowItem(I)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    const/16 v2, 0x40

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->Query(II)V

    .line 145
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->Sleep(J)V

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->Query(II)V

    .line 147
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->GetSetData()V

    .line 101
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LangUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LangUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LangUpdate:I

    .line 106
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Lang:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->UnitsUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->UnitsUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->UnitsUpdate:I

    .line 128
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemUnits:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Units:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemDistance:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DWDistance:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemPressure:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Pressure:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemTemperature:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DWTemp:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemDistanceUnit:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DistanceDW:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 134
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemDwFuel:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DWFuel:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 140
    :cond_3
    return-void

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 106
    nop

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
    .line 241
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->IsHaveItem(I)Z

    move-result v0

    .line 242
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemUnits:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemDistance:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 257
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemPressure:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 261
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemTemperature:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 265
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemDistanceUnit:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 269
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->mItemDwFuel:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->ResetData(Z)V

    .line 322
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 301
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 314
    :pswitch_0
    return-void

    .line 301
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
    .line 92
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->InitUI()V

    .line 96
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    const/16 v1, 0x53

    .line 328
    packed-switch p1, :pswitch_data_0

    .line 375
    :goto_0
    return-void

    .line 332
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 335
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 339
    :pswitch_2
    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 349
    :pswitch_3
    const/16 v0, 0x52

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 353
    :pswitch_4
    const/16 v0, 0x70

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 357
    :pswitch_5
    const/16 v0, 0x71

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 361
    :pswitch_6
    const/16 v0, 0x72

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 365
    :pswitch_7
    const/16 v0, 0x73

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 369
    :pswitch_8
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 332
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 167
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onPause()V

    .line 169
    const-string v0, "CanRZygSetDiaplayActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onResume()V

    .line 153
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->ResetData(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->QueryData()V

    .line 156
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetDiaplayActivity;->LayoutUI()V

    .line 158
    const-string v0, "CanRZygSetDiaplayActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method
