.class public Lcom/ts/main/radio/RadioMainActivity;
.super Lcom/ts/MainUI/TsMode;
.source "RadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final DEBUG_FLAG:Z = false

.field public static final DEBUG_RADIO:Z = false

.field public static final TAG:Ljava/lang/String; = "RadioMainActivity"

.field public static final btn_af:I = 0xd

.field public static final btn_am:I = 0x4

.field public static final btn_ams:I = 0x6

.field public static final btn_band:I = 0x8

.field public static final btn_close:I = 0x16

.field public static final btn_eq:I = 0x7

.field public static final btn_fm:I = 0x3

.field public static final btn_mute:I = 0x1

.field public static final btn_pty:I = 0xf

.field public static final btn_rds_set:I = 0x17

.field public static final btn_scan:I = 0x5

.field public static final btn_seek_dec:I = 0x9

.field public static final btn_seek_inc:I = 0xa

.field public static final btn_st:I = 0x2

.field public static final btn_step_dec:I = 0xb

.field public static final btn_step_inc:I = 0xc

.field public static final btn_t1:I = 0x10

.field public static final btn_t2:I = 0x11

.field public static final btn_t3:I = 0x12

.field public static final btn_t4:I = 0x13

.field public static final btn_t5:I = 0x14

.field public static final btn_t6:I = 0x15

.field public static final btn_ta:I = 0xe

