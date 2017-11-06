.class Lcom/ts/can/McuUpdater;
.super Ljava/lang/Object;
.source "CanMcuUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/McuUpdater$FileInfo;
    }
.end annotation


# static fields
.field private static final MCU_FILE:Ljava/lang/String; = "ts24x.bin"

.field private static final MCU_FILE2:Ljava/lang/String; = "ts70.bin"

.field public static final UPDATE_FILE_MAX:I = 0x25800

.field public static final UPDATE_FILE_MIN:I = 0x8000

.field private static final UPDATE_SIZE_PER_TIME:I = 0x40

.field public static final UPDATE_STA_FILE_ERR:I = 0x1

.field public static final UPDATE_STA_FLUSH_ERR:I = 0x4

.field public static final UPDATE_STA_FLUSH_OK:I = 0x5

.field public static final UPDATE_STA_MCU_ENC:I = 0x3

.field public static final UPDATE_STA_NULL:I = 0x0

.field public static final UPDATE_STA_UPDATE_OK:I = 0x6

.field public static final UPDATE_STA_UPDATING:I = 0x2

.field private static mInstance:Lcom/ts/can/McuUpdater;


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

.field private m_Fileinfo:Lcom/ts/can/McuUpdater$FileInfo;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/16 v0, 0x50

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    .line 161
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/ts/can/McuUpdater;->mRxBuf:[B

    .line 162
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    .line 164
    iput v2, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    .line 165
    iput v2, p0, Lcom/ts/can/McuUpdater;->mSendLen:I

    .line 167
    iput v2, p0, Lcom/ts/can/McuUpdater;->mSta:I

    .line 168
    iput v2, p0, Lcom/ts/can/McuUpdater;->mProgress:I

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/can/McuUpdater;->m_Fileinfo:Lcom/ts/can/McuUpdater$FileInfo;

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ts/can/McuUpdater;->mLastUpdateTick:J

    .line 187
    iput-boolean v2, p0, Lcom/ts/can/McuUpdater;->mRevUpdateAck:Z

    .line 188
    iput-boolean v2, p0, Lcom/ts/can/McuUpdater;->mNewSendFmt:Z

    .line 215
    iput-boolean v2, p0, Lcom/ts/can/McuUpdater;->mIsUpdating:Z

    .line 216
    return-void
.end method

.method private Analysis(B)V
    .locals 11
    .param p1, "data"    # B

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 388
    iget v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    const/16 v4, 0xf

    if-ge v3, v4, :cond_0

    .line 390
    iget-object v3, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    iget v4, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    aput-byte p1, v3, v4

    .line 393
    :cond_0
    iget v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    packed-switch v3, :pswitch_data_0

    .line 483
    iput v7, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    .line 484
    const-string v2, ""

    .line 485
    .local v2, "strData":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    if-le v0, v3, :cond_8

    .line 489
    const-string v3, "McuCmdErr"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .end local v0    # "i":I
    .end local v2    # "strData":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 396
    :pswitch_0
    const/16 v3, 0x23

    if-ne v3, p1, :cond_1

    .line 398
    iget v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    goto :goto_1

    .line 403
    :pswitch_1
    const/16 v3, 0x55

    if-ne v3, p1, :cond_2

    .line 405
    iget v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    goto :goto_1

    .line 409
    :cond_2
    iput v7, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    goto :goto_1

    .line 415
    :pswitch_2
    iget v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    goto :goto_1

    .line 419
    :pswitch_3
    const/16 v3, 0x4b

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_3

    .line 420
    const/16 v3, 0x4e

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_3

    .line 421
    const/16 v3, 0x47

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v4, v4, v8

    if-ne v3, v4, :cond_3

    .line 423
    iput v7, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    .line 424
    iput-boolean v7, p0, Lcom/ts/can/McuUpdater;->mIsUpdating:Z

    .line 425
    invoke-direct {p0, v8}, Lcom/ts/can/McuUpdater;->setSta(I)V

    .line 426
    iput-boolean v9, p0, Lcom/ts/can/McuUpdater;->mRevUpdateAck:Z

    goto :goto_1

    .line 428
    :cond_3
    const/16 v3, 0x45

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_4

    .line 429
    const/16 v3, 0x4e

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_4

    .line 430
    const/16 v3, 0x47

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v4, v4, v8

    if-ne v3, v4, :cond_4

    .line 432
    iput v7, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    .line 433
    iput-boolean v7, p0, Lcom/ts/can/McuUpdater;->mIsUpdating:Z

    .line 434
    invoke-direct {p0, v6}, Lcom/ts/can/McuUpdater;->setSta(I)V

    .line 435
    iput-boolean v9, p0, Lcom/ts/can/McuUpdater;->mRevUpdateAck:Z

    goto :goto_1

    .line 437
    :cond_4
    const/16 v3, 0x4b

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_5

    .line 438
    const/16 v3, 0x4f

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_5

    .line 439
    const/16 v3, 0x4b

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v4, v4, v8

    if-ne v3, v4, :cond_5

    .line 441
    iput v7, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    .line 442
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/ts/can/McuUpdater;->setSta(I)V

    .line 443
    iput-boolean v9, p0, Lcom/ts/can/McuUpdater;->mRevUpdateAck:Z

    goto/16 :goto_1

    .line 447
    :cond_5
    iget v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    goto/16 :goto_1

    .line 452
    :pswitch_4
    iget v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    goto/16 :goto_1

    .line 456
    :pswitch_5
    iput v7, p0, Lcom/ts/can/McuUpdater;->mReadCnt:I

    .line 457
    iget-object v3, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v3, v3, v6

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    if-ne v3, v10, :cond_1

    .line 458
    iget-object v3, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v3, v3, v8

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    if-ne v3, v10, :cond_1

    .line 460
    iput-boolean v9, p0, Lcom/ts/can/McuUpdater;->mRevUpdateAck:Z

    .line 461
    iget-object v3, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v3, v3, v6

    if-ne v10, v3, :cond_6

    .line 462
    iget-object v3, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v3, v3, v8

    if-ne v10, v3, :cond_6

    .line 464
    iput-boolean v7, p0, Lcom/ts/can/McuUpdater;->mIsUpdating:Z

    .line 465
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/ts/can/McuUpdater;->setSta(I)V

    .line 466
    const/16 v3, 0x64

    iput v3, p0, Lcom/ts/can/McuUpdater;->mProgress:I

    goto/16 :goto_1

    .line 468
    :cond_6
    iget-object v3, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v3, v3, v6

    if-ne v10, v3, :cond_7

    .line 469
    const/4 v3, -0x2

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v4, v4, v8

    if-ne v3, v4, :cond_7

    .line 471
    iput-boolean v9, p0, Lcom/ts/can/McuUpdater;->mNewSendFmt:Z

    goto/16 :goto_1

    .line 476
    :cond_7
    iget-object v3, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v1, v3, v4

    .line 477
    .local v1, "offset":I
    invoke-direct {p0, v1}, Lcom/ts/can/McuUpdater;->sendFileData(I)V

    goto/16 :goto_1

    .line 487
    .end local v1    # "offset":I
    .restart local v0    # "i":I
    .restart local v2    # "strData":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%02X "

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ts/can/McuUpdater;->mReadBuf:[B

    aget-byte v6, v6, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private Send(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    invoke-static {v0, p1}, Lcom/yyw/ts70xhw/Mcu;->McuUpdateSend([BI)I

    .line 384
    return-void
.end method

.method public static getInstance()Lcom/ts/can/McuUpdater;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/ts/can/McuUpdater;->mInstance:Lcom/ts/can/McuUpdater;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/ts/can/McuUpdater;

    invoke-direct {v0}, Lcom/ts/can/McuUpdater;-><init>()V

    sput-object v0, Lcom/ts/can/McuUpdater;->mInstance:Lcom/ts/can/McuUpdater;

    .line 209
    :cond_0
    sget-object v0, Lcom/ts/can/McuUpdater;->mInstance:Lcom/ts/can/McuUpdater;

    return-object v0
.end method

.method private sendFileData(I)V
    .locals 10
    .param p1, "offset"    # I

    .prologue
    const/16 v9, 0x43

    const/16 v8, 0x44

    .line 334
    mul-int/lit8 v3, p1, 0x40

    .line 335
    .local v3, "pos":I
    add-int/lit8 v4, v3, 0x40

    iget-object v5, p0, Lcom/ts/can/McuUpdater;->m_Fileinfo:Lcom/ts/can/McuUpdater$FileInfo;

    iget v5, v5, Lcom/ts/can/McuUpdater$FileInfo;->len:I

    if-gt v4, v5, :cond_0

    .line 338
    add-int/lit8 v4, v3, 0x40

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/ts/can/McuUpdater;->m_Fileinfo:Lcom/ts/can/McuUpdater$FileInfo;

    iget v5, v5, Lcom/ts/can/McuUpdater$FileInfo;->len:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/ts/can/McuUpdater;->mProgress:I

    .line 340
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/4 v5, 0x0

    const/16 v6, 0x23

    aput-byte v6, v4, v5

    .line 341
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/4 v5, 0x1

    const/16 v6, 0x55

    aput-byte v6, v4, v5

    .line 342
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/4 v5, 0x2

    aput-byte v8, v4, v5

    .line 345
    const/4 v0, 0x0

    .local v0, "chk1":B
    const/4 v1, 0x0

    .line 346
    .local v1, "chk2":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x40

    if-lt v2, v4, :cond_1

    .line 352
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v9

    .line 353
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    aget-byte v4, v4, v9

    add-int/2addr v4, v0

    int-to-byte v0, v4

    .line 354
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    aget-byte v4, v4, v9

    xor-int/2addr v4, v1

    int-to-byte v1, v4

    .line 355
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 356
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    aget-byte v4, v4, v8

    add-int/2addr v4, v0

    int-to-byte v0, v4

    .line 357
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    aget-byte v4, v4, v8

    xor-int/2addr v4, v1

    int-to-byte v1, v4

    .line 359
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/16 v5, 0x45

    aput-byte v0, v4, v5

    .line 360
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/16 v5, 0x46

    aput-byte v1, v4, v5

    .line 361
    const/16 v4, 0x47

    invoke-direct {p0, v4}, Lcom/ts/can/McuUpdater;->Send(I)V

    .line 362
    const-string v4, "SendData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OffSet = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v0    # "chk1":B
    .end local v1    # "chk2":B
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 348
    .restart local v0    # "chk1":B
    .restart local v1    # "chk2":B
    .restart local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    add-int/lit8 v5, v2, 0x3

    iget-object v6, p0, Lcom/ts/can/McuUpdater;->m_Fileinfo:Lcom/ts/can/McuUpdater$FileInfo;

    iget-object v6, v6, Lcom/ts/can/McuUpdater$FileInfo;->data:[B

    add-int v7, v3, v2

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 349
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    add-int/lit8 v5, v2, 0x3

    aget-byte v4, v4, v5

    add-int/2addr v4, v0

    int-to-byte v0, v4

    .line 350
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    add-int/lit8 v5, v2, 0x3

    aget-byte v4, v4, v5

    xor-int/2addr v4, v1

    int-to-byte v1, v4

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private sendStart()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 306
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/4 v1, 0x0

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 307
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/4 v1, 0x1

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    .line 308
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    aput-byte v3, v0, v3

    .line 309
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/4 v1, 0x3

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    .line 310
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mUpdateFile:Ljava/lang/String;

    const-string v1, "ts24x.bin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/16 v1, 0x4a

    aput-byte v1, v0, v4

    .line 313
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/16 v1, 0x4e

    aput-byte v1, v0, v5

    .line 321
    :cond_0
    :goto_0
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/ts/can/McuUpdater;->Send(I)V

    .line 322
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mUpdateFile:Ljava/lang/String;

    const-string v1, "ts70.bin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/16 v1, 0x42

    aput-byte v1, v0, v4

    .line 318
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/16 v1, 0x46

    aput-byte v1, v0, v5

    goto :goto_0
.end method

.method private setSta(I)V
    .locals 0
    .param p1, "sta"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/ts/can/McuUpdater;->mSta:I

    .line 302
    return-void
.end method


# virtual methods
.method public IsUpdating()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/ts/can/McuUpdater;->mIsUpdating:Z

    return v0
.end method

.method public getFileData(Ljava/lang/String;)Lcom/ts/can/McuUpdater$FileInfo;
    .locals 8
    .param p1, "strFile"    # Ljava/lang/String;

    .prologue
    .line 499
    new-instance v5, Lcom/ts/can/McuUpdater$FileInfo;

    invoke-direct {v5, p0}, Lcom/ts/can/McuUpdater$FileInfo;-><init>(Lcom/ts/can/McuUpdater;)V

    .line 500
    .local v5, "info":Lcom/ts/can/McuUpdater$FileInfo;
    const/4 v7, 0x0

    iput v7, v5, Lcom/ts/can/McuUpdater$FileInfo;->len:I

    .line 501
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v6, "src":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-object v5

    .line 507
    :cond_1
    const/4 v3, 0x0

    .line 508
    .local v3, "in":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 511
    .local v0, "bin":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .local v1, "bin":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v7, v7, [B

    iput-object v7, v5, Lcom/ts/can/McuUpdater$FileInfo;->data:[B

    .line 514
    iget-object v7, v5, Lcom/ts/can/McuUpdater$FileInfo;->data:[B

    invoke-virtual {v1, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    iput v7, v5, Lcom/ts/can/McuUpdater$FileInfo;->len:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 528
    if-eqz v1, :cond_3

    .line 530
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .line 532
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 516
    :catch_0
    move-exception v2

    .line 518
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 528
    if-eqz v0, :cond_0

    .line 530
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 533
    :catch_1
    move-exception v2

    .line 535
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 520
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 522
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 528
    if-eqz v0, :cond_0

    .line 530
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 533
    :catch_3
    move-exception v2

    .line 535
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 525
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 528
    :goto_3
    if-eqz v0, :cond_2

    .line 530
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 537
    :cond_2
    :goto_4
    throw v7

    .line 533
    :catch_4
    move-exception v2

    .line 535
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 533
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    .line 535
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

    .line 525
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

    .line 520
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

    .line 516
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
    .locals 5
    .param p1, "strFile"    # Ljava/lang/String;

    .prologue
    .line 543
    const/4 v2, 0x0

    .line 545
    .local v2, "ret":Z
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ts/main/common/MainSet;->GetMountedStorage()[Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "mMcuPath":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 558
    :goto_1
    return v2

    .line 548
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

    invoke-virtual {p0, v3}, Lcom/ts/can/McuUpdater;->getFileData(Ljava/lang/String;)Lcom/ts/can/McuUpdater$FileInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/ts/can/McuUpdater;->m_Fileinfo:Lcom/ts/can/McuUpdater$FileInfo;

    .line 549
    iget-object v3, p0, Lcom/ts/can/McuUpdater;->m_Fileinfo:Lcom/ts/can/McuUpdater$FileInfo;

    iget v3, v3, Lcom/ts/can/McuUpdater$FileInfo;->len:I

    const v4, 0x8000

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/ts/can/McuUpdater;->m_Fileinfo:Lcom/ts/can/McuUpdater$FileInfo;

    iget v3, v3, Lcom/ts/can/McuUpdater$FileInfo;->len:I

    const v4, 0x25800

    if-gt v3, v4, :cond_1

    .line 553
    const/4 v2, 0x1

    .line 554
    iput-object p1, p0, Lcom/ts/can/McuUpdater;->mUpdateFile:Ljava/lang/String;

    goto :goto_1

    .line 546
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMcuUpdateData()Z
    .locals 1

    .prologue
    .line 563
    const-string v0, "ts24x.bin"

    invoke-virtual {p0, v0}, Lcom/ts/can/McuUpdater;->getMcuFileData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x1

    .line 568
    :goto_0
    return v0

    :cond_0
    const-string v0, "ts70.bin"

    invoke-virtual {p0, v0}, Lcom/ts/can/McuUpdater;->getMcuFileData(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/ts/can/McuUpdater;->mProgress:I

    return v0
.end method

.method public getSta()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/ts/can/McuUpdater;->mSta:I

    return v0
.end method

.method public main()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 250
    iget-boolean v4, p0, Lcom/ts/can/McuUpdater;->mIsUpdating:Z

    if-nez v4, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v8

    .line 259
    :cond_1
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mRxBuf:[B

    const/16 v5, 0xf

    invoke-static {v4, v5}, Lcom/yyw/ts70xhw/Mcu;->McuUpdateRead([BI)I

    move-result v3

    .line 261
    .local v3, "len":I
    if-lez v3, :cond_2

    .line 263
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_3

    .line 269
    .end local v2    # "i":I
    :cond_2
    iget-boolean v4, p0, Lcom/ts/can/McuUpdater;->mRevUpdateAck:Z

    if-nez v4, :cond_0

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 272
    .local v0, "curTick":J
    iget-wide v4, p0, Lcom/ts/can/McuUpdater;->mLastUpdateTick:J

    const-wide/16 v6, 0xfa0

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 274
    iput-wide v0, p0, Lcom/ts/can/McuUpdater;->mLastUpdateTick:J

    goto :goto_0

    .line 265
    .end local v0    # "curTick":J
    .restart local v2    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/ts/can/McuUpdater;->mRxBuf:[B

    aget-byte v4, v4, v2

    invoke-direct {p0, v4}, Lcom/ts/can/McuUpdater;->Analysis(B)V

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public sendReset()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/4 v1, 0x0

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 327
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/4 v1, 0x1

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    .line 328
    iget-object v0, p0, Lcom/ts/can/McuUpdater;->mSendData:[B

    const/4 v1, 0x2

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    .line 329
    const/16 v0, 0x47

    invoke-direct {p0, v0}, Lcom/ts/can/McuUpdater;->Send(I)V

    .line 330
    return-void
.end method

.method public startUpdate()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    iget-boolean v0, p0, Lcom/ts/can/McuUpdater;->mIsUpdating:Z

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v2

    .line 229
    :cond_1
    invoke-direct {p0, v3}, Lcom/ts/can/McuUpdater;->setSta(I)V

    .line 230
    iput-boolean v2, p0, Lcom/ts/can/McuUpdater;->mRevUpdateAck:Z

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ts/can/McuUpdater;->mLastUpdateTick:J

    .line 233
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/can/McuUpdater;->mUpdateFile:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/ts/can/McuUpdater;->getMcuUpdateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->McuUpdateStart()I

    .line 237
    invoke-direct {p0}, Lcom/ts/can/McuUpdater;->sendStart()V

    .line 238
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ts/can/McuUpdater;->setSta(I)V

    .line 239
    iput-boolean v3, p0, Lcom/ts/can/McuUpdater;->mIsUpdating:Z

    .line 240
    iput v2, p0, Lcom/ts/can/McuUpdater;->mProgress:I

    .line 241
    iput-boolean v2, p0, Lcom/ts/can/McuUpdater;->mNewSendFmt:Z

    goto :goto_0
.end method
