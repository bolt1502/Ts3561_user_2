.class public Lcom/ts/factoryset/FsOtherActivity;
.super Lcom/ts/factoryset/FsBaseActivity;
.source "FsOtherActivity.java"

# interfaces
.implements Lcom/ts/factoryset/FsInputDlg$onInputOK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/factoryset/FsOtherActivity$UsbMode;,
        Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;
    }
.end annotation


# static fields
.field public static final OTHER_AC_OPT_SW:I = 0xd

.field public static final OTHER_BACK_SW:I = 0xe

.field public static final OTHER_BOOT_WARN:I = 0xf

.field public static final OTHER_BRAKE:I = 0x1

.field public static final OTHER_BT_NAME:I = 0x17

.field public static final OTHER_CAM_FIX:I = 0x7

.field public static final OTHER_CAM_MIR:I = 0x8

.field public static final OTHER_CAM_MUTE:I = 0x6

.field public static final OTHER_DEBUG_OUT:I = 0x15

.field public static final OTHER_DTV_TYPE:I = 0x4

.field public static final OTHER_DVR_TYPE:I = 0x3

.field public static final OTHER_ECD_SWAP:I = 0x14

.field public static final OTHER_EXTUART:I = 0x2

.field public static final OTHER_GPS_MODE:I = 0x19

.field public static final OTHER_LAST_MEMORY:I = 0x10

.field public static final OTHER_LCM_TYPE:I = 0x0

.field public static final OTHER_MAX:I = 0x19

.field public static final OTHER_MIN:I = 0x0

.field public static final OTHER_NAVI_ON:I = 0x9

.field public static final OTHER_OPT_COLOR_LIGHT:I = 0xa

.field public static final OTHER_OPT_LOGO:I = 0xb

.field public static final OTHER_OPT_SW:I = 0xc

.field public static final OTHER_SCR_TYPE:I = 0x5

.field public static final OTHER_SD_SWAP:I = 0x18

.field public static final OTHER_TV_FORMAT:I = 0x16

.field public static final OTHER_USB1_SPEED:I = 0x11

.field public static final OTHER_USB2_SPEED:I = 0x12

.field public static final OTHER_USB_DEBUG:I = 0x13

.field private static final REFRESH:I = 0x1

.field private static final SAVE_LOG:Ljava/lang/String; = "save_log"

.field public static final TAG:Ljava/lang/String; = "FsOtherActivity"

.field private static final USB_MODE_KEY:Ljava/lang/String; = "usb_mode"

.field private static final USB_PROTOCOL_KEY:Ljava/lang/String; = "usb_protocol"

.field private static flag:Z = false

.field private static mAgent:Lcom/ts/factoryset/NvRAMAgent; = null

.field public static mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode; = null

.field public static mCurrentUsbProcotol:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol; = null

.field private static usbDeviceMode:Ljava/lang/String; = null

.field private static usbHostMode:Ljava/lang/String; = null

.field private static final usbModeFileName:Ljava/lang/String; = "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/mode"

.field private static final usbNvramFile:Ljava/lang/String; = "/data/nvram/APCFG/APRDEB/USB"

.field private static final usb_file_lid_id:I = 0x47


# instance fields
.field private mBtDlg:Lcom/ts/factoryset/FsInputDlg;

