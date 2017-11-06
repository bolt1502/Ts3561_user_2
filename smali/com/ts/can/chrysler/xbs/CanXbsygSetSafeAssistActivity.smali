.class public Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;
.super Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;
.source "CanXbsygSetSafeAssistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CDPLJG:I = 0x8

.field public static final ITEM_CDPLJZLD:I = 0x9

.field public static final ITEM_DCSHSJQX:I = 0x11

.field public static final ITEM_DTYDX:I = 0x3

.field public static final ITEM_DZZCZD:I = 0xe

.field public static final ITEM_FMQKG:I = 0x10

.field public static final ITEM_FRONT_VOL:I = 0x6

.field public static final ITEM_GDYDX:I = 0x4

.field public static final ITEM_LDLX:I = 0x1

.field public static final ITEM_LDZDFZ:I = 0x2

.field private static final ITEM_MAX:I = 0x11

.field public static final ITEM_MDJB:I = 0xd

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_PDQBFZ:I = 0x5

.field public static final ITEM_QFPZJG:I = 0xb

.field public static final ITEM_QFPZZDZD:I = 0xa

.field public static final ITEM_REAR_VOL:I = 0x7

.field public static final ITEM_YLGYSYG:I = 0xc

.field public static final ITEM_YXBCYS:I = 0xf

.field public static final TAG:Ljava/lang/String; = "CanXbsygSetSafeAssistActivity"

