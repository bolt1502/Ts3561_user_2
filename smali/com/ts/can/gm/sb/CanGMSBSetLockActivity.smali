.class public Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGMSBSetLockActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CMJS:I = 0x7

.field public static final ITEM_CXYKSZDKDM:I = 0x8

.field public static final ITEM_FZKMZDLS:I = 0x1

.field public static final ITEM_JCZDJS:I = 0x9

.field public static final ITEM_JSDGFK:I = 0x5

.field public static final ITEM_LCZDLS:I = 0xb

.field public static final ITEM_LSYS:I = 0x2

.field private static final ITEM_MAX:I = 0xf

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_QBZDLS:I = 0x3

.field public static final ITEM_SMDGLBFK:I = 0x6

.field public static final ITEM_YKCCKZ:I = 0xc

.field public static final ITEM_YKQDCL:I = 0xf

.field public static final ITEM_YKZSM:I = 0xd

.field public static final ITEM_YSYWTX:I = 0xa

.field public static final ITEM_ZCZDJS:I = 0x4

.field public static final ITEM_ZDLS:I = 0xe

.field private static final mCmjsArr:[I

.field private static final mJczdjsArr:[I

.field private static final mLczdlsArr:[I

.field private static final mSmdglbfkArr:[I

.field private static final mZczdjsArr:[I


# instance fields
.field private mAdtLockData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

.field private mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

.field private mItemCmjs:Lcom/ts/canview/CanItemPopupList;

.field private mItemCxykszdkdm:Lcom/ts/canview/CanItemSwitchList;

.field private mItemFzkmzdls:Lcom/ts/canview/CanItemSwitchList;

.field private mItemJczdjs:Lcom/ts/canview/CanItemPopupList;

.field private mItemJsdgfk:Lcom/ts/canview/CanItemSwitchList;

.field private mItemLczdls:Lcom/ts/canview/CanItemPopupList;

.field private mItemLsys:Lcom/ts/canview/CanItemSwitchList;

.field private mItemQbzdls:Lcom/ts/canview/CanItemSwitchList;

.field private mItemSmdglbfk:Lcom/ts/canview/CanItemPopupList;

.field private mItemYkcckz:Lcom/ts/canview/CanItemSwitchList;

.field private mItemYkqdcl:Lcom/ts/canview/CanItemSwitchList;

.field private mItemYkzsm:Lcom/ts/canview/CanItemSwitchList;

.field private mItemYsywtx:Lcom/ts/canview/CanItemSwitchList;

.field private mItemZczdjs:Lcom/ts/canview/CanItemPopupList;

.field private mItemZdls:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field private mSbAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

.field private mSbSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

.field private mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-array v0, v5, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v4

    .line 41
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mZczdjsArr:[I

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_only_light:I

    aput v1, v0, v2

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_dghlb:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_only_lb:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v5

    .line 44
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSmdglbfkArr:[I

    .line 47
    new-array v0, v4, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v2

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v3

    .line 47
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mCmjsArr:[I

    .line 50
    new-array v0, v4, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v1, v0, v3

    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mJczdjsArr:[I

    .line 52
    new-array v0, v5, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 53
    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_dlbdk:I

    aput v1, v0, v4

    .line 52
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mLczdlsArr:[I

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtLockData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

    .line 75
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    .line 76
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    .line 77
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    .line 78
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    .line 18
    return-void
.end method

.method private IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 390
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 330
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtLockData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;->FZKMZDLS:I

    .line 331
    goto :goto_0

    .line 334
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtLockData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;->YSLS:I

    .line 335
    goto :goto_0

    .line 338
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtLockData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;->QBZDLS:I

    .line 339
    goto :goto_0

    .line 342
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtLockData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;->ZCZDJS:I

    .line 343
    goto :goto_0

    .line 346
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->YKJSDGFK:I

    .line 347
    goto :goto_0

    .line 350
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->YKSMDGLBFK:I

    .line 351
    goto :goto_0

    .line 354
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->YKJS:I

    .line 355
    goto :goto_0

    .line 358
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->AutoRelock:I

    .line 359
    goto :goto_0

    .line 362
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->JCJS:I

    .line 363
    goto :goto_0

    .line 366
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->YSYWTX:I

    .line 367
    goto :goto_0

    .line 370
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Lczdls:I

    .line 371
    goto :goto_0

    .line 374
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->YKCCKZ:I

    .line 375
    goto :goto_0

    .line 378
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->Ykzsm:I

    .line 379
    goto :goto_0

    .line 382
    :pswitch_d
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtLockData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;->Zdls:I

    .line 383
    goto :goto_0

    .line 386
    :pswitch_e
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->Ykqdcl:I

    goto :goto_0

    .line 327
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
    .end packed-switch
.end method

.method private LayoutUI()V
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 257
    return-void

    .line 255
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->ShowItem(I)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->IsHaveItem(I)Z

    move-result v0

    .line 261
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 264
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemFzkmzdls:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemLsys:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemQbzdls:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 276
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemZczdjs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 280
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemJsdgfk:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 284
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemSmdglbfk:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 288
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemCmjs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 292
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemCxykszdkdm:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 296
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemJczdjs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 300
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYsywtx:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 304
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemLczdls:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 308
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYkcckz:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 312
    :pswitch_c
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYkzsm:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 316
    :pswitch_d
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemZdls:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 320
    :pswitch_e
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYkqdcl:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 261
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
    .end packed-switch
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 158
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 163
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 165
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_fzkmzdll:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemFzkmzdls:Lcom/ts/canview/CanItemSwitchList;

    .line 166
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_qbzzll:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemQbzdls:Lcom/ts/canview/CanItemSwitchList;

    .line 167
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_zczdjs:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mZczdjsArr:[I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemZczdjs:Lcom/ts/canview/CanItemPopupList;

    .line 168
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ysll:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemLsys:Lcom/ts/canview/CanItemSwitchList;

    .line 169
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ykjsdgfk:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemJsdgfk:Lcom/ts/canview/CanItemSwitchList;

    .line 170
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ykdglbfk:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSmdglbfkArr:[I

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemSmdglbfk:Lcom/ts/canview/CanItemPopupList;

    .line 171
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ykjssz:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mCmjsArr:[I

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemCmjs:Lcom/ts/canview/CanItemPopupList;

    .line 172
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ysywtx:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYsywtx:Lcom/ts/canview/CanItemSwitchList;

    .line 173
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_ykzsm:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYkzsm:Lcom/ts/canview/CanItemSwitchList;

    .line 174
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_jczdjs:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mJczdjsArr:[I

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemJczdjs:Lcom/ts/canview/CanItemPopupList;

    .line 175
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_lczdls:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mLczdlsArr:[I

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemLczdls:Lcom/ts/canview/CanItemPopupList;

    .line 176
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_tigger7_auto_lock:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemZdls:Lcom/ts/canview/CanItemSwitchList;

    .line 177
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ykqdcl:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYkqdcl:Lcom/ts/canview/CanItemSwitchList;

    .line 179
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_cxszdkdm:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemCxykszdkdm:Lcom/ts/canview/CanItemSwitchList;

    .line 180
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ykcckz:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYkcckz:Lcom/ts/canview/CanItemSwitchList;

    .line 181
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetCarSet(Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;)V

    .line 186
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtLockData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->GMGetAdtCarSet(Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;)V

    .line 187
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarSetEx(Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;)V

    .line 188
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GmSbGetCarSetExAdt(Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;)V

    .line 190
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtLockData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtLockData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtLockData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAutoLock;->Update:I

    .line 196
    invoke-direct {p0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->LayoutUI()V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mAdtRmtLock:Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtRmtLock;->Update:I

    .line 205
    invoke-direct {p0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->LayoutUI()V

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbAdtData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetAdtEx;->Update:I

    .line 214
    invoke-direct {p0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->LayoutUI()V

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 220
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Update:I

    .line 224
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemFzkmzdls:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->FZKMZDLS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 225
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemLsys:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->YSLS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 226
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemQbzdls:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->QBZDLS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 227
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemZczdjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->ZCZDJS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 228
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemJsdgfk:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->YKJSDGFK:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 229
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemSmdglbfk:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->YKSMDGLBFK:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 230
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemCmjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->YKJS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 231
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemCxykszdkdm:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->AutoRelock:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 232
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemJczdjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->JCJS:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 233
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYsywtx:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->YSYWTX:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 234
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYkcckz:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->YKCCKZ:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 235
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYkzsm:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Ykzsm:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 236
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemZdls:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Zdls:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 237
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemYkqdcl:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Ykqdcl:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 241
    :cond_7
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 243
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 245
    :cond_8
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Update:I

    .line 246
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mItemLczdls:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSbSetData:Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GmSb_CarSetEx;->Lczdls:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 250
    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    :pswitch_0
    return-void

    .line 86
    :pswitch_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->FZKMZDLS:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 90
    :pswitch_2
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->QBZDLS:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 94
    :pswitch_3
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->YSLS:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 98
    :pswitch_4
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->YKJSDGFK:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 102
    :pswitch_5
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Ykzsm:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 106
    :pswitch_6
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Ykqdcl:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 110
    :pswitch_7
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->YSYWTX:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 114
    :pswitch_8
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_CarSet;->Zdls:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetLockActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 154
    :goto_0
    :pswitch_0
    return-void

    .line 135
    :pswitch_1
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 139
    :pswitch_2
    const/4 v0, 0x7

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 143
    :pswitch_3
    const/16 v0, 0x8

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 147
    :pswitch_4
    const/16 v0, 0xe

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 151
    :pswitch_5
    const/16 v0, 0x1b

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
