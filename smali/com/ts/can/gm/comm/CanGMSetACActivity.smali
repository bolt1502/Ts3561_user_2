.class public Lcom/ts/can/gm/comm/CanGMSetACActivity;
.super Lcom/ts/can/gm/comm/CanGMBaseActivity;
.source "CanGMSetACActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
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

.field public static final TAG:Ljava/lang/String; = "CanGMCarInfoActivity"

.field private static final mFqwdlArr:[I

.field private static final mHqktqdArrays:[I

.field private static final mKqzlcgqlArr:[I

.field private static final mKtycqdArrays:[I

.field private static final mQdmsArr:[I

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

.field private mItemYcqdzycf:Lcom/ts/canview/CanItemSwitchList;

.field private mItemYcqdzyjr:Lcom/ts/canview/CanItemSwitchList;

.field private mItemZdmsfl:Lcom/ts/canview/CanItemPopupList;

.field private mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

.field private mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

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

    .line 40
    new-array v0, v5, [I

    .line 41
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 42
    sget v1, Lcom/ts/MainUI/R$string;->can_ckhjsy:I

    aput v1, v0, v3

    .line 43
    sget v1, Lcom/ts/MainUI/R$string;->can_jiashiyuan:I

    aput v1, v0, v4

    .line 39
    sput-object v0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mZyjrArr:[I

    .line 47
    new-array v0, v5, [I

    .line 48
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->can_on:I

    aput v1, v0, v3

    .line 50
    sget v1, Lcom/ts/MainUI/R$string;->can_sc_set:I

    aput v1, v0, v4

    .line 46
    sput-object v0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mQdmsArr:[I

    .line 54
    new-array v0, v5, [I

    .line 55
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_low:I

    aput v1, v0, v2

    .line 56
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_mid:I

    aput v1, v0, v3

    .line 57
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_high:I

    aput v1, v0, v4

    .line 53
    sput-object v0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mZdmsflArr:[I

    .line 61
    new-array v0, v5, [I

    .line 62
    sget v1, Lcom/ts/MainUI/R$string;->can_off:I

    aput v1, v0, v2

    .line 63
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_lo_sens:I

    aput v1, v0, v3

    .line 64
    sget v1, Lcom/ts/MainUI/R$string;->can_ac_hi_sens:I

    aput v1, v0, v4

    .line 60
    sput-object v0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mKqzlcgqlArr:[I

    .line 68
    new-array v0, v5, [I

    .line 69
    sget v1, Lcom/ts/MainUI/R$string;->can_ty_set:I

    aput v1, v0, v2

    .line 70
    sget v1, Lcom/ts/MainUI/R$string;->can_fq_set:I

    aput v1, v0, v3

    .line 71
    sget v1, Lcom/ts/MainUI/R$string;->can_sc_set:I

    aput v1, v0, v4

    .line 67
    sput-object v0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mFqwdlArr:[I

    .line 74
    new-array v0, v4, [I

    .line 75
    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_ktycqd_auto:I

    aput v1, v0, v2

    .line 76
    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_ktycqd_last:I

    aput v1, v0, v3

    .line 74
    sput-object v0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mKtycqdArrays:[I

    .line 78
    new-array v0, v5, [I

    .line 79
    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_hqktqd_close:I

    aput v1, v0, v2

    .line 80
    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_hqktqd_same:I

    aput v1, v0, v3

    .line 81
    sget v1, Lcom/ts/MainUI/R$string;->can_gl8_2017_hqktqd_last:I

    aput v1, v0, v4

    .line 78
    sput-object v0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mHqktqdArrays:[I

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;-><init>()V

    .line 100
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    .line 101
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    .line 18
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
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

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
    .line 379
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 380
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 381
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 382
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 383
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 220
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_qccw:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemQccw:Lcom/ts/canview/CanItemSwitchList;

    .line 221
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_hccw:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemHccw:Lcom/ts/canview/CanItemSwitchList;

    .line 222
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_zyjr:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

    .line 223
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_zyjr:I

    sget-object v1, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mZyjrArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    .line 224
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_qdms:I

    sget-object v1, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mQdmsArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemQdms:Lcom/ts/canview/CanItemPopupList;

    .line 226
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_zdfl:I

    sget-object v1, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mZdmsflArr:[I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZdmsfl:Lcom/ts/canview/CanItemPopupList;

    .line 227
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_cgq:I

    sget-object v1, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mKqzlcgqlArr:[I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemKqzlcgq:Lcom/ts/canview/CanItemPopupList;

    .line 228
    sget v0, Lcom/ts/MainUI/R$string;->can_ac_fqwd:I

    sget-object v1, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mFqwdlArr:[I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemFqwd:Lcom/ts/canview/CanItemPopupList;

    .line 230
    sget v0, Lcom/ts/MainUI/R$string;->can_gl8_2017_ycqdzyjr:I

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemYcqdzyjr:Lcom/ts/canview/CanItemSwitchList;

    .line 231
    sget v0, Lcom/ts/MainUI/R$string;->can_gl8_2017_ycqdzycf:I

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemYcqdzycf:Lcom/ts/canview/CanItemSwitchList;

    .line 232
    sget v0, Lcom/ts/MainUI/R$string;->can_gl8_2017_ktycqd:I

    sget-object v1, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mKtycqdArrays:[I

    const/16 v2, 0xb

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemKtycqd:Lcom/ts/canview/CanItemPopupList;

    .line 233
    sget v0, Lcom/ts/MainUI/R$string;->can_gl8_2017_hqktqd:I

    sget-object v1, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mHqktqdArrays:[I

    const/16 v2, 0xc

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemHqktqd:Lcom/ts/canview/CanItemPopupList;

    .line 234
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 301
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 251
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->HCZDCW:I

    .line 252
    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->QCZDCW:I

    .line 256
    goto :goto_0

    .line 259
    :pswitch_2
    const/4 v0, 0x0

    .line 260
    goto :goto_0

    .line 263
    :pswitch_3
    const/4 v0, 0x0

    .line 264
    goto :goto_0

    .line 267
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->QDMS:I

    .line 268
    goto :goto_0

    .line 271
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->AutoMode:I

    .line 272
    goto :goto_0

    .line 275
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->KQZLLMD:I

    .line 276
    goto :goto_0

    .line 279
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->FQWD:I

    .line 280
    goto :goto_0

    .line 283
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->YCQDZYJR:I

    .line 284
    goto :goto_0

    .line 287
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->YCQDZYCF:I

    .line 288
    goto :goto_0

    .line 291
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->KTYCQD:I

    .line 292
    goto :goto_0

    .line 295
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v1, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->HQKTQD:I

    .line 296
    goto :goto_0

    .line 248
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

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 243
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->ShowItem(I)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMQuery(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMQuery(I)V

    .line 197
    :cond_1
    return-void
.end method

.method protected ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetACSet(Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GMGetAdtAC(Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->Update:I

    .line 127
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->LayoutUI()V

    .line 128
    const/4 p1, 0x0

    .line 129
    iput-boolean v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mbLayout:Z

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->Update:I

    invoke-static {v0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->Update:I

    .line 145
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemQccw:Lcom/ts/canview/CanItemSwitchList;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->QCZDCW:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 146
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemHccw:Lcom/ts/canview/CanItemSwitchList;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->HCZDCW:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 147
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemQdms:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->QDMS:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 148
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZdmsfl:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->AutoMode:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 149
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemKqzlcgq:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->KQZLLMD:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 150
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemFqwd:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->FQWD:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 152
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemYcqdzyjr:Lcom/ts/canview/CanItemSwitchList;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YCQDZYJR:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 153
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemYcqdzycf:Lcom/ts/canview/CanItemSwitchList;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YCQDZYCF:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 154
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemKtycqd:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->KTYCQD:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 155
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemHqktqd:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->HQKTQD:I

    invoke-virtual {v0, v3}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 158
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mAdtACData:Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_AdtAC;->YKZYJR:I

    if-eqz v0, :cond_7

    .line 160
    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->ZyjrType:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 161
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    iget-object v3, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->ZyjrType:I

    if-ne v1, v3, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 162
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YKZYJR:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->SetCheck(I)V

    .line 164
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YKZYJR:I

    if-ne v0, v1, :cond_6

    .line 166
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 184
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 160
    goto :goto_0

    :cond_5
    move v1, v2

    .line 161
    goto :goto_1

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YKZYJR:I

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    goto :goto_2

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 176
    iget-object v0, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_2
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->IsHaveItem(I)Z

    move-result v0

    .line 310
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 364
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemHccw:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemQccw:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 322
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZyjrSW:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 326
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZyjrPop:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 330
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemQdms:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 334
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemZdmsfl:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 338
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemKqzlcgq:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 342
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemFqwd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 346
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemYcqdzyjr:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 350
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemYcqdzycf:Lcom/ts/canview/CanItemSwitchList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    goto :goto_0

    .line 354
    :pswitch_a
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemKtycqd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 358
    :pswitch_b
    iget-object v1, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mItemHqktqd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 310
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

.method public UserAll()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->ResetData(Z)V

    .line 424
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 391
    .local v0, "item":I
    packed-switch v0, :pswitch_data_0

    .line 416
    :goto_0
    :pswitch_0
    return-void

    .line 394
    :pswitch_1
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->HCZDCW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 398
    :pswitch_2
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->QCZDCW:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 402
    :pswitch_3
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YKZYJR:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 406
    :pswitch_4
    const/16 v1, 0x41

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YCQDZYJR:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 410
    :pswitch_5
    const/16 v1, 0x42

    iget-object v2, p0, Lcom/ts/can/gm/comm/CanGMSetACActivity;->mACSetData:Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GM_ACSet;->YCQDZYCF:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->Neg(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->setContentView(I)V

    .line 112
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->InitUI()V

    .line 113
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 430
    packed-switch p1, :pswitch_data_0

    .line 463
    :goto_0
    :pswitch_0
    return-void

    .line 433
    :pswitch_1
    const/4 v0, 0x5

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 437
    :pswitch_2
    const/4 v0, 0x6

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 441
    :pswitch_3
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 445
    :pswitch_4
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 449
    :pswitch_5
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 453
    :pswitch_6
    const/16 v0, 0x43

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 457
    :pswitch_7
    const/16 v0, 0x44

    invoke-static {v0, p2}, Lcom/lgb/canmodule/CanJni;->GMACCtrl(II)V

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 214
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onPause()V

    .line 215
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/ts/can/gm/comm/CanGMBaseActivity;->onResume()V

    .line 203
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->ResetData(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/ts/can/gm/comm/CanGMSetACActivity;->QueryData()V

    .line 207
    return-void
.end method
