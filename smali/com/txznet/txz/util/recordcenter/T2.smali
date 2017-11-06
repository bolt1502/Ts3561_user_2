.class public Lcom/txznet/txz/util/recordcenter/T2;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/txz/util/recordcenter/T2$T;
    }
.end annotation


# static fields
.field public static final T:Ljava/io/File;

.field private static T0:Lcom/txznet/txz/util/recordcenter/T/T;

.field public static T2:Lcom/txznet/txz/util/recordcenter/T/TN;

.field public static T3:S

.field private static T7:I

.field private static TB:[Lcom/txznet/txz/util/recordcenter/T2$T;

.field private static TG:[B

.field private static TH:Lcom/txznet/txz/util/recordcenter/T/T;

.field private static TJ:I

.field private static TL:Lcom/txznet/txz/util/recordcenter/T/T;

.field static TN:Ljava/nio/channels/ServerSocketChannel;

.field private static TO:Ljava/lang/Thread;

.field private static TP:I

.field private static TQ:Lcom/txznet/txz/util/recordcenter/T3;

.field private static TR:Ljava/io/File;

.field private static TW:Ljava/io/FileInputStream;

.field private static Tc:Lcom/txznet/txz/util/recordcenter/T;

.field static Te:Ljava/nio/channels/Selector;

.field private static Tn:[B

.field private static To:Ljava/lang/Thread;

.field private static Tr:I

.field private static Tw:Z

.field private static Ty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "../com.txznet.txz/RecorderCenter.port"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->T:Ljava/io/File;

    .line 43
    sput-short v4, Lcom/txznet/txz/util/recordcenter/T2;->T3:S

    .line 46
    sput-boolean v4, Lcom/txznet/txz/util/recordcenter/T2;->Tw:Z

    .line 49
    sput-boolean v4, Lcom/txznet/txz/util/recordcenter/T2;->Ty:Z

    .line 89
    invoke-static {}, Lcom/txznet/txz/util/recordcenter/T2;->T2()V

    .line 94
    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    .line 95
    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B

    .line 96
    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TR:Ljava/io/File;

    .line 97
    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TW:Ljava/io/FileInputStream;

    .line 326
    sput v4, Lcom/txznet/txz/util/recordcenter/T2;->TJ:I

    .line 327
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/txznet/txz/util/recordcenter/T2$T;

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->TB:[Lcom/txznet/txz/util/recordcenter/T2$T;

    .line 329
    sput v4, Lcom/txznet/txz/util/recordcenter/T2;->TP:I

    .line 336
    sput v4, Lcom/txznet/txz/util/recordcenter/T2;->Tr:I

    .line 344
    sput v4, Lcom/txznet/txz/util/recordcenter/T2;->T7:I

    .line 561
    new-instance v0, Lcom/txznet/txz/util/recordcenter/T/TN;

    const v1, 0x27100

    invoke-direct {v0, v1}, Lcom/txznet/txz/util/recordcenter/T/TN;-><init>(I)V

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->T2:Lcom/txznet/txz/util/recordcenter/T/TN;

    .line 565
    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TO:Ljava/lang/Thread;

    .line 567
    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TN:Ljava/nio/channels/ServerSocketChannel;

    .line 568
    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->Te:Ljava/nio/channels/Selector;

    .line 791
    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->To:Ljava/lang/Thread;

    .line 792
    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TQ:Lcom/txznet/txz/util/recordcenter/T3;

    .line 794
    new-instance v0, Lcom/txznet/txz/util/recordcenter/T2$2;

    invoke-direct {v0}, Lcom/txznet/txz/util/recordcenter/T2$2;-><init>()V

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->TL:Lcom/txznet/txz/util/recordcenter/T/T;

    .line 805
    new-instance v0, Lcom/txznet/txz/util/recordcenter/T2$3;

    invoke-direct {v0}, Lcom/txznet/txz/util/recordcenter/T2$3;-><init>()V

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->TH:Lcom/txznet/txz/util/recordcenter/T/T;

    .line 819
    new-instance v0, Lcom/txznet/txz/util/recordcenter/T2$4;

    invoke-direct {v0}, Lcom/txznet/txz/util/recordcenter/T2$4;-><init>()V

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->T0:Lcom/txznet/txz/util/recordcenter/T/T;

    .line 827
    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->Tc:Lcom/txznet/txz/util/recordcenter/T;

    return-void
.end method

.method static synthetic T(I[BII)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3}, Lcom/txznet/txz/util/recordcenter/T2;->T3(I[BII)V

    return-void
.end method

.method static synthetic T()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/txznet/txz/util/recordcenter/T2;->Tw:Z

    return v0
.end method

.method public static T(I)[B
    .locals 3
    .param p0, "len"    # I

    .prologue
    .line 142
    sget-object v1, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    if-eqz v1, :cond_0

    sget-object v1, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    array-length v1, v1

    if-ge v1, p0, :cond_1

    .line 143
    :cond_0
    add-int/lit16 v1, p0, 0x4b0

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v1, v1, 0x4b0

    mul-int/lit16 v1, v1, 0x4b0

    new-array v1, v1, [B

    sput-object v1, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "quite.pcm"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    if-eqz v0, :cond_1

    .line 153
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 159
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_1
    :goto_0
    sget-object v1, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    return-object v1

    .line 149
    .restart local v0    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 151
    if-eqz v0, :cond_1

    .line 153
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 154
    :catch_1
    move-exception v1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 153
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 155
    :cond_2
    :goto_1
    throw v1

    .line 154
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private static T2()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 53
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "com.txznet.txz.RecorderCenter.UpdatePort"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "f":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/txznet/txz/util/recordcenter/T2$1;

    invoke-direct {v7}, Lcom/txznet/txz/util/recordcenter/T2$1;-><init>()V

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    const/16 v6, 0x5746

    sput-short v6, Lcom/txznet/txz/util/recordcenter/T2;->T3:S

    .line 62
    const/4 v3, 0x0

    .line 64
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v6, Lcom/txznet/txz/util/recordcenter/T2;->T:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    const/4 v6, 0x2

    :try_start_1
    new-array v0, v6, [B

    .line 66
    .local v0, "data":[B
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-ne v8, v6, :cond_0

    .line 67
    const/4 v6, 0x1

    aget-byte v6, v0, v6

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    aget-byte v7, v0, v7

    or-int/2addr v6, v7

    int-to-short v5, v6

    .line 68
    .local v5, "port":S
    if-lez v5, :cond_0

    .line 69
    sput-short v5, Lcom/txznet/txz/util/recordcenter/T2;->T3:S

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load record port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/txznet/txz/util/recordcenter/T2;->T3:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .end local v5    # "port":S
    :cond_0
    if-eqz v4, :cond_3

    .line 79
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 85
    .end local v0    # "data":[B
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "final record port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/txznet/txz/util/recordcenter/T2;->T3:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 86
    return-void

    .line 80
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "data":[B
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 82
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_0

    .line 74
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load record port exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    if-eqz v3, :cond_1

    .line 79
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 80
    :catch_2
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_2

    .line 79
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 82
    :cond_2
    :goto_3
    throw v6

    .line 80
    :catch_3
    move-exception v1

    .line 81
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 74
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "data":[B
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private static T2(I)Z
    .locals 12
    .param p0, "len"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 163
    sget-object v9, Lcom/txznet/txz/util/recordcenter/T2;->TW:Ljava/io/FileInputStream;

    if-nez v9, :cond_0

    .line 192
    :goto_0
    return v7

    .line 166
    :cond_0
    sget-object v9, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B

    if-eqz v9, :cond_1

    sget-object v9, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B

    array-length v9, v9

    if-ge v9, p0, :cond_2

    .line 167
    :cond_1
    add-int/lit16 v9, p0, 0x4b0

    add-int/lit8 v9, v9, -0x1

    div-int/lit16 v9, v9, 0x4b0

    mul-int/lit16 v9, v9, 0x4b0

    new-array v9, v9, [B

    sput-object v9, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B

    .line 171
    :cond_2
    invoke-static {p0}, Lcom/txznet/txz/util/recordcenter/T2;->T(I)[B

    move-result-object v1

    .line 172
    .local v1, "data":[B
    move v5, p0

    .line 174
    .local v5, "r":I
    :try_start_0
    sget-object v9, Lcom/txznet/txz/util/recordcenter/T2;->TW:Ljava/io/FileInputStream;

    sget-object v10, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, p0}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 179
    if-gez v5, :cond_4

    .line 180
    move v5, p0

    .line 187
    :goto_1
    sget-object v0, Lcom/txznet/txz/util/recordcenter/T2;->TB:[Lcom/txznet/txz/util/recordcenter/T2$T;

    .local v0, "arr$":[Lcom/txznet/txz/util/recordcenter/T2$T;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_6

    aget-object v6, v0, v3

    .line 188
    .local v6, "rec":Lcom/txznet/txz/util/recordcenter/T2$T;
    if-eqz v6, :cond_3

    iget v9, v6, Lcom/txznet/txz/util/recordcenter/T2$T;->T:I

    if-ne v9, v8, :cond_5

    .line 187
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 182
    .end local v0    # "arr$":[Lcom/txznet/txz/util/recordcenter/T2$T;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "rec":Lcom/txznet/txz/util/recordcenter/T2$T;
    :cond_4
    :try_start_1
    sget-object v1, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/Exception;
    move v5, p0

    goto :goto_1

    .line 190
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Lcom/txznet/txz/util/recordcenter/T2$T;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "rec":Lcom/txznet/txz/util/recordcenter/T2$T;
    :cond_5
    invoke-virtual {v6, v1, v7, v5}, Lcom/txznet/txz/util/recordcenter/T2$T;->T([BII)I

    goto :goto_3

    .end local v6    # "rec":Lcom/txznet/txz/util/recordcenter/T2$T;
    :cond_6
    move v7, v8

    .line 192
    goto :goto_0
.end method

.method private static T3(I[BII)V
    .locals 10
    .param p0, "state"    # I
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 525
    sget-object v0, Lcom/txznet/txz/util/recordcenter/T2;->TB:[Lcom/txznet/txz/util/recordcenter/T2$T;

    .local v0, "arr$":[Lcom/txznet/txz/util/recordcenter/T2$T;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 531
    .local v3, "rec":Lcom/txznet/txz/util/recordcenter/T2$T;
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    iget v5, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->T:I

    if-ne v4, v5, :cond_1

    .line 525
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const/4 v4, 0x4

    iget v5, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->T:I

    if-ne v4, v5, :cond_5

    const/4 v4, 0x3

    if-ne v4, p0, :cond_5

    .line 538
    sget-boolean v4, Lcom/txznet/txz/util/recordcenter/T2;->Tw:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/txznet/txz/util/recordcenter/T2;->Ty:Z

    if-eqz v4, :cond_4

    .line 539
    :cond_2
    iget-wide v4, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->T2:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    .line 541
    :try_start_0
    sget-object v4, Lcom/txznet/txz/util/recordcenter/T2;->T2:Lcom/txznet/txz/util/recordcenter/T/TN;

    iget-object v5, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->Te:Lcom/txznet/txz/util/recordcenter/T/T;

    iget-wide v6, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->T2:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/txznet/txz/util/recordcenter/T/TN;->T(Lcom/txznet/txz/util/recordcenter/T/T;J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :cond_3
    :goto_2
    invoke-virtual {v3, v8, v9}, Lcom/txznet/txz/util/recordcenter/T2$T;->T(J)V

    .line 548
    :cond_4
    invoke-virtual {v3, p1, p2, p3}, Lcom/txznet/txz/util/recordcenter/T2$T;->T([BII)I

    goto :goto_1

    .line 553
    :cond_5
    iget v4, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->T:I

    if-ne v4, p0, :cond_0

    .line 557
    invoke-virtual {v3, p1, p2, p3}, Lcom/txznet/txz/util/recordcenter/T2$T;->T([BII)I

    goto :goto_1

    .line 559
    .end local v3    # "rec":Lcom/txznet/txz/util/recordcenter/T2$T;
    :cond_6
    return-void

    .line 543
    .restart local v3    # "rec":Lcom/txznet/txz/util/recordcenter/T2$T;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method static synthetic T3()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/txznet/txz/util/recordcenter/T2;->Ty:Z

    return v0
.end method

.method static synthetic T3(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 33
    invoke-static {p0}, Lcom/txznet/txz/util/recordcenter/T2;->T2(I)Z

    move-result v0

    return v0
.end method
