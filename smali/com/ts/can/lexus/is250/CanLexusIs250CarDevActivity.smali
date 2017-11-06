.class public Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanLexusIs250CarDevActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ITEM_ASEL:I = 0xd

.field public static final ITEM_AUIDO:I = 0xa

.field public static final ITEM_DOWN:I = 0xb

.field public static final ITEM_MUTE:I = 0xe

.field public static final ITEM_NUM1:I = 0x2

.field public static final ITEM_NUM2:I = 0x3

.field public static final ITEM_NUM3:I = 0x4

.field public static final ITEM_NUM4:I = 0x5

.field public static final ITEM_NUM5:I = 0x6

.field public static final ITEM_NUM6:I = 0x7

.field public static final ITEM_PSEL:I = 0xc

.field public static final ITEM_SCAN:I = 0x8

.field public static final ITEM_TRAF:I = 0x1

.field public static final ITEM_UP:I = 0x9

.field private static final LONG_KEY_TICK:I = 0x6

.field public static final PAGE_AUX:I = 0x3

.field public static final PAGE_DISC:I = 0x2

.field public static final PAGE_POW_OF:I = 0x0

.field public static final PAGE_RADIO:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanLexusIs250CarDevActivity"

.field public static final mDsicNumArr:[I

.field public static final mFreqNumArr:[I

.field private static mLastDiscSta:I

.field private static mLastTick:J


# instance fields
.field private BtnName:[Ljava/lang/String;

.field private CdSta:[Ljava/lang/String;

.field private RadioBand:[Ljava/lang/String;

.field private mBtn:[Lcom/ts/other/ParamButton;

.field private mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

.field private mImgBandDW:Lcom/ts/other/CustomImgView;

.field private mImgBk:Lcom/ts/other/CustomImgView;

.field private mImgMainFreq:Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mTextAux:Landroid/widget/TextView;

.field private mTextPlaySta:Landroid/widget/TextView;

.field private mTextV1:Landroid/widget/TextView;

.field private mTextV2:Landroid/widget/TextView;

.field private m_CdSta:[Lcom/ts/other/CustomImgView;

.field private mlongKeyTick:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mLastTick:J

    .line 54
    sput v3, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mLastDiscSta:I

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 58
    sget v1, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num0:I

    aput v1, v0, v3

    .line 59
    sget v1, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num1:I

    aput v1, v0, v4

    .line 60
    sget v1, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num2:I

    aput v1, v0, v5

    .line 61
    sget v1, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num3:I

    aput v1, v0, v6

    .line 62
    sget v1, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num4:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 63
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 64
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 65
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 66
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 67
    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_num9:I

    aput v2, v0, v1

    .line 56
    sput-object v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mFreqNumArr:[I

    .line 121
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 122
    sget v1, Lcom/ts/MainUI/R$drawable;->can_klz_num01:I

    aput v1, v0, v3

    .line 123
    sget v1, Lcom/ts/MainUI/R$drawable;->can_klz_num02:I

    aput v1, v0, v4

    .line 124
    sget v1, Lcom/ts/MainUI/R$drawable;->can_klz_num03:I

    aput v1, v0, v5

    .line 125
    sget v1, Lcom/ts/MainUI/R$drawable;->can_klz_num04:I

    aput v1, v0, v6

    .line 126
    sget v1, Lcom/ts/MainUI/R$drawable;->can_klz_num05:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 127
    sget v2, Lcom/ts/MainUI/R$drawable;->can_klz_num06:I

    aput v2, v0, v1

    .line 120
    sput-object v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mDsicNumArr:[I

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mlongKeyTick:J

    .line 79
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    .line 83
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 84
    const-string v1, "TRAF"

    aput-object v1, v0, v3

    .line 85
    const-string v1, "1"

    aput-object v1, v0, v4

    .line 86
    const-string v1, "2"

    aput-object v1, v0, v5

    .line 87
    const-string v1, "3"

    aput-object v1, v0, v6

    .line 88
    const-string v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 89
    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 90
    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 91
    const-string v2, "SCAN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 92
    const-string v2, "UP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 93
    const-string v2, "AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 94
    const-string v2, "DN"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 95
    const-string v2, "P.SEL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 96
    const-string v2, "ASL"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 97
    const-string v2, "MUTE"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->BtnName:[Ljava/lang/String;

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 102
    const-string v1, "LOAD"

    aput-object v1, v0, v3

    .line 103
    const-string v1, "READ"

    aput-object v1, v0, v4

    .line 104
    const-string v1, "EJECT"

    aput-object v1, v0, v5

    .line 105
    const-string v1, "NO DISC"

    aput-object v1, v0, v6

    .line 106
    const-string v1, "CHECK DISC"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 107
    const-string v2, "BUSY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 108
    const-string v2, "PLAY"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->CdSta:[Ljava/lang/String;

    .line 113
    new-array v0, v7, [Ljava/lang/String;

    .line 114
    const-string v1, "FM1"

    aput-object v1, v0, v3

    .line 115
    const-string v1, "FM2"

    aput-object v1, v0, v4

    .line 116
    const-string v1, " "

    aput-object v1, v0, v5

    .line 117
    const-string v1, "AM"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->RadioBand:[Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;-><init>()V

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    .line 27
    return-void
.end method

.method private AddMenuText(IIII)Landroid/widget/TextView;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 324
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 326
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 327
    const/4 v1, 0x0

    const/high16 v2, 0x42c20000    # 97.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 328
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 330
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    return-object v0
.end method

.method private AddText(IIII)Landroid/widget/TextView;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 300
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 303
    const/4 v1, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 304
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 306
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    return-object v0
.end method

.method private AddText1(IIII)Landroid/widget/TextView;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 312
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 314
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 315
    const/4 v1, 0x0

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 316
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 318
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    return-object v0
.end method

.method private ResetData(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 480
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->LexusIs250GetMedia(Lcom/lgb/canmodule/CanDataInfo$Is250_Media;)V

    .line 481
    invoke-direct {p0, p1}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->UpdateMainFreq(Z)V

    .line 482
    return-void
.end method

.method private ShowPage(I)V
    .locals 6
    .param p1, "page"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 441
    if-ne p1, v4, :cond_2

    .line 443
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextPlaySta:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_1

    .line 448
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextAux:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 476
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 446
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 456
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 457
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextAux:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextPlaySta:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 463
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->Show(I)V

    .line 466
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextPlaySta:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v5, :cond_4

    .line 474
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextAux:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 471
    :cond_4
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private UpdateDiscFlag()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 356
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Mode:I

    if-ne v3, v9, :cond_6

    .line 358
    invoke-static {}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->GetTickCount()J

    move-result-wide v0

    .line 359
    .local v0, "curTick":J
    sget-wide v3, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mLastTick:J

    const-wide/16 v5, 0x29a

    add-long/2addr v3, v5

    cmp-long v3, v0, v3

    if-lez v3, :cond_6

    .line 361
    sput-wide v0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mLastTick:J

    .line 363
    sget v3, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mLastDiscSta:I

    if-eqz v3, :cond_7

    .line 365
    sput v8, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mLastDiscSta:I

    .line 372
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x6

    if-lt v2, v3, :cond_8

    .line 376
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscVail:I

    and-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscNum:I

    if-eq v3, v7, :cond_0

    .line 378
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 380
    :cond_0
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscVail:I

    and-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscNum:I

    if-eq v3, v9, :cond_1

    .line 382
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 384
    :cond_1
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscVail:I

    and-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscNum:I

    if-eq v3, v10, :cond_2

    .line 386
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v9

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 388
    :cond_2
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscVail:I

    and-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscNum:I

    if-eq v3, v11, :cond_3

    .line 390
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v10

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 392
    :cond_3
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscVail:I

    and-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscNum:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    .line 394
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v11

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 396
    :cond_4
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscVail:I

    and-int/lit8 v3, v3, 0x20

    invoke-static {v3}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscNum:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    .line 398
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 401
    :cond_5
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscNum:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscNum:I

    const/4 v4, 0x7

    if-ge v3, v4, :cond_6

    .line 403
    sget v3, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mLastDiscSta:I

    if-eqz v3, :cond_9

    .line 404
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscNum:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 411
    .end local v0    # "curTick":J
    .end local v2    # "i":I
    :cond_6
    :goto_2
    return-void

    .line 369
    .restart local v0    # "curTick":J
    :cond_7
    sput v7, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mLastDiscSta:I

    goto/16 :goto_0

    .line 374
    .restart local v2    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v8}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 406
    :cond_9
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    iget-object v4, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->DiscNum:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v8}, Lcom/ts/other/CustomImgView;->Show(Z)V

    goto :goto_2
.end method

.method private UpdateMainFreq(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->UpdateOnce:I

    if-eqz v0, :cond_2

    .line 418
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Update:I

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    const-string v0, "CanLexusIs250CarDevActivity"

    const-string v1, "UpdateMainFreq"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    iput v2, v0, Lcom/lgb/canmodule/CanDataInfo$Is250_Media;->Update:I

    .line 423
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 434
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->UpdateDiscFlag()V

    .line 437
    return-void

    .line 428
    :cond_2
    if-nez p1, :cond_1

    .line 430
    const/16 v0, 0x7c

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250Query(II)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/lgb/canmodule/CanDataInfo$Is250_Media;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mCurMedia:Lcom/lgb/canmodule/CanDataInfo$Is250_Media;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;I)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->ShowPage(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Lcom/ts/other/CustomImgView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->RadioBand:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextPlaySta:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->CdSta:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public RadioCtrl(II)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "para"    # I

    .prologue
    .line 487
    invoke-static {p1, p2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    .line 488
    return-void
.end method

.method public UserAll()V
    .locals 4

    .prologue
    .line 603
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->ResetData(Z)V

    .line 606
    iget-wide v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mlongKeyTick:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 608
    iget-wide v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mlongKeyTick:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mlongKeyTick:J

    .line 610
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x104

    const/16 v9, 0x64

    const/16 v8, 0x3c

    const/16 v7, 0x28

    const/4 v6, 0x0

    .line 146
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v1}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->setContentView(I)V

    .line 150
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 151
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$drawable;->can_lkss_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 153
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x5f

    const/16 v3, 0x1da

    sget v4, Lcom/ts/MainUI/R$drawable;->can_lkss_bg02:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgBk:Lcom/ts/other/CustomImgView;

    .line 158
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2b0

    const/16 v3, 0xc2

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    .line 159
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgBandDW:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_yg_radio_mhz:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_yg_radio_khz:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 161
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x182

    const/16 v3, 0x7d

    const/16 v4, 0x107

    const/16 v5, 0x61

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    .line 162
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    const/16 v2, -0x182

    invoke-virtual {v1, v2, v6}, Lcom/ts/other/CustomImgView;->setDrawDt(II)V

    .line 163
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mImgMainFreq:Lcom/ts/other/CustomImgView;

    new-instance v2, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;

    invoke-direct {v2, p0}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity$1;-><init>(Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;)V

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 283
    const/16 v1, 0x29e

    const/16 v2, 0xac

    const/16 v3, 0x12c

    const/16 v4, 0x32

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextPlaySta:Landroid/widget/TextView;

    .line 285
    const/16 v1, 0x8e

    invoke-direct {p0, v10, v1, v9, v7}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->AddText1(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV1:Landroid/widget/TextView;

    .line 286
    const/16 v1, 0xb6

    invoke-direct {p0, v10, v1, v9, v7}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->AddText1(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextV2:Landroid/widget/TextView;

    .line 288
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    .line 294
    const/16 v1, 0x1b1

    const/16 v2, 0x77

    const/16 v3, 0xc8

    const/16 v4, 0x68

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->AddMenuText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextAux:Landroid/widget/TextView;

    .line 295
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mTextAux:Landroid/widget/TextView;

    const-string v2, "AUX"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    return-void

    .line 266
    :cond_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit16 v3, v0, 0x80

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x19e

    const/16 v5, 0x7e

    invoke-virtual {v2, v3, v4, v5, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 269
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_lkss_short_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_lkss_long_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 277
    :goto_2
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 278
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->BtnName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    add-int/lit8 v3, v0, -0x8

    mul-int/lit16 v3, v3, 0xaa

    add-int/lit8 v3, v3, 0x3

    const/16 v4, 0x1e0

    const/16 v5, 0xa8

    invoke-virtual {v2, v3, v4, v5, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 274
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_lkss_long_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_lkss_long_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    goto :goto_2

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v3, v0, 0x23

    add-int/lit8 v3, v3, 0x2a

    const/16 v4, 0x1d

    sget-object v5, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mDsicNumArr:[I

    aget v5, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 291
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 350
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 351
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 352
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 339
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 340
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 342
    const/16 v0, 0x7c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->LexusIs250Query(II)V

    .line 343
    const-string v0, "CanLexusIs250CarDevActivity"

    const-string v1, "********************onResume**********************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v10, 0x6

    const-wide/16 v8, 0x0

    const/16 v7, -0x100

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 496
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 497
    .local v1, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 498
    .local v0, "Id":I
    const/16 v2, 0xff

    .line 500
    .local v2, "sta":I
    if-nez v1, :cond_0

    .line 502
    const/4 v2, 0x1

    .line 503
    iput-wide v10, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mlongKeyTick:J

    .line 504
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    add-int/lit8 v6, v0, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v3, v7}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 532
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v3, v4

    .line 593
    :goto_2
    return v3

    .line 506
    :cond_0
    if-ne v5, v1, :cond_1

    .line 508
    const/4 v2, 0x0

    .line 509
    iput-wide v8, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mlongKeyTick:J

    .line 510
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    add-int/lit8 v5, v0, -0x1

    aget-object v3, v3, v5

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 511
    invoke-static {v4, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    move v3, v4

    .line 512
    goto :goto_2

    .line 514
    :cond_1
    const/4 v3, 0x2

    if-ne v3, v1, :cond_3

    .line 516
    const/4 v2, 0x2

    .line 517
    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mBtn:[Lcom/ts/other/ParamButton;

    add-int/lit8 v6, v0, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v3, v7}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 518
    iget-wide v6, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mlongKeyTick:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    move v3, v5

    .line 520
    goto :goto_2

    .line 524
    :cond_2
    iput-wide v10, p0, Lcom/ts/can/lexus/is250/CanLexusIs250CarDevActivity;->mlongKeyTick:J

    goto :goto_0

    :cond_3
    move v3, v4

    .line 529
    goto :goto_2

    .line 535
    :pswitch_0
    invoke-static {v5, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 539
    :pswitch_1
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 543
    :pswitch_2
    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 547
    :pswitch_3
    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 551
    :pswitch_4
    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 555
    :pswitch_5
    const/16 v3, 0x9

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 559
    :pswitch_6
    const/16 v3, 0xa

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 563
    :pswitch_7
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 567
    :pswitch_8
    const/16 v3, 0xf

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 571
    :pswitch_9
    const/16 v3, 0xb

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 575
    :pswitch_a
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 579
    :pswitch_b
    const/16 v3, 0xc

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 583
    :pswitch_c
    const/16 v3, 0xd

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 587
    :pswitch_d
    const/16 v3, 0xe

    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->LexusIs250SetTouchKey(II)V

    goto :goto_1

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
