.class public Lcom/ts/MainUI/CstTv;
.super Ljava/lang/Object;
.source "CstTv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/MainUI/CstTv$TV_SAVE;
    }
.end annotation


# static fields
.field private static final AddPllWr:I = 0x63

.field private static final CHECK_DELAY:I = 0x14

.field private static final FRE_ADD:I = 0x30a

.field private static final FRE_JIAN:I = 0x64

.field private static final FRE_MAX:I = 0x4371

.field private static final FRE_MIN:I = 0x3c5

.field private static final FRE_STEP:I = 0x4

.field private static final IF_address:I = 0x43

.field private static final INVALID_CHANNEL_NUM:I = -0x1

.field private static final LOCK_MIN:I = 0x4

.field private static final MUTE_DELAY_TIME:I = 0x1e

.field private static final NTSC_VHFH_MAX:I = 0x2161

.field private static final NTSC_VHFL_MAX:I = 0xae1

.field private static final PAL_BG_VHFH_MAX:I = 0x2111

.field private static final PAL_BG_VHFL_MAX:I = 0xaf5

.field private static final PAL_DK_VHFH_MAX:I = 0x2161

.field private static final PAL_DK_VHFL_MAX:I = 0xaa5

.field private static final PAL_I_VHFH_MAX:I = 0x2111

.field private static final PAL_I_VHFL_MAX:I = 0xaf5

.field private static final PLLCON1:I = 0x88

.field private static final PLLCON2_UHF:I = 0x8

.field private static final PLLCON2_VHF_H:I = 0x2

.field private static final PLLCON2_VHF_L:I = 0x1

.field private static final SECAM_BG_VHFH_MAX:I = 0x2111

.field private static final SECAM_BG_VHFL_MAX:I = 0xaf5

.field private static final SECAM_DK_VHFH_MAX:I = 0x2161

.field private static final SECAM_DK_VHFL_MAX:I = 0xaa5

.field private static final SECAM_L_VHFH_MAX:I = 0x2161

.field private static final SECAM_L_VHFL_MAX:I = 0xaa5

.field private static final Sub_Add_B_Data:I = 0x0

.field private static final Sub_Add_C_Data:I = 0x1

.field private static final Sub_Add_E_Data:I = 0x2

.field static final TAG:Ljava/lang/String; = "CstTv"

.field private static final TV_AUTO_SEARCH:I = 0x4

.field private static final TV_DELAY_CHECK:I = 0x5

.field private static final TV_FORMAT_MAX:I = 0x8

.field private static final TV_ININT:I = 0x0

.field private static final TV_LOCK_OK:I = 0x6

.field private static final TV_MAX_NUM:I = 0x64

.field private static final TV_MODE_CHG:I = 0x1

.field private static final TV_NORMAL:I = 0x7

.field private static final TV_NTSC_MN:I = 0x7

.field private static final TV_PAL_BG:I = 0x2

.field private static final TV_PAL_DK:I = 0x1

.field private static final TV_PAL_I:I = 0x0

.field private static final TV_PAL_M:I = 0x3

.field private static final TV_PAL_N:I = 0x4

.field private static final TV_POWER_E:I = 0xff

.field private static final TV_POWER_S:I = 0xfe

.field private static final TV_SAVE_FILE:Ljava/lang/String; = "/mnt/sdcard/TsStorage/atv.bin"

.field private static final TV_SAVE_PATH:Ljava/lang/String; = "/mnt/sdcard/TsStorage"

.field private static final TV_SAVE_SIZE:I = 0x67

.field private static final TV_SECAM_BG:I = 0x6

.field private static final TV_SECAM_DK:I = 0x5

.field private static final TV_STEP_MODE:I = 0x3

.field private static final TV_WATCH_MODE:I = 0x2

.field private static mCstTv:Lcom/ts/MainUI/CstTv;

.field static noldMode:I

.field static num:I


# instance fields
.field FreP:I

.field NawFp:I

.field TvState:I

.field bAutoSearch:Z

.field delaynum:I

.field mEvc:Lcom/ts/MainUI/Evc;

.field m_B:I

.field m_C:I

.field m_E:I

.field public nCurNum:I

