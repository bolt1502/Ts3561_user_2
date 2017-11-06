.class public Lcom/ts/main/common/WinShow;
.super Ljava/lang/Object;
.source "WinShow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WinShow"

.field public static final WIN_ATV:I = 0x17

.field public static final WIN_AUTH:I = 0x10

.field public static final WIN_AUX:I = 0x9

.field public static final WIN_AVIN:I = 0xa

.field public static final WIN_BOOT_LOGO:I = 0x11

.field public static final WIN_BT:I = 0x7

.field public static final WIN_CMMB:I = 0x8

.field public static final WIN_C_STUDY:I = 0x13

.field public static final WIN_DVD:I = 0x3

.field public static final WIN_DVD_BOX:I = 0x15

.field public static final WIN_FACTORY:I = 0xf

.field public static final WIN_FCAM:I = 0xe

.field public static final WIN_FILE_COPY:I = 0x14

.field public static final WIN_IPOD:I = 0xd

.field public static final WIN_MAIN:I = 0x0

.field public static final WIN_MCU_UPDATE:I = 0x12

.field public static final WIN_NAVI:I = 0x1

.field public static final WIN_RADIO:I = 0x2

.field public static final WIN_RECOGNIZE:I = 0x16

.field public static final WIN_SD:I = 0x6

.field public static final WIN_SETUP:I = 0xb

.field public static final WIN_TRAFFICRECORD:I = 0xc

.field public static final WIN_USB1:I = 0x4

.field public static final WIN_USB2:I = 0x5

.field public static mContext:Landroid/content/Context;

.field private static nDelayTime:I

