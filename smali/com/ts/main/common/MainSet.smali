.class public Lcom/ts/main/common/MainSet;
.super Ljava/lang/Object;
.source "MainSet.java"


# static fields
.field public static final ACTION_SET_TITLE:Ljava/lang/String; = "android.intent.action.SET_STATUSBAR_TITLE"

.field public static final AV_V:I = 0x2

.field public static final BACK_V:I = 0x0

.field public static final DAB_NEXT:I = 0x2e

.field public static final DAB_PREV:I = 0x2d

.field public static final DTV_V:I = 0x1

.field public static final PLAYER_DDH:I = 0x1

.field public static final PLAYER_KW:I = 0x0

.field public static final PlAYER_CYB:I = 0x2

.field public static final SCREEN_1024X480:I = 0x4

.field public static final SCREEN_1024X600:I = 0x1

.field public static final SCREEN_1280X480:I = 0x5

.field public static final SCREEN_768X1024:I = 0x3

.field public static final SCREEN_800X480:I = 0x2

.field public static final SIM_OWNER_FF:I = 0x3

.field public static final SIM_OWNER_MG:I = 0x1

.field public static final SIM_OWNER_TXZ:I = 0x2

.field public static final SIM_OWNER_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MainSet"

.field static final TS_OEM_PATH:Ljava/lang/String; = "/mnt/sdcard/tsoem"

.field public static bCheckNave:Z

.field public static mContext:Landroid/content/Context;

.field private static mMainSet:Lcom/ts/main/common/MainSet;

.field public static nPlayer:I

.field public static nSimOwner:I


# instance fields
.field EnvATC:Lcom/autochips/storage/EnvironmentATC;

.field public bCeleb:Z

.field bShowold:Z

.field bWrcInint:Z

.field nDelayConnectWrc:I

.field nRet:I

.field nTaskTime:I

.field public seiid:Ljava/lang/String;

.field private toastString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    sput-object v0, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    .line 46
    sput-object v0, Lcom/ts/main/common/MainSet;->mMainSet:Lcom/ts/main/common/MainSet;

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/main/common/MainSet;->bCheckNave:Z

    .line 81
    sput v1, Lcom/ts/main/common/MainSet;->nPlayer:I

    .line 82
    sput v1, Lcom/ts/main/common/MainSet;->nSimOwner:I

    .line 267
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/ts/main/common/MainSet;->toastString:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/ts/main/common/MainSet;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    .line 79
    iput-boolean v1, p0, Lcom/ts/main/common/MainSet;->bCeleb:Z

    .line 730
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/main/common/MainSet;->nRet:I

    .line 748
    iput-boolean v1, p0, Lcom/ts/main/common/MainSet;->bShowold:Z

    .line 770
    iput v1, p0, Lcom/ts/main/common/MainSet;->nTaskTime:I

    .line 771
    iput-boolean v1, p0, Lcom/ts/main/common/MainSet;->bWrcInint:Z

    .line 772
    iput v1, p0, Lcom/ts/main/common/MainSet;->nDelayConnectWrc:I

    .line 44
    return-void
.end method

.method public static DABControl(I)V
    .locals 2
    .param p0, "nCode"    # I

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.microntek.irkeyDown"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v1, "keyCode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method public static GetApkLastModifiedTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "PackName"    # Ljava/lang/String;

    .prologue
    .line 550
    sget-object v4, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 551
    .local v3, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 565
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 553
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 554
    .local v2, "p":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 551
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    :cond_2
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v5, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 559
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 561
    new-instance v0, Ljava/util/Date;

    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 562
    .local v0, "Mydata":Ljava/util/Date;
    goto :goto_1
.end method

.method public static GetHMIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    sget-object v0, Lcom/ts/main/common/MainVerSion;->HMIVER:Ljava/lang/String;

    return-object v0
.end method

.method public static GetInstance()Lcom/ts/main/common/MainSet;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/ts/main/common/MainSet;->mMainSet:Lcom/ts/main/common/MainSet;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/ts/main/common/MainSet;

    invoke-direct {v0}, Lcom/ts/main/common/MainSet;-><init>()V

    sput-object v0, Lcom/ts/main/common/MainSet;->mMainSet:Lcom/ts/main/common/MainSet;

    .line 92
    :cond_0
    sget-object v0, Lcom/ts/main/common/MainSet;->mMainSet:Lcom/ts/main/common/MainSet;

    return-object v0
.end method