.field nMuteDelay:I

.field nResetChanel:[D

.field nTempData:[I

.field public tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, -0x1

    sput v0, Lcom/ts/MainUI/CstTv;->noldMode:I

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/MainUI/CstTv;->mCstTv:Lcom/ts/MainUI/CstTv;

    .line 157
    const/4 v0, 0x0

    sput v0, Lcom/ts/MainUI/CstTv;->num:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/16 v0, 0x64

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 106
    iput-object v0, p0, Lcom/ts/MainUI/CstTv;->nResetChanel:[D

    .line 120
    const/16 v0, 0x67

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ts/MainUI/CstTv;->nTempData:[I

    .line 122
    new-instance v0, Lcom/ts/MainUI/CstTv$TV_SAVE;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/CstTv$TV_SAVE;-><init>(Lcom/ts/MainUI/CstTv;)V

    iput-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    .line 143
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/MainUI/CstTv;->mEvc:Lcom/ts/MainUI/Evc;

    .line 695
    const/4 v0, 0x7

    iput v0, p0, Lcom/ts/MainUI/CstTv;->NawFp:I

    .line 9
    return-void

    .line 91
    :array_0
    .array-data 8
        0x4048200000000000L    # 48.25
        0x404ce00000000000L    # 57.75
        0x4050700000000000L    # 65.75
        0x4053500000000000L    # 77.25
        0x4055500000000000L    # 85.25
        0x405c100000000000L    # 112.25
        0x405e100000000000L    # 120.25
        0x4060080000000000L    # 128.25
        0x4061080000000000L    # 136.25
        0x4062080000000000L    # 144.25
        0x4063080000000000L    # 152.25
        0x4064080000000000L    # 160.25
        0x4065080000000000L    # 168.25
        0x4066080000000000L    # 176.25
        0x4067080000000000L    # 184.25
        0x4068080000000000L    # 192.25
        0x4069080000000000L    # 200.25
        0x406a080000000000L    # 208.25
        0x406b080000000000L    # 216.25
        0x406c080000000000L    # 224.25
        0x406d080000000000L    # 232.25
        0x406e080000000000L    # 240.25
        0x406f080000000000L    # 248.25
        0x4070040000000000L    # 256.25
        0x4070840000000000L    # 264.25
        0x4071040000000000L    # 272.25
        0x4071840000000000L    # 280.25
        0x4072040000000000L    # 288.25
        0x4072840000000000L    # 296.25
        0x4073040000000000L    # 304.25
        0x4073840000000000L    # 312.25
        0x4074040000000000L    # 320.25
        0x4074840000000000L    # 328.25
        0x4075040000000000L    # 336.25
        0x4075840000000000L    # 344.25
        0x4076040000000000L    # 352.25
        0x4076840000000000L    # 360.25
        0x4077040000000000L    # 368.25
        0x4077840000000000L    # 376.25
        0x4078040000000000L    # 384.25
        0x4078840000000000L    # 392.25
        0x4079040000000000L    # 400.25
        0x4079840000000000L    # 408.25
        0x407a040000000000L    # 416.25
        0x407a840000000000L    # 424.25
        0x407b040000000000L    # 432.25
        0x407b840000000000L    # 440.25
        0x407c040000000000L    # 448.25
        0x407c840000000000L    # 456.25
        0x407d040000000000L    # 464.25
        0x407d740000000000L    # 471.25
        0x407df40000000000L    # 479.25
        0x407e740000000000L    # 487.25
        0x407ef40000000000L    # 495.25
        0x407f740000000000L    # 503.25
        0x407ff40000000000L    # 511.25
        0x40803a0000000000L    # 519.25
        0x40807a0000000000L    # 527.25
        0x4080ba0000000000L    # 535.25
        0x4080fa0000000000L    # 543.25
        0x40813a0000000000L    # 551.25
        0x40817a0000000000L    # 559.25
        0x4082fa0000000000L    # 607.25
        0x40833a0000000000L    # 615.25
        0x40837a0000000000L    # 623.25
        0x4083ba0000000000L    # 631.25
        0x4083fa0000000000L    # 639.25
        0x40843a0000000000L    # 647.25
        0x40847a0000000000L    # 655.25
        0x4084ba0000000000L    # 663.25
        0x4084fa0000000000L    # 671.25
        0x40853a0000000000L    # 679.25
        0x40857a0000000000L    # 687.25
        0x4085ba0000000000L    # 695.25
        0x4085fa0000000000L    # 703.25
        0x40863a0000000000L    # 711.25
        0x40867a0000000000L    # 719.25
        0x4086ba0000000000L    # 727.25
        0x4086fa0000000000L    # 735.25
        0x40873a0000000000L    # 743.25
        0x40877a0000000000L    # 751.25
        0x4087ba0000000000L    # 759.25
        0x4087fa0000000000L    # 767.25
        0x40883a0000000000L    # 775.25
        0x40887a0000000000L    # 783.25
        0x4088ba0000000000L    # 791.25
        0x4088fa0000000000L    # 799.25
        0x40893a0000000000L    # 807.25
        0x40897a0000000000L    # 815.25
        0x4089ba0000000000L    # 823.25
        0x4089fa0000000000L    # 831.25
        0x408a3a0000000000L    # 839.25
        0x408a7a0000000000L    # 847.25
        0x408aba0000000000L    # 855.25
        0x408ac20000000000L    # 856.25
        0x408ad20000000000L    # 858.25
        0x408ae20000000000L    # 860.25
        0x408aea0000000000L    # 861.25
        0x408af20000000000L    # 862.25
        0x408afa0000000000L    # 863.25
    .end array-data
.end method

.method public static GetInstance()Lcom/ts/MainUI/CstTv;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/ts/MainUI/CstTv;->mCstTv:Lcom/ts/MainUI/CstTv;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/ts/MainUI/CstTv;

    invoke-direct {v0}, Lcom/ts/MainUI/CstTv;-><init>()V

    sput-object v0, Lcom/ts/MainUI/CstTv;->mCstTv:Lcom/ts/MainUI/CstTv;

    .line 151
    :cond_0
    sget-object v0, Lcom/ts/MainUI/CstTv;->mCstTv:Lcom/ts/MainUI/CstTv;

    return-object v0
.end method


# virtual methods
.method public AutoSearch()V
    .locals 2

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->IsInintOK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->ResetData()V

    .line 536
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    const/4 v1, -0x1

    iput v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    .line 537
    const/4 v0, 0x4

    iput v0, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-boolean v0, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->StopAutoSearch()V

    goto :goto_0
.end method

.method ChgChannel()V
    .locals 3

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    if-eqz v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->IsInintOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    .line 844
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 846
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    .line 848
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 849
    const-string v0, "CstTv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChgChannel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public ChgMode(B)V
    .locals 3
    .param p1, "ubMode"    # B

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    if-eqz v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->IsInintOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    const/16 v0, 0x8

    if-ge p1, v0, :cond_2

    .line 827
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iput p1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    .line 829
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 830
    const-string v0, "CstTv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChgMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method ClearTvMute()V
    .locals 2

    .prologue
    .line 394
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nMuteDelay:I

    if-lez v0, :cond_0

    .line 396
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nMuteDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ts/MainUI/CstTv;->nMuteDelay:I

    .line 397
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nMuteDelay:I

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->mEvc:Lcom/ts/MainUI/Evc;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_popmute_clr(I)V

    .line 402
    :cond_0
    return-void
.end method

.method CopyDataToBuf()V
    .locals 4

    .prologue
    .line 568
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->nTempData:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v3, v3, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    aput v3, v1, v2

    .line 569
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->nTempData:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v3, v3, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    aput v3, v1, v2

    .line 570
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->nTempData:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v3, v3, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    aput v3, v1, v2

    .line 571
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 575
    return-void

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->nTempData:[I

    add-int/lit8 v2, v0, 0x3

    iget-object v3, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v3, v3, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    aget v3, v3, v0

    aput v3, v1, v2

    .line 571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method CopyDataToSave()V
    .locals 4

    .prologue
    .line 578
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->nTempData:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    .line 579
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->nTempData:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    .line 580
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->nTempData:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iput v2, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    .line 581
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 585
    return-void

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v1, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->nTempData:[I

    add-int/lit8 v3, v0, 0x3

    aget v2, v2, v3

    aput v2, v1, v0

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method DealNext()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 744
    iget-boolean v1, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    if-eqz v1, :cond_2

    .line 746
    iget v1, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    const/16 v2, 0x4371

    if-ge v1, v2, :cond_0

    .line 748
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 749
    const/4 v0, 0x3

    iput v0, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 750
    const/4 v0, 0x1

    .line 775
    :goto_0
    return v0

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v1, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 757
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v1, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 758
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iput v0, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    .line 765
    :goto_1
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->WriteChanel()V

    .line 766
    iput v3, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 767
    iput-boolean v0, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    goto :goto_0

    .line 762
    :cond_1
    const/16 v1, 0x3c5

    iput v1, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 763
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iput v0, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    goto :goto_1

    .line 773
    :cond_2
    iput v3, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    goto :goto_0
.end method

.method DelaCur()V
    .locals 3

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    if-eqz v0, :cond_4

    .line 700
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    .line 703
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v1, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    iget v2, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    aput v2, v0, v1

    .line 704
    iget v0, p0, Lcom/ts/MainUI/CstTv;->FreP:I

    iput v0, p0, Lcom/ts/MainUI/CstTv;->NawFp:I

    .line 741
    :goto_0
    return-void

    .line 707
    :cond_1
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v1, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    .line 709
    iget v0, p0, Lcom/ts/MainUI/CstTv;->FreP:I

    iget v1, p0, Lcom/ts/MainUI/CstTv;->NawFp:I

    if-ge v0, v1, :cond_2

    .line 711
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v1, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    iget v2, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    aput v2, v0, v1

    .line 713
    const-string v0, "CstTv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DelaCur  please  NawFp"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/MainUI/CstTv;->NawFp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FreP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ts/MainUI/CstTv;->FreP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v0, "CstTv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DelaCur   new="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nCurNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget v0, p0, Lcom/ts/MainUI/CstTv;->FreP:I

    iput v0, p0, Lcom/ts/MainUI/CstTv;->NawFp:I

    goto :goto_0

    .line 722
    :cond_2
    const-string v0, "CstTv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DelaCur  false  NawFp"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/MainUI/CstTv;->NawFp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FreP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ts/MainUI/CstTv;->FreP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 729
    :cond_3
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    .line 730
    const-string v0, "CstTv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DelaCur  true  new="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nCurNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v1, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    iget v2, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    aput v2, v0, v1

    .line 732
    iget v0, p0, Lcom/ts/MainUI/CstTv;->FreP:I

    iput v0, p0, Lcom/ts/MainUI/CstTv;->NawFp:I

    goto/16 :goto_0

    .line 739
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    goto/16 :goto_0
.end method

.method GetCurFre()I
    .locals 4

    .prologue
    const/16 v3, 0x3c5

    .line 405
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    const/16 v1, 0x4371

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    if-ge v0, v3, :cond_1

    .line 407
    :cond_0
    const-string v0, "CstTv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetCurFre()  nCurNum"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput v3, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 410
    :cond_1
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    add-int/lit16 v0, v0, 0x30a

    return v0
.end method

.method public GetCurMode()I
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    return v0
.end method

.method GetVhl()I
    .locals 3

    .prologue
    .line 414
    const/4 v1, 0x0

    .line 415
    .local v1, "vhl_lmax":I
    const/4 v0, 0x0

    .line 416
    .local v0, "vhl_hmax":I
    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    packed-switch v2, :pswitch_data_0

    .line 452
    :goto_0
    iget v2, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    if-gt v2, v1, :cond_0

    .line 453
    const/4 v2, 0x1

    .line 457
    :goto_1
    return v2

    .line 419
    :pswitch_0
    const/16 v1, 0xaf5

    .line 420
    const/16 v0, 0x2111

    .line 421
    goto :goto_0

    .line 423
    :pswitch_1
    const/16 v1, 0xaf5

    .line 424
    const/16 v0, 0x2111

    .line 425
    goto :goto_0

    .line 427
    :pswitch_2
    const/16 v1, 0xaa5

    .line 428
    const/16 v0, 0x2161

    .line 429
    goto :goto_0

    .line 431
    :pswitch_3
    const/16 v1, 0xaa5

    .line 432
    const/16 v0, 0x2161

    .line 433
    goto :goto_0

    .line 435
    :pswitch_4
    const/16 v1, 0xaf5

    .line 436
    const/16 v0, 0x2111

    .line 437
    goto :goto_0

    .line 441
    :pswitch_5
    const/16 v1, 0xae1

    .line 442
    const/16 v0, 0x2161

    .line 443
    goto :goto_0

    .line 454
    :cond_0
    iget v2, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    if-gt v2, v0, :cond_1

    .line 455
    const/4 v2, 0x2

    goto :goto_1

    .line 457
    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public Inint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    const/4 v0, -0x1

    sput v0, Lcom/ts/MainUI/CstTv;->noldMode:I

    .line 137
    iput-boolean v1, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    .line 138
    iput v1, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 139
    return-void
.end method

.method InintBEC()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0x9

    const/16 v4, 0xd6

    const/16 v3, 0x70

    .line 314
    const-string v0, "CstTv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InintBEC nTvMode== =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    packed-switch v0, :pswitch_data_0

    .line 360
    :goto_0
    return-void

    .line 318
    :pswitch_0
    iput v4, p0, Lcom/ts/MainUI/CstTv;->m_B:I

    .line 319
    iput v3, p0, Lcom/ts/MainUI/CstTv;->m_C:I

    .line 320
    iput v5, p0, Lcom/ts/MainUI/CstTv;->m_E:I

    goto :goto_0

    .line 323
    :pswitch_1
    iput v4, p0, Lcom/ts/MainUI/CstTv;->m_B:I

    .line 324
    iput v3, p0, Lcom/ts/MainUI/CstTv;->m_C:I

    .line 325
    const/16 v0, 0xa

    iput v0, p0, Lcom/ts/MainUI/CstTv;->m_E:I

    goto :goto_0

    .line 328
    :pswitch_2
    iput v4, p0, Lcom/ts/MainUI/CstTv;->m_B:I

    .line 329
    iput v3, p0, Lcom/ts/MainUI/CstTv;->m_C:I

    .line 330
    iput v6, p0, Lcom/ts/MainUI/CstTv;->m_E:I

    goto :goto_0

    .line 333
    :pswitch_3
    iput v4, p0, Lcom/ts/MainUI/CstTv;->m_B:I

    .line 334
    iput v3, p0, Lcom/ts/MainUI/CstTv;->m_C:I

    .line 336
    iput v6, p0, Lcom/ts/MainUI/CstTv;->m_E:I

    goto :goto_0

    .line 339
    :pswitch_4
    iput v4, p0, Lcom/ts/MainUI/CstTv;->m_B:I

    .line 340
    iput v3, p0, Lcom/ts/MainUI/CstTv;->m_C:I

    .line 341
    iput v5, p0, Lcom/ts/MainUI/CstTv;->m_E:I

    goto :goto_0

    .line 346
    :pswitch_5
    const/16 v0, 0x16

    iput v0, p0, Lcom/ts/MainUI/CstTv;->m_B:I

    .line 347
    const/16 v0, 0x30

    iput v0, p0, Lcom/ts/MainUI/CstTv;->m_C:I

    .line 348
    const/16 v0, 0x8

    iput v0, p0, Lcom/ts/MainUI/CstTv;->m_E:I

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method InintMode()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->InintBEC()V

    .line 310
    return-void
.end method

.method IsInintOK()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 493
    iget v1, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    if-le v1, v0, :cond_0

    .line 499
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method IsLockOK()Z
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x1

    return v0
.end method

.method IsPlayOK()Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 658
    new-array v0, v4, [B

    .line 659
    .local v0, "temp":[B
    const/4 v2, -0x1

    .line 660
    .local v2, "ubReadByte":B
    const/16 v5, 0x43

    invoke-static {v5, v0, v4}, Lcom/yyw/ts70xhw/Iop;->IIcReadnoadr(B[BI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 662
    const-string v4, "CstTv"

    const-string v5, "IIcReadOneByte  ==error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    :goto_0
    return v3

    .line 666
    :cond_1
    aget-byte v2, v0, v3

    .line 668
    shr-int/lit8 v5, v2, 0x1

    and-int/lit8 v5, v5, 0xf

    int-to-byte v1, v5

    .line 671
    .local v1, "ubLock":B
    const/16 v5, 0x8

    if-ge v1, v5, :cond_3

    .line 673
    iput v1, p0, Lcom/ts/MainUI/CstTv;->FreP:I

    .line 679
    :goto_1
    if-le v1, v7, :cond_2

    rsub-int/lit8 v5, v1, 0xf

    if-gt v5, v7, :cond_0

    .line 683
    :cond_2
    const-string v3, "CstTv"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IsPlayOK  =="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/ts/MainUI/CstTv;->FreP:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v3, "CstTv"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "nCurNum  =="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v3, "CstTv"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ubLock  =="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 686
    goto :goto_0

    .line 677
    :cond_3
    rsub-int/lit8 v5, v1, 0xf

    iput v5, p0, Lcom/ts/MainUI/CstTv;->FreP:I

    goto :goto_1
.end method

.method public PlayChg(B)Z
    .locals 5
    .param p1, "ubNext"    # B

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 780
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->IsInintOK()Z

    move-result v2

    if-nez v2, :cond_1

    .line 814
    :cond_0
    :goto_0
    return v0

    .line 784
    :cond_1
    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 788
    iget v2, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 792
    if-ne p1, v1, :cond_2

    .line 795
    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 797
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    .line 798
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    aget v0, v0, v2

    iput v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 799
    iput v4, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    move v0, v1

    .line 800
    goto :goto_0

    .line 806
    :cond_2
    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    if-lez v2, :cond_0

    .line 808
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    .line 809
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v2, v2, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    aget v0, v0, v2

    iput v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 810
    iput v4, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    move v0, v1

    .line 811
    goto :goto_0
.end method

.method public PlayFre(I)Z
    .locals 3
    .param p1, "nChg"    # I

    .prologue
    const/4 v0, 0x0

    .line 855
    if-gtz p1, :cond_1

    .line 873
    :cond_0
    :goto_0
    return v0

    .line 859
    :cond_1
    iget-boolean v1, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    if-nez v1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v1, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 867
    add-int/lit8 v0, p1, -0x1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2

    .line 869
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 870
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    add-int/lit8 v1, p1, -0x1

    iput v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    .line 872
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 873
    const/4 v0, 0x1

    goto :goto_0
.end method

.method ReadSaveData()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 590
    const-string v0, "/mnt/sdcard/TsStorage/atv.bin"

    invoke-static {v0}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    const-string v0, "/mnt/sdcard/TsStorage/atv.bin"

    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->nTempData:[I

    invoke-static {v0, v1}, Lcom/ts/MainUI/TsFile;->reader(Ljava/lang/String;[I)V

    .line 593
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->CopyDataToSave()V

    .line 594
    const-string v0, "CstTv"

    const-string v1, "ReadSaveData ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->ResetData()V

    .line 608
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->ResetMode()V

    .line 609
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->SaveData()V

    .line 610
    const-string v0, "CstTv"

    const-string v1, "tv file open error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_0
    return v3

    .line 598
    :cond_1
    const-string v0, "/mnt/sdcard/TsStorage"

    invoke-static {v0}, Lcom/ts/MainUI/TsFile;->NewDir(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->ResetData()V

    .line 600
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->ResetMode()V

    .line 601
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->SaveData()V

    .line 602
    const-string v0, "CstTv"

    const-string v1, "first create the file"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v1, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    if-le v0, v1, :cond_3

    .line 617
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v1, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    aget v0, v0, v1

    iput v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 620
    const-string v0, "CstTv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read savedata   =="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method ResetData()V
    .locals 6

    .prologue
    .line 627
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    const/4 v2, 0x0

    iput v2, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    .line 628
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    const/16 v2, 0x63

    iput v2, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    .line 629
    const/16 v1, 0x3c5

    iput v1, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 634
    return-void

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v1, v1, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    iget-object v2, p0, Lcom/ts/MainUI/CstTv;->nResetChanel:[D

    aget-wide v2, v2, v0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method ResetMode()V
    .locals 2

    .prologue
    .line 637
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTvFormat()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 639
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    .line 645
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTvFormat()I

    move-result v1

    iput v1, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nMode:I

    goto :goto_0
.end method

.method SaveData()V
    .locals 2

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->CopyDataToBuf()V

    .line 649
    const-string v0, "/mnt/sdcard/TsStorage/atv.bin"

    iget-object v1, p0, Lcom/ts/MainUI/CstTv;->nTempData:[I

    invoke-static {v0, v1}, Lcom/ts/MainUI/TsFile;->writer(Ljava/lang/String;[I)V

    .line 650
    return-void
.end method

.method SetTvMute()V
    .locals 3

    .prologue
    const/16 v2, 0x1e

    .line 382
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nMuteDelay:I

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->mEvc:Lcom/ts/MainUI/Evc;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_popmute_set(I)V

    .line 385
    iput v2, p0, Lcom/ts/MainUI/CstTv;->nMuteDelay:I

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    iput v2, p0, Lcom/ts/MainUI/CstTv;->nMuteDelay:I

    goto :goto_0
.end method

.method public StopAutoSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->IsInintOK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-boolean v0, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 517
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iget-object v0, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 518
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iput v2, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    .line 526
    :goto_1
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->WriteChanel()V

    .line 527
    const/4 v0, 0x2

    iput v0, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 528
    iput-boolean v2, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    goto :goto_0

    .line 522
    :cond_2
    const/16 v0, 0x3c5

    iput v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 523
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iput v2, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nWatchNum:I

    .line 524
    iget-object v0, p0, Lcom/ts/MainUI/CstTv;->tvSave:Lcom/ts/MainUI/CstTv$TV_SAVE;

    iput v2, v0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveNum:I

    goto :goto_1
.end method

.method TvStep(B)V
    .locals 2
    .param p1, "ubStep"    # B

    .prologue
    .line 547
    if-lez p1, :cond_1

    .line 549
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    const/16 v1, 0x4371

    if-ge v0, v1, :cond_0

    .line 551
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 562
    :cond_0
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 563
    return-void

    .line 556
    :cond_1
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    const/16 v1, 0x3c5

    if-le v0, v1, :cond_0

    .line 558
    iget v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    goto :goto_0
.end method

.method public Tv_Main(IZ)I
    .locals 8
    .param p1, "param"    # I
    .param p2, "bATVMode"    # Z

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 161
    sget v2, Lcom/ts/MainUI/CstTv;->noldMode:I

    iget v3, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    if-eq v2, v3, :cond_0

    .line 163
    iget v2, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    sput v2, Lcom/ts/MainUI/CstTv;->noldMode:I

    .line 164
    const-string v2, "CstTv"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tv_Main TvState =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 169
    const/16 v2, 0xfe

    iput v2, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 197
    :cond_1
    iget v2, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_0
    move v0, v1

    .line 297
    :cond_3
    :goto_1
    return v0

    .line 173
    :cond_4
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->ClearTvMute()V

    .line 174
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5

    .line 176
    iget v2, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    if-eqz v2, :cond_3

    .line 182
    iput v5, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 183
    iput-boolean v1, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    goto :goto_1

    .line 189
    :cond_5
    if-ne p1, v6, :cond_1

    .line 191
    iput v5, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 192
    iput-boolean v1, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    goto :goto_1

    .line 201
    :sswitch_0
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->ReadSaveData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    if-ne p1, v5, :cond_6

    .line 206
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->ResetData()V

    .line 207
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->ResetMode()V

    .line 208
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->SaveData()V

    .line 210
    :cond_6
    const-string v0, "CstTv"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tv_Main param =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput v5, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    goto :goto_0

    .line 215
    :sswitch_1
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->SetTvMute()V

    .line 216
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->InintMode()V

    .line 217
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->WriteBCE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iput v6, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    goto :goto_0

    .line 226
    :sswitch_2
    sget v0, Lcom/ts/MainUI/CstTv;->num:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ts/MainUI/CstTv;->num:I

    goto :goto_0

    .line 231
    :sswitch_3
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->SetTvMute()V

    .line 232
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->WriteChanel()V

    .line 233
    iput v7, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    goto :goto_0

    .line 237
    :sswitch_4
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->IsPlayOK()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    const/4 v0, 0x6

    iput v0, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 240
    iput v1, p0, Lcom/ts/MainUI/CstTv;->delaynum:I

    goto :goto_0

    .line 244
    :cond_7
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->DealNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->SetTvMute()V

    .line 248
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->WriteChanel()V

    .line 249
    iput v7, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    goto :goto_0

    .line 256
    :sswitch_5
    iget v0, p0, Lcom/ts/MainUI/CstTv;->delaynum:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_8

    .line 258
    iget v0, p0, Lcom/ts/MainUI/CstTv;->delaynum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/MainUI/CstTv;->delaynum:I

    goto/16 :goto_0

    .line 262
    :cond_8
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->IsPlayOK()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->IsLockOK()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 264
    const-string v0, "CstTv"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IsLockOK true=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->DelaCur()V

    .line 272
    :goto_2
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->DealNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->SetTvMute()V

    .line 275
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->WriteChanel()V

    .line 276
    iput v7, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    goto/16 :goto_0

    .line 270
    :cond_9
    const-string v0, "CstTv"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IsLockOK false=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 284
    :sswitch_6
    const/16 v0, 0x3c5

    iput v0, p0, Lcom/ts/MainUI/CstTv;->nCurNum:I

    .line 285
    iput v6, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    goto/16 :goto_0

    .line 288
    :sswitch_7
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->SaveData()V

    .line 289
    iput v0, p0, Lcom/ts/MainUI/CstTv;->TvState:I

    .line 291
    :sswitch_8
    if-nez p1, :cond_3

    .line 293
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->Inint()V

    goto/16 :goto_1

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0xfe -> :sswitch_7
        0xff -> :sswitch_8
    .end sparse-switch
.end method

.method WriteBCE()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x43

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 363
    iget v2, p0, Lcom/ts/MainUI/CstTv;->m_B:I

    int-to-byte v2, v2

    invoke-static {v5, v0, v2}, Lcom/yyw/ts70xhw/Iop;->IIcSendOneByte(BBB)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 365
    const-string v1, "CstTv"

    const-string v2, "I2cWrite B error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return v0

    .line 368
    :cond_0
    iget v2, p0, Lcom/ts/MainUI/CstTv;->m_C:I

    int-to-byte v2, v2

    invoke-static {v5, v1, v2}, Lcom/yyw/ts70xhw/Iop;->IIcSendOneByte(BBB)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 370
    const-string v1, "CstTv"

    const-string v2, "I2cWrite C error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_1
    const/4 v2, 0x2

    iget v3, p0, Lcom/ts/MainUI/CstTv;->m_E:I

    int-to-byte v3, v3

    invoke-static {v5, v2, v3}, Lcom/yyw/ts70xhw/Iop;->IIcSendOneByte(BBB)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 375
    const-string v1, "CstTv"

    const-string v2, "I2cWrite E error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 378
    goto :goto_0
.end method

.method WriteChanel()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 466
    const/4 v2, 0x5

    new-array v1, v2, [B

    .line 468
    .local v1, "ubSendBuf":[B
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->GetCurFre()I

    move-result v3

    div-int/lit16 v3, v3, 0x100

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 469
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->GetCurFre()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 470
    const/4 v2, 0x2

    const/16 v3, -0x78

    aput-byte v3, v1, v2

    .line 471
    invoke-virtual {p0}, Lcom/ts/MainUI/CstTv;->GetVhl()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_1

    .line 489
    :cond_0
    return-void

    .line 475
    :cond_1
    const/16 v2, 0x63

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/yyw/ts70xhw/Iop;->IIcSend(B[BI)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 477
    const-string v2, "CstTv"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WriteChanel error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method WriteFre(I)V
    .locals 0
    .param p1, "nFre"    # I

    .prologue
    .line 462
    return-void
.end method

.method public isAutoSearch()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/ts/MainUI/CstTv;->bAutoSearch:Z

    return v0
.end method
