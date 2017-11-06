.class public Lcom/autochips/android/backcar/Backcar_GPIO;
.super Ljava/lang/Object;
.source "Backcar_GPIO.java"


# static fields
.field public static final BACKCAR_ERROR:I = 0x2

.field public static final BACKCAR_START:I = 0x1

.field public static final BACKCAR_STOP:I = 0x0

.field private static final DIRECTION:I = 0x5

.field private static final GPIO_HIGH:I = 0x1

.field private static final GPIO_LOW:I = 0x0

.field private static final INPUT_VALUE:I = 0x2

.field private static final MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BackcarGPIO"

.field private static mLastGPIOValue:I = 0x0

.field private static final path:Ljava/lang/String; = "/sys/devices/platform/caci/cmd"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/autochips/android/backcar/Backcar_GPIO;->mLastGPIOValue:I

    .line 29
    const-string v0, "backcar_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "BackcarGPIO"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public static Backcar_Get_GPIO_Status()I
    .locals 11

    .prologue
    const/16 v10, 0x30

    .line 36
    const/4 v6, 0x0

    .line 37
    .local v6, "reader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 38
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 39
    .local v5, "line_string":Ljava/lang/String;
    const/4 v4, -0x1

    .line 40
    .local v4, "gpio_status":I
    const/4 v0, 0x0

    .line 43
    .local v0, "bfind":Z
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/class/misc/mtgpio/pin"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 47
    :goto_0
    if-nez v5, :cond_2

    .line 70
    :cond_0
    :goto_1
    if-eqz v2, :cond_6

    .line 72
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 78
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_2
    return v4

    .line 48
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "66:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    const-string v8, "66:"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 54
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_0

    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_0

    .line 55
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_3

    .line 56
    const/4 v4, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v4, 0x0

    .line 61
    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v5

    goto :goto_0

    .line 66
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    const-string v8, "BackcarGPIO"

    const-string v9, "some exception have happened"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 70
    if-eqz v1, :cond_1

    .line 72
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 73
    :catch_1
    move-exception v3

    .line 74
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 69
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 70
    :goto_4
    if-eqz v1, :cond_5

    .line 72
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 77
    :cond_5
    :goto_5
    throw v8

    .line 73
    :catch_2
    move-exception v3

    .line 74
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 73
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v3

    .line 74
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 69
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 66
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_3
.end method

.method public static GetBackcarEvent()I
    .locals 7

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "currentGPIOValue":I
    const/4 v2, 0x0

    .line 90
    .local v2, "dwARM2Status":I
    const/4 v0, 0x0

    .line 92
    .local v0, "BCEvent":I
    invoke-static {}, Lcom/autochips/android/backcar/Backcar_GPIO;->Backcar_Get_GPIO_Status()I

    move-result v1

    .line 94
    const-string v4, "BackcarGPIO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetBackcarEvent(): Last Evt Val="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/autochips/android/backcar/Backcar_GPIO;->mLastGPIOValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Current Evt Val ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    sget v4, Lcom/autochips/android/backcar/Backcar_GPIO;->mLastGPIOValue:I

    if-eq v4, v1, :cond_1

    .line 105
    sget v4, Lcom/autochips/android/backcar/Backcar_GPIO;->mLastGPIOValue:I

    if-eq v4, v1, :cond_0

    .line 106
    if-nez v1, :cond_2

    .line 107
    const-string v4, "BackcarGPIO"

    const-string v5, "GetBackcarEvent(): Stop! \r\n"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    .line 115
    :goto_1
    sput v1, Lcom/autochips/android/backcar/Backcar_GPIO;->mLastGPIOValue:I

    .line 118
    :cond_0
    const-string v4, "BackcarGPIO"

    const-string v5, "GetBackcarEvent(): Leave! \r\n"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v0

    .line 97
    :cond_1
    invoke-static {}, Lcom/autochips/android/backcar/Backcar_GPIO;->Backcar_Get_GPIO_Status()I

    move-result v1

    .line 99
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v4, 0x1

    if-ne v4, v1, :cond_3

    .line 110
    const-string v4, "BackcarGPIO"

    const-string v5, "GetBackcarEvent(): Start! \r\n"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public static TakeOverControl()V
    .locals 6

    .prologue
    .line 124
    const-string v3, "BackcarGPIO"

    const-string v4, "TakeOverControl start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    .line 127
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/sys/devices/platform/caci/cmd"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_1
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    if-eqz v2, :cond_2

    .line 134
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v2

    .line 139
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    const-string v3, "BackcarGPIO"

    const-string v4, "TakeOverControl end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    if-eqz v1, :cond_0

    .line 134
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 135
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 133
    :goto_2
    if-eqz v1, :cond_1

    .line 134
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 138
    :cond_1
    :goto_3
    throw v3

    .line 135
    :catch_2
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 131
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 129
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static native notify_Arm2_Android_System_Ready()V
.end method

.method public static resetGpioFlag()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "BackcarGPIO"

    const-string v1, "reset gpio flg to low"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/autochips/android/backcar/Backcar_GPIO;->mLastGPIOValue:I

    .line 85
    return-void
.end method

.method public static takeoverfromArm2()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "BackcarGPIO"

    const-string v1, "taveoverfromArm2 enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/autochips/android/backcar/Backcar_GPIO;->notify_Arm2_Android_System_Ready()V

    .line 145
    const-string v0, "BackcarGPIO"

    const-string v1, "taveoverfromArm2 leave"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method
