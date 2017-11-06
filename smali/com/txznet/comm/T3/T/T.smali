.class public Lcom/txznet/comm/T3/T/T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/T$T;,
        Lcom/txznet/comm/T3/T/T$Te;,
        Lcom/txznet/comm/T3/T/T$T3;,
        Lcom/txznet/comm/T3/T/T$T2;,
        Lcom/txznet/comm/T3/T/T$TN;
    }
.end annotation


# static fields
.field public static final T:[Ljava/lang/String;

.field public static final T2:[Ljava/lang/String;

.field public static final T3:[Ljava/lang/String;

.field private static TG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TN:[Ljava/lang/String;

.field private static TR:Ljava/lang/Runnable;

.field private static TW:Ljava/lang/Runnable;

.field static Te:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/txznet/comm/T3/T/T$Te;",
            ">;"
        }
    .end annotation
.end field

.field private static Tn:Lcom/txznet/comm/T3/T/T$TN;

.field private static Tw:Lcom/txznet/comm/T3/T/T$T2;

.field private static Ty:Lcom/txznet/comm/T3/T/T$T3;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    sput-object v1, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    .line 53
    sput-object v1, Lcom/txznet/comm/T3/T/T;->Ty:Lcom/txznet/comm/T3/T/T$T3;

    .line 55
    sput-object v1, Lcom/txznet/comm/T3/T/T;->Tn:Lcom/txznet/comm/T3/T/T$TN;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    .line 237
    sput-object v1, Lcom/txznet/comm/T3/T/T;->TR:Ljava/lang/Runnable;

    .line 278
    new-instance v0, Lcom/txznet/comm/T3/T/T$2;

    invoke-direct {v0}, Lcom/txznet/comm/T3/T/T$2;-><init>()V

    sput-object v0, Lcom/txznet/comm/T3/T/T;->TW:Ljava/lang/Runnable;

    .line 352
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7b2c\u4e00\u4e2a"

    aput-object v1, v0, v3

    const-string v1, "\u7b2c\u4e8c\u4e2a"

    aput-object v1, v0, v4

    const-string v1, "\u7b2c\u4e09\u4e2a"

    aput-object v1, v0, v5

    const-string v1, "\u7b2c\u56db\u4e2a"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u7b2c\u4e94\u4e2a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u7b2c\u516d\u4e2a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u7b2c\u4e03\u4e2a"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u7b2c\u516b\u4e2a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u7b2c\u4e5d\u4e2a"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u7b2c\u5341\u4e2a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/txznet/comm/T3/T/T;->T:[Ljava/lang/String;

    .line 354
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4e00"

    aput-object v1, v0, v3

    const-string v1, "\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u4e09"

    aput-object v1, v0, v5

    const-string v1, "\u56db"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    sput-object v0, Lcom/txznet/comm/T3/T/T;->T3:[Ljava/lang/String;

    .line 356
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u6700\u524d\u9762\u90a3\u4e2a"

    aput-object v1, v0, v3

    sput-object v0, Lcom/txznet/comm/T3/T/T;->T2:[Ljava/lang/String;

    .line 357
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u6700\u540e\u4e00\u4e2a"

    aput-object v1, v0, v3

    const-string v1, "\u6700\u540e\u90a3\u4e2a"

    aput-object v1, v0, v4

    sput-object v0, Lcom/txznet/comm/T3/T/T;->TN:[Ljava/lang/String;

    .line 709
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    return-void
.end method

.method public static T()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.start"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 184
    return-void
.end method

.method public static T(Lcom/txznet/comm/T3/T/T$Te;)V
    .locals 7
    .param p0, "callback"    # Lcom/txznet/comm/T3/T/T$Te;

    .prologue
    .line 732
    sget-object v3, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    monitor-enter v3

    .line 733
    :try_start_0
    sget-object v2, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 737
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v2, "cmds"

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->genKeywords()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 738
    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->needTts()Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, "tts":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 740
    const-string v2, "tts"

    invoke-virtual {v0, v2, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 741
    :cond_0
    const-string v2, "state"

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->needAsrState()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 742
    const-string v2, "taskId"

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 743
    const-string v2, "priority"

    invoke-virtual {p0}, Lcom/txznet/comm/T3/T/T$Te;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 744
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "comm.asr.useWakeupAsAsr"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 745
    return-void

    .line 734
    .end local v0    # "json":Lcom/txznet/comm/TN/T;
    .end local v1    # "tts":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static T(Ljava/lang/String;)V
    .locals 5
    .param p0, "hint"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string p0, ""

    .line 179
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.startWithRecordWin"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 180
    return-void
.end method

.method public static T(Ljava/lang/String;[B)V
    .locals 8
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 306
    const-string v4, "regnotify"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tn:Lcom/txznet/comm/T3/T/T$TN;

    if-eqz v4, :cond_0

    .line 308
    new-instance v2, Lcom/txznet/comm/TN/T;

    invoke-direct {v2, p1}, Lcom/txznet/comm/TN/T;-><init>([B)V

    .line 309
    .local v2, "json":Lcom/txznet/comm/TN/T;
    sget-object v6, Lcom/txznet/comm/T3/T/T;->Tn:Lcom/txznet/comm/T3/T/T$TN;

    const-string v4, "cmd"

    const-class v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "data"

    const-class v7, Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lcom/txznet/comm/T3/T/T$TN;->T(Ljava/lang/String;[B)V

    .line 348
    .end local v2    # "json":Lcom/txznet/comm/TN/T;
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    if-nez v4, :cond_2

    .line 316
    const-string v4, "AsrUtil"

    const-string v5, "mAsrCallBack == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    :cond_2
    const-string v4, "success"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 321
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/txznet/comm/T3/T/T$T2;->T(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_3
    const-string v4, "cancel"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 323
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    invoke-virtual {v4}, Lcom/txznet/comm/T3/T/T$T2;->T()V

    goto :goto_0

    .line 324
    :cond_4
    const-string v4, "start"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 325
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    invoke-virtual {v4}, Lcom/txznet/comm/T3/T/T$T2;->T3()V

    goto :goto_0

    .line 326
    :cond_5
    const-string v4, "end"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 327
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    invoke-virtual {v4}, Lcom/txznet/comm/T3/T/T$T2;->T2()V

    goto :goto_0

    .line 329
    :cond_6
    const-string v4, "abort"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 330
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/txznet/comm/T3/T/T$T2;->T3(I)V

    goto :goto_0

    .line 331
    :cond_7
    const-string v4, "error"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, "err":I
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 338
    :goto_1
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    invoke-virtual {v4, v1}, Lcom/txznet/comm/T3/T/T$T2;->T(I)V

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "AsrUtil"

    const-string v5, "convert string to int error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 339
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "err":I
    :cond_8
    const-string v4, "volume"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 340
    const/4 v3, 0x0

    .line 342
    .local v3, "volume":I
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 346
    :goto_2
    sget-object v4, Lcom/txznet/comm/T3/T/T;->Tw:Lcom/txznet/comm/T3/T/T$T2;

    invoke-virtual {v4, v3}, Lcom/txznet/comm/T3/T/T$T2;->T2(I)V

    goto/16 :goto_0

    .line 343
    :catch_1
    move-exception v0

    .line 344
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v4, "AsrUtil"

    const-string v5, "convert string to int error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static T([Ljava/lang/String;)V
    .locals 10
    .param p0, "cmds"    # [Ljava/lang/String;

    .prologue
    .line 267
    sget-object v6, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    monitor-enter v6

    .line 268
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 269
    .local v1, "cmd":Ljava/lang/String;
    sget-object v5, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    new-instance v3, Lcom/txznet/comm/TN/T;

    invoke-direct {v3}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 274
    .local v3, "json":Lcom/txznet/comm/TN/T;
    const-string v5, "cmds"

    invoke-virtual {v3, v5, p0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 275
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "comm.asr.unregcmd"

    invoke-virtual {v3}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 276
    return-void

    .line 271
    .end local v2    # "i$":I
    .end local v3    # "json":Lcom/txznet/comm/TN/T;
    .end local v4    # "len$":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public static T([Ljava/lang/String;Ljava/lang/String;Lcom/txznet/comm/T3/T/T$TN;)V
    .locals 10
    .param p0, "cmds"    # [Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/txznet/comm/T3/T/T$TN;

    .prologue
    .line 241
    sget-object v6, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    monitor-enter v6

    .line 242
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 243
    .local v1, "cmd":Ljava/lang/String;
    sget-object v5, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    invoke-interface {v5, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    sput-object p2, Lcom/txznet/comm/T3/T/T;->Tn:Lcom/txznet/comm/T3/T/T$TN;

    .line 249
    new-instance v3, Lcom/txznet/comm/TN/T;

    invoke-direct {v3}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 250
    .local v3, "json":Lcom/txznet/comm/TN/T;
    const-string v5, "cmds"

    invoke-virtual {v3, v5, p0}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 251
    const-string v5, "data"

    invoke-virtual {v3, v5, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 253
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "comm.asr.regcmd"

    invoke-virtual {v3}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 255
    sget-object v5, Lcom/txznet/comm/T3/T/T;->TR:Ljava/lang/Runnable;

    if-nez v5, :cond_1

    .line 256
    new-instance v5, Lcom/txznet/comm/T3/T/T$1;

    invoke-direct {v5}, Lcom/txznet/comm/T3/T/T$1;-><init>()V

    sput-object v5, Lcom/txznet/comm/T3/T/T;->TR:Ljava/lang/Runnable;

    .line 262
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    sget-object v7, Lcom/txznet/comm/T3/T/T;->TR:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 264
    :cond_1
    return-void

    .line 245
    .end local v2    # "i$":I
    .end local v3    # "json":Lcom/txznet/comm/TN/T;
    .end local v4    # "len$":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public static T2()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.cancel"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 233
    return-void
.end method

.method public static T2(Ljava/lang/String;)V
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 723
    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 724
    .local v1, "json":Lcom/txznet/comm/TN/T;
    const-string v3, "taskId"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 725
    .local v2, "taskId":Ljava/lang/String;
    sget-object v3, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/T3/T/T$Te;

    .line 726
    .local v0, "cb":Lcom/txznet/comm/T3/T/T$Te;
    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Lcom/txznet/comm/T3/T/T$Te;->onTtsEnd()V

    .line 729
    :cond_0
    return-void
.end method

.method public static T3()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.stop"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 229
    return-void
.end method

.method public static T3(Ljava/lang/String;)V
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 712
    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1, p0}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 713
    .local v1, "json":Lcom/txznet/comm/TN/T;
    const-string v3, "taskId"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 714
    .local v2, "taskId":Ljava/lang/String;
    sget-object v3, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txznet/comm/T3/T/T$Te;

    .line 715
    .local v0, "cb":Lcom/txznet/comm/T3/T/T$Te;
    if-eqz v0, :cond_0

    .line 716
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/txznet/comm/T3/T/T$Te;->setIsFromCore(Z)V

    .line 717
    const-string v3, "isWakeupResult"

    const-class v4, Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/txznet/comm/T3/T/T$Te;->setIsWakeupResult(Z)V

    .line 718
    const-string v3, "text"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/txznet/comm/T3/T/T$Te;->onAsrResult(Ljava/lang/String;)Z

    .line 720
    :cond_0
    return-void
.end method

.method public static TN()V
    .locals 3

    .prologue
    .line 301
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    sget-object v1, Lcom/txznet/comm/T3/T/T;->TW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;)V

    .line 302
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    sget-object v1, Lcom/txznet/comm/T3/T/T;->TW:Ljava/lang/Runnable;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    .line 303
    return-void
.end method

.method public static TN(Ljava/lang/String;)V
    .locals 5
    .param p0, "taskId"    # Ljava/lang/String;

    .prologue
    .line 748
    sget-object v1, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    monitor-enter v1

    .line 749
    :try_start_0
    sget-object v0, Lcom/txznet/comm/T3/T/T;->Te:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.asr.recoverWakeupFromAsr"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 753
    return-void

    .line 750
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static Te()V
    .locals 0

    .prologue
    .line 773
    return-void
.end method

.method public static Tw()V
    .locals 2

    .prologue
    .line 807
    const-string v0, "comm.asr."

    new-instance v1, Lcom/txznet/comm/T3/T/T$3;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/T$3;-><init>()V

    invoke-static {v0, v1}, Lcom/txznet/txz/T/TN;->T(Ljava/lang/String;Lcom/txznet/txz/T/TN$T;)V

    .line 830
    return-void
.end method

.method static synthetic Ty()Ljava/util/Map;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/txznet/comm/T3/T/T;->TG:Ljava/util/Map;

    return-object v0
.end method
