.class public Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;
.super Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;
.source "CanFlatDobloSetDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final ITEM_DISTANCE:I = 0x3

.field public static final ITEM_FUELS:I = 0x2

.field public static final ITEM_LANG:I = 0x1

.field public static final ITEM_TEMPERATURE:I = 0x4

.field public static final ITEM_TRIP_B:I = 0x5

.field private static final mDWDistance:[I

.field private static final mDWFuels:[I

.field private static final mDWTemperature:[I

.field private static final mLangArr:[I


# instance fields
.field protected mItemDistance:Lcom/ts/canview/CanItemPopupList;

.field protected mItemFuels:Lcom/ts/canview/CanItemPopupList;

.field protected mItemLang:Lcom/ts/canview/CanItemPopupList;

.field protected mItemTemperature:Lcom/ts/canview/CanItemPopupList;

.field protected mItemTripB:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 27
    sget v1, Lcom/ts/MainUI/R$string;->lang_en_us:I

    aput v1, v0, v3

    .line 28
    sget v1, Lcom/ts/MainUI/R$string;->lang_francais:I

    aput v1, v0, v4

    .line 29
    sget v1, Lcom/ts/MainUI/R$string;->lang_deutsch:I

    aput v1, v0, v5

    .line 30
    sget v1, Lcom/ts/MainUI/R$string;->lang_espanol:I

    aput v1, v0, v6

    const/4 v1, 0x4

    .line 31
    sget v2, Lcom/ts/MainUI/R$string;->lang_itanliano:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 32
    sget v2, Lcom/ts/MainUI/R$string;->lang_nederlands:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 33
    sget v2, Lcom/ts/MainUI/R$string;->lang_polski:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 34
    sget v2, Lcom/ts/MainUI/R$string;->lang_portugues:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 35
    sget v2, Lcom/ts/MainUI/R$string;->lang_turkce:I

    aput v2, v0, v1

    .line 25
    sput-object v0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mLangArr:[I

    .line 39
    new-array v0, v5, [I

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_distance_km:I

    aput v1, v0, v3

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_distance_m:I

    aput v1, v0, v4

    .line 38
    sput-object v0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mDWDistance:[I

    .line 45
    new-array v0, v5, [I

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_temperature_c:I

    aput v1, v0, v3

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_temperature_f:I

    aput v1, v0, v4

    .line 44
    sput-object v0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mDWTemperature:[I

    .line 52
    new-array v0, v6, [I

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_lkm:I

    aput v1, v0, v3

    .line 54
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_kml:I

    aput v1, v0, v4

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_fuels_mpg:I

    aput v1, v0, v5

    .line 51
    sput-object v0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mDWFuels:[I

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 165
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 166
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 167
    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 169
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 156
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 157
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 158
    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 160
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 78
    sget v0, Lcom/ts/MainUI/R$string;->can_lang_set:I

    sget-object v1, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mLangArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 79
    sget v0, Lcom/ts/MainUI/R$string;->can_consumption:I

    sget-object v1, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mDWFuels:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mItemFuels:Lcom/ts/canview/CanItemPopupList;

    .line 80
    sget v0, Lcom/ts/MainUI/R$string;->can_distance_l_c:I

    sget-object v1, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mDWDistance:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mItemDistance:Lcom/ts/canview/CanItemPopupList;

    .line 81
    sget v0, Lcom/ts/MainUI/R$string;->can_temperature:I

    sget-object v1, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mDWTemperature:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mItemTemperature:Lcom/ts/canview/CanItemPopupList;

    .line 83
    sget v0, Lcom/ts/MainUI/R$string;->can_display_t_b:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mItemTripB:Lcom/ts/canview/CanItemSwitchList;

    .line 84
    return-void
.end method

.method protected QueryData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    const/16 v1, 0x40

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->Query(II)V

    .line 104
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->Sleep(J)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->Query(II)V

    .line 106
    invoke-virtual {p0, v2, v3}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->Sleep(J)V

    .line 107
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->Query(II)V

    .line 108
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->GetSetData()V

    .line 113
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->LangUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->LangUpdate:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->LangUpdate:I

    .line 118
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->Lang:I

    packed-switch v0, :pswitch_data_0

    .line 124
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->Lang:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->Lang:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->Lang:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 133
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->UnitsUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->UnitsUpdate:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->UnitsUpdate:I

    .line 138
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mItemFuels:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->DWFuel:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 139
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mItemDistance:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->DWDistance:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 140
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mItemTemperature:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->DWTemp:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->DspTripBUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->DspTripBUpdate:I

    invoke-static {v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->DspTripBUpdate:I

    .line 147
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mItemTripB:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->DspTripB:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 151
    :cond_5
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->ResetData(Z)V

    .line 201
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 206
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 209
    :pswitch_0
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$FlatSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$FlatSetData;->DspTripB:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->CarSWSet(II)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->InitUI()V

    .line 73
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 175
    packed-switch p1, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 178
    :pswitch_0
    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->CarSet(II)V

    goto :goto_0

    .line 182
    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->CarSet(II)V

    goto :goto_0

    .line 186
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->CarSet(II)V

    goto :goto_0

    .line 190
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->CarSet(II)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 98
    invoke-super {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onPause()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloBaseActivity;->onResume()V

    .line 89
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->ResetData(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/ts/can/fiat/doblo/CanFlatDobloSetDisplayActivity;->QueryData()V

    .line 92
    return-void
.end method
