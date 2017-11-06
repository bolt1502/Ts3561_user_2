.class public Lcom/ts/can/nissan/CanNissanOldDeviceActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanNissanOldDeviceActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanNissanOldDeviceActivity"

.field public static final mDsicNumArr:[I

.field private static mEqb:I

.field private static mLastDiscSta:I

.field private static mLastTick:J

.field private static mVolb:I

.field private static m_AudioFlg1:I

.field private static m_AudioFlg2:I


# instance fields
.field private mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

.field private mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

.field private mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

.field private mCdTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;

.field private mClockData:Lcom/lgb/canmodule/CanDataInfo$TeanaClock;

.field private mEQData:Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

.field private mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

.field private mRadTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;

.field private mVolData:Lcom/lgb/canmodule/CanDataInfo$TeanaVol;

.field private m_AudioMenu:Landroid/widget/TextView;

.field private m_AuxMenu:Landroid/widget/TextView;

.field private m_CdMenu:Landroid/widget/TextView;

.field private m_CdSta:[Lcom/ts/other/CustomImgView;

.field private m_CdText:Landroid/widget/TextView;

.field private m_FreqText:Landroid/widget/TextView;

.field private m_PwrMenu:Landroid/widget/TextView;

.field private m_RadioMenu:Landroid/widget/TextView;

.field private m_fgAutop:Landroid/widget/TextView;

.field private m_fgCdFolder:Landroid/widget/TextView;

.field private m_fgCdMp3:Landroid/widget/TextView;

.field private m_fgCdScane:Landroid/widget/TextView;

.field private m_fgCdWma:Landroid/widget/TextView;

.field private m_fgRds:Landroid/widget/TextView;

.field private m_fgScane:Landroid/widget/TextView;

.field private m_fgSt:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 58
    sget v1, Lcom/ts/MainUI/R$drawable;->can_klz_num01:I

    aput v1, v0, v3

    const/4 v1, 0x1

    .line 59
    sget v2, Lcom/ts/MainUI/R$drawable;->can_klz_num02:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 60
    sget v2, Lcom/ts/MainUI/R$drawable;->can_klz_num03:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 61
    sget v2, Lcom/ts/MainUI/R$drawable;->can_klz_num04:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 62
    sget v2, Lcom/ts/MainUI/R$drawable;->can_klz_num05:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 63
    sget v2, Lcom/ts/MainUI/R$drawable;->can_klz_num06:I

    aput v2, v0, v1

    .line 56
    sput-object v0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mDsicNumArr:[I

    .line 66
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mLastTick:J

    .line 67
    sput v3, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mLastDiscSta:I

    .line 68
    sput v3, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioFlg1:I

    sput v3, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioFlg2:I

    .line 72
    sput v4, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolb:I

    sput v4, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEqb:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    .line 74
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$TeanaClock;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$TeanaClock;-><init>()V

    iput-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mClockData:Lcom/lgb/canmodule/CanDataInfo$TeanaClock;

    .line 75
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    .line 76
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    .line 77
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;-><init>()V

    iput-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;

    .line 78
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    .line 79
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    .line 80
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;-><init>()V

    iput-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;

    .line 81
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;-><init>()V

    iput-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEQData:Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;

    .line 82
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$TeanaVol;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$TeanaVol;-><init>()V

    iput-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$TeanaVol;

    .line 83
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;-><init>()V

    iput-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    .line 33
    return-void
.end method

.method private AddFlagText(IIII)Landroid/widget/TextView;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 145
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    return-object v0
.end method

.method private AddMenuText(IIII)Landroid/widget/TextView;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 133
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 136
    const/4 v1, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    return-object v0
.end method

.method private AddMsgText(IIII)Landroid/widget/TextView;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 157
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    .line 160
    const/4 v1, 0x0

    const/high16 v2, 0x42080000    # 34.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 163
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    return-object v0
.end method

.method private AudioView(Z)V
    .locals 3
    .param p1, "disp"    # Z

    .prologue
    const/4 v2, 0x4

    .line 415
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->PWR:I

    if-lez v0, :cond_1

    .line 417
    if-nez p1, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->MenuVis()V

    .line 434
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioMenu:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_RadioMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AuxMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_PwrMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private AuxView(Z)V
    .locals 2
    .param p1, "disp"    # Z

    .prologue
    .line 404
    const/4 v0, 0x4

    .line 405
    .local v0, "it":I
    if-eqz p1, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AuxMenu:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    return-void
.end method

.method private CdView(Z)V
    .locals 4
    .param p1, "disp"    # Z

    .prologue
    const/4 v3, 0x0

    .line 377
    const/4 v1, 0x4

    .line 378
    .local v1, "it":I
    if-eqz p1, :cond_0

    .line 380
    const/4 v1, 0x0

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdFolder:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-object v2, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdWma:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object v2, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdMp3:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v2, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdScane:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v2, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdMenu:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->Text:I

    if-eqz v2, :cond_1

    if-nez p1, :cond_3

    .line 394
    :cond_1
    iget-object v2, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    :goto_1
    return-void

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_3
    iget-object v2, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private CurBand(I)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 188
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 190
    const-string v0, "AM"

    .line 210
    :goto_0
    return-object v0

    .line 192
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 194
    const-string v0, "AMAP"

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 198
    const-string v0, "FM1"

    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 202
    const-string v0, "FM2"

    goto :goto_0

    .line 204
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 206
    const-string v0, "FMAP"

    goto :goto_0

    .line 210
    :cond_4
    const-string v0, " "

    goto :goto_0
.end method

.method private CurCdSta(I)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 216
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 218
    const-string v0, "Read  Disc"

    .line 250
    :goto_0
    return-object v0

    .line 220
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 222
    const-string v0, "Loading  Disc"

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 226
    const-string v0, "Insert  Disc"

    goto :goto_0

    .line 228
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 230
    const-string v0, "Busy"

    goto :goto_0

    .line 232
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 234
    const-string v0, "Eject  Disc"

    goto :goto_0

    .line 236
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 238
    const-string v0, "Select  Disc  To  Load"

    goto :goto_0

    .line 240
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 242
    const-string v0, "Select  Disc  To  Eject"

    goto :goto_0

    .line 244
    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 246
    const-string v0, "Disc  Error"

    goto :goto_0

    .line 250
    :cond_7
    const-string v0, " "

    goto :goto_0
.end method

.method private CurEQ(II)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # I
    .param p2, "val"    # I

    .prologue
    const/4 v2, 0x7

    .line 258
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 260
    if-le p2, v2, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p2, -0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "stringEQ":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bass     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .end local v0    # "stringEQ":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 264
    :cond_0
    if-ne p2, v2, :cond_1

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p2, -0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .restart local v0    # "stringEQ":Ljava/lang/String;
    goto :goto_0

    .line 270
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v2, p2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "stringEQ":Ljava/lang/String;
    goto :goto_0

    .line 274
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 276
    if-le p2, v2, :cond_3

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p2, -0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0    # "stringEQ":Ljava/lang/String;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Treble     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 280
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_3
    if-ne p2, v2, :cond_4

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p2, -0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0    # "stringEQ":Ljava/lang/String;
    goto :goto_2

    .line 286
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v2, p2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "stringEQ":Ljava/lang/String;
    goto :goto_2

    .line 290
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_8

    .line 292
    if-le p2, v2, :cond_6

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "F"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p2, -0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .restart local v0    # "stringEQ":Ljava/lang/String;
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fade     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 296
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_6
    if-ne p2, v2, :cond_7

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p2, -0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .restart local v0    # "stringEQ":Ljava/lang/String;
    goto :goto_3

    .line 302
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v2, p2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "stringEQ":Ljava/lang/String;
    goto :goto_3

    .line 306
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    .line 308
    if-le p2, v2, :cond_9

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p2, -0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .restart local v0    # "stringEQ":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Balance     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 312
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_9
    if-ne p2, v2, :cond_a

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p2, -0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .restart local v0    # "stringEQ":Ljava/lang/String;
    goto :goto_4

    .line 318
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v2, p2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "stringEQ":Ljava/lang/String;
    goto :goto_4

    .line 322
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_b
    const/4 v1, 0x5

    if-ne p1, v1, :cond_d

    .line 324
    if-nez p2, :cond_c

    .line 326
    const-string v0, "OFF"

    .line 332
    .restart local v0    # "stringEQ":Ljava/lang/String;
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beep     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 330
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_c
    const-string v0, " ON"

    .restart local v0    # "stringEQ":Ljava/lang/String;
    goto :goto_5

    .line 336
    .end local v0    # "stringEQ":Ljava/lang/String;
    :cond_d
    const-string v1, " "

    goto/16 :goto_1
.end method

.method private MenuVis()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 438
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->PWR:I

    if-lez v0, :cond_5

    .line 440
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$TeanaVol;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$TeanaVol;->Show:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEQData:Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;->Type:I

    if-eqz v0, :cond_2

    .line 442
    :cond_0
    sput v3, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioFlg1:I

    .line 443
    sput v3, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioFlg2:I

    .line 476
    :cond_1
    :goto_0
    return-void

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_PwrMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->Mode:I

    if-ne v0, v3, :cond_3

    .line 450
    invoke-direct {p0, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->CdView(Z)V

    .line 451
    invoke-direct {p0, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AuxView(Z)V

    .line 452
    invoke-direct {p0, v3}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->RadioView(Z)V

    goto :goto_0

    .line 454
    :cond_3
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->Mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 456
    invoke-direct {p0, v3}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->CdView(Z)V

    .line 457
    invoke-direct {p0, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AuxView(Z)V

    .line 458
    invoke-direct {p0, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->RadioView(Z)V

    goto :goto_0

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->Mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 462
    invoke-direct {p0, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->CdView(Z)V

    .line 463
    invoke-direct {p0, v3}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AuxView(Z)V

    .line 464
    invoke-direct {p0, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->RadioView(Z)V

    goto :goto_0

    .line 469
    :cond_5
    invoke-direct {p0, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->CdView(Z)V

    .line 470
    invoke-direct {p0, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->RadioView(Z)V

    .line 471
    invoke-direct {p0, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AuxView(Z)V

    .line 472
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_PwrMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private RadioView(Z)V
    .locals 3
    .param p1, "disp"    # Z

    .prologue
    .line 354
    const/4 v0, 0x4

    .line 355
    .local v0, "it":I
    if-eqz p1, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgRds:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgScane:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgAutop:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgSt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_RadioMenu:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;->Text:I

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_FreqText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_FreqText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private ResetData(Z)V
    .locals 13
    .param p1, "check"    # Z

    .prologue
    .line 480
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->TeanOldGetCarMode(Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;)V

    .line 481
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->UpdateOnce:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 483
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->Update:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 485
    :cond_0
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    const/4 v7, 0x0

    iput v7, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->Update:I

    .line 486
    invoke-direct {p0}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->MenuVis()V

    .line 491
    :cond_1
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$TeanaVol;

    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->TeanOldGetVol(Lcom/lgb/canmodule/CanDataInfo$TeanaVol;)V

    .line 492
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$TeanaVol;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaVol;->UpdateOnce:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 494
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$TeanaVol;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaVol;->Update:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-nez v6, :cond_2

    sget v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioFlg1:I

    if-eqz v6, :cond_3

    .line 496
    :cond_2
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$TeanaVol;

    const/4 v7, 0x0

    iput v7, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaVol;->Update:I

    .line 497
    const/4 v6, 0x0

    sput v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioFlg1:I

    .line 498
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$TeanaVol;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaVol;->Show:I

    if-eqz v6, :cond_15

    .line 500
    const/4 v6, 0x1

    sput v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolb:I

    .line 501
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AudioView(Z)V

    .line 502
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioMenu:Landroid/widget/TextView;

    const-string v7, "Volume           %02d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$TeanaVol;

    iget v10, v10, Lcom/lgb/canmodule/CanDataInfo$TeanaVol;->Val:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEQData:Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;

    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->TeanOldGetEQ(Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;)V

    .line 516
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEQData:Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;->UpdateOnce:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 518
    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEQData:Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;->Update:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-nez v6, :cond_4

    sget v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioFlg2:I

    if-eqz v6, :cond_5

    .line 520
    :cond_4
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEQData:Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;

    const/4 v7, 0x0

    iput v7, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;->Update:I

    .line 521
    const/4 v6, 0x0

    sput v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioFlg2:I

    .line 522
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEQData:Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;->Type:I

    if-eqz v6, :cond_16

    .line 524
    const/4 v6, 0x1

    sput v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEqb:I

    .line 525
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AudioView(Z)V

    .line 526
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioMenu:Landroid/widget/TextView;

    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEQData:Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;

    iget v10, v10, Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;->Type:I

    iget-object v11, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEQData:Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;

    iget v11, v11, Lcom/lgb/canmodule/CanDataInfo$TeanaEQ;->Val:I

    invoke-direct {p0, v10, v11}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->CurEQ(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->TeanOldGetRadSta(Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;)V

    .line 540
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;->UpdateOnce:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 542
    if-eqz p1, :cond_6

    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;->Update:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 544
    :cond_6
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    const/4 v7, 0x0

    iput v7, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;->Update:I

    .line 545
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;->Rds:I

    if-nez v6, :cond_17

    .line 547
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgRds:Landroid/widget/TextView;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :goto_2
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;->Scane:I

    if-nez v6, :cond_18

    .line 556
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgScane:Landroid/widget/TextView;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :goto_3
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;->AutoP:I

    if-nez v6, :cond_19

    .line 565
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgAutop:Landroid/widget/TextView;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    :goto_4
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;->ST:I

    if-nez v6, :cond_1a

    .line 574
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgSt:Landroid/widget/TextView;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    :goto_5
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadSta;->Text:I

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->Mode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1b

    .line 583
    :cond_7
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_FreqText:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    :cond_8
    :goto_6
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->TeanOldGetRadInfo(Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;)V

    .line 594
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;->UpdateOnce:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 596
    if-eqz p1, :cond_9

    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;->Update:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 598
    :cond_9
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;->Update:I

    .line 601
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;->Band:I

    invoke-direct {p0, v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->CurBand(I)Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, "string1":Ljava/lang/String;
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;->Preset:I

    if-nez v6, :cond_1c

    .line 605
    const-string v4, "     "

    .line 612
    .local v4, "string2":Ljava/lang/String;
    :goto_7
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;->Band:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1e

    .line 614
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;->AM530:I

    if-nez v6, :cond_1d

    .line 616
    const-string v6, "%d KHz"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    iget v9, v9, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;->Freq:I

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x9

    add-int/lit16 v9, v9, 0x213

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "string3":Ljava/lang/String;
    :goto_8
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_RadioMenu:Landroid/widget/TextView;

    const-string v7, "%s             %s                   %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    .end local v3    # "string1":Ljava/lang/String;
    .end local v4    # "string2":Ljava/lang/String;
    .end local v5    # "string3":Ljava/lang/String;
    :cond_a
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;

    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->TeanOldGetRadText(Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;)V

    .line 634
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;->UpdateOnce:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 636
    if-eqz p1, :cond_b

    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;->Update:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 638
    :cond_b
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;

    const/4 v7, 0x0

    iput v7, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;->Update:I

    .line 639
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_FreqText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$TeanaRadText;->szText:[B

    const/16 v8, 0x10

    invoke-direct {p0, v7, v8}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->byte2ASCIIString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    :cond_c
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->TeanOldGetCdSta(Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;)V

    .line 645
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->UpdateOnce:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 647
    if-eqz p1, :cond_d

    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->Update:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 649
    :cond_d
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    const/4 v7, 0x0

    iput v7, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->Update:I

    .line 650
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->Folder:I

    if-nez v6, :cond_1f

    .line 652
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdFolder:Landroid/widget/TextView;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    :goto_9
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->Wma:I

    if-nez v6, :cond_20

    .line 661
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdWma:Landroid/widget/TextView;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    :goto_a
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->Mp3:I

    if-nez v6, :cond_21

    .line 670
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdMp3:Landroid/widget/TextView;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    :goto_b
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->Scane:I

    if-nez v6, :cond_22

    .line 679
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdScane:Landroid/widget/TextView;

    const-string v7, " "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :goto_c
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->Text:I

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->Mode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_23

    .line 688
    :cond_e
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdText:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    :cond_f
    :goto_d
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->PWR:I

    if-lez v6, :cond_10

    .line 700
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCarModeData:Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCarMode;->Mode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_10

    .line 702
    invoke-static {}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->GetTickCount()J

    move-result-wide v0

    .line 703
    .local v0, "curTick":J
    sget-wide v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mLastTick:J

    const-wide/16 v8, 0x29a

    add-long/2addr v6, v8

    cmp-long v6, v0, v6

    if-lez v6, :cond_10

    .line 705
    sput-wide v0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mLastTick:J

    .line 707
    sget v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mLastDiscSta:I

    if-eqz v6, :cond_24

    .line 709
    const/4 v6, 0x0

    sput v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mLastDiscSta:I

    .line 715
    :goto_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    const/4 v6, 0x6

    if-lt v2, v6, :cond_25

    .line 739
    .end local v0    # "curTick":J
    .end local v2    # "i":I
    :cond_10
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->TeanOldGetCdInfo(Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;)V

    .line 740
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;->UpdateOnce:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 742
    if-eqz p1, :cond_11

    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;->Update:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 744
    :cond_11
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;->Update:I

    .line 745
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;->CdSta:I

    if-nez v6, :cond_2a

    .line 747
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdMenu:Landroid/widget/TextView;

    const-string v7, "CD%d-T%d        %02d:%02d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    iget v10, v10, Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;->CurDisc:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    iget v10, v10, Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;->CurTrack:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    iget v10, v10, Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;->Hour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    iget v10, v10, Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;->Min:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    :cond_12
    :goto_10
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;

    invoke-static {v6}, Lcom/lgb/canmodule/CanJni;->TeanOldGetCdText(Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;)V

    .line 757
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;->UpdateOnce:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 759
    if-eqz p1, :cond_13

    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;->Update:I

    invoke-static {v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->i2b(I)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 761
    :cond_13
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;

    const/4 v7, 0x0

    iput v7, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;->Update:I

    .line 762
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdTextData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$TeanaCdText;->szText:[B

    const/16 v8, 0x10

    invoke-direct {p0, v7, v8}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->byte2ASCIIString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    :cond_14
    return-void

    .line 506
    :cond_15
    sget v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolb:I

    if-eqz v6, :cond_3

    .line 508
    const/4 v6, 0x0

    sput v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mVolb:I

    .line 509
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AudioView(Z)V

    goto/16 :goto_0

    .line 530
    :cond_16
    sget v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEqb:I

    if-eqz v6, :cond_5

    .line 532
    const/4 v6, 0x0

    sput v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mEqb:I

    .line 533
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AudioView(Z)V

    goto/16 :goto_1

    .line 551
    :cond_17
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgRds:Landroid/widget/TextView;

    const-string v7, "RDS"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 560
    :cond_18
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgScane:Landroid/widget/TextView;

    const-string v7, "SCANE"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 569
    :cond_19
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgAutop:Landroid/widget/TextView;

    const-string v7, "AUTO.P"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 578
    :cond_1a
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgSt:Landroid/widget/TextView;

    const-string v7, "ST"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 587
    :cond_1b
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_FreqText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 609
    .restart local v3    # "string1":Ljava/lang/String;
    :cond_1c
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "P"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;->Preset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "string2":Ljava/lang/String;
    goto/16 :goto_7

    .line 619
    :cond_1d
    const-string v6, "%d KHz"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    iget v9, v9, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;->Freq:I

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0xa

    add-int/lit16 v9, v9, 0x212

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 620
    .restart local v5    # "string3":Ljava/lang/String;
    goto/16 :goto_8

    .line 623
    .end local v5    # "string3":Ljava/lang/String;
    :cond_1e
    const-string v6, "%.2f MHz"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mRadInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;

    iget v9, v9, Lcom/lgb/canmodule/CanDataInfo$TeanaRadInfo;->Freq:I

    add-int/lit8 v9, v9, -0x1

    int-to-double v9, v9

    const-wide v11, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v9, v11

    const-wide v11, 0x4055e00000000000L    # 87.5

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "string3":Ljava/lang/String;
    goto/16 :goto_8

    .line 656
    .end local v3    # "string1":Ljava/lang/String;
    .end local v4    # "string2":Ljava/lang/String;
    .end local v5    # "string3":Ljava/lang/String;
    :cond_1f
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdFolder:Landroid/widget/TextView;

    const-string v7, "FOLDER"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 665
    :cond_20
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdWma:Landroid/widget/TextView;

    const-string v7, "WMA"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 674
    :cond_21
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdMp3:Landroid/widget/TextView;

    const-string v7, "MP3"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 683
    :cond_22
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdScane:Landroid/widget/TextView;

    const-string v7, "SCANE"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 692
    :cond_23
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d

    .line 713
    .restart local v0    # "curTick":J
    :cond_24
    const/4 v6, 0x1

    sput v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mLastDiscSta:I

    goto/16 :goto_e

    .line 717
    .restart local v2    # "i":I
    :cond_25
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->DiscSta:[B

    aget-byte v6, v6, v2

    if-nez v6, :cond_27

    .line 719
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 715
    :cond_26
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 721
    :cond_27
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->DiscSta:[B

    aget-byte v6, v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_28

    .line 723
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    goto :goto_11

    .line 725
    :cond_28
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdStaData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;

    iget-object v6, v6, Lcom/lgb/canmodule/CanDataInfo$TeanaCdSta;->DiscSta:[B

    aget-byte v6, v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_26

    .line 727
    sget v6, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mLastDiscSta:I

    if-eqz v6, :cond_29

    .line 728
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    goto :goto_11

    .line 730
    :cond_29
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v6, v6, v2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    goto :goto_11

    .line 751
    .end local v0    # "curTick":J
    .end local v2    # "i":I
    :cond_2a
    iget-object v6, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdMenu:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mCdInfoData:Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$TeanaCdInfo;->CdSta:I

    invoke-direct {p0, v7}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->CurCdSta(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10
.end method

.method private byte2ASCIIString([BI)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 341
    const-string v1, ""

    .line 344
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .end local v1    # "str":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "GBK"

    invoke-direct {v1, p1, v2, p2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .restart local v1    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 345
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->ResetData(Z)V

    .line 786
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 776
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 778
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x2ff

    const/16 v6, 0x82

    const/16 v5, 0x64

    const/16 v4, 0xaf

    const/16 v3, 0x28

    .line 92
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v1}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->setContentView(I)V

    .line 96
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 97
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1}, Lcom/ts/other/RelativeLayoutManager;->GetLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$drawable;->can_klz_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 100
    const/16 v1, 0xc8

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddFlagText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgRds:Landroid/widget/TextView;

    .line 101
    const/16 v1, 0x140

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddFlagText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgScane:Landroid/widget/TextView;

    .line 102
    const/16 v1, 0x1d9

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddFlagText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgSt:Landroid/widget/TextView;

    .line 103
    const/16 v1, 0x23d

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddFlagText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgAutop:Landroid/widget/TextView;

    .line 104
    const/16 v1, 0xfa

    const/16 v2, 0x32

    invoke-direct {p0, v6, v1, v7, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddMenuText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_RadioMenu:Landroid/widget/TextView;

    .line 105
    const/16 v1, 0x136

    const/16 v2, 0x2d

    invoke-direct {p0, v6, v1, v7, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddMsgText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_FreqText:Landroid/widget/TextView;

    .line 107
    const/16 v1, 0xc8

    invoke-direct {p0, v1, v4, v6, v3}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddFlagText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdFolder:Landroid/widget/TextView;

    .line 108
    const/16 v1, 0x14a

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddFlagText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdWma:Landroid/widget/TextView;

    .line 109
    const/16 v1, 0x1a8

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddFlagText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdMp3:Landroid/widget/TextView;

    .line 110
    const/16 v1, 0x1fd

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddFlagText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_fgCdScane:Landroid/widget/TextView;

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 116
    const/16 v1, 0x115

    const/16 v2, 0xfa

    const/16 v3, 0x190

    const/16 v4, 0x32

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddMenuText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdMenu:Landroid/widget/TextView;

    .line 117
    const/16 v1, 0x136

    const/16 v2, 0x2d

    invoke-direct {p0, v6, v1, v7, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddMsgText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdText:Landroid/widget/TextView;

    .line 120
    const/16 v1, 0xfa

    const/16 v2, 0x32

    invoke-direct {p0, v6, v1, v7, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddMenuText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AuxMenu:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AuxMenu:Landroid/widget/TextView;

    const-string v2, "AUX"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const/16 v1, 0xfa

    const/16 v2, 0x32

    invoke-direct {p0, v6, v1, v7, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddMenuText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_PwrMenu:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_PwrMenu:Landroid/widget/TextView;

    const-string v2, "Power Off"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/16 v1, 0xfa

    const/16 v2, 0x32

    invoke-direct {p0, v6, v1, v7, v2}, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->AddMenuText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_AudioMenu:Landroid/widget/TextView;

    .line 128
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v3, v0, 0x23

    add-int/lit16 v3, v3, 0x272

    const/16 v4, 0xb7

    sget-object v5, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->mDsicNumArr:[I

    aget v5, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 114
    iget-object v1, p0, Lcom/ts/can/nissan/CanNissanOldDeviceActivity;->m_CdSta:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 182
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 183
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 173
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 174
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 175
    return-void
.end method