.field private mBtName:[C

.field private mDbgDlg:Lcom/ts/factoryset/FsInputDlg;

.field private final mHandler:Landroid/os/Handler;

.field private mItemACOpt:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemAutoNavi:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemBackLineOpt:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemBootWarn:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemBrake:Lcom/ts/factoryset/FsAdjItem;

.field private mItemBtName:Lcom/ts/factoryset/FsInputItem;

.field private mItemCamDetect:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemCamMirror:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemCamMute:Lcom/ts/factoryset/FsAdjItem;

.field private mItemColorLight:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemDebugOut:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemDtvType:Lcom/ts/factoryset/FsAdjItem;

.field private mItemDvrType:Lcom/ts/factoryset/FsAdjItem;

.field private mItemEcdSwap:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemExtUart:Lcom/ts/factoryset/FsAdjItem;

.field private mItemGpsMode:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemLastMemory:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemLcmType:Lcom/ts/factoryset/FsAdjItem;

.field private mItemLogoOpt:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemSDSwap:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemSWCOpt:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemScrType:Lcom/ts/factoryset/FsAdjItem;

.field private mItemTvFormat:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemUsb1Speed:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemUsb2Speed:Lcom/ts/factoryset/Fs2SelItem;

.field private mItemUsbDebug:Lcom/ts/factoryset/Fs2SelItem;

.field private mListOther:Landroid/widget/ListView;

.field private mSaveLog:Landroid/preference/PreferenceScreen;

.field private mUsbMode:Landroid/preference/Preference;

.field private mUsbProtocol:Landroid/preference/Preference;

.field private usb1_1:Ljava/lang/String;

.field private usb2_0:Ljava/lang/String;

.field private final usbProtocolFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/factoryset/FsOtherActivity;->flag:Z

    .line 45
    const-string v0, "a_host"

    sput-object v0, Lcom/ts/factoryset/FsOtherActivity;->usbHostMode:Ljava/lang/String;

    .line 46
    const-string v0, "b_peripheral"

    sput-object v0, Lcom/ts/factoryset/FsOtherActivity;->usbDeviceMode:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_UNKNOW:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sput-object v0, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    .line 69
    sget-object v0, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_UNKNOW:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    sput-object v0, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbProcotol:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ts/factoryset/FsBaseActivity;-><init>()V

    .line 43
    const-string v0, "usb20"

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->usb2_0:Ljava/lang/String;

    .line 44
    const-string v0, "usb11"

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->usb1_1:Ljava/lang/String;

    .line 48
    const-string v0, "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/protocol"

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->usbProtocolFileName:Ljava/lang/String;

    .line 140
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mBtName:[C

    .line 408
    new-instance v0, Lcom/ts/factoryset/FsOtherActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsOtherActivity$1;-><init>(Lcom/ts/factoryset/FsOtherActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/ts/factoryset/FsOtherActivity;)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/ts/factoryset/FsOtherActivity;->updateUsbMode()V

    return-void
.end method

.method private converByteToString([B)Ljava/lang/String;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 602
    new-instance v0, Ljava/lang/String;

    .end local v0    # "str":Ljava/lang/String;
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 605
    .restart local v0    # "str":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static intToBytes(I)[B
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 569
    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 570
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 571
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 572
    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 573
    .local v0, "bytes":[B
    return-object v0
.end method

.method private static makeUsbNvramData()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 577
    const/4 v3, 0x0

    .line 578
    .local v3, "usbModeProtocolByte":[B
    const/4 v1, 0x0

    .line 579
    .local v1, "protocolByte":[B
    const/4 v0, 0x0

    .line 580
    .local v0, "modeByte":[B
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    invoke-virtual {v5}, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->ordinal()I

    move-result v2

    .line 581
    .local v2, "usbMode":I
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbProcotol:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    invoke-virtual {v5}, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->ordinal()I

    move-result v4

    .line 583
    .local v4, "usbProtocol":I
    invoke-static {v4}, Lcom/ts/factoryset/FsOtherActivity;->intToBytes(I)[B

    move-result-object v1

    .line 584
    invoke-static {v2}, Lcom/ts/factoryset/FsOtherActivity;->intToBytes(I)[B

    move-result-object v0

    .line 586
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 587
    array-length v5, v1

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v3, v5, [B

    .line 591
    :cond_0
    if-eqz v3, :cond_1

    .line 592
    array-length v5, v1

    invoke-static {v1, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 593
    array-length v5, v1

    array-length v6, v0

    invoke-static {v0, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 595
    :cond_1
    return-object v3
.end method

.method public static setUsbMode(I)V
    .locals 8
    .param p0, "val"    # I

    .prologue
    .line 484
    const-string v5, "FsOtherActivity"

    const-string v6, "----setUsbMode()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v5, 0x1

    if-ne p0, v5, :cond_3

    .line 486
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_DEVICE:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sput-object v5, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    .line 490
    :goto_0
    const/4 v1, 0x0

    .line 491
    .local v1, "currentUsbMode":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v5, "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/mode"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .local v2, "modeFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 493
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .line 494
    .local v3, "str":Ljava/lang/String;
    invoke-static {}, Lcom/ts/factoryset/FsOtherActivity;->makeUsbNvramData()[B

    move-result-object v0

    .line 495
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sget-object v6, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_HOST:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    if-ne v5, v6, :cond_4

    .line 496
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity;->usbHostMode:Ljava/lang/String;

    .line 501
    :cond_0
    :goto_1
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity;->mAgent:Lcom/ts/factoryset/NvRAMAgent;

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    if-nez v3, :cond_5

    .line 502
    :cond_1
    const-string v5, "FsOtherActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setUsbMode fail , mAgent: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/ts/factoryset/FsOtherActivity;->mAgent:Lcom/ts/factoryset/NvRAMAgent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", str: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_2
    :goto_2
    return-void

    .line 488
    .end local v0    # "bytes":[B
    .end local v1    # "currentUsbMode":Ljava/lang/String;
    .end local v2    # "modeFile":Ljava/io/File;
    .end local v3    # "str":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_HOST:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sput-object v5, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    goto :goto_0

    .line 497
    .restart local v0    # "bytes":[B
    .restart local v1    # "currentUsbMode":Ljava/lang/String;
    .restart local v2    # "modeFile":Ljava/io/File;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sget-object v6, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_DEVICE:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    if-ne v5, v6, :cond_0

    .line 498
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity;->usbDeviceMode:Ljava/lang/String;

    goto :goto_1

    .line 505
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 507
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 509
    .local v4, "writer":Ljava/io/BufferedWriter;
    const-string v5, "FsOtherActivity"

    const-string v6, "setUsbMode , write nvram, id : 71   usbNvramFile = /data/nvram/APCFG/APRDEB/USB"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity;->mAgent:Lcom/ts/factoryset/NvRAMAgent;

    const-string v6, "/data/nvram/APCFG/APRDEB/USB"

    invoke-interface {v5, v6, v0}, Lcom/ts/factoryset/NvRAMAgent;->writeFileByName(Ljava/lang/String;[B)I

    .line 513
    const-string v5, "FsOtherActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setUsbMode , write kernel node, id : 71, str: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 515
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 516
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sget-object v6, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_HOST:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    if-eq v5, v6, :cond_2

    .line 518
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_DEVICE:Lcom/ts/factoryset/FsOtherActivity$UsbMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 525
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :cond_6
    const-string v5, "FsOtherActivity"

    const-string v6, "setUsbMode fail , file(/sys/devices/platform/mt_usb/musb-hdrc.0.auto/mode) not exist "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 521
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private setUsbProcotol()V
    .locals 8

    .prologue
    .line 531
    const/4 v1, 0x0

    .line 532
    .local v1, "currentUsbMode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 533
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .line 534
    .local v3, "str":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v5, "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/protocol"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    .local v2, "protocolFile":Ljava/io/File;
    const-string v5, "FsOtherActivity"

    const-string v6, "setUsbProcotol"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {}, Lcom/ts/factoryset/FsOtherActivity;->makeUsbNvramData()[B

    move-result-object v0

    .line 540
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbProcotol:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    sget-object v6, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_20:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    if-ne v5, v6, :cond_2

    .line 541
    iget-object v3, p0, Lcom/ts/factoryset/FsOtherActivity;->usb2_0:Ljava/lang/String;

    .line 545
    :cond_0
    :goto_0
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity;->mAgent:Lcom/ts/factoryset/NvRAMAgent;

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    if-nez v3, :cond_3

    .line 546
    :cond_1
    const-string v5, "FsOtherActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setUsbProcotol fail , mAgent: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/ts/factoryset/FsOtherActivity;->mAgent:Lcom/ts/factoryset/NvRAMAgent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", str: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :goto_1
    return-void

    .line 542
    :cond_2
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbProcotol:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    sget-object v6, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_11:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    if-ne v5, v6, :cond_0

    .line 543
    iget-object v3, p0, Lcom/ts/factoryset/FsOtherActivity;->usb1_1:Ljava/lang/String;

    goto :goto_0

    .line 550
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 552
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 553
    .local v4, "writer":Ljava/io/BufferedWriter;
    const-string v5, "FsOtherActivity"

    const-string v6, "setUsbProcotol , write nvram, id : 71   usbNvramFile = /data/nvram/APCFG/APRDEB/USB"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    sget-object v5, Lcom/ts/factoryset/FsOtherActivity;->mAgent:Lcom/ts/factoryset/NvRAMAgent;

    const-string v6, "/data/nvram/APCFG/APRDEB/USB"

    invoke-interface {v5, v6, v0}, Lcom/ts/factoryset/NvRAMAgent;->writeFileByName(Ljava/lang/String;[B)I

    .line 556
    const-string v5, "FsOtherActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setUsbProcotol , write kernel node, id : 71, str: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 558
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 559
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 563
    :cond_4
    const-string v5, "FsOtherActivity"

    const-string v6, "setUsbProcotol fail , file(/sys/devices/platform/mt_usb/musb-hdrc.0.auto/protocol) not exist "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateUsbMode()V
    .locals 6

    .prologue
    .line 452
    const-string v3, "FsOtherActivity"

    const-string v4, "----updateUsbMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "currentUsbMode":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/mode"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, "modeFile":Ljava/io/File;
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_UNKNOW:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sput-object v3, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    .line 457
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 460
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 468
    const-string v3, "FsOtherActivity"

    const-string v4, "updateUsbProtocol not get currentUsbMode "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_1
    return-void

    .line 471
    :cond_1
    const-string v3, "FsOtherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateUsbMode() currentUsbMode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity;->usbHostMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_HOST:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sput-object v3, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    .line 474
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/yyw/ts70xhw/FtSet;->SetUsbHost(I)I

    goto :goto_1

    .line 475
    :cond_2
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity;->usbDeviceMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 476
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/yyw/ts70xhw/FtSet;->SetUsbHost(I)I

    .line 477
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_DEVICE:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sput-object v3, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    goto :goto_1

    .line 479
    :cond_3
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_UNKNOW:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sput-object v3, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    goto :goto_1

    .line 462
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private updateUsbProtocol()V
    .locals 6

    .prologue
    .line 422
    const-string v3, "FsOtherActivity"

    const-string v4, "----updateUsbProtocol()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "currentUsbProtocol":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/protocol"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v1, "protocolFile":Ljava/io/File;
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_UNKNOW:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    sput-object v3, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbProcotol:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    .line 427
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 430
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 438
    const-string v3, "FsOtherActivity"

    const-string v4, "updateUsbProtocol not get currentUsbProtocol "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_1
    return-void

    .line 441
    :cond_1
    const-string v3, "updateUsbProtocol"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "currentUsbProtocol "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v3, p0, Lcom/ts/factoryset/FsOtherActivity;->usb2_0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_20:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    sput-object v3, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbProcotol:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    goto :goto_1

    .line 444
    :cond_2
    iget-object v3, p0, Lcom/ts/factoryset/FsOtherActivity;->usb1_1:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 445
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_11:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    sput-object v3, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbProcotol:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    goto :goto_1

    .line 447
    :cond_3
    sget-object v3, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_UNKNOW:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    sput-object v3, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbProcotol:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    goto :goto_1

    .line 432
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private usbModeChoice()V
    .locals 3

    .prologue
    .line 395
    const-string v1, "FsOtherActivity"

    const-string v2, "----usbModeChoice()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "index":I
    invoke-direct {p0}, Lcom/ts/factoryset/FsOtherActivity;->updateUsbMode()V

    .line 399
    sget-object v1, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sget-object v2, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_HOST:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    if-ne v1, v2, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 406
    :goto_0
    return-void

    .line 401
    :cond_0
    sget-object v1, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbMode:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    sget-object v2, Lcom/ts/factoryset/FsOtherActivity$UsbMode;->USB_MODE_DEVICE:Lcom/ts/factoryset/FsOtherActivity$UsbMode;

    if-ne v1, v2, :cond_1

    .line 402
    const/4 v0, 0x1

    .line 403
    goto :goto_0

    .line 404
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private usbProtocolChoice()V
    .locals 4

    .prologue
    .line 380
    const-string v1, "FsOtherActivity"

    const-string v2, "----usbProtocolChoice()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "index":I
    invoke-direct {p0}, Lcom/ts/factoryset/FsOtherActivity;->updateUsbProtocol()V

    .line 383
    sget-object v1, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbProcotol:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    sget-object v2, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_20:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    if-ne v1, v2, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 390
    :goto_0
    const-string v1, "FsOtherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "index = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void

    .line 385
    :cond_0
    sget-object v1, Lcom/ts/factoryset/FsOtherActivity;->mCurrentUsbProcotol:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    sget-object v2, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_11:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    if-ne v1, v2, :cond_1

    .line 386
    const/4 v0, 0x1

    .line 387
    goto :goto_0

    .line 388
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected UpdateItem(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 611
    packed-switch p1, :pswitch_data_0

    .line 736
    :goto_0
    return-void

    .line 615
    :pswitch_0
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemLcmType:Lcom/ts/factoryset/FsAdjItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetLcmType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/FsAdjItem;->SetVal(I)V

    goto :goto_0

    .line 619
    :pswitch_1
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemBrake:Lcom/ts/factoryset/FsAdjItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBrakeDef()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/FsAdjItem;->SetVal(I)V

    goto :goto_0

    .line 623
    :pswitch_2
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemExtUart:Lcom/ts/factoryset/FsAdjItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetExUart()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/FsAdjItem;->SetVal(I)V

    goto :goto_0

    .line 627
    :pswitch_3
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemDvrType:Lcom/ts/factoryset/FsAdjItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDvrType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/FsAdjItem;->SetVal(I)V

    goto :goto_0

    .line 631
    :pswitch_4
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemDtvType:Lcom/ts/factoryset/FsAdjItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDtvType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/FsAdjItem;->SetVal(I)V

    goto :goto_0

    .line 635
    :pswitch_5
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemScrType:Lcom/ts/factoryset/FsAdjItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCtType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/FsAdjItem;->SetVal(I)V

    goto :goto_0

    .line 639
    :pswitch_6
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemCamMute:Lcom/ts/factoryset/FsAdjItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetParkMuteDef()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/FsAdjItem;->SetVal(I)V

    goto :goto_0

    .line 643
    :pswitch_7
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemCamDetect:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamFix()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto :goto_0

    .line 647
    :pswitch_8
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemCamMirror:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCamMir()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto :goto_0

    .line 651
    :pswitch_9
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemAutoNavi:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetAutoNaviDef()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto :goto_0

    .line 655
    :pswitch_a
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemColorLight:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetOptionIll()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto :goto_0

    .line 659
    :pswitch_b
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemLogoOpt:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetOptionLogo()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto :goto_0

    .line 663
    :pswitch_c
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemSWCOpt:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetOptionSW()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto/16 :goto_0

    .line 666
    :pswitch_d
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemACOpt:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetOptionAC()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto/16 :goto_0

    .line 669
    :pswitch_e
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemBackLineOpt:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetOptionCam()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto/16 :goto_0

    .line 673
    :pswitch_f
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemBootWarn:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetOptionWarn()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto/16 :goto_0

    .line 677
    :pswitch_10
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemLastMemory:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetLastMemory()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto/16 :goto_0

    .line 681
    :pswitch_11
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemUsb1Speed:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUsb1Spd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    .line 682
    const-string v2, "FsOtherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FtSet.GetUsb1Spd() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUsb1Spd()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 686
    :pswitch_12
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemUsb2Speed:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUsb2Spd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    .line 687
    const-string v2, "FsOtherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FtSet.GetUsb2Spd() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUsb2Spd()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    :pswitch_13
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemUsbDebug:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUsbHost()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto/16 :goto_0

    .line 695
    :pswitch_14
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemEcdSwap:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetEcdSwap()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto/16 :goto_0

    .line 699
    :pswitch_15
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemDebugOut:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUartDbg()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto/16 :goto_0

    .line 703
    :pswitch_16
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemTvFormat:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetVedioOutFmt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto/16 :goto_0

    .line 707
    :pswitch_17
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemSDSwap:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSdSwap()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto/16 :goto_0

    .line 711
    :pswitch_18
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemGpsMode:Lcom/ts/factoryset/Fs2SelItem;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetGnssMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ts/factoryset/Fs2SelItem;->SetVal(I)V

    goto/16 :goto_0

    .line 715
    :pswitch_19
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mBtName:[C

    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->GetBtName([C)I

    .line 716
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 718
    .local v1, "strName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mBtName:[C

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 729
    :cond_0
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemBtName:Lcom/ts/factoryset/FsInputItem;

    invoke-virtual {v2, v1}, Lcom/ts/factoryset/FsInputItem;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 720
    :cond_1
    iget-object v2, p0, Lcom/ts/factoryset/FsOtherActivity;->mBtName:[C

    aget-char v2, v2, v0

    if-eqz v2, :cond_0

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/factoryset/FsOtherActivity;->mBtName:[C

    aget-char v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 611
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_19
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x63

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 216
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 217
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    .line 218
    .local v1, "id":I
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam2()I

    move-result v4

    .line 219
    .local v4, "val":I
    if-eqz v4, :cond_1

    move v2, v5

    .line 220
    .local v2, "inc":Z
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 372
    :goto_1
    const/16 v5, 0x17

    if-eq v5, v1, :cond_0

    .line 374
    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsOtherActivity;->UpdateItem(I)V

    .line 377
    :cond_0
    return-void

    .end local v2    # "inc":Z
    :cond_1
    move v2, v6

    .line 219
    goto :goto_0

    .line 223
    .restart local v2    # "inc":Z
    :pswitch_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetLcmType()I

    move-result v5

    invoke-static {v5, v6, v8, v2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v4

    .line 224
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetLcmType(I)I

    goto :goto_1

    .line 228
    :pswitch_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBrakeDef()I

    move-result v5

    invoke-static {v5, v6, v8, v2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v4

    .line 229
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetBrakeDef(I)I

    goto :goto_1

    .line 233
    :pswitch_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetExUart()I

    move-result v5

    invoke-static {v5, v6, v7, v2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v4

    .line 234
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetExUart(I)I

    goto :goto_1

    .line 238
    :pswitch_3
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDvrType()I

    move-result v5

    invoke-static {v5, v6, v7, v2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v4

    .line 239
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetDvrType(I)I

    goto :goto_1

    .line 243
    :pswitch_4
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetDtvType()I

    move-result v5

    invoke-static {v5, v6, v7, v2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v4

    .line 244
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetDtvType(I)I

    goto :goto_1

    .line 248
    :pswitch_5
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCtType()I

    move-result v5

    invoke-static {v5, v6, v7, v2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v4

    .line 249
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetCtType(I)I

    goto :goto_1

    .line 253
    :pswitch_6
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetParkMuteDef()I

    move-result v5

    invoke-static {v5, v6, v8, v2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v4

    .line 254
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetParkMuteDef(I)I

    goto :goto_1

    .line 258
    :pswitch_7
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetCamFix(I)I

    goto :goto_1

    .line 262
    :pswitch_8
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetCamMir(I)I

    goto :goto_1

    .line 266
    :pswitch_9
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetAutoNaviDef(I)I

    goto :goto_1

    .line 270
    :pswitch_a
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetOptionIll(I)I

    goto :goto_1

    .line 274
    :pswitch_b
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetOptionLogo(I)I

    goto :goto_1

    .line 278
    :pswitch_c
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetOptionSW(I)I

    goto :goto_1

    .line 281
    :pswitch_d
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetOptionAC(I)I

    goto :goto_1

    .line 284
    :pswitch_e
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetOptionCam(I)I

    goto :goto_1

    .line 288
    :pswitch_f
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetOptionWarn(I)I

    goto/16 :goto_1

    .line 292
    :pswitch_10
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetLastMemory(I)I

    goto/16 :goto_1

    .line 296
    :pswitch_11
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetUsb1Spd(I)I

    goto/16 :goto_1

    .line 300
    :pswitch_12
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetUsb2Spd(I)I

    goto/16 :goto_1

    .line 326
    :pswitch_13
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetUsbHost()I

    move-result v7

    if-nez v7, :cond_2

    if-eqz v4, :cond_2

    .line 328
    const-string v6, "FsOtherActivity"

    const-string v7, "GetUsbHost"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {v5}, Lcom/yyw/ts70xhw/FtSet;->SetUsbHost(I)I

    .line 331
    invoke-static {v5}, Lcom/ts/factoryset/FsOtherActivity;->setUsbMode(I)V

    .line 339
    :goto_2
    iget-object v6, p0, Lcom/ts/factoryset/FsOtherActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 340
    .local v3, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/ts/factoryset/FsOtherActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iget-object v5, p0, Lcom/ts/factoryset/FsOtherActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 336
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    invoke-static {v6}, Lcom/ts/factoryset/FsOtherActivity;->setUsbMode(I)V

    .line 337
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetUsbHost(I)I

    goto :goto_2

    .line 345
    :pswitch_14
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetEcdSwap(I)I

    goto/16 :goto_1

    .line 349
    :pswitch_15
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetUartDbg(I)I

    goto/16 :goto_1

    .line 353
    :pswitch_16
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetVedioOutFmt(I)I

    goto/16 :goto_1

    .line 357
    :pswitch_17
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetSdSwap(I)I

    goto/16 :goto_1

    .line 361
    :pswitch_18
    invoke-static {v4}, Lcom/yyw/ts70xhw/FtSet;->SetGnssMode(I)I

    goto/16 :goto_1

    .line 365
    :pswitch_19
    iget-object v5, p0, Lcom/ts/factoryset/FsOtherActivity;->mBtDlg:Lcom/ts/factoryset/FsInputDlg;

    invoke-virtual {v5, p0, p0, v6}, Lcom/ts/factoryset/FsInputDlg;->createDlg(Landroid/content/Context;Lcom/ts/factoryset/FsInputDlg$onInputOK;Z)V

    goto/16 :goto_1

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_19
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v13, 0x19

    const/4 v2, 0x0

    .line 146
    invoke-super {p0, p1}, Lcom/ts/factoryset/FsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    sget v0, Lcom/ts/MainUI/R$layout;->activity_fs_other:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsOtherActivity;->setContentView(I)V

    .line 149
    sget v0, Lcom/ts/MainUI/R$string;->str_fsmain_other:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsOtherActivity;->topBtnInit(I)V

    .line 150
    const-string v0, "NvRAMAgent"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 151
    .local v9, "binder":Landroid/os/IBinder;
    invoke-static {v9}, Lcom/ts/factoryset/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ts/factoryset/NvRAMAgent;

    move-result-object v0

    sput-object v0, Lcom/ts/factoryset/FsOtherActivity;->mAgent:Lcom/ts/factoryset/NvRAMAgent;

    .line 152
    invoke-direct {p0}, Lcom/ts/factoryset/FsOtherActivity;->updateUsbProtocol()V

    .line 153
    invoke-direct {p0}, Lcom/ts/factoryset/FsOtherActivity;->updateUsbMode()V

    .line 160
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 161
    .local v11, "mLayoutInflater":Landroid/view/LayoutInflater;
    sget v0, Lcom/ts/MainUI/R$id;->lineView:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsOtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 172
    .local v1, "rl":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/ts/factoryset/FsOtherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 174
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/ts/factoryset/FsAdjItem;

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_lcmtype:I

    sget v4, Lcom/ts/MainUI/R$array;->str_fsother_arraylcmstype:I

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/factoryset/FsAdjItem;-><init>(Landroid/view/ViewGroup;IIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemLcmType:Lcom/ts/factoryset/FsAdjItem;

    .line 175
    new-instance v3, Lcom/ts/factoryset/FsAdjItem;

    const/4 v5, 0x1

    sget v6, Lcom/ts/MainUI/R$string;->fs_other_brake:I

    sget v7, Lcom/ts/MainUI/R$array;->str_fsother_arraybrake:I

    move-object v4, v1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/ts/factoryset/FsAdjItem;-><init>(Landroid/view/ViewGroup;IIILandroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemBrake:Lcom/ts/factoryset/FsAdjItem;

    .line 176
    new-instance v3, Lcom/ts/factoryset/FsAdjItem;

    const/4 v5, 0x2

    sget v6, Lcom/ts/MainUI/R$string;->fs_other_extuart:I

    move-object v4, v1

    move v7, v2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/ts/factoryset/FsAdjItem;-><init>(Landroid/view/ViewGroup;IIILandroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemExtUart:Lcom/ts/factoryset/FsAdjItem;

    .line 177
    new-instance v3, Lcom/ts/factoryset/FsAdjItem;

    const/4 v5, 0x3

    sget v6, Lcom/ts/MainUI/R$string;->fs_other_dvr_type:I

    move-object v4, v1

    move v7, v2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/ts/factoryset/FsAdjItem;-><init>(Landroid/view/ViewGroup;IIILandroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemDvrType:Lcom/ts/factoryset/FsAdjItem;

    .line 178
    new-instance v3, Lcom/ts/factoryset/FsAdjItem;

    const/4 v5, 0x4

    sget v6, Lcom/ts/MainUI/R$string;->fs_other_dtv_type:I

    move-object v4, v1

    move v7, v2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/ts/factoryset/FsAdjItem;-><init>(Landroid/view/ViewGroup;IIILandroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemDtvType:Lcom/ts/factoryset/FsAdjItem;

    .line 179
    new-instance v3, Lcom/ts/factoryset/FsAdjItem;

    const/4 v5, 0x5

    sget v6, Lcom/ts/MainUI/R$string;->fs_other_scr_type:I

    move-object v4, v1

    move v7, v2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/ts/factoryset/FsAdjItem;-><init>(Landroid/view/ViewGroup;IIILandroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemScrType:Lcom/ts/factoryset/FsAdjItem;

    .line 180
    new-instance v0, Lcom/ts/factoryset/FsAdjItem;

    const/4 v2, 0x6

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_cam_mute:I

    sget v4, Lcom/ts/MainUI/R$array;->str_fsother_arrparkmute:I

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/factoryset/FsAdjItem;-><init>(Landroid/view/ViewGroup;IIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemCamMute:Lcom/ts/factoryset/FsAdjItem;

    .line 182
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/4 v2, 0x7

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_cam_detect:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_not_detect:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_detect:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemCamDetect:Lcom/ts/factoryset/Fs2SelItem;

    .line 183
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0x8

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_cam_mirror:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_not_mirror:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_mirror:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemCamMirror:Lcom/ts/factoryset/Fs2SelItem;

    .line 184
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0x9

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_auto_navi:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_not_start:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_qd:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemAutoNavi:Lcom/ts/factoryset/Fs2SelItem;

    .line 185
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0xa

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_color_light:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_no:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_have:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemColorLight:Lcom/ts/factoryset/Fs2SelItem;

    .line 186
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0xb

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_logo_opt:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_no:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_have:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemLogoOpt:Lcom/ts/factoryset/Fs2SelItem;

    .line 187
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0xc

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_swc_opt:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_no:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_have:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemSWCOpt:Lcom/ts/factoryset/Fs2SelItem;

    .line 188
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0xd

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_ac_opt:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_no:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_have:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemACOpt:Lcom/ts/factoryset/Fs2SelItem;

    .line 189
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0xe

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_back_opt:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_no:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_have:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemBackLineOpt:Lcom/ts/factoryset/Fs2SelItem;

    .line 191
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0xf

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_boot_warn:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_no:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_have:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemBootWarn:Lcom/ts/factoryset/Fs2SelItem;

    .line 192
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0x10

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_last_mem:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_not_mem:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_memory:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemLastMemory:Lcom/ts/factoryset/Fs2SelItem;

    .line 193
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0x11

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_usb1_speed:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.0"

    const-string v5, "1.1"

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemUsb1Speed:Lcom/ts/factoryset/Fs2SelItem;

    .line 194
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0x12

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_usb2_speed:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.0"

    const-string v5, "1.1"

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemUsb2Speed:Lcom/ts/factoryset/Fs2SelItem;

    .line 195
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0x13

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_usb2_dbg:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_off:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_kq:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemUsbDebug:Lcom/ts/factoryset/Fs2SelItem;

    .line 196
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0x14

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_ecd_swap:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_not_swap:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_swap:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemEcdSwap:Lcom/ts/factoryset/Fs2SelItem;

    .line 197
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0x15

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_debug_out:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_off:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_kq:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemDebugOut:Lcom/ts/factoryset/Fs2SelItem;

    .line 198
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0x16

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_tv_out:I

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NTSC"

    const-string v5, "PAL"

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemTvFormat:Lcom/ts/factoryset/Fs2SelItem;

    .line 199
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    const/16 v2, 0x18

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_sd_swap:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_android_v_l:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_android_v_h:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemSDSwap:Lcom/ts/factoryset/Fs2SelItem;

    .line 200
    new-instance v0, Lcom/ts/factoryset/Fs2SelItem;

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_gps_mode:I

    sget v4, Lcom/ts/MainUI/R$string;->fs_set_kq:I

    sget v5, Lcom/ts/MainUI/R$string;->fs_set_off:I

    move v2, v13

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/factoryset/Fs2SelItem;-><init>(Landroid/view/ViewGroup;IIIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemGpsMode:Lcom/ts/factoryset/Fs2SelItem;

    .line 202
    new-instance v0, Lcom/ts/factoryset/FsInputItem;

    const/16 v2, 0x17

    sget v3, Lcom/ts/MainUI/R$string;->fs_other_bt_name:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/ts/factoryset/FsInputItem;-><init>(Landroid/view/ViewGroup;IILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mItemBtName:Lcom/ts/factoryset/FsInputItem;

    .line 204
    new-instance v0, Lcom/ts/factoryset/FsInputDlg;

    invoke-direct {v0}, Lcom/ts/factoryset/FsInputDlg;-><init>()V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mBtDlg:Lcom/ts/factoryset/FsInputDlg;

    .line 205
    new-instance v0, Lcom/ts/factoryset/FsInputDlg;

    invoke-direct {v0}, Lcom/ts/factoryset/FsInputDlg;-><init>()V

    iput-object v0, p0, Lcom/ts/factoryset/FsOtherActivity;->mDbgDlg:Lcom/ts/factoryset/FsInputDlg;

    .line 206
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-le v10, v13, :cond_0

    .line 211
    return-void

    .line 208
    :cond_0
    invoke-virtual {p0, v10}, Lcom/ts/factoryset/FsOtherActivity;->UpdateItem(I)V

    .line 206
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public onOK(Ljava/lang/String;)V
    .locals 6
    .param p1, "strVal"    # Ljava/lang/String;

    .prologue
    .line 751
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 753
    const/16 v3, 0x20

    new-array v0, v3, [C

    .line 754
    .local v0, "BtName":[C
    const-string v3, "FsOtherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Input val = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 763
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_2

    .line 768
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetBtName([C)I

    .line 769
    const/16 v3, 0x17

    invoke-virtual {p0, v3}, Lcom/ts/factoryset/FsOtherActivity;->UpdateItem(I)V

    .line 772
    .end local v0    # "BtName":[C
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 759
    .restart local v0    # "BtName":[C
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 765
    :cond_2
    aget-char v1, v0, v2

    .line 763
    .local v1, "d":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 743
    invoke-super {p0}, Lcom/ts/factoryset/FsBaseActivity;->onResume()V

    .line 744
    return-void
.end method
