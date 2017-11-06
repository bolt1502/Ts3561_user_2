.class public Lcom/ts/main/auth/TestMainActivity;
.super Landroid/app/Activity;
.source "TestMainActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final BT_TEST:I = 0x3

.field private static final CHECK_OK:I = 0x0

.field private static final DVD_TEST:I = 0x4

.field private static final DataFile:Ljava/lang/String; = "/sdcard/scj_test/test.bin"

.field private static final DataFilePath:Ljava/lang/String; = "/sdcard/scj_test/"

.field static EnvATC:Lcom/autochips/storage/EnvironmentATC; = null

.field private static final GPS_TEST:I = 0x2

.field private static final SDDataFile:Ljava/lang/String; = "/storage/ext_sdcard1/test.bin"

.field private static final SDDataFile2:Ljava/lang/String; = "/storage/ext_sdcard2/test.bin"

.field private static final SDDataFilePath:Ljava/lang/String; = "/storage/ext_sdcard1"

.field private static final SDDataFilePath2:Ljava/lang/String; = "/storage/ext_sdcard2"

.field private static final SD_TEST:I = 0x5

.field private static final TAG:Ljava/lang/String; = "[scj:]Test"

.field private static final TEST_NUM:I = 0x5

.field private static final TEST_TOTAL_TIME:I = 0x5a

.field private static final USBDataFile:Ljava/lang/String; = "/storage/udisk2/test.bin"

.field private static final USBDataFile2:Ljava/lang/String; = "/storage/udisk1/test.bin"

.field private static final USBDataFilePath:Ljava/lang/String; = "/storage/udisk2"

.field private static final USBDataFilePath2:Ljava/lang/String; = "/storage/udisk1"

.field private static final USB_TEST:I = 0x1

.field static nNum:I


# instance fields
.field BtVersion:Landroid/widget/TextView;

.field DvpVersion:Landroid/widget/TextView;

.field IcVersion:Landroid/widget/TextView;

.field MemSize:Ljava/lang/String;

.field ShowInfoButton:Lcom/ts/other/ParamButton;

