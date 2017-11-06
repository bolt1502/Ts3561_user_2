.class public Lcom/ts/can/psa/CanPSACarSetActivity;
.super Lcom/ts/can/psa/CanPSABaseActivity;
.source "CanPSACarSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick;
.implements Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;


# static fields
.field public static final ITEM_AC:I = 0x18

.field public static final ITEM_AUTOLIGHT:I = 0x16

.field public static final ITEM_AUTOLOCK:I = 0x17

.field public static final ITEM_BWHJ:I = 0x7

.field public static final ITEM_CMXX:I = 0xe

.field public static final ITEM_CONSDW:I = 0xb

.field public static final ITEM_DAUL:I = 0x19

.field public static final ITEM_DCLDTY:I = 0x4

.field public static final ITEM_DDYSGB:I = 0x10

.field public static final ITEM_FDJQT:I = 0xd

.field public static final ITEM_FWZM:I = 0x6

.field public static final ITEM_GXHYB:I = 0x15

.field public static final ITEM_HYS:I = 0x5

.field public static final ITEM_JJSHBX:I = 0x11

.field public static final ITEM_LANG:I = 0x1

.field private static final ITEM_MAX:I = 0x19

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_MQTC:I = 0xc

.field public static final ITEM_PLJC:I = 0x13

.field public static final ITEM_QYLKZ:I = 0x12

.field public static final ITEM_RXD:I = 0x9

.field public static final ITEM_SOUND:I = 0x2

.field public static final ITEM_TYBD:I = 0xf

.field public static final ITEM_YBBJYS:I = 0x14

.field public static final ITEM_YBGN:I = 0xa

.field public static final ITEM_YBZM:I = 0x8

.field public static final ITEM_ZCFZ:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CanPSACarSetActivity"

