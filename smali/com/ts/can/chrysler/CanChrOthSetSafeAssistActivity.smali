.class public Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;
.super Lcom/ts/can/chrysler/CanChrOthBaseActivity;
.source "CanChrOthSetSafeAssistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CAR_TYPE:I = 0x8

.field public static final ITEM_DTYDX:I = 0x3

.field public static final ITEM_FRONT_VOL:I = 0x6

.field public static final ITEM_GDYDX:I = 0x4

.field public static final ITEM_LDLX:I = 0x1

.field public static final ITEM_LDZDFZ:I = 0x2

.field private static final ITEM_MAX:I = 0x8

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_PDQBFZ:I = 0x5

.field public static final ITEM_REAR_VOL:I = 0x7

.field public static final TAG:Ljava/lang/String; = "CanChrOthSetSafeAssistActivity"

.field private static final mCarTypeArr:[I

.field private static final mLdlxArr:[I

.field private static final mQbylArr:[I


# instance fields
.field protected mItemCarType:Lcom/ts/canview/CanItemPopupList;

.field protected mItemDtydx:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemFrontVol:Lcom/ts/canview/CanItemPopupList;

.field protected mItemGdydx:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemLdlx:Lcom/ts/canview/CanItemPopupList;

.field protected mItemLdzdfz:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemPdqbfz:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemRearVol:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v4, [I

    .line 34
    sget v1, Lcom/ts/MainUI/R$string;->can_type_vol:I

    aput v1, v0, v2

    .line 35
    sget v1, Lcom/ts/MainUI/R$string;->can_vol_img:I

    aput v1, v0, v3

    .line 32
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mLdlxArr:[I

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_low:I

    aput v1, v0, v2

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_mid:I

    aput v1, v0, v3

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_high:I

    aput v1, v0, v4

    .line 38
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mQbylArr:[I

    .line 46
    new-array v0, v4, [I

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->can_car_hi_config:I

    aput v1, v0, v2

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_car_low_config:I

    aput v1, v0, v3

    .line 45
    sput-object v0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mCarTypeArr:[I

    .line 49
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
    .line 239
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 240
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 241
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 243
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 248
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 249
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 250
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 251
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 252
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 127
    sget v0, Lcom/ts/MainUI/R$string;->can_psbcld:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mLdlxArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemLdlx:Lcom/ts/canview/CanItemPopupList;

    .line 128
    sget v0, Lcom/ts/MainUI/R$string;->can_qpsyl:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mQbylArr:[I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemFrontVol:Lcom/ts/canview/CanItemPopupList;

    .line 129
    sget v0, Lcom/ts/MainUI/R$string;->can_hpsyl:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mQbylArr:[I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemRearVol:Lcom/ts/canview/CanItemPopupList;

    .line 131
    sget v0, Lcom/ts/MainUI/R$string;->can_hpsbcfz:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemLdzdfz:Lcom/ts/canview/CanItemSwitchList;

    .line 132
    sget v0, Lcom/ts/MainUI/R$string;->can_pdqbfz:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemSwitchList;

    .line 133
    sget v0, Lcom/ts/MainUI/R$string;->can_pvyxdtydx:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemDtydx:Lcom/ts/canview/CanItemSwitchList;

    .line 134
    sget v0, Lcom/ts/MainUI/R$string;->can_pvyxgdydx:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemGdydx:Lcom/ts/canview/CanItemSwitchList;

    .line 136
    sget v0, Lcom/ts/MainUI/R$string;->can_car_auto:I

    sget-object v1, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mCarTypeArr:[I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemCarType:Lcom/ts/canview/CanItemPopupList;

    .line 138
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 190
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 156
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RadarShowType:I

    .line 157
    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RearRadarAss:I

    .line 161
    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->ParkTrack:I

    .line 165
    goto :goto_0

    .line 168
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->ParkLine:I

    .line 169
    goto :goto_0

    .line 172
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->PdqbAss:I

    .line 173
    goto :goto_0

    .line 176
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->FrontVol:I

    .line 177
    goto :goto_0

    .line 180
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RearVol:I

    .line 181
    goto :goto_0

    .line 184
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->CarType:I

    .line 185
    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->GetAdtData()V

    .line 144
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 148
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->ShowItem(I)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 97
    const/16 v0, 0x40

    const/16 v1, 0xa0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->Query(II)V

    .line 98
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->GetSetData()V

    .line 78
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DrvAssUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DrvAssUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DrvAssUpdate:I

    .line 83
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemLdlx:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RadarShowType:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemFrontVol:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FrontVol:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemRearVol:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RearVol:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 87
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemLdzdfz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RearRadarAss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 88
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PdqbAss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 89
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemDtydx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkTrack:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 90
    iget-object v0, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemGdydx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkLine:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 93
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->IsHaveItem(I)Z

    move-result v0

    .line 198
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemLdlx:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemLdzdfz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemDtydx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemGdydx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 217
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 221
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemFrontVol:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 225
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemRearVol:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 229
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mItemCarType:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->ResetData(Z)V

    .line 292
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 261
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 265
    :pswitch_0
    const/16 v1, 0xa3

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RearRadarAss:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 269
    :pswitch_1
    const/16 v1, 0xa4

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkTrack:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 273
    :pswitch_2
    const/16 v1, 0xa5

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkLine:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 277
    :pswitch_3
    const/16 v1, 0xa6

    iget-object v2, p0, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PdqbAss:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->InitUI()V

    .line 73
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_0

    .line 319
    :goto_0
    :pswitch_0
    return-void

    .line 301
    :pswitch_1
    const/16 v0, 0xa0

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 305
    :pswitch_2
    const/16 v0, 0xa1

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 309
    :pswitch_3
    const/16 v0, 0xa2

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 313
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->CarTypeSet(I)V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 118
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onPause()V

    .line 120
    const-string v0, "CanChrOthSetSafeAssistActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/ts/can/chrysler/CanChrOthBaseActivity;->onResume()V

    .line 104
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 105
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->LayoutUI()V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->ResetData(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/ts/can/chrysler/CanChrOthSetSafeAssistActivity;->QueryData()V

    .line 109
    const-string v0, "CanChrOthSetSafeAssistActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method
