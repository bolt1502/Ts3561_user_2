.class public Lcom/ts/main/auth/FactoryMainActivity;
.super Landroid/app/Activity;
.source "FactoryMainActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "[scj]Test"


# instance fields
.field BtnStartT:Landroid/widget/Button;

.field deviceInfo:Landroid/widget/TextView;

.field protected intent:Landroid/content/Intent;

.field private mActivityManager:Landroid/app/ActivityManager;

.field txeMyTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/auth/FactoryMainActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 35
    return-void
.end method

.method private getNumCores()I
    .locals 6

    .prologue
    .line 138
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/ts/main/auth/FactoryMainActivity$1CpuFilter;

    invoke-direct {v3, p0}, Lcom/ts/main/auth/FactoryMainActivity$1CpuFilter;-><init>(Lcom/ts/main/auth/FactoryMainActivity;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 141
    .local v2, "files":[Ljava/io/File;
    const-string v3, "[scj]Test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CPU Count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v3

    .line 144
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "[scj]Test"

    const-string v4, "CPU Count: Failed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method GetEmmcSize()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/32 v10, 0x8000

    const-wide/16 v8, 0x4000

    const-wide/16 v6, 0x400

    .line 71
    invoke-virtual {p0}, Lcom/ts/main/auth/FactoryMainActivity;->readSDCard()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ts/main/auth/FactoryMainActivity;->readSystem()J

    move-result-wide v4

    add-long v0, v2, v4

    .line 72
    .local v0, "tSize":J
    div-long v2, v0, v6

    div-long v0, v2, v6

    .line 73
    cmp-long v2, v0, v8

    if-gtz v2, :cond_0

    .line 75
    const-string v2, "16GB"

    .line 85
    :goto_0
    return-object v2

    .line 77
    :cond_0
    cmp-long v2, v0, v8

    if-lez v2, :cond_1

    cmp-long v2, v0, v10

    if-gez v2, :cond_1

    .line 79
    const-string v2, "32GB"

    goto :goto_0

    .line 81
    :cond_1
    cmp-long v2, v0, v10

    if-lez v2, :cond_2

    const-wide/32 v2, 0x10000

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 83
    const-string v2, "64GB"

    goto :goto_0

    .line 85
    :cond_2
    const-string v2, "128GB"

    goto :goto_0
.end method

.method GetMenSize()Ljava/lang/String;
    .locals 13

    .prologue
    const-wide/16 v11, 0xc00

    const-wide/16 v9, 0x800

    const-wide/16 v7, 0x400

    .line 90
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 92
    .local v2, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v5, p0, Lcom/ts/main/auth/FactoryMainActivity;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v5, :cond_0

    .line 93
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/ts/main/auth/FactoryMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/ts/main/auth/FactoryMainActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 95
    :cond_0
    iget-object v5, p0, Lcom/ts/main/auth/FactoryMainActivity;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 96
    iget-wide v0, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 97
    .local v0, "memSize":J
    div-long v5, v0, v7

    div-long v3, v5, v7

    .line 98
    .local v3, "nSize":J
    cmp-long v5, v3, v7

    if-gez v5, :cond_1

    .line 100
    const-string v5, "1G"

    .line 118
    :goto_0
    return-object v5

    .line 102
    :cond_1
    cmp-long v5, v3, v7

    if-lez v5, :cond_3

    cmp-long v5, v3, v9

    if-gez v5, :cond_3

    .line 104
    const-wide/16 v5, 0x603

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    .line 106
    const-string v5, "1.5G"

    goto :goto_0

    .line 108
    :cond_2
    const-string v5, "2G"

    goto :goto_0

    .line 110
    :cond_3
    cmp-long v5, v3, v9

    if-lez v5, :cond_4

    cmp-long v5, v3, v11

    if-gez v5, :cond_4

    .line 112
    const-string v5, "3G"

    goto :goto_0

    .line 114
    :cond_4
    cmp-long v5, v3, v11

    if-lez v5, :cond_5

    const-wide/16 v5, 0x1000

    cmp-long v5, v3, v5

    if-gez v5, :cond_5

    .line 116
    const-string v5, "4G"

    goto :goto_0

    .line 118
    :cond_5
    const-string v5, "8G"

    goto :goto_0
.end method

.method IsWifiVer()Z
    .locals 2

    .prologue
    .line 185
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "evb3561sv_t_63_m0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method ReadCmdLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    const-string v1, "ro.forfan.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ts/main/auth/FactoryMainActivity;->IsWifiVer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "WIFI\u7248"

    .line 203
    :goto_0
    return-object v1

    .line 195
    :cond_0
    const-string v1, "modem_ch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    const-string v1, "\u56fd\u5185\u7248"

    goto :goto_0

    .line 199
    :cond_1
    const-string v1, "modem_fo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    const-string v1, "\u5168\u7403\u901a"

    goto :goto_0

    .line 203
    :cond_2
    const-string v1, "modem\u9519\u8bef"

    goto :goto_0
.end method

.method public UserAll()V
    .locals 0

    .prologue
    .line 218
    return-void
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
    .line 210
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactoryMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    sget v0, Lcom/ts/MainUI/R$layout;->activity_factory_welcome:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactoryMainActivity;->setContentView(I)V

    .line 162
    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_wel_start:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactoryMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ts/main/auth/FactoryMainActivity;->BtnStartT:Landroid/widget/Button;

    .line 163
    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_wel_mes:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactoryMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/main/auth/FactoryMainActivity;->txeMyTextView:Landroid/widget/TextView;

    .line 164
    sget v0, Lcom/ts/MainUI/R$id;->btn_fatctory_device:I

    invoke-virtual {p0, v0}, Lcom/ts/main/auth/FactoryMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/main/auth/FactoryMainActivity;->deviceInfo:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/ts/main/auth/FactoryMainActivity;->deviceInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ts/main/auth/FactoryMainActivity;->ReadCmdLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ts/main/auth/FactoryMainActivity;->getNumCores()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6838   \u5185\u5b58:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ts/main/auth/FactoryMainActivity;->GetMenSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      \u5185\u90e8\u7a7a\u95f4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ts/main/auth/FactoryMainActivity;->GetEmmcSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/ts/main/auth/FactoryMainActivity;->BtnStartT:Landroid/widget/Button;

    new-instance v1, Lcom/ts/main/auth/FactoryMainActivity$1;

    invoke-direct {v1, p0}, Lcom/ts/main/auth/FactoryMainActivity$1;-><init>(Lcom/ts/main/auth/FactoryMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 224
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 226
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 233
    invoke-static {}, Lcom/ts/main/auth/factory_test;->ReadReport()V

    .line 234
    sget-object v0, Lcom/ts/main/auth/factory_test;->Err:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/ts/main/auth/FactoryMainActivity;->txeMyTextView:Landroid/widget/TextView;

    const-string v1, "\u5168\u90e8\u6b63\u5e38"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 244
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/ts/main/auth/FactoryMainActivity;->txeMyTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/ts/main/auth/factory_test;->Err:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method readSDCard()J
    .locals 15

    .prologue
    const-wide/16 v13, 0x400

    .line 45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, "state":Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 48
    .local v6, "sdcardDir":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 49
    .local v7, "sf":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v4, v9

    .line 50
    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v2, v9

    .line 51
    .local v2, "blockCount":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 52
    .local v0, "availCount":J
    const-string v9, "[scj]Test"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "block\u5927\u5c0f:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",block\u6570\u76ee:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",\u603b\u5927\u5c0f:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-long v11, v4, v2

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v9, "[scj]Test"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u53ef\u7528\u7684block\u6570\u76ee\uff1a:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",\u5269\u4f59\u7a7a\u95f4:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-long v11, v0, v4

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    mul-long v9, v4, v2

    .line 56
    .end local v0    # "availCount":J
    .end local v2    # "blockCount":J
    .end local v4    # "blockSize":J
    .end local v6    # "sdcardDir":Ljava/io/File;
    .end local v7    # "sf":Landroid/os/StatFs;
    :goto_0
    return-wide v9

    :cond_0
    const-wide/16 v9, 0x0

    goto :goto_0
.end method

.method readSystem()J
    .locals 14

    .prologue
    const-wide/16 v12, 0x400

    .line 59
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    .line 60
    .local v6, "root":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 61
    .local v7, "sf":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 62
    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v2, v8

    .line 63
    .local v2, "blockCount":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 64
    .local v0, "availCount":J
    const-string v8, "[scj]Test"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "block\u5927\u5c0f:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",block\u6570\u76ee:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\u603b\u5927\u5c0f:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-long v10, v4, v2

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v8, "[scj]Test"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u53ef\u7528\u7684block\u6570\u76ee\uff1a:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\u53ef\u7528\u5927\u5c0f:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-long v10, v0, v4

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    mul-long v8, v4, v2

    return-wide v8
.end method
