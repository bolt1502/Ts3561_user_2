.class public Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;
.super Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;
.source "CanRZygSetSafeAssistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CDPLJG:I = 0x8

.field public static final ITEM_CDPLJZLD:I = 0x9

.field public static final ITEM_DTYDX:I = 0x3

.field public static final ITEM_DZZCZD:I = 0xe

.field public static final ITEM_FMQKG:I = 0x10

.field public static final ITEM_FRONT_VOL:I = 0x6

.field public static final ITEM_GDYDX:I = 0x4

.field public static final ITEM_LDLX:I = 0x1

.field public static final ITEM_LDZDFZ:I = 0x2

.field private static final ITEM_MAX:I = 0x10

.field public static final ITEM_MDJB:I = 0xd

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_PDQBFZ:I = 0x5

.field public static final ITEM_QFPZJG:I = 0xb

.field public static final ITEM_QFPZZDZD:I = 0xa

.field public static final ITEM_REAR_VOL:I = 0x7

.field public static final ITEM_YLGYSYG:I = 0xc

.field public static final ITEM_YXBCYS:I = 0xf

.field public static final TAG:Ljava/lang/String; = "CanRZygSetSafeAssistActivity"

.field private static final mCdpljgArr:[I

.field private static final mCdpljzldArr:[I

.field private static final mLdlxArr:[I

.field private static final mMdjbArr:[I

.field private static final mQbylArr:[I

.field private static final mYlgysygArr:[I


# instance fields
.field protected mItemCdpljg:Lcom/ts/canview/CanItemPopupList;

.field protected mItemCdpljzld:Lcom/ts/canview/CanItemPopupList;

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

    .line 43
    new-array v0, v4, [I

    .line 44
    sget v1, Lcom/ts/MainUI/R$string;->can_type_vol:I

    aput v1, v0, v2

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_vol_img:I

    aput v1, v0, v3

    .line 42
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mLdlxArr:[I

    .line 49
    new-array v0, v5, [I

    .line 50
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_low:I

    aput v1, v0, v2

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_mid:I

    aput v1, v0, v3

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_high:I

    aput v1, v0, v4

    .line 48
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mQbylArr:[I

    .line 56
    new-array v0, v5, [I

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_jp_early:I

    aput v1, v0, v2

    .line 58
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_mid:I

    aput v1, v0, v3

    .line 59
    sget v1, Lcom/ts/MainUI/R$string;->can_jp_late:I

    aput v1, v0, v4

    .line 55
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mCdpljgArr:[I

    .line 63
    new-array v0, v5, [I

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_low:I

    aput v1, v0, v2

    .line 65
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_mid:I

    aput v1, v0, v3

    .line 66
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_high:I

    aput v1, v0, v4

    .line 62
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mCdpljzldArr:[I

    .line 70
    new-array v0, v5, [I

    .line 71
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 72
    sget v1, Lcom/ts/MainUI/R$string;->can_light:I

    aput v1, v0, v3

    .line 73
    sget v1, Lcom/ts/MainUI/R$string;->can_jp_cdjbj:I

    aput v1, v0, v4

    .line 69
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mMdjbArr:[I

    .line 77
    new-array v0, v4, [I

    .line 78
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 79
    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v3

    .line 76
    sput-object v0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mYlgysygArr:[I

    .line 80
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
    .line 368
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 369
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 370
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 372
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 377
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 378
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 379
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 380
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 381
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 182
    sget v0, Lcom/ts/MainUI/R$string;->can_psbcld:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mLdlxArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemLdlx:Lcom/ts/canview/CanItemPopupList;

    .line 183
    sget v0, Lcom/ts/MainUI/R$string;->can_qpsyl:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mQbylArr:[I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemFrontVol:Lcom/ts/canview/CanItemPopupList;

    .line 184
    sget v0, Lcom/ts/MainUI/R$string;->can_hpsyl:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mQbylArr:[I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemRearVol:Lcom/ts/canview/CanItemPopupList;

    .line 186
    sget v0, Lcom/ts/MainUI/R$string;->can_hpsbcfz:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemLdzdfz:Lcom/ts/canview/CanItemSwitchList;

    .line 187
    sget v0, Lcom/ts/MainUI/R$string;->can_pdqbfz:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemSwitchList;

    .line 188
    sget v0, Lcom/ts/MainUI/R$string;->can_pvyxdtydx:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemDtydx:Lcom/ts/canview/CanItemSwitchList;

    .line 189
    sget v0, Lcom/ts/MainUI/R$string;->can_pvyxgdydx:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemGdydx:Lcom/ts/canview/CanItemSwitchList;

    .line 191
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_cdpljg:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mCdpljgArr:[I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemCdpljg:Lcom/ts/canview/CanItemPopupList;

    .line 192
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_cdpljzld:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mCdpljzldArr:[I

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemCdpljzld:Lcom/ts/canview/CanItemPopupList;

    .line 193
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_mdjb:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mMdjbArr:[I

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemMdjb:Lcom/ts/canview/CanItemPopupList;

    .line 195
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_qfpzzdzd:I

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemQfpzzdzd:Lcom/ts/canview/CanItemSwitchList;

    .line 196
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_qfpzjg:I

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemQfpzjg:Lcom/ts/canview/CanItemSwitchList;

    .line 197
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_ylgysyg:I

    sget-object v1, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mYlgysygArr:[I

    const/16 v2, 0xc

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemYlgysyg:Lcom/ts/canview/CanItemPopupList;

    .line 199
    sget v0, Lcom/ts/MainUI/R$string;->can_jp_Dzzczd:I

    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemDzzczd:Lcom/ts/canview/CanItemSwitchList;

    .line 201
    sget v0, Lcom/ts/MainUI/R$string;->can_jeep_znz_yxbcys:I

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemYxbcys:Lcom/ts/canview/CanItemSwitchList;

    .line 202
    sget v0, Lcom/ts/MainUI/R$string;->can_fmqkg:I

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemFmqkg:Lcom/ts/canview/CanItemSwitchList;

    .line 203
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 287
    :goto_0
    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 221
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RadarShowType:I

    .line 222
    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RearRadarAss:I

    .line 226
    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->ParkTrack:I

    .line 230
    goto :goto_0

    .line 233
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->ParkLine:I

    .line 234
    goto :goto_0

    .line 237
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->PdqbAss:I

    .line 238
    goto :goto_0

    .line 241
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->FrontVol:I

    .line 242
    goto :goto_0

    .line 245
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->RearVol:I

    .line 246
    goto :goto_0

    .line 249
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Cdpljg:I

    .line 250
    goto :goto_0

    .line 253
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Cdpljzld:I

    .line 254
    goto :goto_0

    .line 257
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Qfpzjbzdzd:I

    .line 258
    goto :goto_0

    .line 261
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Qfpzjg:I

    .line 262
    goto :goto_0

    .line 265
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Ylgysyg:I

    .line 266
    goto :goto_0

    .line 269
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Mdbj:I

    .line 270
    goto :goto_0

    .line 273
    :pswitch_d
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Dzzczd:I

    .line 274
    goto :goto_0

    .line 277
    :pswitch_e
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Yxbcys:I

    .line 278
    goto :goto_0

    .line 281
    :pswitch_f
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthAdt;->Fmqkg:I

    .line 282
    goto :goto_0

    .line 218
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->GetAdtData()V

    .line 209
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 213
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->ShowItem(I)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 2

    .prologue
    .line 152
    const/16 v0, 0x40

    const/16 v1, 0xa0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->Query(II)V

    .line 153
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->GetSetData()V

    .line 119
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DrvAssUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DrvAssUpdate:I

    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->DrvAssUpdate:I

    .line 124
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemLdlx:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RadarShowType:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 125
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemFrontVol:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->FrontVol:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 126
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemRearVol:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RearVol:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 128
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemLdzdfz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RearRadarAss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PdqbAss:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemDtydx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkTrack:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 131
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemGdydx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkLine:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemCdpljg:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cdpljg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 134
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemCdpljzld:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Cdpljzld:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 136
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemQfpzzdzd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qfpzjbzdzd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 137
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemQfpzjg:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qfpzjg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 138
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemYlgysyg:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Ylgysyg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 139
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemMdjb:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Mdbj:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 141
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemDzzczd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Dzzczd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 143
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemYxbcys:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Yxbcys:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 145
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemFmqkg:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Fmqkg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 148
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->IsHaveItem(I)Z

    move-result v0

    .line 295
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 364
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemLdlx:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemLdzdfz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 306
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemDtydx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 310
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemGdydx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 314
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemPdqbfz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 318
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemFrontVol:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 322
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemRearVol:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 326
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemCdpljg:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 330
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemCdpljzld:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 334
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemQfpzzdzd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 338
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemQfpzjg:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 342
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemYlgysyg:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 346
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemMdjb:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 350
    :pswitch_d
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemDzzczd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 354
    :pswitch_e
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemYxbcys:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 358
    :pswitch_f
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mItemFmqkg:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 295
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
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->ResetData(Z)V

    .line 445
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 390
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 437
    :goto_0
    :pswitch_0
    return-void

    .line 394
    :pswitch_1
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->RearRadarAss:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 398
    :pswitch_2
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkTrack:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 402
    :pswitch_3
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->ParkLine:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 406
    :pswitch_4
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->PdqbAss:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 410
    :pswitch_5
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qfpzjbzdzd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 414
    :pswitch_6
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Qfpzjg:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 418
    :pswitch_7
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Mdbj:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 422
    :pswitch_8
    const/16 v1, 0x80

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Dzzczd:I

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSWSet(II)V

    goto :goto_0

    .line 426
    :pswitch_9
    const/16 v1, 0x61

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Yxbcys:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 430
    :pswitch_a
    const/16 v1, 0x60

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthSetData;->Fmqkg:I

    invoke-virtual {p0, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->Neg(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 390
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
    .line 110
    invoke-super {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->InitUI()V

    .line 114
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 451
    packed-switch p1, :pswitch_data_0

    .line 484
    :goto_0
    :pswitch_0
    return-void

    .line 454
    :pswitch_1
    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 458
    :pswitch_2
    const/16 v0, 0xe

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 462
    :pswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 466
    :pswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 470
    :pswitch_5
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 474
    :pswitch_6
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 478
    :pswitch_7
    const/4 v0, 0x6

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->CarSet(II)V

    goto :goto_0

    .line 451
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
    .line 172
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 173
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onPause()V

    .line 175
    const-string v0, "CanRZygSetSafeAssistActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/ts/can/chrysler/rz/CanRZygBaseActivity;->onResume()V

    .line 159
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 160
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->LayoutUI()V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->ResetData(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygSetSafeAssistActivity;->QueryData()V

    .line 164
    const-string v0, "CanRZygSetSafeAssistActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method