.field private static final mBwhjArr:[I

.field private static final mCmxxArr:[I

.field private static final mConsDWArr:[Ljava/lang/String;

.field private static final mDdysgbmArr:[I

.field private static final mGxhybArr:[I

.field private static final mLangArr:[I

.field private static final mSoundArr:[I

.field private static final mStaArr:[I

.field private static final mYbbjysArr:[I

.field private static final mYbzmArr:[I


# instance fields
.field private mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

.field private mFwzmArr:[Ljava/lang/String;

.field private mItemAc:Lcom/ts/canview/CanItemPopupList;

.field private mItemAutoLight:Lcom/ts/canview/CanItemSwitchList;

.field private mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

.field private mItemBwhj:Lcom/ts/canview/CanItemPopupList;

.field private mItemCmxx:Lcom/ts/canview/CanItemPopupList;

.field private mItemConsDW:Lcom/ts/canview/CanItemPopupList;

.field private mItemDaul:Lcom/ts/canview/CanItemPopupList;

.field private mItemDcldty:Lcom/ts/canview/CanItemSwitchList;

.field private mItemDdysgb:Lcom/ts/canview/CanItemPopupList;

.field private mItemFdjqt:Lcom/ts/canview/CanItemSwitchList;

.field private mItemFwzm:Lcom/ts/canview/CanItemPopupList;

.field private mItemGxhyb:Lcom/ts/canview/CanItemPopupList;

.field private mItemHys:Lcom/ts/canview/CanItemSwitchList;

.field private mItemJjshbx:Lcom/ts/canview/CanItemSwitchList;

.field private mItemLang:Lcom/ts/canview/CanItemPopupList;

.field private mItemMqtc:Lcom/ts/canview/CanItemSwitchList;

.field private mItemPljc:Lcom/ts/canview/CanItemSwitchList;

.field private mItemQylkz:Lcom/ts/canview/CanItemSwitchList;

.field private mItemRxd:Lcom/ts/canview/CanItemSwitchList;

.field private mItemSound:Lcom/ts/canview/CanItemPopupList;

.field private mItemTybd:Lcom/ts/canview/CanItemTextBtnList;

.field private mItemYbbjys:Lcom/ts/canview/CanItemPopupList;

.field private mItemYbgn:Lcom/ts/canview/CanItemSwitchList;

.field private mItemYbzm:Lcom/ts/canview/CanItemPopupList;

.field private mItemZcfz:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

.field private mbLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 60
    sget v1, Lcom/ts/MainUI/R$string;->lang_en_uk:I

    aput v1, v0, v3

    .line 61
    sget v1, Lcom/ts/MainUI/R$string;->lang_cn:I

    aput v1, v0, v4

    .line 62
    sget v1, Lcom/ts/MainUI/R$string;->lang_pyccknn:I

    aput v1, v0, v5

    .line 63
    sget v1, Lcom/ts/MainUI/R$string;->lang_francais:I

    aput v1, v0, v6

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->lang_deutsch:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 65
    sget v2, Lcom/ts/MainUI/R$string;->lang_espanol:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 66
    sget v2, Lcom/ts/MainUI/R$string;->lang_itanliano:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 67
    sget v2, Lcom/ts/MainUI/R$string;->lang_nederlands:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 68
    sget v2, Lcom/ts/MainUI/R$string;->lang_portugues:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 69
    sget v2, Lcom/ts/MainUI/R$string;->lang_turkce:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 70
    sget v2, Lcom/ts/MainUI/R$string;->lang_portugues:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 71
    sget v2, Lcom/ts/MainUI/R$string;->lang_portugues_brasil:I

    aput v2, v0, v1

    .line 58
    sput-object v0, Lcom/ts/can/psa/CanPSACarSetActivity;->mLangArr:[I

    .line 75
    new-array v0, v7, [I

    .line 76
    sget v1, Lcom/ts/MainUI/R$string;->can_eq_classic:I

    aput v1, v0, v3

    .line 77
    sget v1, Lcom/ts/MainUI/R$string;->can_eq_crystal:I

    aput v1, v0, v4

    .line 78
    sget v1, Lcom/ts/MainUI/R$string;->can_eq_urban:I

    aput v1, v0, v5

    .line 79
    sget v1, Lcom/ts/MainUI/R$string;->can_eq_jungle:I

    aput v1, v0, v6

    .line 74
    sput-object v0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSoundArr:[I

    .line 83
    new-array v0, v5, [I

    .line 84
    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v3

    .line 85
    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v4

    .line 82
    sput-object v0, Lcom/ts/can/psa/CanPSACarSetActivity;->mCmxxArr:[I

    .line 89
    new-array v0, v6, [Ljava/lang/String;

    .line 90
    const-string v1, "KM/L-KM"

    aput-object v1, v0, v3

    .line 91
    const-string v1, "L/100KM-KM"

    aput-object v1, v0, v4

    .line 92
    const-string v1, "MPG"

    aput-object v1, v0, v5

    .line 88
    sput-object v0, Lcom/ts/can/psa/CanPSACarSetActivity;->mConsDWArr:[Ljava/lang/String;

    .line 96
    new-array v0, v7, [I

    .line 97
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v3

    .line 98
    sget v1, Lcom/ts/MainUI/R$string;->can_15s:I

    aput v1, v0, v4

    .line 99
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v5

    .line 100
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v6

    .line 95
    sput-object v0, Lcom/ts/can/psa/CanPSACarSetActivity;->mBwhjArr:[I

    .line 104
    new-array v0, v7, [I

    .line 105
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v3

    .line 106
    sget v1, Lcom/ts/MainUI/R$string;->can_15s:I

    aput v1, v0, v4

    .line 107
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v5

    .line 108
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v6

    .line 103
    sput-object v0, Lcom/ts/can/psa/CanPSACarSetActivity;->mYbzmArr:[I

    .line 112
    new-array v0, v7, [I

    .line 113
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v3

    .line 114
    sget v1, Lcom/ts/MainUI/R$string;->can_15s:I

    aput v1, v0, v4

    .line 115
    sget v1, Lcom/ts/MainUI/R$string;->can_30s:I

    aput v1, v0, v5

    .line 116
    sget v1, Lcom/ts/MainUI/R$string;->can_60s:I

    aput v1, v0, v6

    .line 111
    sput-object v0, Lcom/ts/can/psa/CanPSACarSetActivity;->mDdysgbmArr:[I

    .line 119
    new-array v0, v5, [I

    .line 120
    sget v1, Lcom/ts/MainUI/R$string;->can_psa_2017_4008_ybbjys_1:I

    aput v1, v0, v3

    .line 121
    sget v1, Lcom/ts/MainUI/R$string;->can_psa_2017_4008_ybbjys_2:I

    aput v1, v0, v4

    .line 119
    sput-object v0, Lcom/ts/can/psa/CanPSACarSetActivity;->mYbbjysArr:[I

    .line 124
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 125
    sget v1, Lcom/ts/MainUI/R$string;->can_psa_2017_4008_gxhybsz_0:I

    aput v1, v0, v3

    .line 126
    sget v1, Lcom/ts/MainUI/R$string;->can_psa_2017_4008_gxhybsz_1:I

    aput v1, v0, v4

    .line 127
    sget v1, Lcom/ts/MainUI/R$string;->can_psa_2017_4008_gxhybsz_2:I

    aput v1, v0, v5

    .line 128
    sget v1, Lcom/ts/MainUI/R$string;->can_psa_2017_4008_gxhybsz_3:I

    aput v1, v0, v6

    .line 129
    sget v1, Lcom/ts/MainUI/R$string;->can_psa_2017_4008_gxhybsz_4:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 130
    sget v2, Lcom/ts/MainUI/R$string;->can_psa_2017_4008_gxhybsz_5:I

    aput v2, v0, v1

    .line 124
    sput-object v0, Lcom/ts/can/psa/CanPSACarSetActivity;->mGxhybArr:[I

    .line 133
    new-array v0, v5, [I

    .line 134
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v3

    .line 135
    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v4

    .line 133
    sput-object v0, Lcom/ts/can/psa/CanPSACarSetActivity;->mStaArr:[I

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ts/can/psa/CanPSABaseActivity;-><init>()V

    .line 176
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    .line 177
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;-><init>()V

    iput-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    .line 24
    return-void
.end method

.method private AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "id"    # I

    .prologue
    .line 630
    new-instance v0, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    .line 631
    .local v0, "btn":Lcom/ts/canview/CanItemTextBtnList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 632
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 635
    return-object v0
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 603
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 604
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 605
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 606
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 607
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 612
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 613
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 614
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 615
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 616
    return-object v0
.end method

.method protected AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 621
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 622
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 623
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 624
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 625
    return-object v0
.end method

.method protected InitUI()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x7

    .line 266
    new-instance v1, Lcom/ts/canview/CanScrollList;

    invoke-direct {v1, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 268
    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mFwzmArr:[Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mFwzmArr:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACarSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ts/MainUI/R$string;->can_off:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 270
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-le v0, v5, :cond_0

    .line 275
    sget v1, Lcom/ts/MainUI/R$string;->can_language:I

    sget-object v2, Lcom/ts/can/psa/CanPSACarSetActivity;->mLangArr:[I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 276
    sget v1, Lcom/ts/MainUI/R$string;->can_eq:I

    sget-object v2, Lcom/ts/can/psa/CanPSACarSetActivity;->mSoundArr:[I

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemSound:Lcom/ts/canview/CanItemPopupList;

    .line 277
    sget v1, Lcom/ts/MainUI/R$string;->can_fuel_d_w:I

    sget-object v2, Lcom/ts/can/psa/CanPSACarSetActivity;->mConsDWArr:[Ljava/lang/String;

    const/16 v3, 0xb

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemConsDW:Lcom/ts/canview/CanItemPopupList;

    .line 278
    sget v1, Lcom/ts/MainUI/R$string;->can_door_open_opt:I

    sget-object v2, Lcom/ts/can/psa/CanPSACarSetActivity;->mCmxxArr:[I

    const/16 v3, 0xe

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemCmxx:Lcom/ts/canview/CanItemPopupList;

    .line 280
    sget v1, Lcom/ts/MainUI/R$string;->can_env_light:I

    iget-object v2, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mFwzmArr:[Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemFwzm:Lcom/ts/canview/CanItemPopupList;

    .line 281
    sget v1, Lcom/ts/MainUI/R$string;->can_bwhj_light:I

    sget-object v2, Lcom/ts/can/psa/CanPSACarSetActivity;->mBwhjArr:[I

    invoke-virtual {p0, v1, v2, v5}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemBwhj:Lcom/ts/canview/CanItemPopupList;

    .line 282
    sget v1, Lcom/ts/MainUI/R$string;->can_ybzm:I

    sget-object v2, Lcom/ts/can/psa/CanPSACarSetActivity;->mYbzmArr:[I

    invoke-virtual {p0, v1, v2, v6}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemYbzm:Lcom/ts/canview/CanItemPopupList;

    .line 283
    sget v1, Lcom/ts/MainUI/R$string;->can_yb_func:I

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemYbgn:Lcom/ts/canview/CanItemSwitchList;

    .line 284
    sget v1, Lcom/ts/MainUI/R$string;->can_rjxcd:I

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    .line 287
    sget v1, Lcom/ts/MainUI/R$string;->can_car_zcfz:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemZcfz:Lcom/ts/canview/CanItemSwitchList;

    .line 288
    sget v1, Lcom/ts/MainUI/R$string;->can_stop_radar:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemDcldty:Lcom/ts/canview/CanItemSwitchList;

    .line 289
    sget v1, Lcom/ts/MainUI/R$string;->can_hys:I

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemHys:Lcom/ts/canview/CanItemSwitchList;

    .line 291
    sget v1, Lcom/ts/MainUI/R$string;->can_mqtc:I

    const/16 v2, 0xc

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemMqtc:Lcom/ts/canview/CanItemSwitchList;

    .line 292
    sget v1, Lcom/ts/MainUI/R$string;->can_fdj_qtgn:I

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemFdjqt:Lcom/ts/canview/CanItemSwitchList;

    .line 294
    sget v1, Lcom/ts/MainUI/R$string;->can_tybd:I

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddTextBtn(II)Lcom/ts/canview/CanItemTextBtnList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemTybd:Lcom/ts/canview/CanItemTextBtnList;

    .line 296
    sget v1, Lcom/ts/MainUI/R$string;->can_car_ddycxm:I

    sget-object v2, Lcom/ts/can/psa/CanPSACarSetActivity;->mDdysgbmArr:[I

    const/16 v3, 0x10

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemDdysgb:Lcom/ts/canview/CanItemPopupList;

    .line 298
    sget v1, Lcom/ts/MainUI/R$string;->can_jjshbx:I

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemJjshbx:Lcom/ts/canview/CanItemSwitchList;

    .line 300
    sget v1, Lcom/ts/MainUI/R$string;->can_traction_control_sys:I

    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemQylkz:Lcom/ts/canview/CanItemSwitchList;

    .line 301
    sget v1, Lcom/ts/MainUI/R$string;->can_psa_2017_4008_pljcxt:I

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemPljc:Lcom/ts/canview/CanItemSwitchList;

    .line 302
    sget v1, Lcom/ts/MainUI/R$string;->can_psa_2017_4008_ybbjys:I

    sget-object v2, Lcom/ts/can/psa/CanPSACarSetActivity;->mYbbjysArr:[I

    const/16 v3, 0x14

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemYbbjys:Lcom/ts/canview/CanItemPopupList;

    .line 303
    sget v1, Lcom/ts/MainUI/R$string;->can_psa_2017_4008_gxhybsz:I

    sget-object v2, Lcom/ts/can/psa/CanPSACarSetActivity;->mGxhybArr:[I

    const/16 v3, 0x15

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemGxhyb:Lcom/ts/canview/CanItemPopupList;

    .line 305
    sget v1, Lcom/ts/MainUI/R$string;->can_auto_light:I

    const/16 v2, 0x16

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemAutoLight:Lcom/ts/canview/CanItemSwitchList;

    .line 306
    sget v1, Lcom/ts/MainUI/R$string;->can_xczdls:I

    const/16 v2, 0x17

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

    .line 307
    sget v1, Lcom/ts/MainUI/R$string;->can_air_ac:I

    sget-object v2, Lcom/ts/can/psa/CanPSACarSetActivity;->mStaArr:[I

    const/16 v3, 0x18

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemAc:Lcom/ts/canview/CanItemPopupList;

    .line 308
    sget v1, Lcom/ts/MainUI/R$string;->can_air_dual:I

    sget-object v2, Lcom/ts/can/psa/CanPSACarSetActivity;->mStaArr:[I

    const/16 v3, 0x19

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/psa/CanPSACarSetActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemDaul:Lcom/ts/canview/CanItemPopupList;

    .line 309
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mFwzmArr:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method protected IsHaveItem(I)Z
    .locals 4
    .param p1, "item"    # I

    .prologue
    const/16 v3, 0x3a

    const/16 v2, 0x9

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 486
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/ts/can/psa/CanPSACarSetActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 327
    :pswitch_0
    const/4 v0, 0x1

    .line 328
    goto :goto_0

    .line 331
    :pswitch_1
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 333
    const/4 v0, 0x1

    .line 335
    goto :goto_0

    .line 338
    :pswitch_2
    const/4 v0, 0x1

    .line 339
    goto :goto_0

    .line 342
    :pswitch_3
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_1

    .line 344
    const/4 v0, 0x1

    .line 345
    goto :goto_0

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Fwzm:I

    .line 348
    goto :goto_0

    .line 351
    :pswitch_4
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v1, v3, :cond_2

    .line 353
    const/4 v0, 0x1

    .line 354
    goto :goto_0

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Bwhj:I

    .line 357
    goto :goto_0

    .line 360
    :pswitch_5
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_3

    .line 362
    const/4 v0, 0x1

    .line 363
    goto :goto_0

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Ybzm:I

    .line 366
    goto :goto_0

    .line 369
    :pswitch_6
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v1, v3, :cond_4

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_4

    .line 371
    const/4 v0, 0x1

    .line 372
    goto :goto_0

    .line 374
    :cond_4
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Ybgn:I

    .line 375
    goto :goto_0

    .line 378
    :pswitch_7
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v1, v3, :cond_5

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_5

    .line 380
    const/4 v0, 0x1

    .line 381
    goto :goto_0

    .line 383
    :cond_5
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Rxd:I

    .line 384
    goto :goto_0

    .line 387
    :pswitch_8
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 389
    const/4 v0, 0x1

    .line 391
    goto :goto_0

    .line 394
    :pswitch_9
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 396
    const/4 v0, 0x1

    .line 398
    goto :goto_0

    .line 401
    :pswitch_a
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v1, v3, :cond_6

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_6

    .line 403
    const/4 v0, 0x1

    .line 404
    goto :goto_0

    .line 406
    :cond_6
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Zdyg:I

    .line 407
    goto :goto_0

    .line 410
    :pswitch_b
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 412
    const/4 v0, 0x1

    .line 414
    goto/16 :goto_0

    .line 417
    :pswitch_c
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 419
    const/4 v0, 0x1

    .line 421
    goto/16 :goto_0

    .line 424
    :pswitch_d
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-ne v1, v3, :cond_7

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-eq v2, v1, :cond_7

    .line 426
    const/4 v0, 0x1

    .line 427
    goto/16 :goto_0

    .line 429
    :cond_7
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Cmxx:I

    .line 430
    goto/16 :goto_0

    .line 433
    :pswitch_e
    const/4 v0, 0x1

    .line 434
    goto/16 :goto_0

    .line 437
    :pswitch_f
    sget v1, Lcom/ts/can/CanFunc;->mFsCanTp:I

    if-eq v1, v3, :cond_8

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 439
    :cond_8
    const/4 v0, 0x1

    .line 441
    goto/16 :goto_0

    .line 444
    :pswitch_10
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 446
    const/4 v0, 0x1

    .line 448
    goto/16 :goto_0

    .line 451
    :pswitch_11
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Qylkzxtkg:I

    .line 452
    goto/16 :goto_0

    .line 455
    :pswitch_12
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Pljkxt:I

    .line 456
    goto/16 :goto_0

    .line 459
    :pswitch_13
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Ybbjs:I

    .line 460
    goto/16 :goto_0

    .line 463
    :pswitch_14
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Gxhybsz:I

    .line 464
    goto/16 :goto_0

    .line 467
    :pswitch_15
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->AutoLight:I

    .line 468
    goto/16 :goto_0

    .line 471
    :pswitch_16
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->AutoLock:I

    .line 472
    goto/16 :goto_0

    .line 475
    :pswitch_17
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->AcSw:I

    .line 476
    goto/16 :goto_0

    .line 479
    :pswitch_18
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->DaulSw:I

    .line 480
    goto/16 :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 319
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSACarSetActivity;->ShowItem(I)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    const/16 v0, 0x38

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->PSAQuery(II)V

    .line 241
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Sleep(J)V

    .line 242
    const/16 v0, 0x3c

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->PSAQuery(II)V

    .line 244
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->PSAGetSetup(Lcom/lgb/canmodule/CanDataInfo$PeugSet;)V

    .line 194
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/CanPSACarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/CanPSACarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Update:I

    .line 199
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Lang:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 200
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemSound:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->EQ:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 201
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemConsDW:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->DWFuel:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 202
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemCmxx:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->DoorOpt:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 203
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemFwzm:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Fwzm:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 204
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemBwhj:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Bwhj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 205
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemYbzm:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Ybzm:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 206
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgRxd:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 207
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemYbgn:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->YbFunc:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 208
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemZcfz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgZcfz:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 209
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemDcldty:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgStopRadar:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 210
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemHys:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgRearWiper:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 211
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemMqtc:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Mqtc:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 212
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemFdjqt:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->StopFdj:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 213
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemDdysgb:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Ddysgb:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 214
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemJjshbx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Jjshbx:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 216
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemQylkz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Qylkzxtkg:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 217
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemPljc:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Pljkxt:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 218
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemYbbjys:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Ybbjs:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 220
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemAutoLight:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->AutoLight:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 221
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->AutoLock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->PSAGetAdt(Lcom/lgb/canmodule/CanDataInfo$PeugAdt;)V

    .line 227
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/psa/CanPSACarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Update:I

    invoke-static {v0}, Lcom/ts/can/psa/CanPSACarSetActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mAdtData:Lcom/lgb/canmodule/CanDataInfo$PeugAdt;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$PeugAdt;->Update:I

    .line 232
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACarSetActivity;->LayoutUI()V

    .line 236
    :cond_3
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/ts/can/psa/CanPSACarSetActivity;->IsHaveItem(I)Z

    move-result v0

    .line 494
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 599
    :goto_0
    return-void

    .line 497
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 501
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemSound:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 505
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemConsDW:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 509
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemFwzm:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 513
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemBwhj:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 517
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemYbzm:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 521
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemYbgn:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 525
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemRxd:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 529
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemZcfz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 533
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemDcldty:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 537
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemHys:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 541
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemMqtc:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 545
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemFdjqt:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 549
    :pswitch_d
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemCmxx:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 553
    :pswitch_e
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemTybd:Lcom/ts/canview/CanItemTextBtnList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemTextBtnList;->ShowGone(Z)V

    goto :goto_0

    .line 557
    :pswitch_f
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemDdysgb:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 561
    :pswitch_10
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemJjshbx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 565
    :pswitch_11
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemQylkz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 569
    :pswitch_12
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemPljc:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 573
    :pswitch_13
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemYbbjys:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 577
    :pswitch_14
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemGxhyb:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 581
    :pswitch_15
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemAutoLight:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto/16 :goto_0

    .line 585
    :pswitch_16
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemAutoLock:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto/16 :goto_0

    .line 589
    :pswitch_17
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemAc:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto/16 :goto_0

    .line 593
    :pswitch_18
    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mItemDaul:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto/16 :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSACarSetActivity;->ResetData(Z)V

    .line 708
    return-void
.end method

.method public onCancel(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 785
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 787
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    .line 789
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 643
    .local v6, "item":I
    packed-switch v6, :pswitch_data_0

    .line 700
    :goto_0
    :pswitch_0
    return-void

    .line 646
    :pswitch_1
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->YbFunc:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 650
    :pswitch_2
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgRxd:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 654
    :pswitch_3
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgZcfz:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 658
    :pswitch_4
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgStopRadar:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 662
    :pswitch_5
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->fgRearWiper:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 666
    :pswitch_6
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Mqtc:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 670
    :pswitch_7
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->StopFdj:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 674
    :pswitch_8
    new-instance v0, Lcom/ts/canview/CanItemMsgBox;

    const/16 v1, 0xf

    sget v3, Lcom/ts/MainUI/R$string;->can_sure_tybd:I

    move-object v2, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemMsgBox;-><init>(ILandroid/content/Context;ILcom/ts/canview/CanItemMsgBox$onMsgBoxClick;Lcom/ts/canview/CanItemMsgBox$onMsgBoxClick2;)V

    goto :goto_0

    .line 678
    :pswitch_9
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Jjshbx:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 682
    :pswitch_a
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Qylkzxtkg:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto/16 :goto_0

    .line 686
    :pswitch_b
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->Pljkxt:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto/16 :goto_0

    .line 690
    :pswitch_c
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->AutoLight:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto/16 :goto_0

    .line 694
    :pswitch_d
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/ts/can/psa/CanPSACarSetActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$PeugSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$PeugSet;->AutoLock:I

    invoke-virtual {p0, v1}, Lcom/ts/can/psa/CanPSACarSetActivity;->Neg(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto/16 :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/ts/can/psa/CanPSABaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSACarSetActivity;->setContentView(I)V

    .line 188
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACarSetActivity;->InitUI()V

    .line 189
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    const/16 v0, 0xb

    .line 714
    packed-switch p1, :pswitch_data_0

    .line 769
    :goto_0
    :pswitch_0
    return-void

    .line 718
    :pswitch_1
    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 722
    :pswitch_2
    const/16 v0, 0x9

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 726
    :pswitch_3
    const/16 v0, 0xa

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 730
    :pswitch_4
    const/16 v0, 0xf

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 734
    :pswitch_5
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 738
    :pswitch_6
    const/4 v0, 0x6

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 742
    :pswitch_7
    const/4 v0, 0x7

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 746
    :pswitch_8
    const/16 v0, 0x12

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 750
    :pswitch_9
    const/16 v0, 0x16

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 754
    :pswitch_a
    const/16 v0, 0x17

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    goto :goto_0

    .line 758
    :pswitch_b
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 762
    :pswitch_c
    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->PSAACSet(II)V

    goto :goto_0

    .line 714
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onOK(I)V
    .locals 2
    .param p1, "param"    # I

    .prologue
    .line 775
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 777
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->PSACarSet(II)V

    .line 779
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 261
    invoke-super {p0}, Lcom/ts/can/psa/CanPSABaseActivity;->onPause()V

    .line 262
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/ts/can/psa/CanPSABaseActivity;->onResume()V

    .line 250
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/psa/CanPSACarSetActivity;->ResetData(Z)V

    .line 252
    invoke-virtual {p0}, Lcom/ts/can/psa/CanPSACarSetActivity;->QueryData()V

    .line 254
    return-void
.end method
