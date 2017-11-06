.class public Lcom/ts/can/gm/sb/CanGMSBSetACActivity;
.super Lcom/ts/can/CanCommonActivity;
.source "CanGMSBSetACActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_FQWD:I = 0x8

.field public static final ITEM_HCCW:I = 0x1

.field public static final ITEM_HQKTQD:I = 0xc

.field public static final ITEM_KQZLCGQ:I = 0x7

.field public static final ITEM_KTYCQD:I = 0xb

.field private static final ITEM_MAX:I = 0xc

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_QCCW:I = 0x2

.field public static final ITEM_QDMS:I = 0x5

.field public static final ITEM_YCQDZYCF:I = 0xa

.field public static final ITEM_YCQDZYJR:I = 0x9

.field public static final ITEM_ZDMSFL:I = 0x6

.field public static final ITEM_ZYJR_POP:I = 0x4

.field public static final ITEM_ZYJR_SW:I = 0x3

.field private static final mFqwdlArr:[I

.field private static final mHqktqdArrays:[I

.field private static final mKqzlcgqlArr:[I

.field private static final mKtycqdArrays:[I

.field private static final mQdmsArr:[I

.field private static final mYcqdzycfArrays:[I

.field private static final mZdmsflArr:[I

.field private static final mZyjrArr:[I


# instance fields
.field private mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

.field private mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

.field private mItemFqwd:Lcom/ts/canview/CanItemPopupList;

.field private mItemHccw:Lcom/ts/canview/CanItemSwitchList;

.field private mItemHqktqd:Lcom/ts/canview/CanItemPopupList;

.field private mItemKqzlcgq:Lcom/ts/canview/CanItemPopupList;

.field private mItemKtycqd:Lcom/ts/canview/CanItemPopupList;

.field private mItemQccw:Lcom/ts/canview/CanItemSwitchList;

.field private mItemQdms:Lcom/ts/canview/CanItemPopupList;

.field private mItemYcqdzycf:Lcom/ts/canview/CanItemPopupList;

.field private mItemYcqdzyjr:Lcom/ts/canview/CanItemPopupList;

.field private mItemZdmsfl:Lcom/ts/canview/CanItemPopupList;

.field private mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

.field private mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-array v0, v5, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 36
    sget v1, Lcom/ts/MainUI/R$string;->can_ckhjsy:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_jiashiyuan:I

    aput v1, v0, v4

    .line 35
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mZyjrArr:[I

    .line 38
    new-array v0, v5, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v3

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->can_sc_set:I

    aput v1, v0, v4

    .line 38
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mQdmsArr:[I

    .line 41
    new-array v0, v5, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_low:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_mid:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_high:I

    aput v1, v0, v4

    .line 41
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mZdmsflArr:[I

    .line 44
    new-array v0, v5, [I

    .line 45
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_lo_sens:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_mid_sens:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_hi_sens:I

    aput v1, v0, v4

    .line 44
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mKqzlcgqlArr:[I

    .line 47
    new-array v0, v5, [I

    sget v1, Lcom/ts/MainUI/R$string;->can_ty_set:I

    aput v1, v0, v2

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_fq_set:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_sc_set:I

    aput v1, v0, v4

    .line 47
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mFqwdlArr:[I

    .line 50
    new-array v0, v4, [I

    .line 51
    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_ktycqd_auto:I

    aput v1, v0, v2

    .line 52
    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_ktycqd_last:I

    aput v1, v0, v3

    .line 50
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mKtycqdArrays:[I

    .line 54
    new-array v0, v5, [I

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_hqktqd_close:I

    aput v1, v0, v2

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_hqktqd_same:I

    aput v1, v0, v3

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_hqktqd_last:I

    aput v1, v0, v4

    .line 54
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mHqktqdArrays:[I

    .line 59
    new-array v0, v5, [I

    .line 60
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    sget v1, Lcom/ts/MainUI/R$string;->can_ckhjsy:I

    aput v1, v0, v3

    sget v1, Lcom/ts/MainUI/R$string;->can_jiashiyuan:I

    aput v1, v0, v4

    .line 59
    sput-object v0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mYcqdzycfArrays:[I

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanCommonActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    .line 79
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    .line 15
    return-void
.end method

.method private IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 345
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 295
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->HCZDCW:I

    .line 296
    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->QCZDCW:I

    .line 300
    goto :goto_0

    .line 303
    :pswitch_2
    const/4 v0, 0x0

    .line 304
    goto :goto_0

    .line 307
    :pswitch_3
    const/4 v0, 0x0

    .line 308
    goto :goto_0

    .line 311
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->QDMS:I

    .line 312
    goto :goto_0

    .line 315
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->AutoMode:I

    .line 316
    goto :goto_0

    .line 319
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->KQZLLMD:I

    .line 320
    goto :goto_0

    .line 323
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->FQWD:I

    .line 324
    goto :goto_0

    .line 327
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->YCQDZYJR:I

    .line 328
    goto :goto_0

    .line 331
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->YCQDZYCF:I

    .line 332
    goto :goto_0

    .line 335
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->KTYCQD:I

    .line 336
    goto :goto_0

    .line 339
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->HQKTQD:I

    .line 340
    goto :goto_0

    .line 292
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
    .end packed-switch
.end method

.method private LayoutUI()V
    .locals 2

    .prologue
    .line 230
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 234
    return-void

    .line 232
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->ShowItem(I)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->IsHaveItem(I)Z

    move-result v0

    .line 238
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 288
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemHccw:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemQccw:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 249
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 253
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 257
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemQdms:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 261
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZdmsfl:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 265
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemKqzlcgq:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 269
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemFqwd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 273
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemYcqdzyjr:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 277
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemYcqdzycf:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 281
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemKtycqd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 285
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemHqktqd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 238
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
    .end packed-switch
.end method


# virtual methods
.method protected GetContentLayoutId()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    return v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 153
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 155
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_zdfl:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mZdmsflArr:[I

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZdmsfl:Lcom/ts/canview/CanItemPopupList;

    .line 156
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_cgq:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mKqzlcgqlArr:[I

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemKqzlcgq:Lcom/ts/canview/CanItemPopupList;

    .line 157
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_fqwd:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mFqwdlArr:[I

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemFqwd:Lcom/ts/canview/CanItemPopupList;

    .line 158
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_qdms:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mQdmsArr:[I

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemQdms:Lcom/ts/canview/CanItemPopupList;

    .line 159
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_hqktqd:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mHqktqdArrays:[I

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemHqktqd:Lcom/ts/canview/CanItemPopupList;

    .line 160
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_hccw:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemHccw:Lcom/ts/canview/CanItemSwitchList;

    .line 161
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_qccw:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemQccw:Lcom/ts/canview/CanItemSwitchList;

    .line 162
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_ktycqd:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mKtycqdArrays:[I

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemKtycqd:Lcom/ts/canview/CanItemPopupList;

    .line 164
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_zyjr:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/ts/canview/CanScrollList;->addItemCheckBox(IILandroid/view/View$OnClickListener;)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

    .line 165
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_ac_zyjr:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mZyjrArr:[I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    .line 166
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_ycqdzyjr:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mYcqdzycfArrays:[I

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemYcqdzyjr:Lcom/ts/canview/CanItemPopupList;

    .line 167
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_ycqdzycf:I

    sget-object v2, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mYcqdzycfArrays:[I

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ts/canview/CanScrollList;->addItemPopupList(I[IILcom/ts/canview/CanItemPopupList$onPopItemClick;)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemYcqdzycf:Lcom/ts/canview/CanItemPopupList;

    .line 169
    return-void
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method protected ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetACSet(Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;)V

    .line 174
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetAdtAC(Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;)V

    .line 176
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->Update:I

    .line 182
    invoke-direct {p0}, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->LayoutUI()V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->Update:I

    .line 192
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemQccw:Lcom/ts/canview/CanItemSwitchList;

    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->QCZDCW:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 193
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemHccw:Lcom/ts/canview/CanItemSwitchList;

    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->HCZDCW:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 194
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemQdms:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->QDMS:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 195
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZdmsfl:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->AutoMode:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 196
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemKqzlcgq:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->KQZLLMD:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 197
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemFqwd:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->FQWD:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 199
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemYcqdzyjr:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YCQDZYJR:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 200
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemYcqdzycf:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YCQDZYCF:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 201
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemKtycqd:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->KTYCQD:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 202
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemHqktqd:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->HQKTQD:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 204
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->YKZYJR:I

    if-eqz v0, :cond_7

    .line 206
    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->ZyjrType:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 207
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->ZyjrType:I

    if-ne v1, v3, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 208
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YKZYJR:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 210
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YKZYJR:I

    if-ne v0, v1, :cond_6

    .line 212
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 227
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 206
    goto :goto_0

    :cond_5
    move v1, v2

    .line 207
    goto :goto_1

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YKZYJR:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_2

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 222
    iget-object v0, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->HCZDCW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 92
    :pswitch_2
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->QCZDCW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/sb/CanGMSBSetACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 109
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 113
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 117
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 121
    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 125
    :pswitch_4
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 129
    :pswitch_5
    const/16 v0, 0x16

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 133
    :pswitch_6
    const/16 v0, 0xd

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 137
    :pswitch_7
    const/16 v0, 0x1a

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMCarCtrl(II)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
