.class public Lcom/ts/MainUI/StTpms;
.super Ljava/lang/Object;
.source "StTpms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/MainUI/StTpms$TPMSDisp;,
        Lcom/ts/MainUI/StTpms$TPMSInfo;,
        Lcom/ts/MainUI/StTpms$TPMS_SAVE;
    }
.end annotation


# static fields
.field public static final PSK_MAX:I = 0x320

.field public static final PSK_MIN:I = 0xc8

.field static final TAG:Ljava/lang/String; = "StTpms"

.field public static final TEMP_HIGH:I = 0xc8

.field private static final TMPS_MAX_NUM:I = 0x8

.field public static final TPMS_HIGHPASK:I = 0x6

.field public static final TPMS_HiGHTEMP:I = 0x7

.field public static final TPMS_LEAK:I = 0x4

.field public static final TPMS_LOWPASK:I = 0x5

.field public static final TPMS_LOW_POWER:I = 0x2

.field public static final TPMS_NODATA:I = 0x1

.field public static final TPMS_NOERROR:I = 0x0

.field public static final TPMS_NO_SIGNAL:I = 0x3

.field private static final TPMS_SAVE_FILE:Ljava/lang/String; = "/mnt/sdcard/TsStorage/TPMS2.bin"

.field private static final TPMS_SAVE_PATH:Ljava/lang/String; = "/mnt/sdcard/TsStorage"

.field private static mStTpms:Lcom/ts/MainUI/StTpms; = null

.field static nDelay:I = 0x0

.field static nRet:I = 0x0

.field static nflag:I = 0x0

.field public static final study_ed:I = 0x0

.field public static final study_ing:I = 0x2

.field public static final study_start:I = 0x1

.field public static final tpms_left_back:I = 0x2

.field public static final tpms_left_front:I = 0x0

.field public static final tpms_right_back:I = 0x3

.field public static final tpms_right_front:I = 0x1


