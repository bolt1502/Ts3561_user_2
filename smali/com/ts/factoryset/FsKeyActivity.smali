.class public Lcom/ts/factoryset/FsKeyActivity;
.super Lcom/ts/factoryset/FsBaseActivity;
.source "FsKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/factoryset/FsKeyActivity$FileInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FsKeyActivity"

.field private static final mKeyAdHeader:I = 0x794b7354

.field private static final mKeyAdSize:I = 0x368

.field private static final mKeyEcHeader:I = 0x63457354

.field private static final mKeyEcSize:I = 0x30

.field private static final mKeyIrHeader:I = 0x72497354

.field private static final mKeyIrSize:I = 0x208

.field private static final mKeySwHeader:I = 0x77537354

.field private static final mKeySwSize:I = 0x4c

.field private static final mStrKeyAd:Ljava/lang/String; = "TsKey.bin"

.field private static final mStrKeyEc:Ljava/lang/String; = "TsEc.bin"

.field private static final mStrKeyIr:Ljava/lang/String; = "TsIr.bin"

.field private static final mStrKeySw:Ljava/lang/String; = "TsSw.bin"


# instance fields
.field private mBtnKey:Lcom/ts/other/ParamButton;

.field private mDlg:Lcom/ts/factoryset/FsInputDlg;

