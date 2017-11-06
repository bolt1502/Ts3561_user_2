.class public Lcom/ts/main/auth/FactorytestarmActivity;
.super Landroid/app/Activity;
.source "FactorytestarmActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final ARM_TIME:I = 0x3e8

.field static EnvATC:Lcom/autochips/storage/EnvironmentATC; = null

.field private static final NO_ERR:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "[scj:]Test"


# instance fields
.field Num:I

.field bCheck:Z

.field cbIIC:Landroid/widget/CheckBox;

.field cbMCU:Landroid/widget/CheckBox;

.field cbSim:Landroid/widget/CheckBox;

.field cbwifiUART:Landroid/widget/CheckBox;

.field cbxEmmc:Landroid/widget/CheckBox;

.field cbxSD:Landroid/widget/CheckBox;

.field nMcu:I

.field strERR:Ljava/lang/String;

.field strMcuMe:[Ljava/lang/String;

.field texmesTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    const-string v1, "BRK-IN"

    aput-object v1, v0, v3

    .line 55
    const-string v1, "AMP-POW"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 56
    const-string v2, "CAN-RX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 57
    const-string v2, "IR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 58
    const-string v2, "RVS-IN"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->strMcuMe:[Ljava/lang/String;

    .line 189
    iput v3, p0, Lcom/ts/main/auth/FactorytestarmActivity;->Num:I

    .line 190
    iput v3, p0, Lcom/ts/main/auth/FactorytestarmActivity;->nMcu:I

    .line 191
    iput-boolean v4, p0, Lcom/ts/main/auth/FactorytestarmActivity;->bCheck:Z

    .line 34
    return-void
.end method


# virtual methods
.method CheckMemory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "Path"    # Ljava/lang/String;
    .param p2, "File"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/ts/main/auth/FactorytestarmActivity;->StorageMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    invoke-static {p2}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 478
    :try_start_0
    const-string v2, "[scj:]Test"

    invoke-static {p2, v2}, Lcom/ts/MainUI/TsFile;->writeFileSdcardFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 486
    .local v0, "Read":Ljava/lang/String;
    :try_start_1
    invoke-static {p2}, Lcom/ts/MainUI/TsFile;->readFileSdcardFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 492
    :goto_1
    if-eqz v0, :cond_1

    .line 494
    const-string v2, "[scj:]Test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    const/4 v2, 0x1

    .line 502
    .end local v0    # "Read":Ljava/lang/String;
    :goto_2
    return v2

    .line 479
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 487
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "Read":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 489
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 502
    .end local v0    # "Read":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2
.end method

.method CheckMySinState()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 442
    invoke-virtual {p0}, Lcom/ts/main/auth/FactorytestarmActivity;->IsWifiVer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v1

    .line 447
    :cond_1
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/ts/main/auth/FactorytestarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 448
    .local v0, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method IsWifiVer()Z
    .locals 2

    .prologue
    .line 438
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "evb3561sv_t_63_m0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method ReadUartOk()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 286
    new-array v1, v9, [B

    .line 287
    .local v1, "Senddata":[B
    new-array v0, v9, [B

    .line 288
    .local v0, "Readtestdata":[B
    const/16 v6, 0x55

    aput-byte v6, v1, v5

    .line 289
    const/16 v6, -0x56

    aput-byte v6, v1, v4

    .line 290
    invoke-static {v1, v9}, Lcom/yyw/ts70xhw/Iop;->UartSend([BI)I

    .line 293
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    invoke-static {v0, v9}, Lcom/yyw/ts70xhw/Iop;->UartRead([BI)I

    move-result v3

    .line 300
    .local v3, "nNum":I
    const-string v6, "[scj:]Test"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ReadUartdata  nNum = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v6, "[scj:]Test"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Readtestdata[0] = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v6, "[scj:]Test"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Readtestdata[1] = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-ne v3, v9, :cond_1

    .line 306
    aget-byte v6, v0, v5

    aget-byte v7, v1, v5

    if-ne v6, v7, :cond_0

    aget-byte v6, v0, v4

    aget-byte v7, v1, v4

    if-ne v6, v7, :cond_0

    .line 319
    :goto_1
    return v4

    .line 294
    .end local v3    # "nNum":I
    :catch_0
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 312
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "nNum":I
    :cond_0
    const-string v4, "[scj:]Test"

    const-string v6, "ReadUartdata  error"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 313
    goto :goto_1

    .line 318
    :cond_1
    const-string v4, "[scj:]Test"

    const-string v6, "ReadUart error"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 319
    goto :goto_1
.end method

.method SetCheckBoxState(IZ)V
    .locals 6
    .param p1, "nCK"    # I
    .param p2, "bOK"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x10000

    const v2, -0xff0100

    .line 99
    if-eqz p2, :cond_0

    .line 101
    packed-switch p1, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxEmmc:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxEmmc:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbMCU:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbMCU:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxSD:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxSD:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbSim:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbSim:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 120
    :pswitch_4
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbIIC:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbIIC:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 124
    :pswitch_5
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    const-string v1, "\u4e32\u53e3\u6b63\u5e38"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 137
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 140
    :pswitch_6
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxEmmc:Landroid/widget/CheckBox;

    const-string v1, "\u5185\u90e8\u5b58\u50a8\u9519\u8bef"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxEmmc:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxEmmc:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 145
    :pswitch_7
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbMCU:Landroid/widget/CheckBox;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MCU\u9519\u8bef"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->McuTestResult()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbMCU:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbMCU:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 150
    :pswitch_8
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxSD:Landroid/widget/CheckBox;

    const-string v1, "SD\u9519\u8bef"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxSD:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 152
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxSD:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 155
    :pswitch_9
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbSim:Landroid/widget/CheckBox;

    const-string v1, "SIM\u5361\u9519\u8bef"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbSim:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 157
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbSim:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 160
    :pswitch_a
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbIIC:Landroid/widget/CheckBox;

    const-string v1, "IIC\u9519\u8bef"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbIIC:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbIIC:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 165
    :pswitch_b
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    const-string v1, "UART\u9519\u8bef"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 137
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public StorageMounted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "Path"    # Ljava/lang/String;

    .prologue
    .line 457
    sget-object v2, Lcom/ts/main/auth/FactorytestarmActivity;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    if-nez v2, :cond_0

    .line 458
    new-instance v2, Lcom/autochips/storage/EnvironmentATC;

    invoke-direct {v2, p0}, Lcom/autochips/storage/EnvironmentATC;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/ts/main/auth/FactorytestarmActivity;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    .line 460
    :cond_0
    sget-object v2, Lcom/ts/main/auth/FactorytestarmActivity;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    invoke-virtual {v2}, Lcom/autochips/storage/EnvironmentATC;->getStorageMountedPaths()[Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "strSDMountedPath":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 468
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 463
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    const/4 v2, 0x1

    goto :goto_1

    .line 461
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method TestArmmemory()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 400
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/main/common/MainSet;->GetMountedStorage()[Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "mCtouchPath":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 434
    return-void

    .line 402
    :cond_0
    const-string v2, "[scj:]Test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/test.bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/ts/main/auth/FactorytestarmActivity;->CheckMemory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    aget-object v2, v1, v0

    const-string v3, "emulated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    invoke-virtual {p0, v5, v6}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    .line 401
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_1
    aget-object v2, v1, v0

    const-string v3, "sdcard1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    invoke-virtual {p0, v7, v6}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    goto :goto_1

    .line 415
    :cond_2
    invoke-virtual {p0, v6, v6}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    goto :goto_1

    .line 420
    :cond_3
    aget-object v2, v1, v0

    const-string v3, "emulated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 422
    invoke-virtual {p0, v5, v5}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    goto :goto_1

    .line 424
    :cond_4
    aget-object v2, v1, v0

    const-string v3, "sdcard1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 426
    invoke-virtual {p0, v7, v5}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    goto :goto_1

    .line 429
    :cond_5
    invoke-virtual {p0, v6, v5}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    goto :goto_1
.end method

.method TestIIC()V
    .locals 7

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x50

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 326
    invoke-static {v5, v3, v6}, Lcom/yyw/ts70xhw/Iop;->IIcSendOneByte(BBB)I

    .line 330
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    invoke-static {v5, v3}, Lcom/yyw/ts70xhw/Iop;->IIcReadOneByte(BB)B

    move-result v1

    if-ne v1, v6, :cond_0

    .line 339
    const/4 v1, 0x1

    invoke-virtual {p0, v4, v1}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    .line 347
    :goto_1
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {p0, v4, v3}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    goto :goto_1
.end method

.method TestUart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, -0x10000

    const/4 v5, 0x0

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "bReadOne":Z
    const/4 v1, 0x0

    .line 356
    .local v1, "bReadTwo":Z
    const v3, 0x1c200

    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->UartOpen(I)I

    .line 357
    invoke-static {v5}, Lcom/yyw/ts70xhw/Iop;->RstPort(I)I

    .line 360
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    invoke-virtual {p0}, Lcom/ts/main/auth/FactorytestarmActivity;->ReadUartOk()Z

    move-result v0

    .line 367
    invoke-static {v7}, Lcom/yyw/ts70xhw/Iop;->RstPort(I)I

    .line 370
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :goto_1
    invoke-virtual {p0}, Lcom/ts/main/auth/FactorytestarmActivity;->ReadUartOk()Z

    move-result v1

    .line 377
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->UartClose()I

    .line 378
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 380
    iget-object v3, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    const-string v4, "\u4e32\u53e3\u77ed\u8def"

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v3, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 382
    iget-object v3, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 396
    :goto_2
    return-void

    .line 361
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 371
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 374
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 384
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 386
    iget-object v3, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    const-string v4, "\u4e32\u53e3\u5f02\u5e38"

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v3, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 388
    iget-object v3, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 391
    :cond_1
    const-string v3, "[scj:]Test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bReadOne == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v3, "[scj:]Test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bReadOne == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v3, 0x5

    invoke-virtual {p0, v3, v7}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    goto :goto_2
.end method

.method public UserAll()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    iget-boolean v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->bCheck:Z

    if-eqz v0, :cond_2

    .line 197
    iget v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->Num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->Num:I

    .line 198
    iget v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->Num:I

    rem-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbMCU:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->McuTestResult()I

    move-result v0

    iput v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->nMcu:I

    .line 203
    iget v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->nMcu:I

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0, v5, v5}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbSim:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/ts/main/auth/FactorytestarmActivity;->CheckMySinState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0, v6, v5}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/ts/main/auth/FactorytestarmActivity;->bOK()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->texmesTextView:Landroid/widget/TextView;

    const-string v1, "\u6d4b\u8bd5OK"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    const-string v0, "ARM\u6d4b\u8bd5ok"

    invoke-static {v0}, Lcom/ts/main/auth/factory_test;->AddToSort(Ljava/lang/String;)V

    .line 220
    iput-boolean v4, p0, Lcom/ts/main/auth/FactorytestarmActivity;->bCheck:Z

    .line 221
    const-class v0, Lcom/ts/main/auth/FactorytestvideoActivity;

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestarmActivity;->enterSubWin(Ljava/lang/Class;)V

    .line 282
    :cond_2
    :goto_0
    return-void

    .line 223
    :cond_3
    invoke-static {}, Lcom/ts/main/auth/factory_test;->getTickCount()J

    move-result-wide v0

    sget-wide v2, Lcom/ts/main/auth/factory_test;->TotaArmlTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 225
    iput-boolean v4, p0, Lcom/ts/main/auth/FactorytestarmActivity;->bCheck:Z

    .line 226
    invoke-virtual {p0}, Lcom/ts/main/auth/FactorytestarmActivity;->bOK()Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->texmesTextView:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbSim:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    invoke-virtual {p0, v6, v4}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    .line 232
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->texmesTextView:Landroid/widget/TextView;

    const-string v1, "SIM\u5361\u5ea7\u5f02\u5e38"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const-string v0, "SIM\u5361\u5ea7\u5f02\u5e38"

    invoke-static {v0}, Lcom/ts/main/auth/factory_test;->AddToSort(Ljava/lang/String;)V

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxSD:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    .line 237
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v4}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    .line 238
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->texmesTextView:Landroid/widget/TextView;

    const-string v1, "SD\u5361\u5ea7\u5f02\u5e38"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const-string v0, "SD\u5361\u5ea7\u5f02\u5e38"

    invoke-static {v0}, Lcom/ts/main/auth/factory_test;->AddToSort(Ljava/lang/String;)V

    .line 241
    :cond_5
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxEmmc:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 243
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->texmesTextView:Landroid/widget/TextView;

    const-string v1, "\u5185\u90e8\u5b58\u50a8\u5668\u5f02\u5e38"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const-string v0, "\u5185\u90e8\u5b58\u50a8\u5668\u5f02\u5e38"

    invoke-static {v0}, Lcom/ts/main/auth/factory_test;->AddToSort(Ljava/lang/String;)V

    .line 246
    :cond_6
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbMCU:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 248
    invoke-virtual {p0, v5, v4}, Lcom/ts/main/auth/FactorytestarmActivity;->SetCheckBoxState(IZ)V

    .line 249
    const-string v0, "MCU\u5f02\u5e38"

    invoke-static {v0}, Lcom/ts/main/auth/factory_test;->AddToSort(Ljava/lang/String;)V

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    .line 253
    const-string v0, "\u4e32\u53e3\u5f02\u5e38"

    invoke-static {v0}, Lcom/ts/main/auth/factory_test;->AddToSort(Ljava/lang/String;)V

    .line 255
    :cond_8
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbIIC:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 257
    const-string v0, "IIC\u5f02\u5e38"

    invoke-static {v0}, Lcom/ts/main/auth/factory_test;->AddToSort(Ljava/lang/String;)V

    .line 260
    :cond_9
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbMCU:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbIIC:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    :cond_a
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->texmesTextView:Landroid/widget/TextView;

    const-string v1, "\u6392\u6bcd\u5ea7\u710a\u63a5\u5f02\u5e38"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const-string v0, "\u6392\u6bcd\u5ea7\u710a\u63a5\u5f02\u5e38"

    invoke-static {v0}, Lcom/ts/main/auth/factory_test;->AddToSort(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/ts/main/auth/factory_test;->WriteReport()V

    goto/16 :goto_0
.end method

.method bOK()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxEmmc:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbMCU:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxSD:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbSim:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbIIC:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method enterSubWin(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestarmActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget v0, Lcom/ts/MainUI/R$layout;->activity_factory_testarm:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestarmActivity;->setContentView(I)V

    .line 67
    const-string v0, " "

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->strERR:Ljava/lang/String;

    .line 68
    sget v0, Lcom/ts/MainUI/R$id;->ck_factort_emmc:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxEmmc:Landroid/widget/CheckBox;

    .line 69
    sget v0, Lcom/ts/MainUI/R$id;->ck_factort_sd:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbxSD:Landroid/widget/CheckBox;

    .line 72
    sget v0, Lcom/ts/MainUI/R$id;->ck_factort_sim:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbSim:Landroid/widget/CheckBox;

    .line 73
    sget v0, Lcom/ts/MainUI/R$id;->ck_factort_iic:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbIIC:Landroid/widget/CheckBox;

    .line 74
    sget v0, Lcom/ts/MainUI/R$id;->ck_factort_uart:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbwifiUART:Landroid/widget/CheckBox;

    .line 76
    sget v0, Lcom/ts/MainUI/R$id;->ck_factort_mcu:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->cbMCU:Landroid/widget/CheckBox;

    .line 78
    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctoryarmmes:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactorytestarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/main/auth/FactorytestarmActivity;->texmesTextView:Landroid/widget/TextView;

    .line 80
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 510
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 511
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 512
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 519
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 521
    invoke-virtual {p0}, Lcom/ts/main/auth/FactorytestarmActivity;->TestArmmemory()V

    .line 522
    invoke-virtual {p0}, Lcom/ts/main/auth/FactorytestarmActivity;->TestUart()V

    .line 523
    invoke-virtual {p0}, Lcom/ts/main/auth/FactorytestarmActivity;->TestIIC()V

    .line 524
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->McuTestStart()I

    .line 525
    invoke-static {}, Lcom/ts/main/auth/factory_test;->getTickCount()J

    move-result-wide v0

    sput-wide v0, Lcom/ts/main/auth/factory_test;->TotaArmlTime:J

    .line 526
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 527
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 186
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
