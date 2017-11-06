.class public Lcom/txznet/comm/T3/T3;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v2, "comm.tts.event."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    const-string v1, "comm.tts.event."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/txznet/comm/T3/T/TP;->T(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 28
    :cond_1
    const-string v2, "comm.asr.event"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    invoke-static {p0, p1, p2}, Lcom/txznet/comm/T3/T3;->Tw(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    goto :goto_0

    .line 31
    :cond_2
    const-string v2, "comm.status."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    const-string v1, "comm.status."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/TJ;->T(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    .line 35
    :cond_3
    const-string v2, "comm.record.event"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    invoke-static {p0, p1, p2}, Lcom/txznet/comm/T3/T3;->Ty(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    goto :goto_0

    .line 38
    :cond_4
    const-string v2, "comm.subscribe.broadcast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 39
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, p0, v3, v1, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 43
    :cond_5
    const-string v2, "comm.config."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 44
    const-string v1, "comm.config."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/txznet/comm/T3/T3;->T2(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_6
    const-string v2, "comm.log.setConsoleLogLevel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 49
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0

    .line 54
    :cond_7
    const-string v2, "comm.log.setFileLogLevel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 56
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T3(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 57
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 61
    :cond_8
    const-string v2, "comm.text.event"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 62
    invoke-static {p0, p1, p2}, Lcom/txznet/comm/T3/T3;->TN(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    goto/16 :goto_0

    .line 64
    :cond_9
    const-string v2, "comm.plugin."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 65
    const-string v1, "comm.plugin."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/txznet/txz/T/T2;->T3(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    goto/16 :goto_0

    .line 68
    :cond_a
    const-string v2, "comm.update."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 73
    :cond_b
    const-string v2, "comm.PackageInfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 76
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 77
    .local v0, "json":Lcom/txznet/comm/TN/T;
    const-string v1, "versionCode"

    sget v2, Lcom/txznet/comm/Te/T;->T:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 78
    const-string v1, "versionName"

    sget-object v2, Lcom/txznet/comm/Te/T;->T3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 79
    const-string v1, "sourceDir"

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 81
    const-string v1, "versionCompile"

    const-string v2, "20170427173905_29342"

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 82
    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v1

    goto/16 :goto_0

    .line 84
    .end local v0    # "json":Lcom/txznet/comm/TN/T;
    :cond_c
    const-string v2, "comm.netdata.resp."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 85
    invoke-static {p0, p1, p2}, Lcom/txznet/comm/T3/T3;->Te(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    goto/16 :goto_0

    .line 87
    :cond_d
    const-string v2, "txz.wheelcontrol.notify."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-static {p0, p1, p2}, Lcom/txznet/comm/T3/T3;->T3(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    goto/16 :goto_0
.end method

.method private static T2(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 99
    const-string v0, "showHelpInfos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T3;->T(Z)V

    .line 121
    :cond_0
    :goto_0
    return-object v1

    .line 103
    :cond_1
    const-string v0, "showSettings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T3;->T3(Z)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "showCloseIcon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T3;->T2(Z)V

    goto :goto_0

    .line 111
    :cond_3
    const-string v0, "syncData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T3;->T(Ljava/lang/String;)V

    .line 114
    :cond_4
    const-string v0, "tts.setDefaultAudioStream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/txznet/comm/T3/T/TP;->T:I

    goto :goto_0

    .line 118
    :cond_5
    const-string v0, "restore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->Tn()V

    goto :goto_0
.end method

.method private static T3(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 94
    invoke-static {}, Lcom/txznet/sdk/TXZWheelControlManager;->getInstance()Lcom/txznet/sdk/TXZWheelControlManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/txznet/sdk/TXZWheelControlManager;->notifyCallback(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static TN(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 126
    const-string v0, "comm.text.event.result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "result"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TB;->T(Ljava/lang/String;[B)V

    .line 130
    :cond_0
    const-string v0, "comm.text.event.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "cancel"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TB;->T(Ljava/lang/String;[B)V

    .line 134
    :cond_1
    const-string v0, "comm.text.event.error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    const-string v0, "error"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TB;->T(Ljava/lang/String;[B)V

    .line 138
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static Te(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 142
    invoke-static {}, Lcom/txznet/sdk/TXZNetDataProvider;->getInstance()Lcom/txznet/sdk/TXZNetDataProvider;

    move-result-object v0

    const-string v1, "comm.netdata.resp."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/txznet/sdk/TXZNetDataProvider;->notifyCallback(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static Tw(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 148
    const-string v0, "comm.asr.event.success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "success"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/T;->T(Ljava/lang/String;[B)V

    .line 170
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_1
    const-string v0, "comm.asr.event.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const-string v0, "cancel"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/T;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 152
    :cond_2
    const-string v0, "comm.asr.event.error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    const-string v0, "error"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/T;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 154
    :cond_3
    const-string v0, "comm.asr.event.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    const-string v0, "end"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/T;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 156
    :cond_4
    const-string v0, "comm.asr.event.start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    const-string v0, "start"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/T;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 158
    :cond_5
    const-string v0, "comm.asr.event.abort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    const-string v0, "abort"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/T;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 160
    :cond_6
    const-string v0, "comm.asr.event.volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    const-string v0, "volume"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/T;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 162
    :cond_7
    const-string v0, "comm.asr.event.regcmdnotify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    const-string v0, "regnotify"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/T;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 164
    :cond_8
    const-string v0, "comm.asr.event.onWakeupAsrResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T;->T3(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_9
    const-string v0, "comm.asr.event.onTtsEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T;->T2(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static Ty(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 175
    const-string v0, "comm.record.event.begin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "begin"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TG;->T(Ljava/lang/String;[B)V

    .line 196
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_1
    const-string v0, "comm.record.event.end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const-string v0, "end"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TG;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 179
    :cond_2
    const-string v0, "comm.record.event.parse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    const-string v0, "parse"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TG;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 181
    :cond_3
    const-string v0, "comm.record.event.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    const-string v0, "cancel"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TG;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 183
    :cond_4
    const-string v0, "comm.record.event.error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    const-string v0, "error"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TG;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 185
    :cond_5
    const-string v0, "comm.record.event.mp3buf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    const-string v0, "mp3buf"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TG;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 187
    :cond_6
    const-string v0, "comm.record.event.mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    const-string v0, "mute"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TG;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 189
    :cond_7
    const-string v0, "comm.record.event.mutetimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 190
    const-string v0, "mutetimeout"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TG;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 191
    :cond_8
    const-string v0, "comm.record.event.speechtimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 192
    const-string v0, "speechtimeout"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TG;->T(Ljava/lang/String;[B)V

    goto :goto_0

    .line 193
    :cond_9
    const-string v0, "comm.record.event.volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "volume"

    invoke-static {v0, p2}, Lcom/txznet/comm/T3/T/TG;->T(Ljava/lang/String;[B)V

    goto :goto_0
.end method