.field private Showinfo:[Ljava/lang/String;

.field StartButton:Lcom/ts/other/ParamButton;

.field Starttime:J

.field TestManage:Lcom/ts/other/RelativeLayoutManager;

.field TestResultInfo:[Landroid/widget/TextView;

.field Time:I

.field private gpsStatusListener:Landroid/location/GpsStatus$Listener;

.field private locationListener:Landroid/location/LocationListener;

.field locationManager:Landroid/location/LocationManager;

.field mBtExe:Lcom/ts/bt/BtExe;

.field private mtsivSatelliteSignal:Lcom/ts/main/auth/TsImageView;

.field nData:[I

.field nStep:I

.field nTestMode:I

.field private satelliteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private satellitesSignalPaint:Lcom/ts/main/auth/TsImageView$UserPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    sput v0, Lcom/ts/main/auth/TestMainActivity;->nNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    .line 83
    iput v3, p0, Lcom/ts/main/auth/TestMainActivity;->nTestMode:I

    .line 85
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->mBtExe:Lcom/ts/bt/BtExe;

    .line 86
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ts/main/auth/TestMainActivity;->Starttime:J

    .line 95
    iput v3, p0, Lcom/ts/main/auth/TestMainActivity;->Time:I

    .line 98
    new-array v0, v2, [Ljava/lang/String;

    .line 99
    const-string v1, "USB\u6d4b\u8bd5"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 100
    const-string v2, "GPS\u6d4b\u8bd5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 101
    const-string v2, "\u84dd\u7259\u6d4b\u8bd5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 102
    const-string v2, "DVD\u6d4b\u8bd5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 103
    const-string v2, "SD\u6d4b\u8bd5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->Showinfo:[Ljava/lang/String;

    .line 132
    iput v3, p0, Lcom/ts/main/auth/TestMainActivity;->nStep:I

    .line 234
    new-instance v0, Lcom/ts/main/auth/TestMainActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/main/auth/TestMainActivity$1;-><init>(Lcom/ts/main/auth/TestMainActivity;)V

    iput-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->satellitesSignalPaint:Lcom/ts/main/auth/TsImageView$UserPaint;

    .line 300
    new-instance v0, Lcom/ts/main/auth/TestMainActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/main/auth/TestMainActivity$2;-><init>(Lcom/ts/main/auth/TestMainActivity;)V

    iput-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->gpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 363
    new-instance v0, Lcom/ts/main/auth/TestMainActivity$3;

    invoke-direct {v0, p0}, Lcom/ts/main/auth/TestMainActivity$3;-><init>(Lcom/ts/main/auth/TestMainActivity;)V

    iput-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->locationListener:Landroid/location/LocationListener;

    .line 45
    return-void
.end method

.method public static CheckStorageAvailableMem(Ljava/lang/String;)J
    .locals 14
    .param p0, "Mypath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v12, 0x400

    .line 423
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 424
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v6, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 427
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 429
    .local v4, "blockSize1":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 431
    .local v0, "availableBlocks1":J
    mul-long v2, v4, v0

    .line 432
    .local v2, "availableSize1":J
    const-string v8, "[scj:]Test"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CheckStorageAvailableMem:  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 433
    div-long v10, v2, v12

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 432
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v0    # "availableBlocks1":J
    .end local v2    # "availableSize1":J
    .end local v4    # "blockSize1":J
    .end local v6    # "path":Ljava/io/File;
    .end local v7    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ts/main/auth/TestMainActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->satelliteList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/main/auth/TestMainActivity;F)I
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/ts/main/auth/TestMainActivity;->getSNRColor(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/ts/main/auth/TestMainActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ts/main/auth/TestMainActivity;->satelliteList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lcom/ts/main/auth/TestMainActivity;)Lcom/ts/main/auth/TsImageView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->mtsivSatelliteSignal:Lcom/ts/main/auth/TsImageView;

    return-object v0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 698
    const-wide/16 v3, 0x0

    .line 700
    .local v3, "size":J
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 701
    .local v1, "fileList":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v5, :cond_0

    .line 713
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v2    # "i":I
    :goto_1
    const-string v5, "[scj:]Test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getFolderSize= = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-wide v3

    .line 702
    .restart local v1    # "fileList":[Ljava/io/File;
    .restart local v2    # "i":I
    :cond_0
    :try_start_1
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 703
    aget-object v5, v1, v2

    invoke-static {v5}, Lcom/ts/main/auth/TestMainActivity;->getFolderSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 701
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 706
    :cond_1
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_2

    .line 709
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getSNRColor(F)I
    .locals 7
    .param p1, "snr"    # F

    .prologue
    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0xff

    .line 269
    const/high16 v0, -0x10000

    .line 270
    .local v0, "color":I
    cmpg-float v1, p1, v4

    if-gtz v1, :cond_0

    .line 271
    const v0, -0x777778

    .line 285
    :goto_0
    return v0

    .line 272
    :cond_0
    cmpl-float v1, p1, v4

    if-lez v1, :cond_1

    cmpg-float v1, p1, v5

    if-gez v1, :cond_1

    .line 273
    const/high16 v0, -0x10000

    .line 274
    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v5

    if-ltz v1, :cond_2

    cmpg-float v1, p1, v6

    if-gez v1, :cond_2

    .line 275
    const/16 v1, 0x66

    invoke-static {v2, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 276
    goto :goto_0

    :cond_2
    cmpl-float v1, p1, v6

    if-ltz v1, :cond_3

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    .line 277
    invoke-static {v2, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 278
    goto :goto_0

    :cond_3
    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_4

    const/high16 v1, 0x42200000    # 40.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    .line 279
    const/16 v1, 0xcc

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 280
    goto :goto_0

    .line 283
    :cond_4
    const v0, -0xff0100

    goto :goto_0
.end method

.method private regiseterListener()V
    .locals 6

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 289
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/TestMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->locationManager:Landroid/location/LocationManager;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 293
    const-wide/16 v2, 0x3e8

    .line 294
    const/4 v4, 0x0

    .line 295
    iget-object v5, p0, Lcom/ts/main/auth/TestMainActivity;->locationListener:Landroid/location/LocationListener;

    .line 292
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 298
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->gpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 299
    return-void
.end method


# virtual methods
.method AllIsOK()Z
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "nNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 414
    if-ne v1, v4, :cond_2

    .line 416
    const/4 v2, 0x1

    .line 418
    :goto_1
    return v2

    .line 409
    :cond_0
    iget-object v2, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-lez v2, :cond_1

    .line 411
    add-int/lit8 v1, v1, 0x1

    .line 407
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method CheckBt()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 747
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->mBtExe:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->getDevName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->mBtExe:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->getDevName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->mBtExe:Lcom/ts/bt/BtExe;

    invoke-virtual {v0}, Lcom/ts/bt/BtExe;->getDevName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    const/4 v1, 0x1

    aput v1, v0, v2

    .line 757
    :cond_0
    return-void
.end method

.method CheckDvd()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 734
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 736
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainUI;->DvdLoadOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    const/4 v1, 0x1

    aput v1, v0, v2

    .line 743
    :cond_0
    return-void
.end method

.method CheckMemory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "Path"    # Ljava/lang/String;
    .param p2, "File"    # Ljava/lang/String;

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/ts/main/auth/TestMainActivity;->StorageMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    invoke-static {p2}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    :try_start_0
    const-string v2, "[scj:]Test"

    invoke-static {p2, v2}, Lcom/ts/MainUI/TsFile;->writeFileSdcardFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 649
    .local v0, "Read":Ljava/lang/String;
    :try_start_1
    invoke-static {p2}, Lcom/ts/MainUI/TsFile;->readFileSdcardFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 655
    :goto_1
    if-eqz v0, :cond_1

    .line 657
    const-string v2, "[scj:]Test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    const/4 v2, 0x1

    .line 665
    .end local v0    # "Read":Ljava/lang/String;
    :goto_2
    return v2

    .line 642
    :catch_0
    move-exception v1

    .line 644
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 650
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "Read":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 652
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 665
    .end local v0    # "Read":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2
.end method

.method CheckUsbSD()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 671
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 673
    const-string v0, "/storage/udisk2"

    const-string v1, "/storage/udisk2/test.bin"

    invoke-virtual {p0, v0, v1}, Lcom/ts/main/auth/TestMainActivity;->CheckMemory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aput v2, v0, v2

    .line 677
    :cond_0
    const-string v0, "/storage/udisk1"

    const-string v1, "/storage/udisk1/test.bin"

    invoke-virtual {p0, v0, v1}, Lcom/ts/main/auth/TestMainActivity;->CheckMemory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aput v2, v0, v2

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aget v0, v0, v3

    if-nez v0, :cond_3

    .line 684
    const-string v0, "/storage/ext_sdcard1"

    const-string v1, "/storage/ext_sdcard1/test.bin"

    invoke-virtual {p0, v0, v1}, Lcom/ts/main/auth/TestMainActivity;->CheckMemory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aput v2, v0, v3

    .line 688
    :cond_2
    const-string v0, "/storage/ext_sdcard2"

    const-string v1, "/storage/ext_sdcard2/test.bin"

    invoke-virtual {p0, v0, v1}, Lcom/ts/main/auth/TestMainActivity;->CheckMemory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aput v2, v0, v3

    .line 695
    :cond_3
    return-void
.end method

.method GetMemSize()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v7, 0x400

    .line 441
    new-instance v0, Ljava/io/File;

    const-string v4, "/sdcard/"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/ts/main/auth/TestMainActivity;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    div-long/2addr v4, v7

    div-long/2addr v4, v7

    long-to-int v1, v4

    .line 443
    .local v1, "nNawHave":I
    const-string v4, "[scj:]Test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "nNawHave =="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v4, "/sdcard/"

    invoke-static {v4}, Lcom/ts/main/auth/TestMainActivity;->CheckStorageAvailableMem(Ljava/lang/String;)J

    move-result-wide v4

    div-long/2addr v4, v7

    div-long/2addr v4, v7

    long-to-int v3, v4

    .line 445
    .local v3, "navaile":I
    const-string v4, "[scj:]Test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "navaile =="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    add-int v2, v1, v3

    .line 448
    .local v2, "nTotal":I
    const/16 v4, 0x2000

    if-le v2, v4, :cond_0

    .line 450
    const-string v4, "16G"

    .line 452
    :goto_0
    return-object v4

    :cond_0
    const-string v4, "8G"

    goto :goto_0
.end method

.method IsHaveDvd()Z
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetChipVer()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetChipVer()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 228
    :cond_0
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method ReadData()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    const-string v3, "/sdcard/scj_test/test.bin"

    invoke-static {v3}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    const-string v2, "/sdcard/scj_test/"

    invoke-static {v2}, Lcom/ts/MainUI/TsFile;->NewDir(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-lt v0, v2, :cond_1

    .line 115
    const-string v2, "/sdcard/scj_test/test.bin"

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    invoke-static {v2, v3}, Lcom/ts/MainUI/TsFile;->writer(Ljava/lang/String;[I)V

    .line 126
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 113
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aput v1, v2, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_2
    const-string v3, "/sdcard/scj_test/test.bin"

    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    invoke-static {v3, v4}, Lcom/ts/MainUI/TsFile;->reader(Ljava/lang/String;[I)V

    .line 121
    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aget v3, v3, v1

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 123
    goto :goto_1
.end method

.method public StorageMounted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "Path"    # Ljava/lang/String;

    .prologue
    .line 717
    sget-object v2, Lcom/ts/main/auth/TestMainActivity;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    if-nez v2, :cond_0

    .line 718
    new-instance v2, Lcom/autochips/storage/EnvironmentATC;

    invoke-direct {v2, p0}, Lcom/autochips/storage/EnvironmentATC;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/ts/main/auth/TestMainActivity;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    .line 720
    :cond_0
    sget-object v2, Lcom/ts/main/auth/TestMainActivity;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    invoke-virtual {v2}, Lcom/autochips/storage/EnvironmentATC;->getStorageMountedPaths()[Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "strSDMountedPath":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 728
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 723
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 724
    const/4 v2, 0x1

    goto :goto_1

    .line 721
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method UpdateInfo()V
    .locals 10

    .prologue
    const/16 v9, 0x5a

    const v8, -0xff0100

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 458
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetChipVer()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 473
    :goto_0
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->DvpVersion:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->DvpVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DVD\u7248\u672c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ts/main/common/MainVerSion;->ROM_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->BtVersion:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->BtVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\u540d\u79f0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/bt/BtExe;->getDevName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :cond_1
    iget v1, p0, Lcom/ts/main/auth/TestMainActivity;->nTestMode:I

    if-ne v1, v5, :cond_6

    .line 484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v7, :cond_3

    .line 598
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 461
    :pswitch_0
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->IcVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e3b\u82af\u7247\u7248\u672c: 8317  \u53cc\u6838\u6709\u789f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->MemSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 464
    :pswitch_1
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->IcVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e3b\u82af\u7247\u7248\u672c: 8217  \u53cc\u6838\u65e0\u789f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->MemSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 467
    :pswitch_2
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->IcVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e3b\u82af\u7247\u7248\u672c: 8327  \u56db\u6838\u6709\u789f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->MemSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 470
    :pswitch_3
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->IcVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e3b\u82af\u7247\u7248\u672c: 8227  \u56db\u6838\u65e0\u789f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->MemSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 486
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-lez v1, :cond_5

    .line 488
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 489
    add-int/lit8 v1, v0, 0x1

    if-ne v1, v5, :cond_4

    .line 491
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->Showinfo:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u79d2)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 495
    :cond_4
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->Showinfo:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 502
    :cond_5
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->Showinfo:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 509
    .end local v0    # "i":I
    :cond_6
    iget v1, p0, Lcom/ts/main/auth/TestMainActivity;->nTestMode:I

    if-ne v1, v6, :cond_2

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ts/main/auth/TestMainActivity;->Starttime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/ts/main/auth/TestMainActivity;->Time:I

    .line 512
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->StartButton:Lcom/ts/other/ParamButton;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6d4b\u8bd5\u4e2d("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ts/main/auth/TestMainActivity;->Time:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget v1, p0, Lcom/ts/main/auth/TestMainActivity;->Time:I

    if-ge v1, v9, :cond_7

    invoke-virtual {p0}, Lcom/ts/main/auth/TestMainActivity;->AllIsOK()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 515
    :cond_7
    iput v5, p0, Lcom/ts/main/auth/TestMainActivity;->nTestMode:I

    .line 516
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    const/4 v2, 0x0

    aput v6, v1, v2

    .line 517
    invoke-virtual {p0}, Lcom/ts/main/auth/TestMainActivity;->AllIsOK()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 519
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 520
    const-string v2, "\u6d4b\u8bd5\u6210\u529f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 521
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/ts/main/auth/TestMainActivity$6;

    invoke-direct {v3, p0}, Lcom/ts/main/auth/TestMainActivity$6;-><init>(Lcom/ts/main/auth/TestMainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 542
    :goto_3
    invoke-virtual {p0}, Lcom/ts/main/auth/TestMainActivity;->WriteData()V

    .line 545
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v7, :cond_2

    .line 547
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-lez v1, :cond_c

    .line 549
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 550
    add-int/lit8 v1, v0, 0x1

    if-ne v1, v5, :cond_b

    .line 552
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->Showinfo:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u79d2)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 532
    .end local v0    # "i":I
    :cond_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 533
    const-string v2, "\u6d4b\u8bd5\u5931\u8d25"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 534
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/ts/main/auth/TestMainActivity$7;

    invoke-direct {v3, p0}, Lcom/ts/main/auth/TestMainActivity$7;-><init>(Lcom/ts/main/auth/TestMainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 540
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 556
    .restart local v0    # "i":I
    :cond_b
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->Showinfo:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 563
    :cond_c
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    add-int/lit8 v1, v0, 0x1

    if-ne v1, v5, :cond_d

    .line 566
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aget v1, v1, v5

    if-nez v1, :cond_9

    .line 568
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->Showinfo:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6d4b\u8bd5\u4e2d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ts/main/auth/TestMainActivity;->Time:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u79d2)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 573
    :cond_d
    add-int/lit8 v1, v0, 0x1

    if-ne v1, v6, :cond_e

    .line 575
    const-string v1, "/storage/udisk2"

    invoke-virtual {p0, v1}, Lcom/ts/main/auth/TestMainActivity;->StorageMounted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 577
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->Showinfo:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u672a\u8fde\u63a5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 581
    :cond_e
    add-int/lit8 v1, v0, 0x1

    if-ne v1, v7, :cond_f

    .line 583
    const-string v1, "/storage/ext_sdcard1"

    invoke-virtual {p0, v1}, Lcom/ts/main/auth/TestMainActivity;->StorageMounted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 585
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->Showinfo:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u672a\u8fde\u63a5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 591
    :cond_f
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity;->Showinfo:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6d4b\u8bd5\u4e2d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 623
    sget v0, Lcom/ts/main/auth/TestMainActivity;->nNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ts/main/auth/TestMainActivity;->nNum:I

    rem-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/ts/main/auth/TestMainActivity;->UpdateInfo()V

    .line 626
    invoke-virtual {p0}, Lcom/ts/main/auth/TestMainActivity;->CheckUsbSD()V

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/ts/main/auth/TestMainActivity;->CheckBt()V

    .line 629
    invoke-virtual {p0}, Lcom/ts/main/auth/TestMainActivity;->CheckDvd()V

    .line 632
    return-void
.end method

.method WriteData()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "/sdcard/scj_test/test.bin"

    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    invoke-static {v0, v1}, Lcom/ts/MainUI/TsFile;->writer(Ljava/lang/String;[I)V

    .line 131
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x41700000    # 15.0f

    const/16 v9, 0xf

    const/16 v8, 0x28

    const/4 v7, -0x1

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    sget v1, Lcom/ts/MainUI/R$layout;->activity_test_main:I

    invoke-virtual {p0, v1}, Lcom/ts/main/auth/TestMainActivity;->setContentView(I)V

    .line 138
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->activity_test_mainid:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestManage:Lcom/ts/other/RelativeLayoutManager;

    .line 141
    sget v1, Lcom/ts/MainUI/R$id;->satellite_signal:I

    invoke-virtual {p0, v1}, Lcom/ts/main/auth/TestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/main/auth/TsImageView;

    iput-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->mtsivSatelliteSignal:Lcom/ts/main/auth/TsImageView;

    .line 142
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->mtsivSatelliteSignal:Lcom/ts/main/auth/TsImageView;

    iget-object v2, p0, Lcom/ts/main/auth/TestMainActivity;->satellitesSignalPaint:Lcom/ts/main/auth/TsImageView$UserPaint;

    invoke-virtual {v1, v2}, Lcom/ts/main/auth/TsImageView;->setUserPaint(Lcom/ts/main/auth/TsImageView$UserPaint;)V

    .line 145
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x258

    invoke-virtual {v1, v9, v11, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->IcVersion:Landroid/widget/TextView;

    .line 146
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->IcVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1e

    const/16 v3, 0x96

    const/16 v4, 0xe6

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->StartButton:Lcom/ts/other/ParamButton;

    .line 155
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->StartButton:Lcom/ts/other/ParamButton;

    const-string v2, "\u5f00\u59cb\u6d4b\u8bd5"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->StartButton:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v10}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 157
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->StartButton:Lcom/ts/other/ParamButton;

    new-instance v2, Lcom/ts/main/auth/TestMainActivity$4;

    invoke-direct {v2, p0}, Lcom/ts/main/auth/TestMainActivity$4;-><init>(Lcom/ts/main/auth/TestMainActivity;)V

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x104

    const/16 v3, 0x96

    const/16 v4, 0xa0

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->ShowInfoButton:Lcom/ts/other/ParamButton;

    .line 185
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->ShowInfoButton:Lcom/ts/other/ParamButton;

    const-string v2, "\u67e5\u770b\u62a5\u544a"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->ShowInfoButton:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v10}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 187
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->ShowInfoButton:Lcom/ts/other/ParamButton;

    new-instance v2, Lcom/ts/main/auth/TestMainActivity$5;

    invoke-direct {v2, p0}, Lcom/ts/main/auth/TestMainActivity$5;-><init>(Lcom/ts/main/auth/TestMainActivity;)V

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-virtual {p0}, Lcom/ts/main/auth/TestMainActivity;->IsHaveDvd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x190

    invoke-virtual {v1, v9, v8, v2, v8}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->DvpVersion:Landroid/widget/TextView;

    .line 203
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->DvpVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x50

    const/16 v3, 0x190

    invoke-virtual {v1, v9, v2, v3, v8}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->BtVersion:Landroid/widget/TextView;

    .line 206
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->BtVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    invoke-virtual {p0}, Lcom/ts/main/auth/TestMainActivity;->ReadData()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 211
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->ShowInfoButton:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, v11}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    .line 219
    :goto_1
    invoke-virtual {p0}, Lcom/ts/main/auth/TestMainActivity;->UpdateInfo()V

    .line 220
    invoke-direct {p0}, Lcom/ts/main/auth/TestMainActivity;->regiseterListener()V

    .line 223
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/main/auth/TestMainActivity;->TestManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2bc

    mul-int/lit8 v4, v0, 0x1e

    add-int/lit8 v4, v4, 0x0

    const/16 v5, 0x12c

    const/16 v6, 0x1e

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 152
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->TestResultInfo:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/ts/main/auth/TestMainActivity;->ShowInfoButton:Lcom/ts/other/ParamButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 615
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 617
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 618
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 604
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 605
    invoke-virtual {p0}, Lcom/ts/main/auth/TestMainActivity;->GetMemSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/auth/TestMainActivity;->MemSize:Ljava/lang/String;

    .line 607
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 610
    return-void
.end method