.field private static final mBandNum:[I

.field private static final mFreqNum:[I

.field private static mHandler:Landroid/os/Handler;

.field private static mRunCnt:I


# instance fields
.field MemDnColor:I

.field MemUpColor:I

.field RdsColor:I

.field TvFreq:[I

.field YoubiaoOffsetY:I

.field amXStart:I

.field amXdt:I

.field private flag:I

.field freqCenter:Z

.field private mAdjStep:I

.field private mBtnAf:Lcom/ts/other/ParamButton;

.field private mBtnAm:Lcom/ts/other/ParamButton;

.field private mBtnAms:Lcom/ts/other/ParamButton;

.field private mBtnBand:Lcom/ts/other/ParamButton;

.field private mBtnClose:Lcom/ts/other/ParamButton;

.field private mBtnEq:Lcom/ts/other/ParamButton;

.field private mBtnFm:Lcom/ts/other/ParamButton;

.field private mBtnFreq:[Lcom/ts/other/ParamButton;

.field private mBtnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ts/other/ParamButton;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnMute:Lcom/ts/other/ParamButton;

.field private mBtnPty:Lcom/ts/other/ParamButton;

.field private mBtnRdsSet:Lcom/ts/other/ParamButton;

.field private mBtnScan:Lcom/ts/other/ParamButton;

.field private mBtnSeekDec:Lcom/ts/other/ParamButton;

.field private mBtnSeekInc:Lcom/ts/other/ParamButton;

.field private mBtnSt:Lcom/ts/other/ParamButton;

.field private mBtnTa:Lcom/ts/other/ParamButton;

.field private mCurBand:I

.field private mEvc:Lcom/ts/MainUI/Evc;

.field mIsHaveMoveFreq:Z

.field private mIvAf:Landroid/widget/ImageView;

.field private mIvBand:Landroid/widget/ImageView;

.field private mIvDW:Landroid/widget/ImageView;

.field private mIvEon:Landroid/widget/ImageView;

.field private mIvFreqAdj:Lcom/ts/other/CustomImgView;

.field private mIvLine:Landroid/widget/ImageView;

.field private mIvMainFreq:Lcom/ts/other/CustomImgView;

.field private mIvStR:Landroid/widget/ImageView;

.field private mIvStS:Landroid/widget/ImageView;

.field private mIvTa:Landroid/widget/ImageView;

.field private mIvTp:Landroid/widget/ImageView;

.field private mLastBand:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mMainVolume:Lcom/ts/main/common/MainVolume;

.field private mStepMode:Z

.field private mStepTick:J

.field private mStrCmd:[Ljava/lang/String;

.field private mTvAdjMax:Landroid/widget/TextView;

.field private mTvAdjMin:Landroid/widget/TextView;

.field private mTvCurPty:Landroid/widget/TextView;

.field private mTvFreq:Landroid/widget/TextView;

.field private mTvPs:Landroid/widget/TextView;

.field mXYoubiao:I

.field private mbAdjMove:Z

.field private mcFreq:[C

.field private mcPs:[C

.field private mcPty:[C

.field private onPtyOK:Lcom/ts/main/radio/RdsDlg$onInputOK;

.field ptAdjTxtMax:[I

.field ptAdjTxtMin:[I

.field ptBtnAf:[I

.field ptBtnAm:[I

.field ptBtnAms:[I

.field ptBtnClose:[I

.field ptBtnEq:[I

.field ptBtnFm:[I

.field ptBtnFreq1:[I

.field ptBtnFreq2:[I

.field ptBtnFreq3:[I

.field ptBtnFreq4:[I

.field ptBtnFreq5:[I

.field ptBtnFreq6:[I

.field ptBtnPty:[I

.field ptBtnRds:[I

.field ptBtnSkDec:[I

.field ptBtnSkInc:[I

.field ptBtnSound:[I

.field ptBtnTa:[I

.field ptFreqAdj:[I

.field ptIvAf:[I

.field ptIvBand:[I

.field ptIvBndDw:[I

.field ptIvEon:[I

.field ptIvMF:[I

.field ptIvPs:[I

.field ptIvPty:[I

.field ptIvStR:[I

.field ptIvStS:[I

.field ptIvTa:[I

.field ptIvTp:[I

.field ptMFNum:[I

.field private runnable:Ljava/lang/Runnable;

.field wYoubiao:I

.field xAdjMax:I

.field xAdjMin:I

.field xMFDot:I

.field xMFDt:I

.field yMFDot:I

.field yMFDt:I

.field yMFNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 77
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_num00_up:I

    aput v1, v0, v3

    .line 78
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_num01_up:I

    aput v1, v0, v4

    .line 79
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_num02_up:I

    aput v1, v0, v5

    .line 80
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_num03_up:I

    aput v1, v0, v6

    .line 81
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_num04_up:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 82
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_num05_up:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 83
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_num06_up:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 84
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_num07_up:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 85
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_num08_up:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 86
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_num09_up:I

    aput v2, v0, v1

    .line 75
    sput-object v0, Lcom/ts/main/radio/RadioMainActivity;->mFreqNum:[I

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 91
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_band_fm1:I

    aput v1, v0, v3

    .line 92
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_band_fm2:I

    aput v1, v0, v4

    .line 93
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_band_fm3:I

    aput v1, v0, v5

    .line 94
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_band_ot:I

    aput v1, v0, v6

    .line 95
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_band_am1:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 96
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_band_am2:I

    aput v2, v0, v1

    .line 89
    sput-object v0, Lcom/ts/main/radio/RadioMainActivity;->mBandNum:[I

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/main/radio/RadioMainActivity;->mHandler:Landroid/os/Handler;

    .line 144
    sput v3, Lcom/ts/main/radio/RadioMainActivity;->mRunCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 42
    invoke-direct {p0}, Lcom/ts/MainUI/TsMode;-><init>()V

    .line 45
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    .line 46
    invoke-static {}, Lcom/ts/main/common/MainVolume;->GetInstance()Lcom/ts/main/common/MainVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mMainVolume:Lcom/ts/main/common/MainVolume;

    .line 116
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    .line 140
    iput v7, p0, Lcom/ts/main/radio/RadioMainActivity;->mLastBand:I

    .line 145
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mcPty:[C

    .line 146
    new-array v0, v6, [C

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mcPs:[C

    .line 147
    new-array v0, v6, [C

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mcFreq:[C

    .line 149
    iput-boolean v4, p0, Lcom/ts/main/radio/RadioMainActivity;->mStepMode:Z

    .line 154
    iput v4, p0, Lcom/ts/main/radio/RadioMainActivity;->flag:I

    .line 157
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 158
    const-string v1, ""

    aput-object v1, v0, v4

    .line 159
    const-string v1, "btn_mute"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    .line 160
    const-string v2, "btn_st"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 161
    const-string v2, "btn_fm"

    aput-object v2, v0, v1

    .line 162
    const-string v1, "btn_am"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    .line 163
    const-string v2, "btn_scan"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 164
    const-string v2, "btn_ams"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 165
    const-string v2, "btn_eq"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 166
    const-string v2, "btn_band"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 167
    const-string v2, "btn_seek_dec"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 168
    const-string v2, "btn_seek_inc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 169
    const-string v2, "btn_step_dec"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 170
    const-string v2, "btn_step_inc"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 171
    const-string v2, "btn_af"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 172
    const-string v2, "btn_ta"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 173
    const-string v2, "btn_pty"

    aput-object v2, v0, v1

    .line 174
    const-string v1, "btn_t1"

    aput-object v1, v0, v6

    const/16 v1, 0x11

    .line 175
    const-string v2, "btn_t2"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 176
    const-string v2, "btn_t3"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 177
    const-string v2, "btn_t4"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 178
    const-string v2, "btn_t5"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 179
    const-string v2, "btn_t6"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 180
    const-string v2, "btn_close"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 181
    const-string v2, "btn_rds_set"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mStrCmd:[Ljava/lang/String;

    .line 185
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnRds:[I

    .line 186
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAf:[I

    .line 187
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnTa:[I

    .line 188
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnPty:[I

    .line 189
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSound:[I

    .line 192
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFm:[I

    .line 193
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAm:[I

    .line 195
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnClose:[I

    .line 196
    new-array v0, v3, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAms:[I

    .line 197
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnEq:[I

    .line 198
    new-array v0, v3, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSkDec:[I

    .line 199
    new-array v0, v3, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSkInc:[I

    .line 201
    new-array v0, v3, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvAf:[I

    .line 202
    new-array v0, v3, [I

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvTa:[I

    .line 203
    new-array v0, v3, [I

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvTp:[I

    .line 204
    new-array v0, v3, [I

    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvEon:[I

    .line 205
    new-array v0, v3, [I

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvStR:[I

    .line 206
    new-array v0, v3, [I

    fill-array-data v0, :array_11

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvStS:[I

    .line 208
    new-array v0, v3, [I

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvBand:[I

    .line 209
    new-array v0, v3, [I

    fill-array-data v0, :array_13

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvBndDw:[I

    .line 211
    new-array v0, v3, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvPty:[I

    .line 212
    new-array v0, v3, [I

    fill-array-data v0, :array_15

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvPs:[I

    .line 213
    const-string v0, "#0096ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->RdsColor:I

    .line 215
    new-array v0, v3, [I

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq1:[I

    .line 216
    new-array v0, v3, [I

    fill-array-data v0, :array_17

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq2:[I

    .line 217
    new-array v0, v3, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq3:[I

    .line 218
    new-array v0, v3, [I

    fill-array-data v0, :array_19

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq4:[I

    .line 219
    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq5:[I

    .line 220
    new-array v0, v3, [I

    fill-array-data v0, :array_1b

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq6:[I

    .line 221
    iput v7, p0, Lcom/ts/main/radio/RadioMainActivity;->MemUpColor:I

    .line 222
    const-string v0, "#ffb401"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->MemDnColor:I

    .line 224
    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->TvFreq:[I

    .line 225
    new-array v0, v3, [I

    fill-array-data v0, :array_1d

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    .line 226
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptMFNum:[I

    .line 227
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    aget v0, v0, v4

    neg-int v0, v0

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->xMFDt:I

    .line 228
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    aget v0, v0, v5

    neg-int v0, v0

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->yMFDt:I

    .line 229
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    aget v0, v0, v5

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->yMFNum:I

    .line 230
    const/16 v0, 0x212

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->xMFDot:I

    .line 231
    const/16 v0, 0xd9

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->yMFDot:I

    .line 232
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptMFNum:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptMFNum:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptMFNum:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->amXStart:I

    .line 233
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptMFNum:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptMFNum:[I

    aget v1, v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->amXdt:I

    .line 235
    iput-boolean v5, p0, Lcom/ts/main/radio/RadioMainActivity;->mIsHaveMoveFreq:Z

    .line 236
    new-array v0, v3, [I

    const/4 v1, 0x2

    const/16 v2, 0x400

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x43

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptFreqAdj:[I

    .line 237
    const/16 v0, 0xb

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMin:I

    .line 238
    const/16 v0, 0x3f5

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMax:I

    .line 239
    iput v4, p0, Lcom/ts/main/radio/RadioMainActivity;->YoubiaoOffsetY:I

    .line 240
    const/16 v0, 0xe

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->wYoubiao:I

    .line 241
    new-array v0, v3, [I

    fill-array-data v0, :array_1f

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptAdjTxtMin:[I

    .line 242
    new-array v0, v3, [I

    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptAdjTxtMax:[I

    .line 243
    iput-boolean v4, p0, Lcom/ts/main/radio/RadioMainActivity;->freqCenter:Z

    .line 245
    iput v4, p0, Lcom/ts/main/radio/RadioMainActivity;->mXYoubiao:I

    .line 247
    new-instance v0, Lcom/ts/main/radio/RadioMainActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/main/radio/RadioMainActivity$1;-><init>(Lcom/ts/main/radio/RadioMainActivity;)V

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->runnable:Ljava/lang/Runnable;

    .line 289
    new-instance v0, Lcom/ts/main/radio/RadioMainActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/main/radio/RadioMainActivity$2;-><init>(Lcom/ts/main/radio/RadioMainActivity;)V

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->onPtyOK:Lcom/ts/main/radio/RdsDlg$onInputOK;

    .line 42
    return-void

    .line 185
    :array_0
    .array-data 4
        0x39
        0x4a
        0x4e
        0x22
    .end array-data

    .line 186
    :array_1
    .array-data 4
        0xba
        0x4a
        0x4e
        0x22
    .end array-data

    .line 187
    :array_2
    .array-data 4
        0x372
        0x4a
        0x4e
        0x22
    .end array-data

    .line 188
    :array_3
    .array-data 4
        0x2fd
        0x4a
        0x4e
        0x22
    .end array-data

    .line 189
    :array_4
    .array-data 4
        0x1
        0x1d3
        0xa9
        0x4e
    .end array-data

    .line 192
    :array_5
    .array-data 4
        0xac
        0x1d3
        0xa9
        0x4e
    .end array-data

    .line 193
    :array_6
    .array-data 4
        0x156
        0x1d3
        0xa9
        0x4e
    .end array-data

    .line 195
    :array_7
    .array-data 4
        0x356
        0x1d3
        0xa9
        0x4e
    .end array-data

    .line 196
    :array_8
    .array-data 4
        0x200
        0x1d3
        0xa9
        0x4e
    .end array-data

    .line 197
    :array_9
    .array-data 4
        0x2ab
        0x1d3
        0xa8
        0x4e
    .end array-data

    .line 198
    :array_a
    .array-data 4
        0x47
        0x96
        0x5f
        0x5f
    .end array-data

    .line 199
    :array_b
    .array-data 4
        0x359
        0x96
        0x5f
        0x5f
    .end array-data

    .line 201
    :array_c
    .array-data 4
        0x27f
        0x50
        0x2e
        0x13
    .end array-data

    .line 202
    :array_d
    .array-data 4
        0x248
        0x50
        0x2e
        0x13
    .end array-data

    .line 203
    :array_e
    .array-data 4
        0x153
        0x50
        0x2e
        0x13
    .end array-data

    .line 204
    :array_f
    .array-data 4
        0x195
        0x50
        0x2e
        0x13
    .end array-data

    .line 205
    :array_10
    .array-data 4
        0x20b
        0x50
        0x2e
        0x13
    .end array-data

    .line 206
    :array_11
    .array-data 4
        0x1d6
        0x50
        0x2e
        0x13
    .end array-data

    .line 208
    :array_12
    .array-data 4
        0xf5
        0xc8
        0x49
        0x19
    .end array-data

    .line 209
    :array_13
    .array-data 4
        0x2c5
        0xc8
        0x48
        0x19
    .end array-data

    .line 211
    :array_14
    .array-data 4
        0x16f
        0xfa
        0x11c
        0x1d
    .end array-data

    .line 212
    :array_15
    .array-data 4
        0x172
        0xfa
        0x8e
        0x1d
    .end array-data

    .line 215
    :array_16
    .array-data 4
        0x8
        0x12a
        0x14b
        0x49
    .end array-data

    .line 216
    :array_17
    .array-data 4
        0x15a
        0x12a
        0x14b
        0x49
    .end array-data

    .line 217
    :array_18
    .array-data 4
        0x2ad
        0x12a
        0x14b
        0x49
    .end array-data

    .line 218
    :array_19
    .array-data 4
        0x8
        0x17e
        0x14b
        0x49
    .end array-data

    .line 219
    :array_1a
    .array-data 4
        0x15a
        0x17e
        0x14b
        0x49
    .end array-data

    .line 220
    :array_1b
    .array-data 4
        0x2ad
        0x17e
        0x14b
        0x49
    .end array-data

    .line 224
    :array_1c
    .array-data 4
        0x16f
        0x7c
        0x11c
        0x28
    .end array-data

    .line 225
    :array_1d
    .array-data 4
        0x16f
        0xa4
        0x11c
        0x41
    .end array-data

    .line 226
    :array_1e
    .array-data 4
        0x16f
        0x1a3
        0x1d8
        0x227
        0x25c
    .end array-data

    .line 241
    :array_1f
    .array-data 4
        0x7
        0x28
        0x64
        0x1d
    .end array-data

    .line 242
    :array_20
    .array-data 4
        0x395
        0x28
        0x64
        0x1d
    .end array-data
.end method

.method private PtToStep(F)I
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 486
    float-to-int v0, p1

    .line 487
    .local v0, "adjX":I
    iget v1, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMin:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 489
    iget v0, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMin:I

    .line 496
    :cond_0
    :goto_0
    iget v1, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMin:I

    sub-int v1, v0, v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMax:I

    iget v3, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMin:I

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    return v1

    .line 491
    :cond_1
    iget v1, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMax:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 493
    iget v0, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMax:I

    goto :goto_0
.end method

.method private RdsShow(I)V
    .locals 3
    .param p1, "band"    # I

    .prologue
    .line 402
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetRDSen()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    const/4 v0, 0x1

    .line 403
    .local v0, "brds":Z
    :goto_0
    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAf:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v0}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 404
    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnTa:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v0}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 405
    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnPty:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v0}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 406
    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnRdsSet:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, v0}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 408
    const/4 v1, 0x0

    .line 409
    .local v1, "show":I
    if-eqz v0, :cond_0

    .line 411
    const/4 v1, 0x1

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/ts/main/radio/RadioMainActivity;->showView(Landroid/view/View;I)V

    .line 414
    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvCurPty:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/ts/main/radio/RadioMainActivity;->showView(Landroid/view/View;I)V

    .line 415
    return-void

    .line 402
    .end local v0    # "brds":Z
    .end local v1    # "show":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private SetStep(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 501
    iget v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mAdjStep:I

    if-eq p1, v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvMainFreq:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 504
    iput p1, p0, Lcom/ts/main/radio/RadioMainActivity;->mAdjStep:I

    .line 506
    :cond_0
    return-void
.end method

.method private StepToFreq(IZ)Ljava/lang/String;
    .locals 6
    .param p1, "step"    # I
    .param p2, "fm"    # Z

    .prologue
    .line 475
    invoke-static {p1}, Lcom/yyw/ts70xhw/Radio;->StepToFreq(I)I

    move-result v0

    .line 476
    .local v0, "freq":I
    if-eqz p2, :cond_0

    .line 478
    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 481
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/ts/main/radio/RadioMainActivity;->mRunCnt:I

    return v0
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 144
    sput p0, Lcom/ts/main/radio/RadioMainActivity;->mRunCnt:I

    return-void
.end method

.method static synthetic access$10(Lcom/ts/main/radio/RadioMainActivity;I)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/ts/main/radio/RadioMainActivity;->SetStep(I)V

    return-void
.end method

.method static synthetic access$2()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/ts/main/radio/RadioMainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ts/main/radio/RadioMainActivity;)Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mbAdjMove:Z

    return v0
.end method

.method static synthetic access$4(Lcom/ts/main/radio/RadioMainActivity;)I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mAdjStep:I

    return v0
.end method

.method static synthetic access$5(Lcom/ts/main/radio/RadioMainActivity;)I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mCurBand:I

    return v0
.end method

.method static synthetic access$6(Lcom/ts/main/radio/RadioMainActivity;)[C
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mcPs:[C

    return-object v0
.end method

.method static synthetic access$7()[I
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/ts/main/radio/RadioMainActivity;->mFreqNum:[I

    return-object v0
.end method

.method static synthetic access$8(Lcom/ts/main/radio/RadioMainActivity;Z)V
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/ts/main/radio/RadioMainActivity;->mbAdjMove:Z

    return-void
.end method

.method static synthetic access$9(Lcom/ts/main/radio/RadioMainActivity;F)I
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/ts/main/radio/RadioMainActivity;->PtToStep(F)I

    move-result v0

    return v0
.end method

.method private dbgInit()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method private updateMemFreq(II)V
    .locals 8
    .param p1, "mem"    # I
    .param p2, "freq"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 730
    iget v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mCurBand:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 732
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 746
    :goto_0
    return-void

    .line 736
    :cond_0
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mcFreq:[C

    invoke-static {v0, v1}, Lcom/yyw/ts70xhw/Radio;->GetMemPsName(I[C)I

    .line 737
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mcFreq:[C

    aget-char v0, v0, v7

    if-ne v4, v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, p1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mcFreq:[C

    const/16 v3, 0x8

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, p1

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {v0, v7, v1}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, p1

    const-string v1, "%.2f"

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v3, p2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, p1

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-virtual {v0, v7, v1}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    goto :goto_0
.end method


# virtual methods
.method protected CheckFreqMove()V
    .locals 5

    .prologue
    .line 447
    iget-boolean v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mIsHaveMoveFreq:Z

    if-nez v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const/4 v0, 0x0

    .line 453
    .local v0, "curStep":I
    iget-boolean v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mbAdjMove:Z

    if-eqz v2, :cond_2

    .line 455
    iget v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mAdjStep:I

    .line 462
    :goto_1
    iget v2, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMax:I

    iget v3, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMin:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v0

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v2, v3

    iget v3, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMin:I

    add-int v1, v2, v3

    .line 464
    .local v1, "curX":I
    iget v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mXYoubiao:I

    if-eq v1, v2, :cond_0

    .line 466
    iget v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mXYoubiao:I

    invoke-static {v1, v2}, Lcom/ts/other/ValCal;->NumApproach(II)I

    move-result v2

    iput v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mXYoubiao:I

    .line 467
    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvFreqAdj:Lcom/ts/other/CustomImgView;

    invoke-virtual {v2}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 468
    const-string v2, "RadioMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "curX = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mXYoubiao = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ts/main/radio/RadioMainActivity;->mXYoubiao:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    .end local v1    # "curX":I
    :cond_2
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v0

    goto :goto_1
.end method

.method protected IvCreateRelative(IIIII)Landroid/widget/ImageView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "resId"    # I

    .prologue
    .line 771
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v1, "iv":Landroid/widget/ImageView;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 772
    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->setViewPos(Landroid/view/View;IIII)V

    .line 773
    invoke-virtual {v1, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 774
    return-object v1
.end method

.method protected TvCreateRelative(IIII)Landroid/widget/TextView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 779
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v1, "tv":Landroid/widget/TextView;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 780
    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->setViewPos(Landroid/view/View;IIII)V

    .line 781
    return-object v1
.end method

.method public UserAll()V
    .locals 0

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/ts/main/radio/RadioMainActivity;->onTimer()V

    .line 1131
    return-void
.end method

.method protected i2b(I)Z
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 438
    if-nez p1, :cond_0

    .line 440
    const/4 v0, 0x0

    .line 442
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected initUI()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 786
    sget v0, Lcom/ts/MainUI/R$id;->rad_main_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/main/radio/RadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 787
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v0, v7}, Lcom/ts/other/ParamButton;->initFactory(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 789
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnRds:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnRds:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnRds:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnRds:[I

    aget v3, v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnRdsSet:Lcom/ts/other/ParamButton;

    .line 790
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnRdsSet:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_rds_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_rds_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 791
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnRdsSet:Lcom/ts/other/ParamButton;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 792
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnRdsSet:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAf:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAf:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAf:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAf:[I

    aget v3, v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAf:Lcom/ts/other/ParamButton;

    .line 795
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAf:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_af_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_af_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 796
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAf:Lcom/ts/other/ParamButton;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 797
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAf:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnTa:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnTa:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnTa:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnTa:[I

    aget v3, v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnTa:Lcom/ts/other/ParamButton;

    .line 800
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnTa:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_ta_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_ta_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 801
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnTa:Lcom/ts/other/ParamButton;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 802
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnTa:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnPty:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnPty:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnPty:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnPty:[I

    aget v3, v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnPty:Lcom/ts/other/ParamButton;

    .line 805
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnPty:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_pty_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_pty_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 806
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnPty:Lcom/ts/other/ParamButton;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 807
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnPty:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAf:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v7}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 810
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnTa:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v7}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 811
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnPty:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v7}, Lcom/ts/other/ParamButton;->Show(Z)V

    .line 813
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSound:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSound:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSound:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSound:[I

    aget v3, v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnMute:Lcom/ts/other/ParamButton;

    .line 814
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnMute:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_sound_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_sound_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 815
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnMute:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v8}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 816
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnMute:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnClose:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnClose:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnClose:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnClose:[I

    aget v3, v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnClose:Lcom/ts/other/ParamButton;

    .line 829
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnClose:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_close_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_close_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 830
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnClose:Lcom/ts/other/ParamButton;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 831
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnClose:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFm:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFm:[I

    aget v1, v1, v8

    .line 835
    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFm:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFm:[I

    aget v3, v3, v9

    .line 834
    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFm:Lcom/ts/other/ParamButton;

    .line 836
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFm:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_fm_up:I

    .line 837
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_fm_dn:I

    .line 836
    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 837
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFm:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v9}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 838
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFm:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAm:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAm:[I

    aget v1, v1, v8

    .line 841
    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAm:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAm:[I

    aget v3, v3, v9

    .line 840
    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAm:Lcom/ts/other/ParamButton;

    .line 842
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAm:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_am_up:I

    .line 843
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_am_dn:I

    .line 842
    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 843
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAm:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v11}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 844
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAm:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAms:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAms:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAms:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnAms:[I

    aget v3, v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAms:Lcom/ts/other/ParamButton;

    .line 855
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAms:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_store_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_store_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 856
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAms:Lcom/ts/other/ParamButton;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 857
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnAms:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnEq:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnEq:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnEq:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnEq:[I

    aget v3, v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnEq:Lcom/ts/other/ParamButton;

    .line 860
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnEq:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_eq_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_eq_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 861
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnEq:Lcom/ts/other/ParamButton;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 862
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnEq:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSkDec:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSkDec:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSkDec:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSkDec:[I

    aget v3, v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    .line 865
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_vup_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_vup_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 866
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 867
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnSeekDec:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 870
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSkInc:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSkInc:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSkInc:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnSkInc:[I

    aget v3, v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    .line 871
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_button_vdn_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_button_vdn_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 872
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 873
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnSeekInc:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 876
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq1:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq1:[I

    aget v2, v2, v8

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq1:[I

    aget v3, v3, v10

    iget-object v4, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq1:[I

    aget v4, v4, v9

    invoke-static {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v7

    .line 877
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq2:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq2:[I

    aget v2, v2, v8

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq2:[I

    aget v3, v3, v10

    iget-object v4, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq2:[I

    aget v4, v4, v9

    invoke-static {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v8

    .line 878
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq3:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq3:[I

    aget v2, v2, v8

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq3:[I

    aget v3, v3, v10

    iget-object v4, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq3:[I

    aget v4, v4, v9

    invoke-static {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v10

    .line 879
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq4:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq4:[I

    aget v2, v2, v8

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq4:[I

    aget v3, v3, v10

    iget-object v4, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq4:[I

    aget v4, v4, v9

    invoke-static {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v9

    .line 880
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq5:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq5:[I

    aget v2, v2, v8

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq5:[I

    aget v3, v3, v10

    iget-object v4, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq5:[I

    aget v4, v4, v9

    invoke-static {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v11

    .line 881
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq6:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq6:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq6:[I

    aget v4, v4, v10

    iget-object v5, p0, Lcom/ts/main/radio/RadioMainActivity;->ptBtnFreq6:[I

    aget v5, v5, v9

    invoke-static {v2, v3, v4, v5}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v0, v1

    .line 884
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x6

    if-lt v6, v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_rect01_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_rect01_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->radio_rect01_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 897
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v8

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_rect02_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_rect02_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->radio_rect02_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 898
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v10

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_rect03_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_rect03_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->radio_rect03_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 899
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v9

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_rect04_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_rect04_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->radio_rect04_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 900
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v11

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_rect05_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_rect05_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->radio_rect05_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 901
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$drawable;->radio_rect06_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->radio_rect06_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->radio_rect06_dn:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 903
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvAf:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvAf:[I

    aget v2, v0, v8

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvAf:[I

    aget v3, v0, v10

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvAf:[I

    aget v4, v0, v9

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_af:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->IvCreateRelative(IIIII)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvAf:Landroid/widget/ImageView;

    .line 904
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvTa:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvTa:[I

    aget v2, v0, v8

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvTa:[I

    aget v3, v0, v10

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvTa:[I

    aget v4, v0, v9

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_ta:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->IvCreateRelative(IIIII)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvTa:Landroid/widget/ImageView;

    .line 905
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvTp:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvTp:[I

    aget v2, v0, v8

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvTp:[I

    aget v3, v0, v10

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvTp:[I

    aget v4, v0, v9

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_tp:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->IvCreateRelative(IIIII)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvTp:Landroid/widget/ImageView;

    .line 906
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvEon:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvEon:[I

    aget v2, v0, v8

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvEon:[I

    aget v3, v0, v10

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvEon:[I

    aget v4, v0, v9

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_eon:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->IvCreateRelative(IIIII)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvEon:Landroid/widget/ImageView;

    .line 907
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvStR:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvStR:[I

    aget v2, v0, v8

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvStR:[I

    aget v3, v0, v10

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvStR:[I

    aget v4, v0, v9

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_stereo:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->IvCreateRelative(IIIII)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvStR:Landroid/widget/ImageView;

    .line 908
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvStS:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvStS:[I

    aget v2, v0, v8

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvStS:[I

    aget v3, v0, v10

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvStS:[I

    aget v4, v0, v9

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_st:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->IvCreateRelative(IIIII)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvStS:Landroid/widget/ImageView;

    .line 910
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvAf:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvTa:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvTp:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvEon:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 914
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvStR:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvStS:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvBand:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvBand:[I

    aget v2, v0, v8

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvBand:[I

    aget v3, v0, v10

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvBand:[I

    aget v4, v0, v9

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_band_fm1:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->IvCreateRelative(IIIII)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvBand:Landroid/widget/ImageView;

    .line 918
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvBndDw:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvBndDw:[I

    aget v2, v0, v8

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvBndDw:[I

    aget v3, v0, v10

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvBndDw:[I

    aget v4, v0, v9

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_band_mhz:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->IvCreateRelative(IIIII)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvDW:Landroid/widget/ImageView;

    .line 920
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->TvFreq:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->TvFreq:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->TvFreq:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->TvFreq:[I

    aget v3, v3, v9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/main/radio/RadioMainActivity;->TvCreateRelative(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    .line 921
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 923
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 924
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 926
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvPty:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvPty:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvPty:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvPty:[I

    aget v3, v3, v9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/main/radio/RadioMainActivity;->TvCreateRelative(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvCurPty:Landroid/widget/TextView;

    .line 929
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvCurPty:Landroid/widget/TextView;

    const-string v1, "\u6df1\u5733\u4ea4\u901a\u9884\u8b66\u53f0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvCurPty:Landroid/widget/TextView;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 931
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvCurPty:Landroid/widget/TextView;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 932
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvCurPty:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 934
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvCurPty:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    aget v3, v3, v9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/main/radio/RadioMainActivity;->TvCreateRelative(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    .line 937
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    const-string v1, "\u6df1\u5733\u4ea4\u901a\u9884\u8b66\u53f0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 939
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 940
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 942
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 944
    new-instance v0, Lcom/ts/other/CustomImgView;

    invoke-direct {v0, p0}, Lcom/ts/other/CustomImgView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvMainFreq:Lcom/ts/other/CustomImgView;

    .line 945
    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvMainFreq:Lcom/ts/other/CustomImgView;

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    aget v3, v0, v8

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    aget v4, v0, v10

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptIvMF:[I

    aget v5, v0, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->setViewPos(Landroid/view/View;IIII)V

    .line 946
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvMainFreq:Lcom/ts/other/CustomImgView;

    iget v1, p0, Lcom/ts/main/radio/RadioMainActivity;->xMFDt:I

    iget v2, p0, Lcom/ts/main/radio/RadioMainActivity;->yMFDt:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/CustomImgView;->setDrawDt(II)V

    .line 947
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvMainFreq:Lcom/ts/other/CustomImgView;

    new-instance v1, Lcom/ts/main/radio/RadioMainActivity$3;

    invoke-direct {v1, p0}, Lcom/ts/main/radio/RadioMainActivity$3;-><init>(Lcom/ts/main/radio/RadioMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 1008
    iget-boolean v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIsHaveMoveFreq:Z

    if-eqz v0, :cond_0

    .line 1010
    new-instance v0, Lcom/ts/other/CustomImgView;

    invoke-direct {v0, p0}, Lcom/ts/other/CustomImgView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvFreqAdj:Lcom/ts/other/CustomImgView;

    .line 1011
    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvFreqAdj:Lcom/ts/other/CustomImgView;

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptFreqAdj:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptFreqAdj:[I

    aget v3, v0, v8

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptFreqAdj:[I

    aget v4, v0, v10

    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptFreqAdj:[I

    aget v5, v0, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioMainActivity;->setViewPos(Landroid/view/View;IIII)V

    .line 1012
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvFreqAdj:Lcom/ts/other/CustomImgView;

    new-instance v1, Lcom/ts/main/radio/RadioMainActivity$4;

    invoke-direct {v1, p0}, Lcom/ts/main/radio/RadioMainActivity$4;-><init>(Lcom/ts/main/radio/RadioMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 1026
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mIvFreqAdj:Lcom/ts/other/CustomImgView;

    new-instance v1, Lcom/ts/main/radio/RadioMainActivity$5;

    invoke-direct {v1, p0}, Lcom/ts/main/radio/RadioMainActivity$5;-><init>(Lcom/ts/main/radio/RadioMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1066
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptAdjTxtMin:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptAdjTxtMin:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptAdjTxtMin:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptAdjTxtMin:[I

    aget v3, v3, v9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/main/radio/RadioMainActivity;->TvCreateRelative(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMin:Landroid/widget/TextView;

    .line 1067
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMin:Landroid/widget/TextView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1068
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMin:Landroid/widget/TextView;

    iget v1, p0, Lcom/ts/main/radio/RadioMainActivity;->MemUpColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1070
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->ptAdjTxtMax:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->ptAdjTxtMax:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity;->ptAdjTxtMax:[I

    aget v2, v2, v10

    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->ptAdjTxtMax:[I

    aget v3, v3, v9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/main/radio/RadioMainActivity;->TvCreateRelative(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMax:Landroid/widget/TextView;

    .line 1071
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMax:Landroid/widget/TextView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1072
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMax:Landroid/widget/TextView;

    iget v1, p0, Lcom/ts/main/radio/RadioMainActivity;->MemUpColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1074
    iget-boolean v0, p0, Lcom/ts/main/radio/RadioMainActivity;->freqCenter:Z

    if-eqz v0, :cond_2

    .line 1076
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMin:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1077
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMax:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1087
    :cond_0
    :goto_1
    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_3

    .line 1091
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    add-int/lit8 v1, v6, 0x10

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 888
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    iget v1, p0, Lcom/ts/main/radio/RadioMainActivity;->MemUpColor:I

    iget v2, p0, Lcom/ts/main/radio/RadioMainActivity;->MemDnColor:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setColor(II)V

    .line 889
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {v0, v7, v1}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 890
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v7, v7, v7}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 891
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 893
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1081
    :cond_2
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMin:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1082
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMax:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 1089
    :cond_3
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 301
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 302
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v2

    .line 303
    .local v2, "id":I
    const-string v3, "RadioMainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onClick "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ts/main/radio/RadioMainActivity;->mStrCmd:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    packed-switch v2, :pswitch_data_0

    .line 398
    :goto_0
    :pswitch_0
    return-void

    .line 307
    :pswitch_1
    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->mMainVolume:Lcom/ts/main/common/MainVolume;

    invoke-virtual {v3}, Lcom/ts/main/common/MainVolume;->VolWinShow()V

    goto :goto_0

    .line 311
    :pswitch_2
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneStset()I

    goto :goto_0

    .line 315
    :pswitch_3
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneBandFm()I

    goto :goto_0

    .line 319
    :pswitch_4
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneBandAm()I

    goto :goto_0

    .line 323
    :pswitch_5
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneInt()I

    goto :goto_0

    .line 327
    :pswitch_6
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneAms()I

    goto :goto_0

    .line 331
    :pswitch_7
    invoke-static {}, Lcom/ts/main/common/WinShow;->TurnToEq()V

    goto :goto_0

    .line 335
    :pswitch_8
    invoke-static {v7}, Lcom/yyw/ts70xhw/Radio;->TuneBand(I)I

    goto :goto_0

    .line 339
    :pswitch_9
    iget-boolean v3, p0, Lcom/ts/main/radio/RadioMainActivity;->mStepMode:Z

    if-eqz v3, :cond_0

    .line 341
    invoke-static {v6}, Lcom/yyw/ts70xhw/Radio;->TuneStep(I)I

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ts/main/radio/RadioMainActivity;->mStepTick:J

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {v6}, Lcom/yyw/ts70xhw/Radio;->TuneSearch(I)I

    goto :goto_0

    .line 351
    :pswitch_a
    iget-boolean v3, p0, Lcom/ts/main/radio/RadioMainActivity;->mStepMode:Z

    if-eqz v3, :cond_1

    .line 353
    invoke-static {v7}, Lcom/yyw/ts70xhw/Radio;->TuneStep(I)I

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ts/main/radio/RadioMainActivity;->mStepTick:J

    goto :goto_0

    .line 358
    :cond_1
    invoke-static {v7}, Lcom/yyw/ts70xhw/Radio;->TuneSearch(I)I

    goto :goto_0

    .line 364
    :pswitch_b
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->RdsAf()I

    goto :goto_0

    .line 368
    :pswitch_c
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->RdsTa()I

    goto :goto_0

    .line 373
    :pswitch_d
    new-instance v1, Lcom/ts/main/radio/RdsDlg;

    invoke-direct {v1}, Lcom/ts/main/radio/RdsDlg;-><init>()V

    .line 374
    .local v1, "dlg":Lcom/ts/main/radio/RdsDlg;
    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->onPtyOK:Lcom/ts/main/radio/RdsDlg$onInputOK;

    invoke-virtual {v1, p0, v3}, Lcom/ts/main/radio/RdsDlg;->createDlg(Landroid/content/Context;Lcom/ts/main/radio/RdsDlg$onInputOK;)V

    goto :goto_0

    .line 383
    .end local v1    # "dlg":Lcom/ts/main/radio/RdsDlg;
    :pswitch_e
    add-int/lit8 v3, v2, -0x10

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/yyw/ts70xhw/Radio;->TuneMset(I)I

    goto :goto_0

    .line 387
    :pswitch_f
    iget-object v3, p0, Lcom/ts/main/radio/RadioMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    invoke-virtual {v3, v6}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 388
    invoke-virtual {p0}, Lcom/ts/main/radio/RadioMainActivity;->finish()V

    goto :goto_0

    .line 392
    :pswitch_10
    invoke-static {p0}, Lcom/ts/main/radio/RadioFunc;->ShowRdsSet(Landroid/content/Context;)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    const/4 v0, 0x3

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->aPort:I

    .line 263
    invoke-super {p0, p1}, Lcom/ts/MainUI/TsMode;->onCreate(Landroid/os/Bundle;)V

    .line 264
    sget v0, Lcom/ts/MainUI/R$layout;->activity_radio_main:I

    invoke-virtual {p0, v0}, Lcom/ts/main/radio/RadioMainActivity;->setContentView(I)V

    .line 266
    invoke-virtual {p0}, Lcom/ts/main/radio/RadioMainActivity;->initUI()V

    .line 267
    invoke-direct {p0}, Lcom/ts/main/radio/RadioMainActivity;->dbgInit()V

    .line 269
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 1097
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 1098
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    .line 1099
    .local v1, "id":I
    const-string v2, "RadioMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onLongClick "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ts/main/radio/RadioMainActivity;->mStrCmd:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    packed-switch v1, :pswitch_data_0

    .line 1123
    :goto_0
    :pswitch_0
    return v5

    .line 1103
    :pswitch_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->TuneStep(I)I

    .line 1104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mStepTick:J

    .line 1105
    iput-boolean v5, p0, Lcom/ts/main/radio/RadioMainActivity;->mStepMode:Z

    goto :goto_0

    .line 1109
    :pswitch_2
    invoke-static {v5}, Lcom/yyw/ts70xhw/Radio;->TuneStep(I)I

    .line 1110
    iput-boolean v5, p0, Lcom/ts/main/radio/RadioMainActivity;->mStepMode:Z

    .line 1111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ts/main/radio/RadioMainActivity;->mStepTick:J

    goto :goto_0

    .line 1120
    :pswitch_3
    add-int/lit8 v2, v1, -0x10

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->TuneMsave(I)I

    goto :goto_0

    .line 1100
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 433
    invoke-super {p0}, Lcom/ts/MainUI/TsMode;->onPause()V

    .line 434
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 421
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 422
    iget-object v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mEvc:Lcom/ts/MainUI/Evc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 423
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ts/main/radio/RadioMainActivity;->RdsShow(I)V

    .line 424
    iget v0, p0, Lcom/ts/main/radio/RadioMainActivity;->xAdjMin:I

    iput v0, p0, Lcom/ts/main/radio/RadioMainActivity;->mXYoubiao:I

    .line 425
    invoke-super {p0}, Lcom/ts/MainUI/TsMode;->onResume()V

    .line 426
    return-void
.end method

.method protected onTimer()V
    .locals 19

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mStepMode:Z

    if-eqz v11, :cond_0

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 522
    .local v1, "curTick":J
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mStepTick:J

    const-wide/16 v13, 0xbb8

    add-long/2addr v11, v13

    cmp-long v11, v1, v11

    if-lez v11, :cond_0

    .line 524
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mStepMode:Z

    .line 529
    .end local v1    # "curTick":J
    :cond_0
    const/4 v11, 0x2

    invoke-static {v11}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mCurBand:I

    .line 530
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->GetDispUpdate()I

    move-result v10

    .line 531
    .local v10, "update":I
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->GetDispFlag()I

    move-result v3

    .line 548
    .local v3, "dspFlg":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mCurBand:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ts/main/radio/RadioMainActivity;->mLastBand:I

    if-eq v11, v12, :cond_1

    .line 550
    move-object/from16 v0, p0

    iget v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mCurBand:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->RdsShow(I)V

    .line 551
    const/4 v10, -0x1

    .line 552
    move-object/from16 v0, p0

    iget v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mCurBand:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mLastBand:I

    .line 553
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvBand:Landroid/widget/ImageView;

    sget-object v12, Lcom/ts/main/radio/RadioMainActivity;->mBandNum:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ts/main/radio/RadioMainActivity;->mCurBand:I

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 555
    const/4 v11, 0x4

    invoke-static {v11}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v9

    .line 556
    .local v9, "totalStep":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mCurBand:I

    const/4 v12, 0x4

    if-lt v11, v12, :cond_13

    .line 559
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvDW:Landroid/widget/ImageView;

    sget v12, Lcom/ts/MainUI/R$drawable;->radio_band_khz:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 568
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIsHaveMoveFreq:Z

    if-eqz v11, :cond_1

    .line 570
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMin:Landroid/widget/TextView;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mCurBand:I

    const/4 v14, 0x4

    if-ge v11, v14, :cond_14

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lcom/ts/main/radio/RadioMainActivity;->StepToFreq(IZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvAdjMax:Landroid/widget/TextView;

    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mCurBand:I

    const/4 v14, 0x4

    if-ge v11, v14, :cond_15

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lcom/ts/main/radio/RadioMainActivity;->StepToFreq(IZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    .end local v9    # "totalStep":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ts/main/radio/RadioMainActivity;->CheckFreqMove()V

    .line 578
    and-int/lit8 v11, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 580
    move-object/from16 v0, p0

    iget v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mCurBand:I

    const/4 v12, 0x4

    if-ge v11, v12, :cond_16

    .line 581
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    if-eqz v11, :cond_2

    .line 582
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    const-string v12, "%.2f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v15

    int-to-double v15, v15

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvMainFreq:Lcom/ts/other/CustomImgView;

    invoke-virtual {v11}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 594
    :cond_3
    and-int/lit8 v11, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 596
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    const/4 v11, 0x6

    if-lt v4, v11, :cond_17

    .line 601
    const/4 v11, 0x3

    invoke-static {v11}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v5

    .line 602
    .local v5, "mem":I
    if-lez v5, :cond_4

    const/4 v11, 0x7

    if-ge v5, v11, :cond_4

    .line 604
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    add-int/lit8 v12, v5, -0x1

    aget-object v11, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 608
    .end local v4    # "i":I
    .end local v5    # "mem":I
    :cond_4
    and-int/lit8 v11, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 610
    const/4 v11, 0x0

    const/4 v12, 0x6

    invoke-static {v12}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->updateMemFreq(II)V

    .line 613
    :cond_5
    and-int/lit8 v11, v10, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 615
    const/4 v11, 0x1

    const/4 v12, 0x7

    invoke-static {v12}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->updateMemFreq(II)V

    .line 618
    :cond_6
    and-int/lit8 v11, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 620
    const/4 v11, 0x2

    const/16 v12, 0x8

    invoke-static {v12}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->updateMemFreq(II)V

    .line 623
    :cond_7
    and-int/lit8 v11, v10, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 625
    const/4 v11, 0x3

    const/16 v12, 0x9

    invoke-static {v12}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->updateMemFreq(II)V

    .line 628
    :cond_8
    and-int/lit8 v11, v10, 0x40

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 630
    const/4 v11, 0x4

    const/16 v12, 0xa

    invoke-static {v12}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->updateMemFreq(II)V

    .line 633
    :cond_9
    and-int/lit16 v11, v10, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 635
    const/4 v11, 0x5

    const/16 v12, 0xb

    invoke-static {v12}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->updateMemFreq(II)V

    .line 638
    :cond_a
    const/high16 v11, 0x200000

    and-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 640
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvAf:Landroid/widget/ImageView;

    and-int/lit8 v12, v3, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->showView(Landroid/view/View;I)V

    .line 643
    :cond_b
    const/high16 v11, 0x400000

    and-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 645
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvTa:Landroid/widget/ImageView;

    and-int/lit8 v12, v3, 0x40

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->showView(Landroid/view/View;I)V

    .line 648
    :cond_c
    const/high16 v11, 0x800000

    and-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 650
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvTp:Landroid/widget/ImageView;

    and-int/lit16 v12, v3, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->showView(Landroid/view/View;I)V

    .line 653
    :cond_d
    const/high16 v11, 0x1000000

    and-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 655
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvEon:Landroid/widget/ImageView;

    and-int/lit8 v12, v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->showView(Landroid/view/View;I)V

    .line 658
    :cond_e
    and-int/lit16 v11, v10, 0x100

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 660
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvStR:Landroid/widget/ImageView;

    and-int/lit8 v12, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->showView(Landroid/view/View;I)V

    .line 663
    :cond_f
    and-int/lit16 v11, v10, 0x200

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 665
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvStS:Landroid/widget/ImageView;

    and-int/lit8 v12, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/ts/main/radio/RadioMainActivity;->showView(Landroid/view/View;I)V

    .line 668
    :cond_10
    const/high16 v11, 0x100000

    and-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 671
    const-string v11, "RadioMainActivity"

    const-string v12, "update & Radio.UD_PS"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mcPs:[C

    invoke-static {v11}, Lcom/yyw/ts70xhw/Radio;->GetPsName([C)I

    .line 673
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mcPs:[C

    const/4 v12, 0x0

    aget-char v11, v11, v12

    if-nez v11, :cond_18

    .line 675
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvMainFreq:Lcom/ts/other/CustomImgView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/ts/other/CustomImgView;->setVisibility(I)V

    .line 711
    :cond_11
    :goto_5
    const/high16 v11, 0x2000000

    and-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 713
    const v11, 0xff00

    and-int/2addr v11, v3

    shr-int/lit8 v6, v11, 0x8

    .line 714
    .local v6, "ptyNum":I
    const/16 v11, 0x1e

    if-ge v6, v11, :cond_1b

    if-lez v6, :cond_1b

    .line 716
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mcPty:[C

    invoke-static {v11, v6}, Lcom/yyw/ts70xhw/Radio;->GetPtyStr([CI)I

    .line 717
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvCurPty:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/main/radio/RadioMainActivity;->mcPty:[C

    invoke-static {v12}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    .end local v6    # "ptyNum":I
    :cond_12
    :goto_6
    return-void

    .line 565
    .restart local v9    # "totalStep":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvDW:Landroid/widget/ImageView;

    sget v12, Lcom/ts/MainUI/R$drawable;->radio_band_mhz:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 570
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 571
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 587
    .end local v9    # "totalStep":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    if-eqz v11, :cond_2

    .line 588
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 598
    .restart local v4    # "i":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mBtnFreq:[Lcom/ts/other/ParamButton;

    aget-object v11, v11, v4

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 596
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 681
    .end local v4    # "i":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvMainFreq:Lcom/ts/other/CustomImgView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/ts/other/CustomImgView;->setVisibility(I)V

    .line 683
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/main/radio/RadioMainActivity;->mcPs:[C

    const/4 v13, 0x0

    aget-char v12, v12, v13

    if-ne v11, v12, :cond_19

    .line 685
    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mcPs:[C

    const/4 v12, 0x1

    const/16 v13, 0x8

    invoke-direct {v8, v11, v12, v13}, Ljava/lang/String;-><init>([CII)V

    .line 686
    .local v8, "tmp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 687
    .local v7, "show":Ljava/lang/String;
    if-eqz v8, :cond_11

    if-eqz v7, :cond_11

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 688
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    const-string v11, "Test"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 693
    .end local v7    # "show":Ljava/lang/String;
    .end local v8    # "tmp":Ljava/lang/String;
    :cond_19
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ts/main/radio/RadioMainActivity;->mcPs:[C

    const/4 v13, 0x0

    aget-char v12, v12, v13

    if-ne v11, v12, :cond_1a

    .line 695
    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mcPs:[C

    const/4 v12, 0x1

    const/16 v13, 0x8

    invoke-direct {v8, v11, v12, v13}, Ljava/lang/String;-><init>([CII)V

    .line 696
    .restart local v8    # "tmp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 697
    .restart local v7    # "show":Ljava/lang/String;
    if-eqz v8, :cond_11

    if-eqz v7, :cond_11

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 698
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    const/high16 v12, -0x10000

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 704
    .end local v7    # "show":Ljava/lang/String;
    .end local v8    # "tmp":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvPs:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvFreq:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mIvMainFreq:Lcom/ts/other/CustomImgView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/ts/other/CustomImgView;->setVisibility(I)V

    goto/16 :goto_5

    .line 721
    .restart local v6    # "ptyNum":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ts/main/radio/RadioMainActivity;->mTvCurPty:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method protected setViewPos(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 762
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 763
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 764
    add-int/lit8 v1, p3, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 765
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 767
    return-void
.end method

.method protected showView(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "val"    # I

    .prologue
    .line 750
    invoke-virtual {p0, p2}, Lcom/ts/main/radio/RadioMainActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 758
    :goto_0
    return-void

    .line 756
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