.field private static final mCdpljgArr:[I

.field private static final mCdpljzldArr:[I

.field private static final mLdlxArr:[I

.field private static final mMdjbArr:[I

.field private static final mQbylArr:[I

.field private static final mYlgysygArr:[I


# instance fields
.field protected mItemCdpljg:Lcom/ts/canview/CanItemPopupList;

.field protected mItemCdpljzld:Lcom/ts/canview/CanItemPopupList;

.field protected mItemDcshsjqx:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemDtydx:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemDzzczd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemFmqkg:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemFrontVol:Lcom/ts/canview/CanItemPopupList;

.field protected mItemGdydx:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemLdlx:Lcom/ts/canview/CanItemPopupList;

.field protected mItemLdzdfz:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemMdjb:Lcom/ts/canview/CanItemPopupList;

.field protected mItemPdqbfz:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemQfpzjg:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemQfpzzdzd:Lcom/ts/canview/CanItemSwitchList;

.field protected mItemRearVol:Lcom/ts/canview/CanItemPopupList;

.field protected mItemYlgysyg:Lcom/ts/canview/CanItemPopupList;

.field protected mItemYxbcys:Lcom/ts/canview/CanItemSwitchList;

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

    .line 44
    new-array v0, v4, [I

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_type_vol:I

    aput v1, v0, v2

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->can_vol_img:I

    aput v1, v0, v3

    .line 43
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mLdlxArr:[I

    .line 50
    new-array v0, v5, [I

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_low:I

    aput v1, v0, v2

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_mid:I

    aput v1, v0, v3

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_high:I

    aput v1, v0, v4

    .line 49
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mQbylArr:[I

    .line 57
    new-array v0, v5, [I

    .line 58
    sget v1, Lcom/ts/MainUI/R$string;->can_jp_early:I

    aput v1, v0, v2

    .line 59
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_mid:I

    aput v1, v0, v3

    .line 60
    sget v1, Lcom/ts/MainUI/R$string;->can_jp_late:I

    aput v1, v0, v4

    .line 56
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mCdpljgArr:[I

    .line 64
    new-array v0, v5, [I

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_low:I

    aput v1, v0, v2

    .line 66
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_mid:I

    aput v1, v0, v3

    .line 67
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_high:I

    aput v1, v0, v4

    .line 63
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mCdpljzldArr:[I

    .line 71
    new-array v0, v5, [I

    .line 72
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 73
    sget v1, Lcom/ts/MainUI/R$string;->can_light:I

    aput v1, v0, v3

    .line 74
    sget v1, Lcom/ts/MainUI/R$string;->can_jp_cdjbj:I

    aput v1, v0, v4

    .line 70
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mMdjbArr:[I

    .line 78
    new-array v0, v4, [I

    .line 79
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 80
    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v3

    .line 77
    sput-object v0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mYlgysygArr:[I

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 381
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 382
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 383
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 384
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 385
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 390
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 391
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 392
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 393
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 394
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 185
    sget v0, Lcom/ts/MainUI/R$string;->can_psbcld:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mLdlxArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemLdlx:Lcom/ts/canview/CanItemPopupList;

    .line 186
    sget v0, Lcom/ts/MainUI/R$string;->can_qpsyl:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mQbylArr:[I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemFrontVol:Lcom/ts/canview/CanItemPopupList;

    .line 187
    sget v0, Lcom/ts/MainUI/R$string;->can_hpsyl:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mQbylArr:[I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemRearVol:Lcom/ts/canview/CanItemPopupList;

    .line 189
    sget v0, Lcom/ts/MainUI/R$string;->can_hpsbcfz:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemLdzdfz:Lcom/ts/canview/CanItemSwitchList;

    .line 190
    sget v0, Lcom/ts/MainUI/R$string;->can_pdqbfz:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemSwitchList;

    .line 191
    sget v0, Lcom/ts/MainUI/R$string;->can_pvyxdtydx:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemDtydx:Lcom/ts/canview/CanItemSwitchList;

    .line 192
    sget v0, Lcom/ts/MainUI/R$string;->can_pvyxgdydx:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemGdydx:Lcom/ts/canview/CanItemSwitchList;

    .line 194
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_cdpljg:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mCdpljgArr:[I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemCdpljg:Lcom/ts/canview/CanItemPopupList;

    .line 195
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_cdpljzld:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mCdpljzldArr:[I

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemCdpljzld:Lcom/ts/canview/CanItemPopupList;

    .line 196
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_mdjb:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mMdjbArr:[I

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemMdjb:Lcom/ts/canview/CanItemPopupList;

    .line 198
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_qfpzzdzd:I

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemQfpzzdzd:Lcom/ts/canview/CanItemSwitchList;

    .line 199
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_qfpzjg:I

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemQfpzjg:Lcom/ts/canview/CanItemSwitchList;

    .line 200
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_ylgysyg:I

    sget-object v1, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mYlgysygArr:[I

    const/16 v2, 0xc

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemYlgysyg:Lcom/ts/canview/CanItemPopupList;

    .line 202
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_Dzzczd:I

    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemDzzczd:Lcom/ts/canview/CanItemSwitchList;

    .line 204
    sget v0, Lcom/ts/MainUI/R$string;->can_jeep_znz_yxbcys:I

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemYxbcys:Lcom/ts/canview/CanItemSwitchList;

    .line 205
    sget v0, Lcom/ts/MainUI/R$string;->can_fmqkg:I

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemFmqkg:Lcom/ts/canview/CanItemSwitchList;

    .line 207
    sget v0, Lcom/ts/MainUI/R$string;->can_dchsjzdqx:I

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemDcshsjqx:Lcom/ts/canview/CanItemSwitchList;

    .line 208
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 296
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 226
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RadarShowType:I

    .line 227
    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RearRadarAss:I

    .line 231
    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->ParkTrack:I

    .line 235
    goto :goto_0

    .line 238
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->ParkLine:I

    .line 239
    goto :goto_0

    .line 242
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->PdqbAss:I

    .line 243
    goto :goto_0

    .line 246
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->FrontVol:I

    .line 247
    goto :goto_0

    .line 250
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RearVol:I

    .line 251
    goto :goto_0

    .line 254
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Cdpljg:I

    .line 255
    goto :goto_0

    .line 258
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Cdpljzld:I

    .line 259
    goto :goto_0

    .line 262
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Qfpzjbzdzd:I

    .line 263
    goto :goto_0

    .line 266
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Qfpzjg:I

    .line 267
    goto :goto_0

    .line 270
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Ylgysyg:I

    .line 271
    goto :goto_0

    .line 274
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Mdbj:I

    .line 275
    goto :goto_0

    .line 278
    :pswitch_d
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Dzzczd:I

    .line 279
    goto :goto_0

    .line 282
    :pswitch_e
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Yxbcys:I

    .line 283
    goto :goto_0

    .line 286
    :pswitch_f
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Fmqkg:I

    .line 287
    goto :goto_0

    .line 290
    :pswitch_10
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Dcsqxhsj:I

    .line 291
    goto :goto_0

    .line 223
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->GetAdtData()V

    .line 214
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 218
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->ShowItem(I)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 155
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->Query2(I)V

    .line 156
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->GetSetData()V

    .line 121
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DrvAssUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DrvAssUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DrvAssUpdate:I

    .line 126
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemLdlx:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RadarShowType:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 127
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemFrontVol:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FrontVol:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 128
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemRearVol:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RearVol:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemLdzdfz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RearRadarAss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PdqbAss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 132
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemDtydx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkTrack:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemGdydx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkLine:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 135
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemCdpljg:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cdpljg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 136
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemCdpljzld:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cdpljzld:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 138
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemQfpzzdzd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qfpzjbzdzd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 139
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemQfpzjg:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qfpzjg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 140
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemYlgysyg:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ylgysyg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 141
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemMdjb:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Mdbj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 143
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemDzzczd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Dzzczd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 145
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemYxbcys:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Yxbcys:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 147
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemFmqkg:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Fmqkg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 148
    iget-object v0, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemDcshsjqx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Dcsqxhsj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 151
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->IsHaveItem(I)Z

    move-result v0

    .line 304
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 377
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemLdlx:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemLdzdfz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 315
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemDtydx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 319
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemGdydx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 323
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 327
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemFrontVol:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 331
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemRearVol:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 335
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemCdpljg:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 339
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemCdpljzld:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 343
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemQfpzzdzd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 347
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemQfpzjg:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 351
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemYlgysyg:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 355
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemMdjb:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 359
    :pswitch_d
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemDzzczd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 363
    :pswitch_e
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemYxbcys:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 367
    :pswitch_f
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemFmqkg:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 371
    :pswitch_10
    iget-object v1, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mItemDcshsjqx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 304
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->ResetData(Z)V

    .line 458
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 403
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 450
    :goto_0
    :pswitch_0
    return-void

    .line 407
    :pswitch_1
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RearRadarAss:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 411
    :pswitch_2
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkTrack:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 415
    :pswitch_3
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkLine:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 419
    :pswitch_4
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PdqbAss:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 423
    :pswitch_5
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qfpzjbzdzd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 427
    :pswitch_6
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qfpzjg:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 431
    :pswitch_7
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Dzzczd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 435
    :pswitch_8
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Yxbcys:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 439
    :pswitch_9
    const/16 v1, 0x60

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Fmqkg:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 443
    :pswitch_a
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Dcsqxhsj:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->InitUI()V

    .line 116
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 464
    packed-switch p1, :pswitch_data_0

    .line 497
    :goto_0
    :pswitch_0
    return-void

    .line 467
    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 471
    :pswitch_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 475
    :pswitch_3
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 479
    :pswitch_4
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 483
    :pswitch_5
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 487
    :pswitch_6
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 491
    :pswitch_7
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 176
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onPause()V

    .line 178
    const-string v0, "CanXbsygSetSafeAssistActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygBaseActivity;->onResume()V

    .line 162
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 163
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->LayoutUI()V

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->ResetData(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/ts/can/chrysler/xbs/CanXbsygSetSafeAssistActivity;->QueryData()V

    .line 167
    const-string v0, "CanXbsygSetSafeAssistActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method
