.class Lcom/ts/can/gm/xt5/McuUpdater;
.super Ljava/lang/Object;
.source "CanCadillacXt5UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;
    }
.end annotation


# static fields
.field private static final MCU_FILE:Ljava/lang/String; = "wince_to_can.bin"

.field public static final UPDATE_FILE_MAX:I = 0x96000

.field public static final UPDATE_FILE_MIN:I = 0xc00

.field private static final UPDATE_SIZE_PER_TIME:I = 0x40

.field public static final UPDATE_STA_FILE_ERR:I = 0x1

.field public static final UPDATE_STA_NULL:I = 0x0

.field public static final UPDATE_STA_UPDATE_OK:I = 0x3

.field public static final UPDATE_STA_UPDATING:I = 0x2

.field private static mInstance:Lcom/ts/can/gm/xt5/McuUpdater;


# instance fields
.field private mIsUpdating:Z

.field private mLastUpdateTick:J

.field private mNewSendFmt:Z

.field private mProgress:I

.field private mReadBuf:[B

.field private mReadCnt:I

.field private mRevUpdateAck:Z

.field private mRxBuf:[B

.field private mSendData:[B

.field private mSendLen:I

.field private mSta:I

.field private mUpdateFile:Ljava/lang/String;

.field private m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

.field private m_IapReq:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const/16 v0, 0x50

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    .line 272
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mRxBuf:[B

    .line 273
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mReadBuf:[B

    .line 275
    iput v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mReadCnt:I

    .line 276
    iput v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendLen:I

    .line 278
    iput v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSta:I

    .line 279
    iput v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mProgress:I

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    .line 294
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mLastUpdateTick:J

    .line 295
    iput-boolean v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mRevUpdateAck:Z

    .line 296
    iput-boolean v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mNewSendFmt:Z

    .line 298
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;-><init>()V

    iput-object v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_IapReq:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;

    .line 325
    iput-boolean v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mIsUpdating:Z

    .line 326
    return-void
.end method

.method private Send(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    invoke-static {v0, p1}, Lcom/yyw/ts70xhw/Mcu;->SendCanMsg([BI)I

    .line 505
    return-void
.end method

.method public static getInstance()Lcom/ts/can/gm/xt5/McuUpdater;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/ts/can/gm/xt5/McuUpdater;->mInstance:Lcom/ts/can/gm/xt5/McuUpdater;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/ts/can/gm/xt5/McuUpdater;

    invoke-direct {v0}, Lcom/ts/can/gm/xt5/McuUpdater;-><init>()V

    sput-object v0, Lcom/ts/can/gm/xt5/McuUpdater;->mInstance:Lcom/ts/can/gm/xt5/McuUpdater;

    .line 319
    :cond_0
    sget-object v0, Lcom/ts/can/gm/xt5/McuUpdater;->mInstance:Lcom/ts/can/gm/xt5/McuUpdater;

    return-object v0
.end method

.method private sendStart()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "chk":B
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v4, 0x0

    const/16 v5, 0x2e

    aput-byte v5, v3, v4

    .line 418
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/16 v4, -0x50

    aput-byte v4, v3, v6

    .line 419
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v4, 0x2

    aput-byte v7, v3, v4

    .line 420
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v4, 0x3

    const/16 v5, 0x20

    aput-byte v5, v3, v4

    .line 421
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v4, 0x4

    aput-byte v6, v3, v4

    .line 422
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    iget v5, v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 423
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    iget v4, v4, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    .line 424
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    iget v5, v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 425
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    iget v5, v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 426
    const-string v3, "SendData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "m_Fileinfo.len1="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    iget v5, v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, v8, :cond_0

    .line 431
    xor-int/lit16 v3, v0, 0xff

    int-to-byte v0, v3

    .line 432
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    aput-byte v0, v3, v8

    .line 433
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/ts/can/gm/xt5/McuUpdater;->Send(I)V

    .line 435
    const-wide/16 v3, 0xc8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_1
    return-void

    .line 429
    :cond_0
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    int-to-byte v0, v3

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private setSta(I)V
    .locals 0
    .param p1, "sta"    # I

    .prologue
    .line 411
    iput p1, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSta:I

    .line 412
    return-void
.end method


# virtual methods
.method public IsUpdating()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mIsUpdating:Z

    return v0
.end method

.method public getFileData(Ljava/lang/String;)Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;
    .locals 8
    .param p1, "strFile"    # Ljava/lang/String;

    .prologue
    .line 511
    new-instance v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    invoke-direct {v5, p0}, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;-><init>(Lcom/ts/can/gm/xt5/McuUpdater;)V

    .line 512
    .local v5, "info":Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;
    const/4 v7, 0x0

    iput v7, v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I

    .line 513
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    .local v6, "src":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-object v5

    .line 519
    :cond_1
    const/4 v3, 0x0

    .line 520
    .local v3, "in":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 523
    .local v0, "bin":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 525
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .local v1, "bin":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v7, v7, [B

    iput-object v7, v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->data:[B

    .line 526
    iget-object v7, v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->data:[B

    invoke-virtual {v1, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    iput v7, v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 540
    if-eqz v1, :cond_3

    .line 542
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .line 544
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 528
    :catch_0
    move-exception v2

    .line 530
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 540
    if-eqz v0, :cond_0

    .line 542
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 545
    :catch_1
    move-exception v2

    .line 547
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 532
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 534
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 540
    if-eqz v0, :cond_0

    .line 542
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 545
    :catch_3
    move-exception v2

    .line 547
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 537
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 540
    :goto_3
    if-eqz v0, :cond_2

    .line 542
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 549
    :cond_2
    :goto_4
    throw v7

    .line 545
    :catch_4
    move-exception v2

    .line 547
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 545
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    .line 547
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 537
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 532
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 528
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public getMcuFileData(Ljava/lang/String;)Z
    .locals 6
    .param p1, "strFile"    # Ljava/lang/String;

    .prologue
    .line 555
    const/4 v2, 0x0

    .line 557
    .local v2, "ret":Z
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/main/common/MainSet;->GetMountedStorage()[Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "mMcuPath":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 571
    :goto_1
    return v2

    .line 560
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ts/can/gm/xt5/McuUpdater;->getFileData(Ljava/lang/String;)Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    .line 561
    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    iget v3, v3, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I

    const/16 v4, 0xc00

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    iget v3, v3, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I

    const v4, 0x96000

    if-gt v3, v4, :cond_1

    .line 565
    const-string v3, "SendData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "m_Fileinfo.len="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    iget v5, v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v2, 0x1

    .line 567
    iput-object p1, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mUpdateFile:Ljava/lang/String;

    goto :goto_1

    .line 558
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMcuUpdateData()Z
    .locals 1

    .prologue
    .line 576
    const-string v0, "wince_to_can.bin"

    invoke-virtual {p0, v0}, Lcom/ts/can/gm/xt5/McuUpdater;->getMcuFileData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x1

    .line 581
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mProgress:I

    return v0
.end method

.method public getSta()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSta:I

    return v0
.end method

.method public main()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 359
    iget-boolean v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mIsUpdating:Z

    if-nez v2, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v6

    .line 366
    :cond_1
    iget-object v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_IapReq:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;

    invoke-static {v2}, Lcom/lgb/canmodule/CanJni;->GmSbIapGetReq(Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;)V

    .line 367
    iget-object v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_IapReq:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;->UpdateOnce:I

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_IapReq:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;->Update:I

    if-eqz v2, :cond_2

    .line 371
    iget-object v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_IapReq:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;

    iput v6, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;->Update:I

    .line 372
    iget-object v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_IapReq:Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GmSb_IapReq;->Index:I

    invoke-virtual {p0, v2}, Lcom/ts/can/gm/xt5/McuUpdater;->sendFileData(I)V

    .line 373
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mRevUpdateAck:Z

    .line 378
    :cond_2
    iget-boolean v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mRevUpdateAck:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mIsUpdating:Z

    if-eqz v2, :cond_0

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 381
    .local v0, "curTick":J
    iget-wide v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mLastUpdateTick:J

    const-wide/16 v4, 0x4e20

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 383
    iput-wide v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mLastUpdateTick:J

    .line 384
    iput-boolean v6, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mIsUpdating:Z

    .line 385
    invoke-virtual {p0}, Lcom/ts/can/gm/xt5/McuUpdater;->startUpdate()I

    goto :goto_0
.end method

.method public sendFileData(I)V
    .locals 11
    .param p1, "offset"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/16 v6, -0x50

    const/4 v8, 0x6

    const/4 v7, 0x3

    .line 450
    const/4 v0, 0x0

    .local v0, "chk1":B
    const/4 v1, 0x0

    .line 453
    .local v1, "chk2":B
    mul-int/lit8 v3, p1, 0x40

    .line 454
    .local v3, "pos":I
    add-int/lit8 v4, v3, 0x40

    iget-object v5, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    iget v5, v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I

    if-gt v4, v5, :cond_2

    .line 457
    add-int/lit8 v4, v3, 0x40

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    iget v5, v5, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->len:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mProgress:I

    .line 459
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/16 v5, 0x2e

    aput-byte v5, v4, v10

    .line 460
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v5, 0x1

    aput-byte v6, v4, v5

    .line 461
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v5, 0x2

    const/16 v6, 0x45

    aput-byte v6, v4, v5

    .line 462
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/16 v5, 0x21

    aput-byte v5, v4, v7

    .line 463
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v5, 0x4

    shr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 464
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v5, 0x5

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 465
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/16 v5, 0x40

    aput-byte v5, v4, v8

    .line 467
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x40

    if-lt v2, v4, :cond_0

    .line 472
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/16 v5, 0x47

    aput-byte v0, v4, v5

    .line 474
    const/4 v2, 0x1

    :goto_1
    const/16 v4, 0x48

    if-lt v2, v4, :cond_1

    .line 478
    xor-int/lit16 v4, v1, 0xff

    int-to-byte v1, v4

    .line 479
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/16 v5, 0x48

    aput-byte v1, v4, v5

    .line 480
    const/16 v4, 0x49

    invoke-direct {p0, v4}, Lcom/ts/can/gm/xt5/McuUpdater;->Send(I)V

    .line 481
    const-string v4, "SendData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OffSet = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_2
    return-void

    .line 469
    :cond_0
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    add-int/lit8 v5, v2, 0x7

    iget-object v6, p0, Lcom/ts/can/gm/xt5/McuUpdater;->m_Fileinfo:Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;

    iget-object v6, v6, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->data:[B

    add-int v7, v3, v2

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 470
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    add-int/lit8 v5, v2, 0x7

    aget-byte v4, v4, v5

    add-int/2addr v4, v0

    int-to-byte v0, v4

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    :cond_1
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    aget-byte v4, v4, v2

    add-int/2addr v4, v1

    int-to-byte v1, v4

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    .end local v2    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/16 v5, 0x2e

    aput-byte v5, v4, v10

    .line 487
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v5, 0x1

    aput-byte v6, v4, v5

    .line 488
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v5, 0x2

    aput-byte v7, v4, v5

    .line 489
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/16 v5, 0x21

    aput-byte v5, v4, v7

    .line 490
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v5, 0x4

    aput-byte v9, v4, v5

    .line 491
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    const/4 v5, 0x5

    aput-byte v9, v4, v5

    .line 492
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_3
    if-lt v2, v8, :cond_3

    .line 496
    xor-int/lit16 v4, v1, 0xff

    int-to-byte v1, v4

    .line 497
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    aput-byte v1, v4, v8

    .line 498
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Lcom/ts/can/gm/xt5/McuUpdater;->Send(I)V

    goto :goto_2

    .line 494
    :cond_3
    iget-object v4, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mSendData:[B

    aget-byte v4, v4, v2

    add-int/2addr v4, v1

    int-to-byte v1, v4

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public sendReset()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method public startUpdate()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    iget-boolean v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mIsUpdating:Z

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v2

    .line 339
    :cond_1
    invoke-direct {p0, v3}, Lcom/ts/can/gm/xt5/McuUpdater;->setSta(I)V

    .line 340
    iput-boolean v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mRevUpdateAck:Z

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mLastUpdateTick:J

    .line 343
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mUpdateFile:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/ts/can/gm/xt5/McuUpdater;->getMcuUpdateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/ts/can/gm/xt5/McuUpdater;->sendStart()V

    .line 347
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ts/can/gm/xt5/McuUpdater;->setSta(I)V

    .line 348
    iput-boolean v3, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mIsUpdating:Z

    .line 349
    iput v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mProgress:I

    .line 350
    iput-boolean v2, p0, Lcom/ts/can/gm/xt5/McuUpdater;->mNewSendFmt:Z

    goto :goto_0
.end method
