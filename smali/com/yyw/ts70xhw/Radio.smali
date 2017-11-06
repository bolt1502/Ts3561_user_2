.class public Lcom/yyw/ts70xhw/Radio;
.super Ljava/lang/Object;
.source "Radio.java"


# static fields
.field public static final AFS_FLAG:I = 0x60000

.field public static final AF_FLAG:I = 0x20

.field public static final ALM_FLAG:I = 0x10000

.field public static final EON_FLAG:I = 0x10

.field public static final LOC_FLAG:I = 0x4

.field public static final MEM1F:I = 0x6

.field public static final MEM2F:I = 0x7

.field public static final MEM3F:I = 0x8

.field public static final MEM4F:I = 0x9

.field public static final MEM5F:I = 0xa

.field public static final MEM6F:I = 0xb

.field public static final MEMNO:I = 0x3

.field public static final MFREQ:I = 0x1

.field public static final MUT_FLAG:I = 0x8

.field public static final NBAND:I = 0x2

.field public static final NSETP:I = 0x5

.field public static final PTY_FLAG:I = 0xff00

.field public static final RAD_AF_KEY:I = 0x1

.field public static final RAD_AMS_KEY:I = 0xb

.field public static final RAD_BND_KEY:I = 0x5

.field public static final RAD_BND_QUITRDS:I = 0x1e

.field public static final RAD_FFF_KEY:I = 0x7

.field public static final RAD_FXX_KEY:I = 0x6

.field public static final RAD_INT_KEY:I = 0xc

.field public static final RAD_MLOAD_KEY:I = 0x9

.field public static final RAD_MSAVE_KEY:I = 0xa

.field public static final RAD_NO_KEY:I = 0x0

.field public static final RAD_PTY_KEY:I = 0x3

.field public static final RAD_REG_KEY:I = 0x4

.field public static final RAD_SSS_KEY:I = 0x8

.field public static final RAD_TA_KEY:I = 0x2

.field public static final RDS_PI:I = 0x2

.field public static final RDS_REG:I = 0x1

.field public static final RDS_RT:I = 0x5

.field public static final RDS_TA:I = 0x3

.field public static final RDS_VL:I = 0x4

.field public static final STR_FLAG:I = 0x1

.field public static final STS_FLAG:I = 0x2

.field public static final TA_FLAG:I = 0x40

.field public static final TP_FLAG:I = 0x80

.field public static final TSTEP:I = 0x4

.field public static final UD_AF:I = 0x200000

.field public static final UD_EON:I = 0x1000000

.field public static final UD_LOC:I = 0x400

.field public static final UD_MEM1:I = 0x4

.field public static final UD_MEM2:I = 0x8

.field public static final UD_MEM3:I = 0x10

.field public static final UD_MEM4:I = 0x20

.field public static final UD_MEM5:I = 0x40

.field public static final UD_MEM6:I = 0x80

.field public static final UD_MEMNO:I = 0x2

.field public static final UD_MFREQ:I = 0x1

.field public static final UD_MUT:I = 0x800

.field public static final UD_PS:I = 0x100000

.field public static final UD_PTY:I = 0x2000000

.field public static final UD_STR:I = 0x100

.field public static final UD_STS:I = 0x200

.field public static final UD_TA:I = 0x400000

.field public static final UD_TP:I = 0x800000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "ts70xhw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetCurrentFreq()I
.end method

.method public static native GetDisp(I)I
.end method

.method public static native GetDispFlag()I
.end method

.method public static native GetDispUpdate()I
.end method

.method public static native GetMemPsName(I[C)I
.end method

.method public static native GetPsName([C)I
.end method

.method public static native GetPtyStr([CI)I
.end method

.method public static native RdsAf()I
.end method

.method public static native RdsGetSetting(I)I
.end method

.method public static native RdsPty(I)I
.end method

.method public static native RdsSetSetting(II)I
.end method

.method public static native RdsTa()I
.end method

.method public static native StepToFreq(I)I
.end method

.method public static native TuneAms()I
.end method

.method public static native TuneBand(I)I
.end method

.method public static native TuneBandAm()I
.end method

.method public static native TuneBandFm()I
.end method

.method public static native TuneBandFq(II)I
.end method

.method public static native TuneBandSl(I)I
.end method

.method public static native TuneFset(I)I
.end method

.method public static native TuneFsset(I)I
.end method

.method public static native TuneInt()I
.end method

.method public static native TuneLoset()I
.end method

.method public static native TuneMnext()I
.end method

.method public static native TuneMprev()I
.end method

.method public static native TuneMsave(I)I
.end method

.method public static native TuneMset(I)I
.end method

.method public static native TuneSearch(I)I
.end method

.method public static native TuneStep(I)I
.end method

.method public static native TuneStset()I
.end method

.method public static native TuneTask(I)I
.end method