.field private mKeyVal:[I

.field private onOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/factoryset/FsBaseActivity;-><init>()V

    .line 42
    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ts/factoryset/FsKeyActivity;->mKeyVal:[I

    .line 107
    new-instance v0, Lcom/ts/factoryset/FsKeyActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsKeyActivity$1;-><init>(Lcom/ts/factoryset/FsKeyActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsKeyActivity;->onOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/ts/factoryset/FsKeyActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/ts/factoryset/FsKeyActivity;->importKeyData()V

    return-void
.end method

.method public static byteArrayToInt([BI)I
    .locals 3
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "value":I
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 224
    return v0
.end method

.method private importKeyData()V
    .locals 3

    .prologue
    .line 82
    const-string v0, "TsEc.bin"

    const v1, 0x63457354

    const/16 v2, 0x30

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/factoryset/FsKeyActivity;->getKeyFileData(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ts/factoryset/FsKeyActivity;->mKeyVal:[I

    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetEcdAd([I)I

    .line 85
    const-string v0, "\u5bfc\u5165KeyEc\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsKeyActivity;->showMsg(Ljava/lang/String;)V

    .line 88
    :cond_0
    const-string v0, "TsIr.bin"

    const v1, 0x72497354

    const/16 v2, 0x208

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/factoryset/FsKeyActivity;->getKeyFileData(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/ts/factoryset/FsKeyActivity;->mKeyVal:[I

    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetKeyIr([I)I

    .line 91
    const-string v0, "\u5bfc\u5165KeyIr\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsKeyActivity;->showMsg(Ljava/lang/String;)V

    .line 94
    :cond_1
    const-string v0, "TsSw.bin"

    const v1, 0x77537354

    const/16 v2, 0x4c

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/factoryset/FsKeyActivity;->getKeyFileData(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/ts/factoryset/FsKeyActivity;->mKeyVal:[I

    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetKeySw([I)I

    .line 97
    const-string v0, "\u5bfc\u5165KeySw\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsKeyActivity;->showMsg(Ljava/lang/String;)V

    .line 100
    :cond_2
    const-string v0, "TsKey.bin"

    const v1, 0x794b7354

    const/16 v2, 0x368

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/factoryset/FsKeyActivity;->getKeyFileData(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/ts/factoryset/FsKeyActivity;->mKeyVal:[I

    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetKeyAd([I)I

    .line 103
    const-string v0, "\u5bfc\u5165KeyAd\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsKeyActivity;->showMsg(Ljava/lang/String;)V

    .line 105
    :cond_3
    return-void
.end method


# virtual methods
.method public getFileData(Ljava/lang/String;)Lcom/ts/factoryset/FsKeyActivity$FileInfo;
    .locals 8
    .param p1, "strFile"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v5, Lcom/ts/factoryset/FsKeyActivity$FileInfo;

    invoke-direct {v5, p0}, Lcom/ts/factoryset/FsKeyActivity$FileInfo;-><init>(Lcom/ts/factoryset/FsKeyActivity;)V

    .line 138
    .local v5, "info":Lcom/ts/factoryset/FsKeyActivity$FileInfo;
    const/4 v7, 0x0

    iput v7, v5, Lcom/ts/factoryset/FsKeyActivity$FileInfo;->len:I

    .line 139
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v6, "src":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object v5

    .line 145
    :cond_1
    const/4 v3, 0x0

    .line 146
    .local v3, "in":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 149
    .local v0, "bin":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .local v1, "bin":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v7, v7, [B

    iput-object v7, v5, Lcom/ts/factoryset/FsKeyActivity$FileInfo;->data:[B

    .line 152
    iget-object v7, v5, Lcom/ts/factoryset/FsKeyActivity$FileInfo;->data:[B

    invoke-virtual {v1, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    iput v7, v5, Lcom/ts/factoryset/FsKeyActivity$FileInfo;->len:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 166
    if-eqz v1, :cond_3

    .line 168
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    move-object v3, v4

    .line 170
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    if-eqz v0, :cond_0

    .line 168
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 171
    :catch_1
    move-exception v2

    .line 173
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 160
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 166
    if-eqz v0, :cond_0

    .line 168
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 171
    :catch_3
    move-exception v2

    .line 173
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 166
    :goto_3
    if-eqz v0, :cond_2

    .line 168
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 175
    :cond_2
    :goto_4
    throw v7

    .line 171
    :catch_4
    move-exception v2

    .line 173
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 171
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    .line 173
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

    .line 163
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

    .line 158
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

    .line 154
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

.method public getKeyFileData(Ljava/lang/String;II)Z
    .locals 10
    .param p1, "strName"    # Ljava/lang/String;
    .param p2, "header"    # I
    .param p3, "fileSize"    # I

    .prologue
    const/4 v7, 0x0

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "info":Lcom/ts/factoryset/FsKeyActivity$FileInfo;
    const/4 v6, 0x0

    .line 185
    .local v6, "ret":Z
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ts/main/common/MainSet;->GetMountedStorage()[Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "mStrKeyFile":[Ljava/lang/String;
    if-nez v4, :cond_0

    .line 216
    :goto_0
    return v7

    .line 192
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v8, v4

    if-lt v0, v8, :cond_1

    :goto_2
    move v7, v6

    .line 216
    goto :goto_0

    .line 194
    :cond_1
    const-string v8, "xxxxx"

    aget-object v9, v4, v0

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v9, v4, v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ts/factoryset/FsKeyActivity;->getFileData(Ljava/lang/String;)Lcom/ts/factoryset/FsKeyActivity$FileInfo;

    move-result-object v1

    .line 197
    iget v8, v1, Lcom/ts/factoryset/FsKeyActivity$FileInfo;->len:I

    if-ne v8, p3, :cond_3

    .line 199
    add-int/lit8 v8, p3, -0x8

    div-int/lit8 v3, v8, 0x4

    .line 200
    .local v3, "keyNum":I
    iget-object v8, v1, Lcom/ts/factoryset/FsKeyActivity$FileInfo;->data:[B

    invoke-static {v8, v7}, Lcom/ts/factoryset/FsKeyActivity;->byteArrayToInt([BI)I

    move-result v8

    if-ne v8, p2, :cond_3

    iget-object v8, v1, Lcom/ts/factoryset/FsKeyActivity$FileInfo;->data:[B

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/ts/factoryset/FsKeyActivity;->byteArrayToInt([BI)I

    move-result v8

    if-ne v8, v3, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/ts/factoryset/FsKeyActivity;->resetKeyData()V

    .line 204
    const/16 v5, 0x8

    .line 205
    .local v5, "offset":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-lt v2, v3, :cond_2

    .line 210
    const/4 v6, 0x1

    .line 211
    goto :goto_2

    .line 207
    :cond_2
    iget-object v7, p0, Lcom/ts/factoryset/FsKeyActivity;->mKeyVal:[I

    iget-object v8, v1, Lcom/ts/factoryset/FsKeyActivity$FileInfo;->data:[B

    invoke-static {v8, v5}, Lcom/ts/factoryset/FsKeyActivity;->byteArrayToInt([BI)I

    move-result v8

    aput v8, v7, v2

    .line 208
    add-int/lit8 v5, v5, 0x4

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 192
    .end local v2    # "j":I
    .end local v3    # "keyNum":I
    .end local v5    # "offset":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/ts/factoryset/FsKeyActivity;->importKeyData()V

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 53
    invoke-super {p0, p1}, Lcom/ts/factoryset/FsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v2, Lcom/ts/MainUI/R$layout;->activity_fs_key:I

    invoke-virtual {p0, v2}, Lcom/ts/factoryset/FsKeyActivity;->setContentView(I)V

    .line 56
    sget v2, Lcom/ts/MainUI/R$string;->str_fsmain_key:I

    invoke-virtual {p0, v2}, Lcom/ts/factoryset/FsKeyActivity;->topBtnInit(I)V

    .line 58
    sget v2, Lcom/ts/MainUI/R$id;->fskey_import:I

    invoke-virtual {p0, v2}, Lcom/ts/factoryset/FsKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ts/other/ParamButton;

    iput-object v2, p0, Lcom/ts/factoryset/FsKeyActivity;->mBtnKey:Lcom/ts/other/ParamButton;

    .line 59
    iget-object v2, p0, Lcom/ts/factoryset/FsKeyActivity;->mBtnKey:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$drawable;->factory_tab_up:I

    .line 60
    sget v4, Lcom/ts/MainUI/R$drawable;->factory_tab_dn:I

    sget v5, Lcom/ts/MainUI/R$drawable;->factory_tab_dn:I

    .line 59
    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 62
    iget-object v2, p0, Lcom/ts/factoryset/FsKeyActivity;->mBtnKey:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v2, Lcom/ts/factoryset/FsInputDlg;

    invoke-direct {v2}, Lcom/ts/factoryset/FsInputDlg;-><init>()V

    iput-object v2, p0, Lcom/ts/factoryset/FsKeyActivity;->mDlg:Lcom/ts/factoryset/FsInputDlg;

    .line 65
    const/4 v2, 0x4

    new-array v0, v2, [B

    aput-byte v6, v0, v7

    const/4 v2, 0x1

    aput-byte v6, v0, v2

    const/4 v2, 0x2

    aput-byte v6, v0, v2

    .line 66
    .local v0, "data":[B
    invoke-static {v0, v7}, Lcom/ts/factoryset/FsKeyActivity;->byteArrayToInt([BI)I

    move-result v1

    .line 72
    .local v1, "val":I
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/ts/factoryset/FsBaseActivity;->onResume()V

    .line 131
    return-void
.end method

.method resetKeyData()V
    .locals 3

    .prologue
    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/factoryset/FsKeyActivity;->mKeyVal:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 235
    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/ts/factoryset/FsKeyActivity;->mKeyVal:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method showMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    return-void
.end method
