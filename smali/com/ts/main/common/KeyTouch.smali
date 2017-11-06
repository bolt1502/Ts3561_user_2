.class public Lcom/ts/main/common/KeyTouch;
.super Ljava/lang/Object;
.source "KeyTouch.java"


# static fields
.field private static final CTOUCH_FILE:Ljava/lang/String; = "i2c_touch.cfg"

.field public static final GAMMA_MAX_NUM:I = 0x16e

.field static MyKeyTouch:Lcom/ts/main/common/KeyTouch; = null

.field private static final TAG:Ljava/lang/String; = "KeyTouch"

.field static TickNum:I = 0x0

.field private static final screenpath:Ljava/lang/String; = "abc\u817e\u5b9e\u622a\u56fe/"


# instance fields
.field EnvATC:Lcom/autochips/storage/EnvironmentATC;

.field private Mydada:[B

.field private TouchTime:I

.field bDown:Z

.field inputSource:I

.field mContext:Landroid/content/Context;

.field private mGarmarData:[Ljava/lang/String;

.field private nPoint:[I

.field private nPointOld:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/main/common/KeyTouch;->MyKeyTouch:Lcom/ts/main/common/KeyTouch;

    .line 67
    const/16 v0, 0x64

    sput v0, Lcom/ts/main/common/KeyTouch;->TickNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v3, p0, Lcom/ts/main/common/KeyTouch;->inputSource:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/common/KeyTouch;->mContext:Landroid/content/Context;

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    const-string v1, "arm_gamma"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 59
    const-string v2, "cam_gamma"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 60
    const-string v2, "dvd_gamma"

    aput-object v2, v0, v1

    .line 61
    const-string v1, "usb_gamma"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    .line 62
    const-string v2, "aux_gamma"

    aput-object v2, v0, v1

    .line 63
    const-string v1, "tv_gamma"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    .line 64
    const-string v2, "fcam_gamma"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/common/KeyTouch;->mGarmarData:[Ljava/lang/String;

    .line 145
    new-array v0, v5, [B

    iput-object v0, p0, Lcom/ts/main/common/KeyTouch;->Mydada:[B

    .line 219
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/ts/main/common/KeyTouch;->nPoint:[I

    .line 220
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    .line 221
    iput v3, p0, Lcom/ts/main/common/KeyTouch;->TouchTime:I

    .line 32
    return-void
.end method

.method public static GetInstance()Lcom/ts/main/common/KeyTouch;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/ts/main/common/KeyTouch;->MyKeyTouch:Lcom/ts/main/common/KeyTouch;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/ts/main/common/KeyTouch;

    invoke-direct {v0}, Lcom/ts/main/common/KeyTouch;-><init>()V

    sput-object v0, Lcom/ts/main/common/KeyTouch;->MyKeyTouch:Lcom/ts/main/common/KeyTouch;

    .line 54
    :cond_0
    sget-object v0, Lcom/ts/main/common/KeyTouch;->MyKeyTouch:Lcom/ts/main/common/KeyTouch;

    return-object v0
.end method

.method static synthetic access$0(Lcom/ts/main/common/KeyTouch;IIJFFF)V
    .locals 0

    .prologue
    .line 292
    invoke-direct/range {p0 .. p7}, Lcom/ts/main/common/KeyTouch;->injectMotionEvent(IIJFFF)V

    return-void
.end method

.method static synthetic access$1(Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 388
    invoke-static {p0}, Lcom/ts/main/common/KeyTouch;->sendKeySync(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "destFileName"    # Ljava/lang/String;
    .param p2, "reWrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 94
    const-string v8, "KeyTouch"

    const-string v9, "copyFile, begin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v6, "srcFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "destFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 98
    const-string v8, "KeyTouch"

    const-string v9, "copyFile, source file not exist."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return v7

    .line 101
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_1

    .line 102
    const-string v8, "KeyTouch"

    const-string v9, "copyFile, source file not a file."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_2

    .line 106
    const-string v8, "KeyTouch"

    const-string v9, "copyFile, source file can\'t read."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p2, :cond_3

    .line 110
    const-string v7, "KeyTouch"

    const-string v8, "copyFile, before copy File, delete first."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 115
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 116
    .local v4, "inStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 117
    .local v5, "outStream":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 118
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 119
    .local v1, "byteRead":I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_4

    .line 122
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 123
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 124
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .end local v0    # "buf":[B
    .end local v1    # "byteRead":I
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    :goto_2
    const-string v7, "KeyTouch"

    const-string v8, "copyFile, success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v7, 0x1

    goto :goto_0

    .line 120
    .restart local v0    # "buf":[B
    .restart local v1    # "byteRead":I
    .restart local v4    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    :cond_4
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 125
    .end local v0    # "buf":[B
    .end local v1    # "byteRead":I
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Ljava/io/IOException;
    throw v3

    .line 127
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 128
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static final getSource(II)I
    .locals 0
    .param p0, "inputSource"    # I
    .param p1, "defaultSource"    # I

    .prologue
    .line 308
    if-nez p0, :cond_0

    .end local p1    # "defaultSource":I
    :goto_0
    return p1

    .restart local p1    # "defaultSource":I
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method private injectMotionEvent(IIJFFF)V
    .locals 23
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "when"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F

    .prologue
    .line 293
    const/high16 v21, 0x3f800000    # 1.0f

    .line 294
    .local v21, "DEFAULT_SIZE":F
    const/16 v18, 0x0

    .line 295
    .local v18, "DEFAULT_META_STATE":I
    const/high16 v19, 0x3f800000    # 1.0f

    .line 296
    .local v19, "DEFAULT_PRECISION_X":F
    const/high16 v20, 0x3f800000    # 1.0f

    .line 297
    .local v20, "DEFAULT_PRECISION_Y":F
    const/16 v16, 0x0

    .line 298
    .local v16, "DEFAULT_DEVICE_ID":I
    const/16 v17, 0x0

    .line 299
    .local v17, "DEFAULT_EDGE_FLAGS":I
    const/high16 v10, 0x3f800000    # 1.0f

    .line 300
    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    .line 301
    const/4 v15, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p3

    move/from16 v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 299
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 302
    .local v22, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 304
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 305
    const/4 v3, 0x2

    .line 304
    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 306
    return-void
.end method

.method private static sendKeySync(Landroid/view/KeyEvent;)V
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 389
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 390
    const/4 v1, 0x2

    .line 389
    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 391
    return-void
.end method

.method private sendToucXYSync(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 356
    return-void
.end method


# virtual methods
.method public DealTask()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    iget-object v1, p0, Lcom/ts/main/common/KeyTouch;->nPoint:[I

    invoke-static {v1}, Lcom/yyw/ts70xhw/Iop;->GetTouchMul([I)I

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/ts/main/common/KeyTouch;->nPoint:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    aget v2, v2, v4

    if-eq v1, v2, :cond_3

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 231
    iput v4, p0, Lcom/ts/main/common/KeyTouch;->TouchTime:I

    .line 232
    iget-object v1, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    aget v1, v1, v4

    if-lez v1, :cond_0

    .line 234
    const-string v1, "KeyTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nPointOld[0]=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v1, "KeyTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nPointOld[1]=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v1, "KeyTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nPointOld[2]=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    aget v1, v1, v5

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    aget v1, v1, v5

    const/16 v2, 0x400

    if-ge v1, v2, :cond_0

    .line 238
    iget-object v1, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    aget v1, v1, v6

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    aget v1, v1, v6

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    .line 240
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklisOn()I

    move-result v1

    if-nez v1, :cond_0

    .line 242
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->BklTurn()I

    .line 243
    const-string v1, "KeyTouch"

    const-string v2, "Mcu.BklTurn();=="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    iget-object v2, p0, Lcom/ts/main/common/KeyTouch;->nPoint:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 251
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/ts/main/common/KeyTouch;->nPointOld:[I

    aget v1, v1, v4

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 253
    iget v1, p0, Lcom/ts/main/common/KeyTouch;->TouchTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ts/main/common/KeyTouch;->TouchTime:I

    .line 254
    iget v1, p0, Lcom/ts/main/common/KeyTouch;->TouchTime:I

    const/16 v2, 0x82

    if-ne v1, v2, :cond_4

    .line 256
    const-string v1, "com.ts.MainUI"

    const-string v2, "com.ts.main.touch.TouchActivity"

    invoke-static {v1, v2}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_4
    const-string v1, "KeyTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TouchTime=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ts/main/common/KeyTouch;->TouchTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v1, "KeyTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nPoint[0]=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/main/common/KeyTouch;->nPoint:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v1, "KeyTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nPoint[1]=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/main/common/KeyTouch;->nPoint:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v1, "KeyTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nPoint[2]=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/main/common/KeyTouch;->nPoint:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method FathIsExits(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "abc\u817e\u5b9e\u622a\u56fe/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Screeanshot.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "abc\u817e\u5b9e\u622a\u56fe/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ts/MainUI/TsFile;->NewDir(Ljava/lang/String;)V

    .line 416
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "abc\u817e\u5b9e\u622a\u56fe/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Screeanshot.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "abc"

    invoke-static {v1, v2}, Lcom/ts/MainUI/TsFile;->writeFileSdcardFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "abc\u817e\u5b9e\u622a\u56fe/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Screeanshot.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    const/4 v1, 0x1

    .line 428
    :goto_1
    return v1

    .line 417
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method GetFileData(Ljava/lang/String;[B)I
    .locals 6
    .param p1, "sPath"    # Ljava/lang/String;
    .param p2, "Buf"    # [B

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 72
    .local v3, "nReadNum":I
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v4, v3

    .line 89
    .end local v3    # "nReadNum":I
    .local v4, "nReadNum":I
    :goto_0
    return v4

    .line 78
    .end local v4    # "nReadNum":I
    .restart local v3    # "nReadNum":I
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 79
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v2, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 80
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v3

    .line 81
    .end local v3    # "nReadNum":I
    .restart local v4    # "nReadNum":I
    goto :goto_0

    .line 82
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "nReadNum":I
    .restart local v3    # "nReadNum":I
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    move v4, v3

    .line 89
    .end local v3    # "nReadNum":I
    .restart local v4    # "nReadNum":I
    goto :goto_0

    .line 85
    .end local v4    # "nReadNum":I
    .restart local v3    # "nReadNum":I
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public Inint(Landroid/content/Context;)V
    .locals 2
    .param p1, "MyContext"    # Landroid/content/Context;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/ts/main/common/KeyTouch;->mContext:Landroid/content/Context;

    .line 214
    new-instance v0, Lcom/autochips/storage/EnvironmentATC;

    iget-object v1, p0, Lcom/ts/main/common/KeyTouch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autochips/storage/EnvironmentATC;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/main/common/KeyTouch;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    .line 215
    iget v0, p0, Lcom/ts/main/common/KeyTouch;->inputSource:I

    const/16 v1, 0x1002

    invoke-static {v0, v1}, Lcom/ts/main/common/KeyTouch;->getSource(II)I

    move-result v0

    iput v0, p0, Lcom/ts/main/common/KeyTouch;->inputSource:I

    .line 217
    return-void
.end method

.method public SearchBootFile()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public SearchCtouchFile(I)I
    .locals 12
    .param p1, "nForce"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 149
    sget v8, Lcom/ts/main/common/KeyTouch;->TickNum:I

    if-gtz v8, :cond_0

    if-ne p1, v6, :cond_2

    .line 150
    :cond_0
    const/4 v5, 0x0

    .line 151
    .local v5, "nWriteData":I
    if-nez p1, :cond_1

    .line 153
    sget v8, Lcom/ts/main/common/KeyTouch;->TickNum:I

    add-int/lit8 v8, v8, -0x1

    sput v8, Lcom/ts/main/common/KeyTouch;->TickNum:I

    .line 155
    :cond_1
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ts/main/common/MainSet;->GetMountedStorage()[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "mCtouchPath":[Ljava/lang/String;
    if-nez v1, :cond_3

    move v6, v7

    .line 208
    .end local v1    # "mCtouchPath":[Ljava/lang/String;
    .end local v5    # "nWriteData":I
    :cond_2
    :goto_0
    return v6

    .line 160
    .restart local v1    # "mCtouchPath":[Ljava/lang/String;
    .restart local v5    # "nWriteData":I
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v8, v1

    if-ge v0, v8, :cond_2

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v9, v1, v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "i2c_touch.cfg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/ts/main/common/KeyTouch;->Mydada:[B

    invoke-virtual {p0, v8, v9}, Lcom/ts/main/common/KeyTouch;->GetFileData(Ljava/lang/String;[B)I

    move-result v3

    .line 163
    .local v3, "nReadNum":I
    if-lez v3, :cond_5

    .line 165
    sput v7, Lcom/ts/main/common/KeyTouch;->TickNum:I

    .line 167
    iget-object v8, p0, Lcom/ts/main/common/KeyTouch;->Mydada:[B

    aget-byte v8, v8, v7

    packed-switch v8, :pswitch_data_0

    .line 182
    :goto_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCtXYswap()I

    move-result v4

    .line 183
    .local v4, "nTYPR":I
    invoke-static {v5}, Lcom/yyw/ts70xhw/FtSet;->SetCtXYswap(I)I

    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "nData":I
    const/4 v8, 0x5

    if-ne v3, v8, :cond_4

    .line 188
    iget-object v8, p0, Lcom/ts/main/common/KeyTouch;->Mydada:[B

    const/4 v9, 0x2

    aget-byte v8, v8, v9

    mul-int/lit16 v8, v8, 0x100

    iget-object v9, p0, Lcom/ts/main/common/KeyTouch;->Mydada:[B

    aget-byte v9, v9, v6

    add-int/2addr v8, v9

    const/high16 v9, 0x10000

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/ts/main/common/KeyTouch;->Mydada:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    iget-object v10, p0, Lcom/ts/main/common/KeyTouch;->Mydada:[B

    const/4 v11, 0x4

    aget-byte v10, v10, v11

    mul-int/lit16 v10, v10, 0x100

    add-int/2addr v9, v10

    add-int v2, v8, v9

    .line 195
    :goto_3
    invoke-static {v2}, Lcom/yyw/ts70xhw/FtSet;->SetCtXYrange(I)I

    .line 196
    invoke-static {v7}, Lcom/yyw/ts70xhw/FtSet;->Save(I)I

    .line 197
    iget-object v8, p0, Lcom/ts/main/common/KeyTouch;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_2

    .line 199
    iget-object v8, p0, Lcom/ts/main/common/KeyTouch;->mContext:Landroid/content/Context;

    const-string v9, "\u7535\u5bb9\u53c2\u6570\u5bfc\u5165\u6210\u529f"

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 170
    .end local v2    # "nData":I
    .end local v4    # "nTYPR":I
    :pswitch_0
    const/4 v5, 0x0

    .line 171
    goto :goto_2

    .line 173
    :pswitch_1
    const/4 v5, 0x1

    .line 174
    goto :goto_2

    .line 176
    :pswitch_2
    const/4 v5, 0x2

    .line 177
    goto :goto_2

    .line 179
    :pswitch_3
    const/4 v5, 0x3

    goto :goto_2

    .line 192
    .restart local v2    # "nData":I
    .restart local v4    # "nTYPR":I
    :cond_4
    const v2, 0x4000258

    goto :goto_3

    .line 160
    .end local v2    # "nData":I
    .end local v4    # "nTYPR":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SendTouchXY()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public getSDAllSize(Ljava/lang/String;)J
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v7, 0x400

    .line 398
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 400
    .local v4, "sf":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 402
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v0, v5

    .line 406
    .local v0, "allBlocks":J
    mul-long v5, v0, v2

    div-long/2addr v5, v7

    div-long/2addr v5, v7

    return-wide v5
.end method

.method public sendKeyClick(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 367
    move v0, p1

    .line 369
    .local v0, "nkeyCode":I
    new-instance v1, Lcom/ts/main/common/KeyTouch$2;

    invoke-direct {v1, p0, v0}, Lcom/ts/main/common/KeyTouch$2;-><init>(Lcom/ts/main/common/KeyTouch;I)V

    .line 385
    invoke-virtual {v1}, Lcom/ts/main/common/KeyTouch$2;->start()V

    .line 386
    return-void
.end method

.method public sendTap(FFI)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "State"    # I

    .prologue
    .line 314
    move v1, p1

    .line 315
    .local v1, "Touchx":F
    move v2, p2

    .line 316
    .local v2, "Touchy":F
    move v0, p3

    .line 317
    .local v0, "TouchState":I
    new-instance v3, Lcom/ts/main/common/KeyTouch$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/ts/main/common/KeyTouch$1;-><init>(Lcom/ts/main/common/KeyTouch;IFF)V

    .line 348
    invoke-virtual {v3}, Lcom/ts/main/common/KeyTouch$1;->start()V

    .line 351
    return-void
.end method

.method public takeScreenShot(Ljava/lang/String;)Z
    .locals 8
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 435
    iget-object v5, p0, Lcom/ts/main/common/KeyTouch;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    invoke-virtual {v5}, Lcom/autochips/storage/EnvironmentATC;->getStorageMountedPaths()[Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "strSDMountedPath":[Ljava/lang/String;
    const-string v5, "KeyTouch"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "strSDMountedPath.length =="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_0

    .line 452
    :goto_1
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 454
    iget-object v5, p0, Lcom/ts/main/common/KeyTouch;->mContext:Landroid/content/Context;

    const-string v6, "\u622a\u56fe\u627e\u4e0d\u5230\u76d8\u7b26"

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 474
    :goto_2
    return v4

    .line 439
    :cond_0
    const-string v5, "KeyTouch"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "strSDMountedPath[i] =="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    aget-object v5, v3, v1

    const-string v6, "emulated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v3, v1

    const-string v6, "cdfs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "abc\u817e\u5b9e\u622a\u56fe/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ts/MainUI/TsFile;->NewDir(Ljava/lang/String;)V

    .line 443
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd_HH-mm-ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 444
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "abc\u817e\u5b9e\u622a\u56fe/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 445
    const-string v5, "KeyTouch"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "imagePath =="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 437
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 459
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "screencap -p "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_3
    const-wide/16 v5, 0x7d0

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    :goto_4
    iget-object v5, p0, Lcom/ts/main/common/KeyTouch;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 474
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 467
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method
