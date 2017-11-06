.class public Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;
.super Lcom/ts/can/chrysler/CanChrOthBaseActivity;
.source "CanChrOthSetDiaplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_DISTANCE:I = 0x3

.field public static final ITEM_FUELS:I = 0x5

.field public static final ITEM_LANG:I = 0x1

.field private static final ITEM_MAX:I = 0x6

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_PRESSURE:I = 0x6

.field public static final ITEM_TEMPERATURE:I = 0x4

.field public static final ITEM_UNITS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CanChrOthSetDiaplayActivity"

.field private static final mDWArr:[I

.field private static final mDWDistance:[I

.field private static final mDWFuels:[I

.field private static final mDWPressure:[I

.field private static final mDWTemperature:[I

.field private static final mLangArr:[I


# instance fields
.field protected mItemDistance:Lcom/ts/canview/CanItemPopupList;

.field protected mItemFuels:Lcom/ts/canview/CanItemPopupList;

.field protected mItemLang:Lcom/ts/canview/CanItemPopupList;

.field protected mItemPressure:Lcom/ts/canview/CanItemPopupList;

.field protected mItemTemperature:Lcom/ts/canview/CanItemPopupList;

.field protected mItemUnits:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 32
    sget v1, Lcom/ts/MainUI/R$string;->lang_en_us:I

    aput v1, v0, v3

    .line 33
    sget v1, Lcom/ts/MainUI/R$string;->lang_francais:I

    aput v1, v0, v4

    .line 34
    sget v1, Lcom/ts/MainUI/R$string;->lang_deutsch:I

    aput v1, v0, v5

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->lang_espanol:I

    aput v1, v0, v6

    const/4 v1, 0x4

    .line 36
    sget v2, Lcom/ts/MainUI/R$string;->lang_itanliano:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 37
    sget v2, Lcom/ts/MainUI/R$string;->lang_nederlands:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 38
    sget v2, Lcom/ts/MainUI/R$string;->lang_polski:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 39
    sget v2, Lcom/ts/MainUI/R$string;->lang_portugues:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 40
    sget v2, Lcom/ts/MainUI/R$string;->lang_turkce:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 41
    sget v2, Lcom/ts/MainUI/R$string;->lang_cn:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 42
    sget v2, Lcom/ts/MainUI/R$string;->lang_en_uk:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 43
    sget v2, Lcom/ts/MainUI/R$string;->lang_portugues_brasil:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 44
    sget v2, Lcom/ts/MainUI/R$string;->lang_pyccknn:I

    aput v2, v0, v1

    .line 30
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mLangArr:[I

    .line 48
    new-array v0, v5, [I

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_dw_mz:I

    aput v1, v0, v3

    .line 50
    sget v1, Lcom/ts/MainUI/R$string;->can_dw_gz:I

    aput v1, v0, v4

    .line 47
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mDWArr:[I

    .line 54
    new-array v0, v5, [I

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_distance_km:I

    aput v1, v0, v3

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_service_distance_mi:I

    aput v1, v0, v4

    .line 53
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mDWDistance:[I

    .line 60
    new-array v0, v5, [I

    .line 61
    sget v1, Lcom/ts/MainUI/R$string;->can_temperature_c:I

    aput v1, v0, v3

    .line 62
    sget v1, Lcom/ts/MainUI/R$string;->can_temperature_f:I

    aput v1, v0, v4

    .line 59
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mDWTemperature:[I

    .line 67
    new-array v0, v6, [I

    .line 68
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_lkm:I

    aput v1, v0, v3

    .line 69
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_kml:I

    aput v1, v0, v4

    .line 70
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_mpg:I

    aput v1, v0, v5

    .line 66
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mDWFuels:[I

    .line 74
    new-array v0, v6, [I

    .line 75
    sget v1, Lcom/ts/MainUI/R$string;->can_pressure_psi:I

    aput v1, v0, v3

    .line 76
    sget v1, Lcom/ts/MainUI/R$string;->can_pressure_kpa:I

    aput v1, v0, v4

    .line 77
    sget v1, Lcom/ts/MainUI/R$string;->can_pressure_bar:I

    aput v1, v0, v5

    .line 73
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mDWPressure:[I

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 272
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 273
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 274
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 276
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 282
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 283
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 284
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 286
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 177
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 179
    sget v0, Lcom/ts/MainUI/R$string;->can_lang_set:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mLangArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 180
    sget v0, Lcom/ts/MainUI/R$string;->can_units:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mDWArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemUnits:Lcom/ts/canview/CanItemPopupList;

    .line 181
    sget v0, Lcom/ts/MainUI/R$string;->can_distance_l_c:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mDWDistance:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemDistance:Lcom/ts/canview/CanItemPopupList;

    .line 182
    sget v0, Lcom/ts/MainUI/R$string;->can_temperature:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mDWTemperature:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemTemperature:Lcom/ts/canview/CanItemPopupList;

    .line 183
    sget v0, Lcom/ts/MainUI/R$string;->can_consumption:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mDWFuels:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemFuels:Lcom/ts/canview/CanItemPopupList;

    .line 184
    sget v0, Lcom/ts/MainUI/R$string;->can_pressure:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mDWPressure:[I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemPressure:Lcom/ts/canview/CanItemPopupList;

    .line 185
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 231
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 205
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->adtLang:I

    .line 206
    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Units:I

    .line 210
    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Units:I

    .line 214
    goto :goto_0

    .line 217
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DWDistance:I

    .line 218
    goto :goto_0

    .line 221
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->DWTemp:I

    .line 222
    goto :goto_0

    .line 225
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Pressure:I

    .line 226
    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->GetAdtData()V

    .line 193
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 197
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->ShowItem(I)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    const/16 v2, 0x40

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->Query(II)V

    .line 148
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->Sleep(J)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->Query(II)V

    .line 150
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->GetSetData()V

    .line 108
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LangUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LangUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->LangUpdate:I

    .line 113
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Lang:I

    packed-switch v0, :pswitch_data_0

    .line 119
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Lang:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Lang:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Lang:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 128
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->UnitsUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->UnitsUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->UnitsUpdate:I

    .line 133
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemUnits:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Units:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 134
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemDistance:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DWDistance:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 135
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemFuels:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DWFuel:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 136
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemTemperature:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DWTemp:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 137
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemPressure:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Pressure:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 143
    :cond_3
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->IsHaveItem(I)Z

    move-result v0

    .line 239
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemUnits:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemFuels:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 254
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemDistance:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 258
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemTemperature:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 262
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->mItemPressure:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->ResetData(Z)V

    .line 327
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 294
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 319
    :pswitch_0
    return-void

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->InitUI()V

    .line 103
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 333
    packed-switch p1, :pswitch_data_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 337
    :pswitch_0
    const/16 v0, 0xd

    if-ge p2, v0, :cond_0

    .line 338
    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 342
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 346
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 350
    :pswitch_3
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 354
    :pswitch_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 358
    :pswitch_5
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->CarSet(II)V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 170
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onPause()V

    .line 172
    const-string v0, "CanChrOthSetDiaplayActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onResume()V

    .line 156
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->ResetData(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->QueryData()V

    .line 159
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetDiaplayActivity;->LayoutUI()V

    .line 161
    const-string v0, "CanChrOthSetDiaplayActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method