.field public static nOldMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/main/common/WinShow;->mContext:Landroid/content/Context;

    .line 180
    const/16 v0, 0x12c

    sput v0, Lcom/ts/main/common/WinShow;->nDelayTime:I

    .line 199
    const/16 v0, 0xff

    sput v0, Lcom/ts/main/common/WinShow;->nOldMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DealModeKey()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    .line 202
    const-string v2, "WinShow"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nOldMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/ts/main/common/WinShow;->nOldMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v2, "WinShow"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Evc.GetInstance().Evol.workmode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v2, "WinShow"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nDelayTime = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/ts/main/common/WinShow;->nDelayTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget v2, Lcom/ts/main/common/WinShow;->nOldMode:I

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v3

    if-eq v2, v3, :cond_3

    sget v2, Lcom/ts/main/common/WinShow;->nDelayTime:I

    const/16 v3, 0x118

    if-ge v2, v3, :cond_3

    .line 207
    const/16 v2, 0x12c

    sput v2, Lcom/ts/main/common/WinShow;->nDelayTime:I

    .line 208
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v2

    sput v2, Lcom/ts/main/common/WinShow;->nOldMode:I

    .line 209
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    .line 210
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-le v0, v5, :cond_0

    .line 228
    .end local v0    # "i":I
    .end local v1    # "n":I
    :goto_1
    return-void

    .line 211
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-le v1, v5, :cond_1

    .line 212
    const/4 v1, 0x1

    .line 215
    :cond_1
    invoke-static {v1}, Lcom/ts/main/common/WinShow;->IsModeValid(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    const-string v2, "WinShow"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DealModeKey = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "nOldMode=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/ts/main/common/WinShow;->nOldMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {v1}, Lcom/ts/main/common/WinShow;->TsEnterMode(I)I

    goto :goto_1

    .line 210
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    const-string v2, "WinShow"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DealModeKey = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/ts/main/common/WinShow;->nOldMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "but workmode have not change"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static DealTask()V
    .locals 2

    .prologue
    .line 184
    sget v0, Lcom/ts/main/common/WinShow;->nDelayTime:I

    if-lez v0, :cond_1

    .line 186
    sget v0, Lcom/ts/main/common/WinShow;->nDelayTime:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/ts/main/common/WinShow;->nDelayTime:I

    .line 188
    sget v0, Lcom/ts/main/common/WinShow;->nOldMode:I

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 190
    const/4 v0, 0x0

    sput v0, Lcom/ts/main/common/WinShow;->nDelayTime:I

    .line 192
    :cond_0
    sget v0, Lcom/ts/main/common/WinShow;->nDelayTime:I

    if-nez v0, :cond_1

    .line 194
    const/16 v0, 0xff

    sput v0, Lcom/ts/main/common/WinShow;->nOldMode:I

    .line 198
    :cond_1
    return-void
.end method

.method public static GotoWin(II)V
    .locals 3
    .param p0, "nWin"    # I
    .param p1, "nParat1"    # I

    .prologue
    .line 324
    packed-switch p0, :pswitch_data_0

    .line 465
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 327
    :pswitch_1
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.main.navi.NaviMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :pswitch_2
    invoke-static {}, Lcom/ts/can/CanIF;->GotoExdRadWin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.main.radio.RadioMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_3
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    const-string v1, "com.mxtech.videoplayer.pro"

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    sget-object v1, Lcom/ts/main/common/WinShow;->mContext:Landroid/content/Context;

    const-string v2, "com.mxtech.videoplayer.pro"

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    const-string v0, "com.ts.dvdplayer"

    const-string v1, "com.ts.dvdplayer.USBActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :pswitch_4
    const-string v0, "com.ts.dvdplayer"

    const-string v1, "com.ts.dvdplayer.SDActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :pswitch_5
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.main.avin2.AuxMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :pswitch_6
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.main.avin.AvinMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :pswitch_7
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.main.cmmb.CmmbMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :pswitch_8
    const-string v0, "com.android.sdvdplayer"

    const-string v1, "com.android.sdvdplayer.SDVDPlayer"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :pswitch_9
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.factoryset.FsMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :pswitch_a
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 369
    :sswitch_0
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SettingGerenalActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :sswitch_1
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SettingDisplayActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :sswitch_2
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SetVolumeActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 381
    :sswitch_3
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SettingSoundActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 385
    :sswitch_4
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SettingVideoActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    :sswitch_5
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SettingGpsActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :sswitch_6
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SettingBtActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    :sswitch_7
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SettingWheelActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    :sswitch_8
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SettingEquipmentActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :sswitch_9
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SetMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :sswitch_a
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.set.SettingGpsPathActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    :pswitch_b
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 415
    :pswitch_c
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.bt.BtConnectActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    :pswitch_d
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.bt.BtCallingActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    :pswitch_e
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.bt.BtPhoneBookActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :pswitch_f
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.bt.BtDialActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 427
    :pswitch_10
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.bt.BtMusicActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    :pswitch_11
    const-string v0, "com.ts.ipodplayer"

    const-string v1, "com.ts.ipodplayer.activity.IpodMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 439
    :pswitch_12
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.main.auth.AuthActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    :pswitch_13
    const-string v0, "com.ts.logoset"

    const-string v1, "com.ts.logoset.LogoSetMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :pswitch_14
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.can.CanMcuUpdateActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :pswitch_15
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.main.CStudy.CStudyMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :pswitch_16
    const-string v0, "com.ts.tsfilecopy"

    const-string v1, "com.ts.tsfilecopy.FileCopyActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :pswitch_17
    const-string v0, "com.ts.dvdplayer"

    const-string v1, "com.ts.dvdplayer.DvdBoxActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :pswitch_18
    const-string v0, "com.example.tsspeekrecognize"

    const-string v1, "com.example.tsspeekrecognize.MainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :pswitch_19
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.main.cmmb.AtvMainActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_9
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 367
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x62 -> :sswitch_9
        0x63 -> :sswitch_a
    .end sparse-switch

    .line 412
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static IsHaveDvd()Z
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetDisc()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static IsModeValid(I)Z
    .locals 4
    .param p0, "nMode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    const/16 v2, 0xc

    if-eq p0, v2, :cond_1

    invoke-static {p0}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 139
    :cond_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_1
    invoke-static {p0}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    const-string v1, "WinShow"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isConnected = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 149
    goto :goto_0

    .line 153
    :pswitch_3
    invoke-static {}, Lcom/ts/main/common/WinShow;->IsHaveDvd()Z

    move-result v0

    goto :goto_0

    .line 156
    :pswitch_4
    invoke-static {p0}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v2

    const-string v3, "com.mxtech.videoplayer.pro"

    invoke-virtual {v2, v3}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 159
    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static IsRadioActivity()Z
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/ts/main/common/WinShow;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ts.main.radio.RadioMainActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ts/main/common/WinShow;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ts/can/CanIF;->IsCurExdRadioWin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static ShowVideoWin()V
    .locals 2

    .prologue
    .line 320
    const-string v0, "com.ts.dvdplayer"

    const-string v1, "com.ts.dvdplayer.USBActivity"

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public static TsEnterMode(I)I
    .locals 8
    .param p0, "nMode"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 231
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/common/MainSet;->IsGLSXVer()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    if-eqz p0, :cond_0

    .line 235
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v1

    const-string v2, "com.glsx.ddbox"

    invoke-virtual {v1, v2}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.glsx.ddbox"

    const-string v3, "com.glsx.launcher.service.LauncherService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 240
    sget-object v1, Lcom/ts/main/common/WinShow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 250
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 311
    :pswitch_0
    invoke-static {v5, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 314
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 253
    :pswitch_1
    invoke-static {v5, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 256
    :pswitch_2
    const/4 v1, 0x3

    invoke-static {v1, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 259
    :pswitch_3
    const/16 v1, 0x15

    invoke-static {v1, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 262
    :pswitch_4
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    invoke-static {v7, v6}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 268
    :cond_2
    invoke-static {v7, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 273
    :pswitch_5
    const/16 v1, 0x9

    invoke-static {v1, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 276
    :pswitch_6
    const/16 v1, 0xa

    invoke-static {v1, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 279
    :pswitch_7
    const/16 v1, 0x8

    invoke-static {v1, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 282
    :pswitch_8
    invoke-static {v6, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 285
    :pswitch_9
    const/4 v1, 0x6

    invoke-static {v1, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 288
    :pswitch_a
    const/16 v1, 0x17

    invoke-static {v1, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 291
    :pswitch_b
    const/16 v1, 0xd

    invoke-static {v1, v4}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 295
    :pswitch_c
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 296
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/common/MainSet;->IsGLSXVer()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v1

    const-string v2, "com.glsx.ddbox"

    invoke-virtual {v1, v2}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v1

    sget-object v2, Lcom/ts/main/common/WinShow;->mContext:Landroid/content/Context;

    const-string v3, "com.glsx.ddbox"

    invoke-virtual {v1, v2, v3}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :pswitch_d
    invoke-static {}, Lcom/ts/can/CanIF;->GotoExdMode()V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_7
        :pswitch_a
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static TurnToEq()V
    .locals 2

    .prologue
    .line 122
    const/16 v0, 0xb

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 123
    return-void
.end method

.method public static getTopActivityName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    sget-object v3, Lcom/ts/main/common/WinShow;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 84
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 88
    .local v1, "baseActivity":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 90
    .end local v1    # "baseActivity":Landroid/content/ComponentName;
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static getTopPackName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 71
    sget-object v3, Lcom/ts/main/common/WinShow;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 72
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 76
    .local v1, "baseActivity":Landroid/content/ComponentName;
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 78
    .end local v1    # "baseActivity":Landroid/content/ComponentName;
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "sPackage"    # Ljava/lang/String;
    .param p1, "sActivity"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v2, "intent1":Landroid/content/Intent;
    invoke-virtual {v2, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    sget-object v3, Lcom/ts/main/common/WinShow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    sget-object v3, Lcom/ts/main/common/WinShow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v0, "componetName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 62
    const/high16 v3, 0x14200000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    sget-object v3, Lcom/ts/main/common/WinShow;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