.method public static GetMediaVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 728
    sget-object v0, Lcom/ts/main/common/MainVerSion;->MMP_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static GetScreenType()I
    .locals 3

    .prologue
    .line 538
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_screen_show:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "str":Ljava/lang/String;
    const-string v1, "1280x480"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    const/4 v1, 0x5

    .line 543
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static IsAvalidAPPName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 712
    const-string v0, "Android \u7cfb\u7edf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const/4 v0, 0x0

    .line 717
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static IsAvalidPackName(Ljava/lang/String;)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 596
    const/16 v5, 0x35

    new-array v1, v5, [Ljava/lang/String;

    .line 597
    const-string v5, "com.ts."

    aput-object v5, v1, v3

    .line 598
    const-string v5, "com.mediatek."

    aput-object v5, v1, v4

    const/4 v5, 0x2

    .line 599
    const-string v6, "com.autochips."

    aput-object v6, v1, v5

    const/4 v5, 0x3

    .line 600
    const-string v6, "com.tencent."

    aput-object v6, v1, v5

    const/4 v5, 0x4

    .line 601
    const-string v6, "com.antutu."

    aput-object v6, v1, v5

    const/4 v5, 0x5

    .line 602
    const-string v6, "com.example.mywidget"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    .line 603
    const-string v6, "com.anwensoft.cardvr"

    aput-object v6, v1, v5

    const/4 v5, 0x7

    .line 604
    const-string v6, "com.mxtech.videoplayer.pro"

    aput-object v6, v1, v5

    const/16 v5, 0x8

    .line 605
    const-string v6, "com.pachira.tsp.assist"

    aput-object v6, v1, v5

    const/16 v5, 0x9

    .line 606
    const-string v6, "com.txznet.music"

    aput-object v6, v1, v5

    const/16 v5, 0xa

    .line 607
    const-string v6, "com.baidu.appsearch"

    aput-object v6, v1, v5

    const/16 v5, 0xb

    .line 608
    const-string v6, "com.estrongs.android.pop"

    aput-object v6, v1, v5

    const/16 v5, 0xc

    .line 609
    const-string v6, "com.baidu.browser.apps"

    aput-object v6, v1, v5

    const/16 v5, 0xd

    .line 610
    const-string v6, "com.baidu.input"

    aput-object v6, v1, v5

    const/16 v5, 0xe

    .line 611
    const-string v6, "com.kugou"

    aput-object v6, v1, v5

    const/16 v5, 0xf

    .line 612
    const-string v6, "net.easyconn"

    aput-object v6, v1, v5

    const/16 v5, 0x10

    .line 613
    const-string v6, "com.nd.assistance"

    aput-object v6, v1, v5

    const/16 v5, 0x11

    .line 614
    const-string v6, "com.txznet.webchat"

    aput-object v6, v1, v5

    const/16 v5, 0x12

    .line 615
    const-string v6, "com.android.calculator"

    aput-object v6, v1, v5

    const/16 v5, 0x13

    .line 616
    const-string v6, "com.android.calendar"

    aput-object v6, v1, v5

    const/16 v5, 0x14

    .line 617
    const-string v6, "com.android.deskclock"

    aput-object v6, v1, v5

    const/16 v5, 0x15

    .line 618
    const-string v6, "com.android.providers.downloads"

    aput-object v6, v1, v5

    const/16 v5, 0x16

    .line 619
    const-string v6, "com.android.settings"

    aput-object v6, v1, v5

    const/16 v5, 0x17

    .line 620
    const-string v6, "com.android.browser"

    aput-object v6, v1, v5

    const/16 v5, 0x18

    .line 621
    const-string v6, "com.android.chrome"

    aput-object v6, v1, v5

    const/16 v5, 0x19

    .line 622
    const-string v6, "com.android.vending"

    aput-object v6, v1, v5

    const/16 v5, 0x1a

    .line 623
    const-string v6, "com.android.soundrecorder"

    aput-object v6, v1, v5

    const/16 v5, 0x1b

    .line 624
    const-string v6, "com.android.contacts"

    aput-object v6, v1, v5

    const/16 v5, 0x1c

    .line 625
    const-string v6, "com.android.mms"

    aput-object v6, v1, v5

    const/16 v5, 0x1d

    .line 626
    const-string v6, "com.android.gallery"

    aput-object v6, v1, v5

    const/16 v5, 0x1e

    .line 627
    const-string v6, "net.qihoo.launcher.widget.clockweather"

    aput-object v6, v1, v5

    const/16 v5, 0x1f

    .line 628
    const-string v6, "com.mapgoo.diruite"

    aput-object v6, v1, v5

    const/16 v5, 0x20

    .line 629
    const-string v6, "com.glsx.ddbox"

    aput-object v6, v1, v5

    const/16 v5, 0x21

    .line 630
    const-string v6, "net.mapgoo.m10010"

    aput-object v6, v1, v5

    const/16 v5, 0x22

    .line 631
    const-string v6, "com.google.android.apps.plus"

    aput-object v6, v1, v5

    const/16 v5, 0x23

    .line 632
    const-string v6, "com.google.android.gm"

    aput-object v6, v1, v5

    const/16 v5, 0x24

    .line 633
    const-string v6, "com.google.android.gms"

    aput-object v6, v1, v5

    const/16 v5, 0x25

    .line 634
    const-string v6, "com.google.android.googlequicksearchbox"

    aput-object v6, v1, v5

    const/16 v5, 0x26

    .line 635
    const-string v6, "com.android.dialer"

    aput-object v6, v1, v5

    const/16 v5, 0x27

    .line 636
    const-string v6, "cn.manstep.phonemirror"

    aput-object v6, v1, v5

    const/16 v5, 0x28

    .line 637
    const-string v6, "com.edog.car"

    aput-object v6, v1, v5

    const/16 v5, 0x29

    .line 638
    const-string v6, "com.example.specision"

    aput-object v6, v1, v5

    const/16 v5, 0x2a

    .line 639
    const-string v6, "RepliGo Reader"

    aput-object v6, v1, v5

    const/16 v5, 0x2b

    .line 640
    const-string v6, "cn.kuwo.kwmusiccar"

    aput-object v6, v1, v5

    const/16 v5, 0x2c

    .line 641
    const-string v6, "com.hongfans.rearview"

    aput-object v6, v1, v5

    const/16 v5, 0x2d

    .line 642
    const-string v6, "com.ludashi.benchmark"

    aput-object v6, v1, v5

    const/16 v5, 0x2e

    .line 643
    const-string v6, "com.adasplus.ts"

    aput-object v6, v1, v5

    const/16 v5, 0x2f

    .line 644
    const-string v6, "com.synmoon.usbcamera"

    aput-object v6, v1, v5

    const/16 v5, 0x30

    .line 645
    const-string v6, "com.android.soundrecorder"

    aput-object v6, v1, v5

    const/16 v5, 0x31

    .line 646
    const-string v6, "com.cerience.reader.app"

    aput-object v6, v1, v5

    const/16 v5, 0x32

    .line 647
    const-string v6, "com.ex.dabplayer.pad"

    aput-object v6, v1, v5

    const/16 v5, 0x33

    .line 648
    const-string v6, "com.iflytek.inputmethod"

    aput-object v6, v1, v5

    const/16 v5, 0x34

    .line 649
    const-string v6, "com.forfan.wenavi"

    aput-object v6, v1, v5

    .line 653
    .local v1, "inValidStr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-lt v0, v5, :cond_1

    move v3, v4

    .line 674
    :cond_0
    :goto_1
    return v3

    .line 655
    :cond_1
    sget-object v5, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 656
    .local v2, "it":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 661
    aget-object v5, v1, v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 663
    const-string v5, "map"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "navi"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 665
    :cond_2
    const-string v5, "net.mapgoo.m10010"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 669
    goto :goto_1

    .line 653
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static IsBmwX1()Z
    .locals 3

    .prologue
    .line 433
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num_show:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "str":Ljava/lang/String;
    const-string v1, "BMWX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const/4 v1, 0x1

    .line 438
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static IsVSUI()Z
    .locals 3

    .prologue
    .line 424
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num_show:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "str":Ljava/lang/String;
    const-string v1, "VSUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const/4 v1, 0x1

    .line 429
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static SendIntent(Ljava/lang/String;)V
    .locals 2
    .param p0, "Str"    # Ljava/lang/String;

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method public static SendVrStateToAutoKing(I)V
    .locals 3
    .param p0, "nState"    # I

    .prologue
    .line 279
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/common/MainSet;->IsLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v0, "Aintent":Landroid/content/Intent;
    const-string v1, "com.globalconstant.BROADCAST_CAR_SEND_CMD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v1, "domain"

    const-string v2, "autoking"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v1, "action"

    const-string v2, "set_vr_status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v1, "Mode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    .end local v0    # "Aintent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static SetTouchBall(Z)V
    .locals 2
    .param p0, "bShow"    # Z

    .prologue
    .line 500
    if-eqz p0, :cond_0

    .line 503
    const-string v0, "persist.mytouch.enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    const-string v0, "persist.mytouch.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isZh()Z
    .locals 3

    .prologue
    .line 511
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 512
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "language":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    const/4 v2, 0x1

    .line 516
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isrSimpZh()Z
    .locals 3

    .prologue
    .line 528
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 529
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "language":Ljava/lang/String;
    const-string v2, "zh-rCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    const/4 v2, 0x1

    .line 533
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isrTwZh()Z
    .locals 3

    .prologue
    .line 519
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 520
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "language":Ljava/lang/String;
    const-string v2, "zh-rTW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    const/4 v2, 0x1

    .line 524
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public CheckCamSignal(Z)V
    .locals 0
    .param p1, "bCamera"    # Z

    .prologue
    .line 922
    return-void
.end method

.method CheckMG()V
    .locals 3

    .prologue
    .line 1209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.mapgoo.simtool.info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "getCache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1211
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1212
    return-void
.end method

.method public CheckSimOwner()V
    .locals 2

    .prologue
    .line 1217
    const-string v0, "MainSet"

    const-string v1, "CheckSimOwner() =="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-virtual {p0}, Lcom/ts/main/common/MainSet;->CheckMG()V

    .line 1219
    return-void
.end method

.method CopyandInstallAPK(Z)V
    .locals 12
    .param p1, "bcopy"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1096
    const-string v2, ""

    .line 1098
    .local v2, "installPath":Ljava/lang/String;
    iget-object v7, p0, Lcom/ts/main/common/MainSet;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    invoke-virtual {v7}, Lcom/autochips/storage/EnvironmentATC;->getStorageMountedPaths()[Ljava/lang/String;

    move-result-object v6

    .line 1099
    .local v6, "strSDMountedPath":[Ljava/lang/String;
    const-string v7, "MainSet"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "strSDMountedPath.length =="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-lt v1, v7, :cond_0

    .line 1124
    const/4 v4, 0x0

    .line 1125
    .local v4, "myfile":Ljava/io/File;
    if-eqz p1, :cond_2

    .line 1127
    new-instance v4, Ljava/io/File;

    .end local v4    # "myfile":Ljava/io/File;
    const-string v7, "/mnt/sdcard/tsoem"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1135
    .restart local v4    # "myfile":Ljava/io/File;
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1137
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    const-string v8, "\u5f00\u59cb\u5b89\u88c5"

    iput-object v8, v7, Lcom/ts/main/common/MainSet;->toastString:Ljava/lang/String;

    .line 1139
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1140
    .local v3, "lfileFiles":[Ljava/io/File;
    const/4 v1, 0x0

    :goto_2
    array-length v7, v3

    if-lt v1, v7, :cond_3

    .line 1159
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    const-string v8, "\u5b89\u88c5\u5b8c\u6210"

    iput-object v8, v7, Lcom/ts/main/common/MainSet;->toastString:Ljava/lang/String;

    .line 1164
    .end local v3    # "lfileFiles":[Ljava/io/File;
    :goto_3
    return-void

    .line 1102
    .end local v4    # "myfile":Ljava/io/File;
    :cond_0
    const-string v7, "MainSet"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "strSDMountedPath[i] =="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    aget-object v7, v6, v1

    const-string v8, "emulated"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    aget-object v7, v6, v1

    const-string v8, "ctfs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1105
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v6, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/tsoem"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1107
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v6, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/tsoem"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1108
    if-eqz p1, :cond_1

    .line 1110
    new-instance v7, Ljava/io/File;

    const-string v8, "/mnt/sdcard/tsoem"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/ts/MainUI/TsFile;->deleteFile(Ljava/io/File;)V

    .line 1111
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    const-string v8, "\u5f00\u59cb\u62f7\u8d1d"

    iput-object v8, v7, Lcom/ts/main/common/MainSet;->toastString:Ljava/lang/String;

    .line 1112
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v6, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/tsoem"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/mnt/sdcard/tsoem"

    invoke-static {v7, v8}, Lcom/ts/MainUI/TsFile;->copyFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    const-string v8, "\u62f7\u8d1d\u5b8c\u6210"

    iput-object v8, v7, Lcom/ts/main/common/MainSet;->toastString:Ljava/lang/String;

    .line 1100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1131
    .restart local v4    # "myfile":Ljava/io/File;
    :cond_2
    new-instance v4, Ljava/io/File;

    .end local v4    # "myfile":Ljava/io/File;
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "myfile":Ljava/io/File;
    goto/16 :goto_1

    .line 1142
    .restart local v3    # "lfileFiles":[Ljava/io/File;
    :cond_3
    const-string v7, "MainSet"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " lfileFiles[i].pathSeparator;"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u5b89\u88c5:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/ts/main/common/MainSet;->toastString:Ljava/lang/String;

    .line 1144
    new-array v0, v11, [Ljava/lang/String;

    const-string v7, "pm install -r "

    aput-object v7, v0, v10

    .line 1145
    .local v0, "commands":[Ljava/lang/String;
    aget-object v7, v0, v10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    .line 1146
    invoke-static {v0, v11}, Lcom/ts/main/common/ShellUtils;->execCommand([Ljava/lang/String;Z)Lcom/ts/main/common/ShellUtils$CommandResult;

    move-result-object v5

    .line 1147
    .local v5, "result":Lcom/ts/main/common/ShellUtils$CommandResult;
    iget-object v7, v5, Lcom/ts/main/common/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 1149
    const-string v7, "MainSet"

    iget-object v8, v5, Lcom/ts/main/common/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_4
    iget-object v7, v5, Lcom/ts/main/common/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 1153
    const-string v7, "MainSet"

    iget-object v8, v5, Lcom/ts/main/common/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1162
    .end local v0    # "commands":[Ljava/lang/String;
    .end local v3    # "lfileFiles":[Ljava/io/File;
    .end local v5    # "result":Lcom/ts/main/common/ShellUtils$CommandResult;
    :cond_6
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v7

    const-string v8, "\u65e0\u53ef\u5b89\u88c5\u6587\u4ef6"

    iput-object v8, v7, Lcom/ts/main/common/MainSet;->toastString:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public DealFactorySec(Ljava/lang/String;)V
    .locals 7
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x14

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 974
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 976
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_mcuupdate_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 978
    const/16 v2, 0x12

    invoke-static {v2, v5}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_csudy_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 982
    const/16 v2, 0x13

    invoke-static {v2, v5}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto :goto_0

    .line 984
    :cond_2
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_getid_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 987
    const/16 v2, 0xe

    new-array v0, v2, [B

    .line 988
    .local v0, "mcuid":[B
    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->GetSerialId([B)I

    .line 989
    const-string v2, "MainSet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mcu.GetXYZ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 992
    .end local v0    # "mcuid":[B
    :cond_3
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_powerreset_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 994
    invoke-static {v6}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    goto :goto_0

    .line 996
    :cond_4
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_toauth_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 998
    const/16 v2, 0x10

    invoke-static {v2, v5}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 1001
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1004
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_bootlogo_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1006
    const/16 v2, 0x11

    invoke-static {v2, v5}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 1008
    :cond_6
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_fatctory_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1010
    const/16 v2, 0xf

    invoke-static {v2, v5}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 1012
    :cond_7
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_filecopy_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1014
    invoke-static {v6, v5}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 1016
    :cond_8
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_screenshot_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1018
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    const-string v3, "\u5f00\u542f\u622a\u5c4f\u6a21\u5f0f"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1019
    sput-boolean v4, Lcom/ts/main/common/MainUI;->bIsScreenMode:Z

    goto/16 :goto_0

    .line 1021
    :cond_9
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_radio_reset_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1023
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->TuneTask(I)I

    goto/16 :goto_0

    .line 1025
    :cond_a
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_destroy_id_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1027
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/main/common/MainSet;->IsMathToMcu()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1029
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    const-string v3, "\u6ce8\u518c\u7801\u6e05\u9664"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1030
    invoke-static {}, Lcom/ts/MainUI/AuthServer;->GetInstance()Lcom/ts/MainUI/AuthServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/AuthServer;->DestroyID()V

    goto/16 :goto_0

    .line 1034
    :cond_b
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_reboot_id_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1036
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1037
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1039
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_c
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_testmode_id_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1041
    const-string v2, "com.ts.MainUI"

    const-string v3, "com.ts.main.auth.FactoryMainActivity"

    invoke-static {v2, v3}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1044
    :cond_d
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_destroy_id_root_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1046
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    const-string v3, "\u6ce8\u518c\u7801\u6e05\u9664"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1047
    invoke-static {}, Lcom/ts/MainUI/AuthServer;->GetInstance()Lcom/ts/MainUI/AuthServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/MainUI/AuthServer;->DestroyID()V

    goto/16 :goto_0

    .line 1049
    :cond_e
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_install_id_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1052
    new-instance v2, Lcom/ts/main/common/MainSet$2;

    invoke-direct {v2, p0}, Lcom/ts/main/common/MainSet$2;-><init>(Lcom/ts/main/common/MainSet;)V

    .line 1064
    invoke-virtual {v2}, Lcom/ts/main/common/MainSet$2;->start()V

    goto/16 :goto_0

    .line 1069
    :cond_f
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_install2_id_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    new-instance v2, Lcom/ts/main/common/MainSet$3;

    invoke-direct {v2, p0}, Lcom/ts/main/common/MainSet$3;-><init>(Lcom/ts/main/common/MainSet;)V

    .line 1084
    invoke-virtual {v2}, Lcom/ts/main/common/MainSet$3;->start()V

    goto/16 :goto_0
.end method

.method public DealTask(I)I
    .locals 6
    .param p1, "nParat"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 775
    const/16 v1, 0x81

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 779
    iget-boolean v1, p0, Lcom/ts/main/common/MainSet;->bWrcInint:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/bt/BtExe;->isBtEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    invoke-static {}, Lcom/ts/main/txz/Wrc;->GetInstance()Lcom/ts/main/txz/Wrc;

    move-result-object v1

    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/ts/main/txz/Wrc;->Inint(Landroid/content/Context;)V

    .line 782
    invoke-static {}, Lcom/ts/main/txz/Wrc;->GetInstance()Lcom/ts/main/txz/Wrc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/txz/Wrc;->startScan()V

    .line 783
    iput-boolean v4, p0, Lcom/ts/main/common/MainSet;->bWrcInint:Z

    .line 785
    :cond_0
    iget-boolean v1, p0, Lcom/ts/main/common/MainSet;->bWrcInint:Z

    if-eqz v1, :cond_1

    .line 787
    iget v1, p0, Lcom/ts/main/common/MainSet;->nDelayConnectWrc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ts/main/common/MainSet;->nDelayConnectWrc:I

    .line 788
    iget v1, p0, Lcom/ts/main/common/MainSet;->nDelayConnectWrc:I

    rem-int/lit16 v1, v1, 0x3e8

    if-nez v1, :cond_1

    .line 790
    const-string v1, "MainSet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wrc.GetInstance().isConnectWrc()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ts/main/txz/Wrc;->GetInstance()Lcom/ts/main/txz/Wrc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/main/txz/Wrc;->isConnectWrc()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-static {}, Lcom/ts/main/txz/Wrc;->GetInstance()Lcom/ts/main/txz/Wrc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/txz/Wrc;->isConnectWrc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 794
    invoke-static {}, Lcom/ts/main/txz/Wrc;->GetInstance()Lcom/ts/main/txz/Wrc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/txz/Wrc;->startScan()V

    .line 810
    :cond_1
    iget v1, p0, Lcom/ts/main/common/MainSet;->nTaskTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ts/main/common/MainSet;->nTaskTime:I

    .line 811
    iget v1, p0, Lcom/ts/main/common/MainSet;->nTaskTime:I

    rem-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/ts/main/common/MainSet;->IsvideoForbiden()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklisOn()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 816
    invoke-static {}, Lcom/ts/main/common/WinShow;->getTopPackName()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "Toppckname":Ljava/lang/String;
    const-string v1, "MainSet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Toppckname="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainSet;->bIsForbidenWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 820
    invoke-virtual {p0, v4}, Lcom/ts/main/common/MainSet;->FirbidenWinShow(Z)V

    .line 836
    .end local v0    # "Toppckname":Ljava/lang/String;
    :goto_0
    iput v5, p0, Lcom/ts/main/common/MainSet;->nTaskTime:I

    .line 838
    :cond_2
    iget-object v1, p0, Lcom/ts/main/common/MainSet;->toastString:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 840
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ts/main/common/MainSet;->toastString:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 841
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ts/main/common/MainSet;->toastString:Ljava/lang/String;

    .line 845
    :cond_3
    return v4

    .line 824
    .restart local v0    # "Toppckname":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/ts/main/common/MainSet;->FirbidenWinShow(Z)V

    goto :goto_0

    .line 831
    .end local v0    # "Toppckname":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/ts/main/common/MainSet;->FirbidenWinShow(Z)V

    goto :goto_0
.end method

.method FirbidenWinShow(Z)V
    .locals 1
    .param p1, "bShow"    # Z

    .prologue
    .line 751
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/ts/main/common/MainSet;->bShowold:Z

    if-nez v0, :cond_1

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/main/common/MainSet;->bShowold:Z

    .line 755
    invoke-static {}, Lcom/ts/main/common/MainVolume;->GetInstance()Lcom/ts/main/common/MainVolume;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainVolume;->InintForbidenScreen()V

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/ts/main/common/MainSet;->bShowold:Z

    if-eqz v0, :cond_0

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/main/common/MainSet;->bShowold:Z

    .line 761
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 763
    invoke-static {}, Lcom/ts/main/common/MainVolume;->GetInstance()Lcom/ts/main/common/MainVolume;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainVolume;->Destroy()V

    goto :goto_0
.end method

.method public FtDestroy()V
    .locals 1

    .prologue
    .line 734
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/main/common/MainSet;->nRet:I

    .line 735
    return-void
.end method

.method public FtSetInint()I
    .locals 2

    .prologue
    .line 739
    iget v0, p0, Lcom/ts/main/common/MainSet;->nRet:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 741
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->Init()I

    move-result v0

    iput v0, p0, Lcom/ts/main/common/MainSet;->nRet:I

    .line 744
    :cond_0
    iget v0, p0, Lcom/ts/main/common/MainSet;->nRet:I

    return v0
.end method

.method public GetMountedStorage()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/ts/main/common/MainSet;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/autochips/storage/EnvironmentATC;

    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autochips/storage/EnvironmentATC;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/main/common/MainSet;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    .line 297
    iget-object v0, p0, Lcom/ts/main/common/MainSet;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    invoke-virtual {v0}, Lcom/autochips/storage/EnvironmentATC;->getStorageMountedPaths()[Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ts/main/common/MainSet;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    invoke-virtual {v0}, Lcom/autochips/storage/EnvironmentATC;->getStorageMountedPaths()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method GetSerid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    const/16 v1, 0xe

    new-array v0, v1, [B

    .line 307
    .local v0, "mcuid":[B
    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->GetSerialId([B)I

    .line 308
    invoke-static {v0}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Inint(I)V
    .locals 8
    .param p1, "nBatFirst"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 103
    const/16 v3, 0xe

    new-array v2, v3, [B

    .line 104
    .local v2, "mcuid":[B
    invoke-static {v2}, Lcom/yyw/ts70xhw/Mcu;->GetSerialId([B)I

    .line 105
    invoke-static {v2}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/main/common/MainSet;->seiid:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTouchBall()I

    move-result v3

    if-ne v3, v6, :cond_9

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.ts.mytouch.TouchService"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    sget-object v3, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    :goto_0
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v3

    const-string v4, "LEMA"

    invoke-virtual {v3, v4}, Lcom/ts/main/common/MainSet;->IsCustom(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne p1, v6, :cond_0

    .line 121
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->isAutoConnect()Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->autoConnectSw()V

    .line 130
    :cond_0
    invoke-static {}, Lcom/ts/main/common/MainSet;->IsVSUI()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/ts/main/common/MainSet;->IsBmwX1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    :cond_1
    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v3

    iput v7, v3, Lcom/ts/MainUI/TsDisplay;->nSetTcon:I

    .line 133
    const-string v3, "MainSet"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "******************WmInit mDisplay.nSetTcon = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ts/MainUI/TsDisplay;->GetInstance()Lcom/ts/MainUI/TsDisplay;

    move-result-object v5

    iget v5, v5, Lcom/ts/MainUI/TsDisplay;->nSetTcon:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    invoke-static {}, Lcom/ts/main/common/MainSet;->isZh()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne p1, v6, :cond_3

    .line 137
    sget-object v3, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 138
    .local v1, "mAlarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Lcom/ts/main/common/MainSet;->isrTwZh()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 139
    const-string v3, "Asia/Taipei"

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 146
    .end local v1    # "mAlarmManager":Landroid/app/AlarmManager;
    :cond_3
    :goto_1
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/main/common/MainSet;->IsLocal()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 147
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetStandByTime()I

    move-result v3

    if-nez v3, :cond_4

    .line 148
    invoke-static {v6}, Lcom/yyw/ts70xhw/FtSet;->SetStandByTime(I)I

    .line 150
    :cond_4
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v3

    const-string v4, "com.ts.tts_touch"

    invoke-virtual {v3, v4}, Lcom/ts/MainUI/Evc;->AddNaviWhileList(Ljava/lang/String;)V

    .line 151
    const-string v3, "forfan.mainnavi.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_5
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v3

    const-string v4, "com.adasplus.ts"

    invoke-virtual {v3, v4}, Lcom/ts/MainUI/Evc;->AddNaviWhileList(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetOptionSW()I

    move-result v3

    if-nez v3, :cond_b

    .line 159
    const-string v3, "forfan.swc.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_2
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v3

    const-string v4, "com.glsx.ddbox"

    invoke-virtual {v3, v4}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 169
    sput v6, Lcom/ts/main/common/MainSet;->nPlayer:I

    .line 182
    :goto_3
    const-string v3, "MainSet"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MainSet.nPlayer = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/ts/main/common/MainSet;->nPlayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v3, "com.baidu.input"

    invoke-virtual {p0, v3}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 187
    const-string v3, "com.baidu.input/.ImeService"

    invoke-virtual {p0, v3}, Lcom/ts/main/common/MainSet;->SetDefaultInput(Ljava/lang/String;)V

    .line 197
    :cond_6
    :goto_4
    if-ne p1, v6, :cond_7

    .line 200
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/MainUI/Evc;->SetMicGain()V

    .line 203
    :cond_7
    invoke-virtual {p0}, Lcom/ts/main/common/MainSet;->IsXXGD()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 205
    const-string v3, "forfan.maincommon.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v3, "forfan.mainshow.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "forfan.mainvol.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v3, "forfan.maineq.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v3, "forfan.mainvideo.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v3, "forfan.mainnavi.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v3, "forfan.mainnbt.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v3, "forfan.swc.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v3, "forfan.mainversion.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_8
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    sput-boolean v6, Lcom/ts/MainUI/Evc;->bNaviVol:Z

    .line 216
    invoke-virtual {p0}, Lcom/ts/main/common/MainSet;->SetToFDD()V

    .line 219
    return-void

    .line 114
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.ts.mytouch.TouchService"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    sget-object v3, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 142
    .restart local v1    # "mAlarmManager":Landroid/app/AlarmManager;
    :cond_a
    const-string v3, "Asia/Shanghai"

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    .end local v1    # "mAlarmManager":Landroid/app/AlarmManager;
    :cond_b
    const-string v3, "forfan.swc.enable"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 171
    :cond_c
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v3

    const-string v4, "com.hongfans.rearview"

    invoke-virtual {v3, v4}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 173
    invoke-static {}, Lcom/ts/main/txz/Cyb;->GetInstance()Lcom/ts/main/txz/Cyb;

    move-result-object v3

    sget-object v4, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/ts/main/txz/Cyb;->Inint(Landroid/content/Context;)V

    .line 174
    const/4 v3, 0x2

    sput v3, Lcom/ts/main/common/MainSet;->nPlayer:I

    goto/16 :goto_3

    .line 178
    :cond_d
    sput v7, Lcom/ts/main/common/MainSet;->nPlayer:I

    goto/16 :goto_3

    .line 189
    :cond_e
    const-string v3, "com.iflytek.inputmethod"

    invoke-virtual {p0, v3}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 191
    const-string v3, "com.iflytek.inputmethod/.FlyIME"

    invoke-virtual {p0, v3}, Lcom/ts/main/common/MainSet;->SetDefaultInput(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public IsBMWVer()Z
    .locals 3

    .prologue
    .line 373
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num_show:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "str":Ljava/lang/String;
    const-string v1, "BMW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const/4 v1, 0x1

    .line 378
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsCustom(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 364
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const/4 v1, 0x1

    .line 369
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsDIAO()Z
    .locals 3

    .prologue
    .line 346
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "str":Ljava/lang/String;
    const-string v1, "DIAO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const/4 v1, 0x1

    .line 351
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsGLSXVer()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 405
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num_show:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "str":Ljava/lang/String;
    const-string v1, "GLSX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 410
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public IsHaveApk(Ljava/lang/String;)Z
    .locals 6
    .param p1, "PackName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 572
    sget-object v4, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 573
    .local v2, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 587
    :goto_1
    return v3

    .line 575
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 576
    .local v1, "p":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 573
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    :cond_2
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v5, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 581
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 584
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public IsHaveCamSignal()Z
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x1

    return v0
.end method

.method public IsLocal()Z
    .locals 3

    .prologue
    .line 489
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num_show:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "str":Ljava/lang/String;
    const-string v1, "LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    const/4 v1, 0x1

    .line 494
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsMAIXIN()Z
    .locals 3

    .prologue
    .line 337
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "str":Ljava/lang/String;
    const-string v1, "MAIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x1

    .line 342
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsMathToMcu()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 313
    invoke-virtual {p0}, Lcom/ts/main/common/MainSet;->GetSerid()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ts/MainUI/R$string;->custom_num:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v1

    .line 317
    :cond_1
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->custom_num:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "str":Ljava/lang/String;
    const-string v2, "TSKJ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/ts/main/common/MainSet;->GetSerid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TSKJ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ts/main/common/MainSet;->GetSerid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOCA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsSMSI()Z
    .locals 3

    .prologue
    .line 355
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "str":Ljava/lang/String;
    const-string v1, "SMSI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const/4 v1, 0x1

    .line 360
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsSZTB()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 414
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num_show:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "str":Ljava/lang/String;
    const-string v1, "SZTB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 419
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public IsTestMode()Z
    .locals 3

    .prologue
    .line 327
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "str":Ljava/lang/String;
    const-string v1, "TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const/4 v1, 0x1

    .line 332
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsXT5()Z
    .locals 3

    .prologue
    .line 383
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num_show:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "str":Ljava/lang/String;
    const-string v1, "XT5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const/4 v1, 0x1

    .line 388
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsXXGD()Z
    .locals 3

    .prologue
    .line 394
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$string;->custom_num_show:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "str":Ljava/lang/String;
    const-string v1, "XXGD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    const/4 v1, 0x1

    .line 399
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsvideoForbiden()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 849
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->GetDriveVideo()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->GetBrake()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method SetDefaultInput(Ljava/lang/String;)V
    .locals 3
    .param p1, "Input"    # Ljava/lang/String;

    .prologue
    .line 236
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "defaultIme":Ljava/lang/String;
    const-string v1, "MainSet"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-eqz v0, :cond_0

    const-string v1, "com.android.inputmethod.latin/.LatinIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_input_methods"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    :cond_0
    return-void
.end method

.method SetGarm(I)V
    .locals 0
    .param p1, "nIntex"    # I

    .prologue
    .line 905
    invoke-static {p1}, Lcom/ts/main/MiraVision/MiraVisionJni;->setGammaIndex(I)V

    .line 906
    return-void
.end method

.method SetGpsMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 222
    sget-object v0, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    .line 223
    const-string v2, "location_toggle"

    .line 222
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    sget-object v0, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    sget-object v0, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    const-string v1, "gps"

    .line 226
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 229
    sget-object v0, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    const-string v1, "network"

    .line 229
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 232
    return-void
.end method

.method public SetToFDD()V
    .locals 2

    .prologue
    .line 1200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1201
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.setdefaultPhone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    const-string v1, "com.ts.forfan"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    sget-object v1, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1205
    return-void
.end method

.method public SetVideoChannel(I)V
    .locals 3
    .param p1, "nChannel"    # I

    .prologue
    .line 961
    invoke-static {p1}, Lcom/yyw/ts70xhw/Iop;->SetVideoChannel(I)I

    .line 964
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_0
    return-void

    .line 965
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public StartKw()Z
    .locals 2

    .prologue
    .line 1169
    const-string v0, "cn.kuwo.kwmusiccar"

    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    sget-object v0, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    const-string v1, "cn.kuwo.kwmusiccar"

    invoke-virtual {p0, v0, v1}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    .line 1172
    const/4 v0, 0x1

    .line 1174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StartXMLY()Z
    .locals 2

    .prologue
    .line 1179
    const-string v0, "com.ximalaya.ting.android.car"

    invoke-virtual {p0, v0}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    sget-object v0, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    const-string v1, "com.ximalaya.ting.android.car"

    invoke-virtual {p0, v0, v1}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    .line 1182
    const/4 v0, 0x1

    .line 1184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public TwShowTitle(Ljava/lang/String;)V
    .locals 4
    .param p1, "Str"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.SET_STATUSBAR_TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method bCheckFist()Z
    .locals 5

    .prologue
    .line 442
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 445
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/ceshi.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/ceshi.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ceshi"

    invoke-static {v2, v3}, Lcom/ts/MainUI/TsFile;->writeFileSdcardFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    sget-object v2, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ts/main/common/MainSet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ts/MainUI/R$string;->boot_ok_restart:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 465
    new-instance v2, Lcom/ts/main/common/MainSet$1;

    invoke-direct {v2, p0}, Lcom/ts/main/common/MainSet$1;-><init>(Lcom/ts/main/common/MainSet;)V

    .line 477
    invoke-virtual {v2}, Lcom/ts/main/common/MainSet$1;->start()V

    .line 482
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 459
    .restart local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method bIsForbidenWhiteList(Ljava/lang/String;)Z
    .locals 9
    .param p1, "Str"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 855
    const-string v6, "map"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "navi"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 899
    :cond_1
    :goto_0
    return v4

    .line 860
    :cond_2
    const/16 v6, 0x10

    new-array v1, v6, [Ljava/lang/String;

    .line 861
    const-string v6, "com.android.launcher"

    aput-object v6, v1, v4

    .line 862
    const-string v6, "com.android.launcher3"

    aput-object v6, v1, v5

    const/4 v6, 0x2

    .line 863
    const-string v7, "com.ts.MainUI"

    aput-object v7, v1, v6

    .line 864
    const-string v6, "com.android.settings"

    aput-object v6, v1, v8

    const/4 v6, 0x4

    .line 865
    const-string v7, "com.ts.dvdplayer"

    aput-object v7, v1, v6

    const/4 v6, 0x5

    .line 866
    const-string v7, "com.android.calculator"

    aput-object v7, v1, v6

    const/4 v6, 0x6

    .line 867
    const-string v7, "com.android.calendar"

    aput-object v7, v1, v6

    const/4 v6, 0x7

    .line 868
    const-string v7, "com.ex.dabplayer.pad"

    aput-object v7, v1, v6

    const/16 v6, 0x8

    .line 869
    const-string v7, "com.android.soundrecorder"

    aput-object v7, v1, v6

    const/16 v6, 0x9

    .line 870
    const-string v7, "com.android.dialer"

    aput-object v7, v1, v6

    const/16 v6, 0xa

    .line 871
    const-string v7, "com.example.specision"

    aput-object v7, v1, v6

    const/16 v6, 0xb

    .line 872
    const-string v7, "RepliGo Reader"

    aput-object v7, v1, v6

    const/16 v6, 0xc

    .line 873
    const-string v7, "net.easyconn"

    aput-object v7, v1, v6

    const/16 v6, 0xd

    .line 874
    const-string v7, "android"

    aput-object v7, v1, v6

    const/16 v6, 0xe

    .line 875
    const-string v7, "com.android.wallpaper.livepicker"

    aput-object v7, v1, v6

    const/16 v6, 0xf

    .line 876
    const-string v7, "com.android.packageinstaller"

    aput-object v7, v1, v6

    .line 879
    .local v1, "ValidStr":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v1

    if-lt v3, v6, :cond_3

    .line 891
    const/16 v6, 0x80

    new-array v2, v6, [B

    .line 892
    .local v2, "byteNavipath":[B
    invoke-static {v2}, Lcom/yyw/ts70xhw/StSet;->GetNaviPack([B)I

    .line 893
    invoke-static {v2}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "NaviPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 896
    goto :goto_0

    .line 880
    .end local v0    # "NaviPath":Ljava/lang/String;
    .end local v2    # "byteNavipath":[B
    :cond_3
    aget-object v6, v1, v3

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 882
    const-string v6, "com.ts.dvdplayer"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ts/MainUI/Evc;->GetWorkMode()I

    move-result v6

    if-eq v6, v8, :cond_1

    :cond_4
    move v4, v5

    .line 887
    goto/16 :goto_0

    .line 879
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public openApplication(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 680
    const/4 v6, 0x0

    .line 682
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 687
    :goto_0
    if-eqz v6, :cond_0

    .line 691
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 692
    .local v7, "resolveIntent":Landroid/content/Intent;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 694
    .local v5, "pManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 697
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 698
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_0

    .line 699
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 700
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 701
    .local v1, "className":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 703
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 705
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 708
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pManager":Landroid/content/pm/PackageManager;
    .end local v7    # "resolveIntent":Landroid/content/Intent;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void

    .line 683
    :catch_0
    move-exception v3

    .line 684
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x0

    .line 685
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public tranalateIntoString(I)Ljava/lang/String;
    .locals 4
    .param p1, "freq"    # I

    .prologue
    .line 1188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 1191
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const-string v3, "."

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1194
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