# instance fields
.field Buffer:[B

.field Cmd:[B

.field public DispOld:Lcom/ts/MainUI/StTpms$TPMSDisp;

.field ReadNum:I

.field TpmsBuf:Lcom/ts/MainUI/TsBuf;

.field public TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

.field nDelayNum:I

.field nDelayTime:I

.field nError:I

.field nNawStudy:I

.field nOldMode:I

.field nPlayNum:I

.field nStep:I

.field nTempData:[I

.field public tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/MainUI/StTpms;->mStTpms:Lcom/ts/MainUI/StTpms;

    .line 196
    const/4 v0, 0x0

    sput v0, Lcom/ts/MainUI/StTpms;->nRet:I

    .line 433
    const/16 v0, 0x64

    sput v0, Lcom/ts/MainUI/StTpms;->nDelay:I

    .line 434
    const/4 v0, 0x1

    sput v0, Lcom/ts/MainUI/StTpms;->nflag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/16 v2, 0xff

    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/ts/MainUI/StTpms;->nPlayNum:I

    .line 42
    iput v0, p0, Lcom/ts/MainUI/StTpms;->nStep:I

    .line 43
    iput v0, p0, Lcom/ts/MainUI/StTpms;->nDelayTime:I

    .line 44
    iput v0, p0, Lcom/ts/MainUI/StTpms;->nError:I

    .line 45
    iput v2, p0, Lcom/ts/MainUI/StTpms;->nNawStudy:I

    .line 46
    iput v0, p0, Lcom/ts/MainUI/StTpms;->nDelayNum:I

    .line 47
    new-instance v0, Lcom/ts/MainUI/StTpms$TPMSDisp;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/StTpms$TPMSDisp;-><init>(Lcom/ts/MainUI/StTpms;)V

    iput-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    .line 48
    new-instance v0, Lcom/ts/MainUI/StTpms$TPMSDisp;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/StTpms$TPMSDisp;-><init>(Lcom/ts/MainUI/StTpms;)V

    iput-object v0, p0, Lcom/ts/MainUI/StTpms;->DispOld:Lcom/ts/MainUI/StTpms$TPMSDisp;

    .line 51
    new-instance v0, Lcom/ts/MainUI/TsBuf;

    invoke-direct {v0, v3}, Lcom/ts/MainUI/TsBuf;-><init>(I)V

    iput-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    .line 52
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/ts/MainUI/StTpms;->Buffer:[B

    .line 53
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    .line 105
    new-instance v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/StTpms$TPMS_SAVE;-><init>(Lcom/ts/MainUI/StTpms;)V

    iput-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    .line 107
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    .line 446
    iput v2, p0, Lcom/ts/MainUI/StTpms;->nOldMode:I

    .line 7
    return-void
.end method

.method public static GetInstance()Lcom/ts/MainUI/StTpms;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/ts/MainUI/StTpms;->mStTpms:Lcom/ts/MainUI/StTpms;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/ts/MainUI/StTpms;

    invoke-direct {v0}, Lcom/ts/MainUI/StTpms;-><init>()V

    sput-object v0, Lcom/ts/MainUI/StTpms;->mStTpms:Lcom/ts/MainUI/StTpms;

    .line 102
    :cond_0
    sget-object v0, Lcom/ts/MainUI/StTpms;->mStTpms:Lcom/ts/MainUI/StTpms;

    return-object v0
.end method


# virtual methods
.method public CheckError()I
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 607
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 539
    :cond_0
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->nInvalid:I

    if-ne v3, v1, :cond_6

    .line 541
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->DispOld:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnV:I

    iget-object v4, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v4, v4, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnV:I

    if-eq v3, v4, :cond_1

    .line 543
    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->DispOld:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v2, v2, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnV:I

    iput v3, v2, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnV:I

    goto :goto_1

    .line 551
    :cond_1
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->DispOld:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnS:I

    iget-object v4, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v4, v4, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnS:I

    if-eq v3, v4, :cond_2

    .line 553
    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->DispOld:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v2, v2, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnS:I

    iput v2, v1, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnS:I

    .line 554
    const/4 v1, 0x2

    goto :goto_1

    .line 561
    :cond_2
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->DispOld:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnP:I

    iget-object v4, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v4, v4, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnP:I

    if-eq v3, v4, :cond_3

    .line 563
    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->DispOld:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v2, v2, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnP:I

    iput v2, v1, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnP:I

    .line 564
    const/4 v1, 0x3

    goto :goto_1

    .line 575
    :cond_3
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->npa:D

    iget-object v5, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v5, v5, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskLow:I

    int-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_4

    move v1, v2

    .line 577
    goto/16 :goto_1

    .line 584
    :cond_4
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->npa:D

    iget-object v5, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v5, v5, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskHigh:I

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_5

    .line 586
    const/4 v1, 0x5

    goto/16 :goto_1

    .line 593
    :cond_5
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->nTemp:I

    iget-object v4, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v4, v4, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempHigh:I

    if-le v3, v4, :cond_6

    .line 595
    const/4 v1, 0x6

    goto/16 :goto_1

    .line 537
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method CheckID()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 612
    const-string v1, "StTpms"

    const-string v2, "*******************CheckID************"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-array v0, v3, [B

    .line 614
    .local v0, "ubBuf":[B
    const/16 v1, 0x55

    aput-byte v1, v0, v4

    .line 615
    const/4 v1, 0x1

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    .line 616
    aput-byte v3, v0, v5

    .line 617
    const/4 v1, 0x3

    aput-byte v5, v0, v1

    .line 618
    const/4 v1, 0x4

    aput-byte v4, v0, v1

    .line 619
    const/4 v1, 0x5

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    .line 620
    invoke-static {v0, v3}, Lcom/yyw/ts70xhw/Iop;->UartSend([BI)I

    .line 621
    return-void
.end method

.method ClearCmd()V
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 361
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method CopyDataToSave()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nWriteFlag:I

    .line 115
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nOnOffFlag:I

    .line 116
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempDW:I

    .line 117
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempHigh:I

    .line 118
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskDW:I

    .line 119
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskHigh:I

    .line 120
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskLow:I

    .line 121
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nWarnTime:I

    .line 122
    return-void
.end method

.method CopySaveToData()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v2, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nWriteFlag:I

    aput v2, v0, v1

    .line 126
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v2, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nOnOffFlag:I

    aput v2, v0, v1

    .line 127
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v2, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempDW:I

    aput v2, v0, v1

    .line 128
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v2, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempHigh:I

    aput v2, v0, v1

    .line 129
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v2, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskDW:I

    aput v2, v0, v1

    .line 130
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v2, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskHigh:I

    aput v2, v0, v1

    .line 131
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v2, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskLow:I

    aput v2, v0, v1

    .line 132
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v2, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nWarnTime:I

    aput v2, v0, v1

    .line 134
    return-void
.end method

.method DealCmd6()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 242
    const-string v0, "StTpms"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DealCmd6 ok  Cmd[3 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cmd[4]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v0, v0, v5

    sparse-switch v0, :sswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 247
    :sswitch_0
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v0, v0, v6

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 250
    :sswitch_1
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v0, v0, v3

    iput v4, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    goto :goto_0

    .line 253
    :sswitch_2
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v0, v0, v7

    iput v4, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    goto :goto_0

    .line 256
    :sswitch_3
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v0, v0, v4

    iput v4, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    goto :goto_0

    .line 259
    :sswitch_4
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v0, v0, v5

    iput v4, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    goto :goto_0

    .line 266
    :sswitch_5
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v0, v0, v6

    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    .line 269
    :sswitch_6
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    goto :goto_0

    .line 272
    :sswitch_7
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v0, v0, v7

    iput v3, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    goto :goto_0

    .line 275
    :sswitch_8
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v0, v0, v4

    iput v3, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    goto :goto_0

    .line 278
    :sswitch_9
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v0, v0, v5

    iput v3, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    goto :goto_0

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x18 -> :sswitch_5
    .end sparse-switch

    .line 247
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x10 -> :sswitch_3
        0x11 -> :sswitch_4
    .end sparse-switch

    .line 266
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
    .end sparse-switch
.end method

.method DealCmd7()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x4

    .line 287
    const-string v0, "StTpms"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DealCmd7 ok  Cmd[3 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cmd[4]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cmd[5]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v1, v1, v4

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nID:I

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v1, v1, v4

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nID:I

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v1, v1, v4

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nID:I

    goto :goto_0

    .line 307
    :pswitch_3
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v1, v1, v4

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMSInfo;->nID:I

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method DealCmd8()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v10, 0x6

    const/4 v4, 0x1

    .line 314
    const-string v3, "StTpms"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DealCmd8 ok  Cmd[3 = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Cmd[4]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Cmd[5]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Cmd[6]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v2, -0x1

    .line 316
    .local v2, "ubIndex":B
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v3, v3, v9

    sparse-switch v3, :sswitch_data_0

    .line 331
    :goto_0
    const-string v3, "StTpms"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ubIndex="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v3, v3, v11

    and-int/lit16 v0, v3, 0xff

    .line 334
    .local v0, "nDataCMD4":I
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    const/4 v6, 0x5

    aget-byte v3, v3, v6

    and-int/lit16 v1, v3, 0xff

    .line 336
    .local v1, "nDataCMD5":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 338
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v2

    int-to-double v6, v0

    const-wide v8, 0x400b851eb851eb85L    # 3.44

    mul-double/2addr v6, v8

    iput-wide v6, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->npa:D

    .line 339
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v2

    add-int/lit8 v6, v1, -0x32

    iput v6, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->nTemp:I

    .line 340
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v6, v3, v2

    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v3, v3, v10

    and-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_2

    move v3, v4

    :goto_1
    iput v3, v6, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnP:I

    .line 341
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v6, v3, v2

    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v3, v3, v10

    and-int/lit8 v3, v3, 0x10

    if-lez v3, :cond_3

    move v3, v4

    :goto_2
    iput v3, v6, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnV:I

    .line 342
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v2

    iget-object v6, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v6, v6, v10

    and-int/lit8 v6, v6, 0x20

    if-lez v6, :cond_0

    move v5, v4

    :cond_0
    iput v5, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnS:I

    .line 343
    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v3, v3, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v3, v3, v2

    iput v4, v3, Lcom/ts/MainUI/StTpms$TPMSInfo;->nInvalid:I

    .line 345
    const-string v3, "StTpms"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TpmsDisp.info[ubIndex].npa="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v5, v5, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v5, v5, v2

    iget-wide v5, v5, Lcom/ts/MainUI/StTpms$TPMSInfo;->npa:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v3, "StTpms"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TpmsDisp.info[ubIndex].nTemp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v5, v5, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/ts/MainUI/StTpms$TPMSInfo;->nTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v3, "StTpms"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TpmsDisp.info[ubIndex].nWarnP="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v5, v5, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnP:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v3, "StTpms"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TpmsDisp.info[ubIndex].nWarnV="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v5, v5, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnV:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v3, "StTpms"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TpmsDisp.info[ubIndex].nWarnS="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v5, v5, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/ts/MainUI/StTpms$TPMSInfo;->nWarnS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v3, "StTpms"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TpmsDisp.info[ubIndex].nInvalid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v5, v5, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/ts/MainUI/StTpms$TPMSInfo;->nInvalid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    return-void

    .line 319
    .end local v0    # "nDataCMD4":I
    .end local v1    # "nDataCMD5":I
    :sswitch_0
    const/4 v2, 0x0

    .line 320
    goto/16 :goto_0

    .line 322
    :sswitch_1
    const/4 v2, 0x1

    .line 323
    goto/16 :goto_0

    .line 325
    :sswitch_2
    const/4 v2, 0x2

    .line 326
    goto/16 :goto_0

    .line 328
    :sswitch_3
    const/4 v2, 0x3

    goto/16 :goto_0

    .restart local v0    # "nDataCMD4":I
    .restart local v1    # "nDataCMD5":I
    :cond_2
    move v3, v5

    .line 340
    goto/16 :goto_1

    :cond_3
    move v3, v5

    .line 341
    goto/16 :goto_2

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch
.end method

.method DealData()I
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 365
    const/4 v4, 0x0

    .line 366
    .local v4, "ubLen":B
    new-array v5, v12, [B

    .line 367
    .local v5, "ubNum":[B
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    invoke-virtual {v7}, Lcom/ts/MainUI/TsBuf;->GetLen()I

    move-result v7

    const/4 v8, 0x6

    if-lt v7, v8, :cond_0

    .line 369
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    invoke-virtual {v7}, Lcom/ts/MainUI/TsBuf;->GetLen()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 431
    .end local v0    # "i":I
    :cond_0
    return v12

    .line 372
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->ClearCmd()V

    .line 373
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    iget-object v8, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    invoke-virtual {v7, v13, v8, v13}, Lcom/ts/MainUI/TsBuf;->GetData(I[BI)I

    .line 374
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    iget-object v8, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    invoke-virtual {v7, v12, v8, v12}, Lcom/ts/MainUI/TsBuf;->GetData(I[BI)I

    .line 375
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    iget-object v8, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    invoke-virtual {v7, v11, v8, v11}, Lcom/ts/MainUI/TsBuf;->GetData(I[BI)I

    .line 377
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v7, v7, v13

    const/16 v8, 0x55

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v7, v7, v12

    const/16 v8, -0x56

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v7, v7, v11

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v7, v7, v11

    const/16 v8, 0x9

    if-ge v7, v8, :cond_6

    .line 379
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    iget-object v8, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    invoke-virtual {v7, v11, v8, v11}, Lcom/ts/MainUI/TsBuf;->GetData(I[BI)I

    .line 380
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v4, v7, v11

    .line 381
    const/4 v6, 0x0

    .line 382
    .local v6, "ubSum":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    if-lt v2, v4, :cond_2

    .line 387
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v7, v7, v13

    and-int/lit16 v6, v7, 0xff

    .line 388
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_2
    add-int/lit8 v7, v4, -0x1

    if-lt v1, v7, :cond_3

    .line 392
    rem-int/lit16 v6, v6, 0xff

    .line 394
    const-string v7, "StTpms"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Check...ubSum=="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   Cmd[ubLen-1]=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    add-int/lit8 v10, v4, -0x1

    aget-byte v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    int-to-byte v7, v6

    iget-object v8, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    add-int/lit8 v9, v4, -0x1

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_5

    .line 397
    const-string v7, "StTpms"

    const-string v8, "TPMS Check ok"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v7, v7, v11

    packed-switch v7, :pswitch_data_0

    .line 410
    :goto_3
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_4
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v7, v7, v11

    if-lt v3, v7, :cond_4

    .line 369
    .end local v1    # "j":I
    .end local v2    # "k":I
    .end local v3    # "n":I
    .end local v6    # "ubSum":I
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 384
    .restart local v2    # "k":I
    .restart local v6    # "ubSum":I
    :cond_2
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    iget-object v8, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    invoke-virtual {v7, v2, v8, v2}, Lcom/ts/MainUI/TsBuf;->GetData(I[BI)I

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 390
    .restart local v1    # "j":I
    :cond_3
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->Cmd:[B

    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v6, v7

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 401
    :pswitch_0
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->DealCmd6()V

    goto :goto_3

    .line 404
    :pswitch_1
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->DealCmd7()V

    goto :goto_3

    .line 407
    :pswitch_2
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->DealCmd8()V

    goto :goto_3

    .line 412
    .restart local v3    # "n":I
    :cond_4
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    invoke-virtual {v7, v5}, Lcom/ts/MainUI/TsBuf;->Pop([B)I

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 417
    .end local v3    # "n":I
    :cond_5
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    invoke-virtual {v7, v5}, Lcom/ts/MainUI/TsBuf;->Pop([B)I

    .line 418
    const-string v7, "StTpms"

    const-string v8, "TPMS Check Faile"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 426
    .end local v1    # "j":I
    .end local v2    # "k":I
    .end local v6    # "ubSum":I
    :cond_6
    iget-object v7, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    invoke-virtual {v7, v5}, Lcom/ts/MainUI/TsBuf;->Pop([B)I

    goto :goto_5

    .line 398
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public Inint(I)V
    .locals 1
    .param p1, "nParat"    # I

    .prologue
    .line 437
    const/4 v0, 0x1

    sput v0, Lcom/ts/MainUI/StTpms;->nflag:I

    .line 438
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->InintData()V

    .line 439
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->ReadSaveData()V

    .line 444
    return-void
.end method

.method InintCom()I
    .locals 2

    .prologue
    .line 187
    const/16 v0, 0x4b00

    invoke-static {v0}, Lcom/yyw/ts70xhw/Iop;->UartOpen(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "StTpms"

    const-string v1, "JtxTpms*]JtxTpms.stTpmsCom error "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 192
    :cond_0
    const-string v0, "StTpms"

    const-string v1, "JtxTpms*]JtxTpms.stTpmsCom OK "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method InintData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iput v1, p0, Lcom/ts/MainUI/StTpms;->nStep:I

    .line 179
    iput v1, p0, Lcom/ts/MainUI/StTpms;->nDelayTime:I

    .line 180
    iput v1, p0, Lcom/ts/MainUI/StTpms;->nError:I

    .line 181
    const/16 v0, 0xff

    iput v0, p0, Lcom/ts/MainUI/StTpms;->nNawStudy:I

    .line 182
    iput v1, p0, Lcom/ts/MainUI/StTpms;->nDelayNum:I

    .line 183
    iput v1, p0, Lcom/ts/MainUI/StTpms;->nPlayNum:I

    .line 184
    return-void
.end method

.method public MainFunc(I)I
    .locals 5
    .param p1, "nParat"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/16 v0, 0xff

    const/4 v1, 0x1

    .line 450
    iget v2, p0, Lcom/ts/MainUI/StTpms;->nOldMode:I

    if-eq v2, p1, :cond_1

    .line 453
    if-ne p1, v4, :cond_3

    .line 455
    const/16 v2, 0xfe

    iput v2, p0, Lcom/ts/MainUI/StTpms;->nStep:I

    .line 461
    :cond_0
    :goto_0
    iput p1, p0, Lcom/ts/MainUI/StTpms;->nOldMode:I

    .line 464
    :cond_1
    iget v2, p0, Lcom/ts/MainUI/StTpms;->nStep:I

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    .line 531
    :sswitch_0
    return v0

    .line 457
    :cond_3
    iget v2, p0, Lcom/ts/MainUI/StTpms;->nOldMode:I

    if-ne v2, v4, :cond_0

    if-nez p1, :cond_0

    .line 459
    invoke-virtual {p0, v3}, Lcom/ts/MainUI/StTpms;->Inint(I)V

    goto :goto_0

    .line 467
    :sswitch_1
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->InintCom()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 470
    iget v0, p0, Lcom/ts/MainUI/StTpms;->nStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/MainUI/StTpms;->nStep:I

    goto :goto_1

    .line 474
    :cond_4
    iput v0, p0, Lcom/ts/MainUI/StTpms;->nStep:I

    goto :goto_1

    .line 479
    :sswitch_2
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->ReadCom()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 481
    iget v0, p0, Lcom/ts/MainUI/StTpms;->nStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/MainUI/StTpms;->nStep:I

    goto :goto_1

    .line 487
    :sswitch_3
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->DealData()I

    .line 488
    iput v1, p0, Lcom/ts/MainUI/StTpms;->nStep:I

    .line 490
    sget v2, Lcom/ts/MainUI/StTpms;->nDelay:I

    if-lez v2, :cond_5

    .line 492
    sget v2, Lcom/ts/MainUI/StTpms;->nDelay:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/ts/MainUI/StTpms;->nDelay:I

    .line 494
    :cond_5
    sget v2, Lcom/ts/MainUI/StTpms;->nDelay:I

    if-nez v2, :cond_2

    .line 496
    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v2, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nOnOffFlag:I

    if-nez v2, :cond_6

    .line 498
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->CheckError()I

    .line 500
    :cond_6
    iget v2, p0, Lcom/ts/MainUI/StTpms;->nDelayNum:I

    if-lez v2, :cond_2

    .line 502
    iget v2, p0, Lcom/ts/MainUI/StTpms;->nDelayNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ts/MainUI/StTpms;->nDelayNum:I

    .line 503
    iget v2, p0, Lcom/ts/MainUI/StTpms;->nDelayNum:I

    if-nez v2, :cond_2

    .line 505
    iget v2, p0, Lcom/ts/MainUI/StTpms;->nNawStudy:I

    if-eq v2, v0, :cond_2

    .line 507
    iget v0, p0, Lcom/ts/MainUI/StTpms;->nNawStudy:I

    invoke-virtual {p0, v0}, Lcom/ts/MainUI/StTpms;->UnStudy(I)V

    goto :goto_1

    .line 521
    :sswitch_4
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->SaveData()V

    .line 522
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->UartClose()I

    .line 523
    sput v3, Lcom/ts/MainUI/StTpms;->nflag:I

    .line 524
    iput v0, p0, Lcom/ts/MainUI/StTpms;->nStep:I

    goto :goto_1

    .line 464
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xfe -> :sswitch_4
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method ReadCom()I
    .locals 4

    .prologue
    .line 200
    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->Buffer:[B

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/yyw/ts70xhw/Iop;->UartRead([BI)I

    move-result v1

    iput v1, p0, Lcom/ts/MainUI/StTpms;->ReadNum:I

    .line 201
    iget v1, p0, Lcom/ts/MainUI/StTpms;->ReadNum:I

    if-lez v1, :cond_0

    .line 203
    const/4 v1, 0x1

    sput v1, Lcom/ts/MainUI/StTpms;->nRet:I

    .line 204
    const-string v1, "StTpms"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JtxTpms ReadDtaNum = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ts/MainUI/StTpms;->ReadNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/ts/MainUI/StTpms;->ReadNum:I

    if-lt v0, v1, :cond_1

    .line 237
    .end local v0    # "i":I
    :cond_0
    sget v1, Lcom/ts/MainUI/StTpms;->nRet:I

    return v1

    .line 207
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->TpmsBuf:Lcom/ts/MainUI/TsBuf;

    iget-object v2, p0, Lcom/ts/MainUI/StTpms;->Buffer:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/ts/MainUI/TsBuf;->Push(B)I

    .line 208
    const-string v1, "StTpms"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReadDta "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/MainUI/StTpms;->Buffer:[B

    aget-byte v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method ReadSaveData()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "/mnt/sdcard/TsStorage/TPMS2.bin"

    invoke-static {v0}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "/mnt/sdcard/TsStorage/TPMS2.bin"

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    invoke-static {v0, v1}, Lcom/ts/MainUI/TsFile;->reader(Ljava/lang/String;[I)V

    .line 155
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->CopyDataToSave()V

    .line 156
    const-string v0, "StTpms"

    const-string v1, "ReadSaveData ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v0, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nWriteFlag:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->ResetData()V

    .line 169
    :cond_0
    return-void

    .line 160
    :cond_1
    const-string v0, "/mnt/sdcard/TsStorage"

    invoke-static {v0}, Lcom/ts/MainUI/TsFile;->NewDir(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->ResetData()V

    .line 162
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->SaveData()V

    .line 163
    const-string v0, "StTpms"

    const-string v1, "first create the file"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method ResetData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nWriteFlag:I

    .line 139
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iput v2, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempDW:I

    .line 140
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    const/16 v1, 0x3c

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempHigh:I

    .line 141
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iput v2, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskDW:I

    .line 142
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    const/16 v1, 0x12c

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskHigh:I

    .line 143
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    const/16 v1, 0xa0

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskLow:I

    .line 144
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iput v2, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nOnOffFlag:I

    .line 145
    iget-object v0, p0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iput v2, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nWarnTime:I

    .line 146
    return-void
.end method

.method SaveData()V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/ts/MainUI/StTpms;->CopySaveToData()V

    .line 173
    const-string v0, "/mnt/sdcard/TsStorage/TPMS2.bin"

    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->nTempData:[I

    invoke-static {v0, v1}, Lcom/ts/MainUI/TsFile;->writer(Ljava/lang/String;[I)V

    .line 174
    return-void
.end method

.method public Study(I)V
    .locals 8
    .param p1, "nType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 671
    const-string v1, "StTpms"

    const-string v2, "*******************Study************"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget v1, p0, Lcom/ts/MainUI/StTpms;->nNawStudy:I

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 674
    iget v1, p0, Lcom/ts/MainUI/StTpms;->nNawStudy:I

    invoke-virtual {p0, v1}, Lcom/ts/MainUI/StTpms;->UnStudy(I)V

    .line 676
    :cond_0
    iput p1, p0, Lcom/ts/MainUI/StTpms;->nNawStudy:I

    .line 677
    const/16 v1, 0x2710

    iput v1, p0, Lcom/ts/MainUI/StTpms;->nDelayNum:I

    .line 678
    new-array v0, v6, [B

    .line 679
    .local v0, "ubBuf":[B
    const/16 v1, 0x55

    aput-byte v1, v0, v7

    .line 680
    const/16 v1, -0x56

    aput-byte v1, v0, v3

    .line 681
    const/4 v1, 0x2

    aput-byte v6, v0, v1

    .line 682
    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 683
    packed-switch p1, :pswitch_data_0

    .line 713
    :goto_0
    invoke-static {v0, v6}, Lcom/yyw/ts70xhw/Iop;->UartSend([BI)I

    .line 714
    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v1, v1, p1

    iput v3, v1, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    .line 715
    return-void

    .line 688
    :pswitch_0
    aput-byte v7, v0, v4

    .line 689
    const/4 v1, -0x8

    aput-byte v1, v0, v5

    goto :goto_0

    .line 694
    :pswitch_1
    aput-byte v3, v0, v4

    .line 695
    const/4 v1, -0x7

    aput-byte v1, v0, v5

    goto :goto_0

    .line 700
    :pswitch_2
    const/16 v1, 0x10

    aput-byte v1, v0, v4

    .line 701
    const/16 v1, -0x18

    aput-byte v1, v0, v5

    goto :goto_0

    .line 706
    :pswitch_3
    const/16 v1, 0x11

    aput-byte v1, v0, v4

    .line 707
    const/16 v1, -0x17

    aput-byte v1, v0, v5

    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public UnStudy(I)V
    .locals 8
    .param p1, "nType"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 625
    const/16 v1, 0xff

    if-ne p1, v1, :cond_0

    .line 668
    :goto_0
    return-void

    .line 629
    :cond_0
    const-string v1, "StTpms"

    const-string v2, "*******************UnStudy************"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-array v0, v5, [B

    .line 631
    .local v0, "ubBuf":[B
    const/16 v1, 0x55

    aput-byte v1, v0, v6

    .line 632
    const/16 v1, -0x56

    aput-byte v1, v0, v7

    .line 633
    const/4 v1, 0x2

    aput-byte v5, v0, v1

    .line 634
    const/4 v1, 0x3

    aput-byte v5, v0, v1

    .line 635
    packed-switch p1, :pswitch_data_0

    .line 665
    :goto_1
    invoke-static {v0, v5}, Lcom/yyw/ts70xhw/Iop;->UartSend([BI)I

    .line 666
    const/16 v1, 0xff

    iput v1, p0, Lcom/ts/MainUI/StTpms;->nNawStudy:I

    .line 667
    iget-object v1, p0, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v1, v1, p1

    iput v6, v1, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    goto :goto_0

    .line 640
    :pswitch_0
    aput-byte v6, v0, v3

    .line 641
    const/4 v1, -0x1

    aput-byte v1, v0, v4

    goto :goto_1

    .line 646
    :pswitch_1
    aput-byte v7, v0, v3

    .line 647
    const/4 v1, -0x2

    aput-byte v1, v0, v4

    goto :goto_1

    .line 652
    :pswitch_2
    const/16 v1, 0x10

    aput-byte v1, v0, v3

    .line 653
    const/16 v1, -0x11

    aput-byte v1, v0, v4

    goto :goto_1

    .line 658
    :pswitch_3
    const/16 v1, 0x11

    aput-byte v1, v0, v3

    .line 659
    const/16 v1, -0x12

    aput-byte v1, v0, v4

    goto :goto_1

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
