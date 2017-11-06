.class public Lcom/txznet/sdk/TXZTtsManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZTtsManager$2;,
        Lcom/txznet/sdk/TXZTtsManager$TtsTool;,
        Lcom/txznet/sdk/TXZTtsManager$TtsCallback;,
        Lcom/txznet/sdk/TXZTtsManager$TtsOption;,
        Lcom/txznet/sdk/TXZTtsManager$PreemptType;,
        Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;
    }
.end annotation


# static fields
.field public static final INVALID_TTS_TASK_ID:I

.field private static T3:Lcom/txznet/sdk/TXZTtsManager;


# instance fields
.field T:Lcom/txznet/sdk/TXZTtsManager$TtsTool;

.field private T2:Ljava/lang/Integer;

.field private TN:Ljava/lang/Integer;

.field private Te:Ljava/lang/String;

.field private Tw:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/txznet/sdk/TXZTtsManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZTtsManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZTtsManager;->T3:Lcom/txznet/sdk/TXZTtsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->T2:Ljava/lang/Integer;

    .line 275
    iput-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->TN:Ljava/lang/Integer;

    .line 276
    iput-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->Te:Ljava/lang/String;

    .line 277
    iput-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->Tw:Ljava/lang/Integer;

    .line 408
    iput-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->T:Lcom/txznet/sdk/TXZTtsManager$TtsTool;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZTtsManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/txznet/sdk/TXZTtsManager;->T3:Lcom/txznet/sdk/TXZTtsManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->T2:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->T2:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZTtsManager;->setDefaultAudioStream(I)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->TN:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->TN:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZTtsManager;->setVoiceSpeed(I)V

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->Te:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->Te:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZTtsManager;->setTtsModel(Ljava/lang/String;)V

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->T:Lcom/txznet/sdk/TXZTtsManager$TtsTool;

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->T:Lcom/txznet/sdk/TXZTtsManager$TtsTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZTtsManager;->setTtsTool(Lcom/txznet/sdk/TXZTtsManager$TtsTool;)V

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->Tw:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 46
    iget-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->Tw:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZTtsManager;->setBufferTime(I)V

    .line 48
    :cond_4
    return-void
.end method

.method public cancelSpeak(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 271
    invoke-static {p1}, Lcom/txznet/comm/T3/T/TP;->T(I)V

    .line 272
    return-void
.end method

.method public setBufferTime(I)V
    .locals 5
    .param p1, "nTime"    # I

    .prologue
    .line 346
    const-string v0, "comm.tts.set.buffettime"

    .line 347
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZTtsManager;->Tw:Ljava/lang/Integer;

    .line 348
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 350
    return-void
.end method

.method public setDefaultAudioStream(I)V
    .locals 5
    .param p1, "stream"    # I

    .prologue
    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZTtsManager;->T2:Ljava/lang/Integer;

    .line 284
    sput p1, Lcom/txznet/comm/T3/T/TP;->T:I

    .line 285
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "comm.config.tts.setDefaultAudioStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 288
    return-void
.end method

.method public setTtsDelay(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 336
    const-string v0, "comm.tts.set.ttsdelay"

    .line 337
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 339
    return-void
.end method

.method public setTtsModel(Ljava/lang/String;)V
    .locals 5
    .param p1, "ttsModelPath"    # Ljava/lang/String;

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    const-string p1, ""

    .line 325
    :cond_0
    iput-object p1, p0, Lcom/txznet/sdk/TXZTtsManager;->Te:Ljava/lang/String;

    .line 326
    const-string v0, "comm.tts.set.modelrole"

    .line 327
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 329
    return-void
.end method

.method public setTtsTool(Lcom/txznet/sdk/TXZTtsManager$TtsTool;)V
    .locals 4
    .param p1, "tool"    # Lcom/txznet/sdk/TXZTtsManager$TtsTool;

    .prologue
    const/4 v3, 0x0

    .line 416
    iput-object p1, p0, Lcom/txznet/sdk/TXZTtsManager;->T:Lcom/txznet/sdk/TXZTtsManager$TtsTool;

    .line 417
    if-nez p1, :cond_0

    .line 418
    const-string v0, "tool.tts."

    invoke-static {v0, v3}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 419
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.tts.clearTool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 477
    :goto_0
    return-void

    .line 422
    :cond_0
    const-string v0, "tool.tts."

    new-instance v1, Lcom/txznet/sdk/TXZTtsManager$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZTtsManager$1;-><init>(Lcom/txznet/sdk/TXZTtsManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 474
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.tool.tts.setTool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setVoiceSpeed(I)V
    .locals 5
    .param p1, "speed"    # I

    .prologue
    .line 298
    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 299
    const/4 p1, 0x1

    .line 304
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZTtsManager;->TN:Ljava/lang/Integer;

    .line 305
    const-string v0, "comm.tts.set.voicespeed"

    .line 306
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 308
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_1

    .line 309
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setTtsVoiceSpeed(I)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    .line 311
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/T3;->T(Ljava/lang/Integer;)V

    .line 312
    return-void

    .line 300
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    .line 301
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public speakRes(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/txznet/sdk/TXZTtsManager;->speakRes(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public speakRes(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "resArgs"    # [Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/txznet/comm/T3/T/TP;->T(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0
.end method

.method public speakRes(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/txznet/sdk/TXZTtsManager$PreemptType;Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;)I
    .locals 6
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "resArgs"    # [Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/txznet/sdk/TXZTtsManager$PreemptType;
    .param p5, "onRun"    # Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;

    .prologue
    .line 244
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->T:Lcom/txznet/comm/T3/T/TP$T3;

    .line 245
    .local v4, "pt":Lcom/txznet/comm/T3/T/TP$T3;
    sget-object v0, Lcom/txznet/sdk/TXZTtsManager$2;->T:[I

    invoke-virtual {p4}, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    const/4 v0, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0

    .line 247
    :pswitch_0
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->TN:Lcom/txznet/comm/T3/T/TP$T3;

    .line 248
    goto :goto_0

    .line 250
    :pswitch_1
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->T3:Lcom/txznet/comm/T3/T/TP$T3;

    .line 251
    goto :goto_0

    .line 253
    :pswitch_2
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->T2:Lcom/txznet/comm/T3/T/TP$T3;

    .line 254
    goto :goto_0

    .line 256
    :pswitch_3
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->T:Lcom/txznet/comm/T3/T/TP$T3;

    .line 257
    goto :goto_0

    .line 259
    :pswitch_4
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->Te:Lcom/txznet/comm/T3/T/TP$T3;

    .line 260
    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public speakText(ILjava/lang/String;JLcom/txznet/sdk/TXZTtsManager$PreemptType;Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;)I
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "delay"    # J
    .param p5, "type"    # Lcom/txznet/sdk/TXZTtsManager$PreemptType;
    .param p6, "callback"    # Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;

    .prologue
    .line 149
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->T:Lcom/txznet/comm/T3/T/TP$T3;

    .line 150
    .local v4, "pt":Lcom/txznet/comm/T3/T/TP$T3;
    sget-object v0, Lcom/txznet/sdk/TXZTtsManager$2;->T:[I

    invoke-virtual {p5}, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-object v5, p6

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;JLcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v0

    return v0

    .line 152
    :pswitch_0
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->TN:Lcom/txznet/comm/T3/T/TP$T3;

    .line 153
    goto :goto_0

    .line 155
    :pswitch_1
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->T3:Lcom/txznet/comm/T3/T/TP$T3;

    .line 156
    goto :goto_0

    .line 158
    :pswitch_2
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->T2:Lcom/txznet/comm/T3/T/TP$T3;

    .line 159
    goto :goto_0

    .line 161
    :pswitch_3
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->T:Lcom/txznet/comm/T3/T/TP$T3;

    .line 162
    goto :goto_0

    .line 164
    :pswitch_4
    sget-object v4, Lcom/txznet/comm/T3/T/TP$T3;->Te:Lcom/txznet/comm/T3/T/TP$T3;

    .line 165
    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public speakText(ILjava/lang/String;Lcom/txznet/sdk/TXZTtsManager$PreemptType;Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;)I
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/txznet/sdk/TXZTtsManager$PreemptType;
    .param p4, "callback"    # Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;

    .prologue
    .line 109
    sget-object v0, Lcom/txznet/comm/T3/T/TP$T3;->T:Lcom/txznet/comm/T3/T/TP$T3;

    .line 110
    .local v0, "pt":Lcom/txznet/comm/T3/T/TP$T3;
    sget-object v1, Lcom/txznet/sdk/TXZTtsManager$2;->T:[I

    invoke-virtual {p3}, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_0
    invoke-static {p1, p2, v0, p4}, Lcom/txznet/comm/T3/T/TP;->T(ILjava/lang/String;Lcom/txznet/comm/T3/T/TP$T3;Lcom/txznet/comm/T3/T/TP$T;)I

    move-result v1

    return v1

    .line 112
    :pswitch_0
    sget-object v0, Lcom/txznet/comm/T3/T/TP$T3;->TN:Lcom/txznet/comm/T3/T/TP$T3;

    .line 113
    goto :goto_0

    .line 115
    :pswitch_1
    sget-object v0, Lcom/txznet/comm/T3/T/TP$T3;->T3:Lcom/txznet/comm/T3/T/TP$T3;

    .line 116
    goto :goto_0

    .line 118
    :pswitch_2
    sget-object v0, Lcom/txznet/comm/T3/T/TP$T3;->T2:Lcom/txznet/comm/T3/T/TP$T3;

    .line 119
    goto :goto_0

    .line 121
    :pswitch_3
    sget-object v0, Lcom/txznet/comm/T3/T/TP$T3;->T:Lcom/txznet/comm/T3/T/TP$T3;

    .line 122
    goto :goto_0

    .line 124
    :pswitch_4
    sget-object v0, Lcom/txznet/comm/T3/T/TP$T3;->Te:Lcom/txznet/comm/T3/T/TP$T3;

    .line 125
    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public speakText(Ljava/lang/String;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 226
    sget-object v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_NONE:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/txznet/sdk/TXZTtsManager;->speakText(Ljava/lang/String;Lcom/txznet/sdk/TXZTtsManager$PreemptType;Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;)I

    move-result v0

    return v0
.end method

.method public speakText(Ljava/lang/String;JLcom/txznet/sdk/TXZTtsManager$PreemptType;Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "delay"    # J
    .param p4, "type"    # Lcom/txznet/sdk/TXZTtsManager$PreemptType;
    .param p5, "callback"    # Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;

    .prologue
    .line 201
    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/txznet/sdk/TXZTtsManager;->speakText(ILjava/lang/String;JLcom/txznet/sdk/TXZTtsManager$PreemptType;Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;)I

    move-result v0

    return v0
.end method

.method public speakText(Ljava/lang/String;Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;

    .prologue
    .line 216
    sget-object v0, Lcom/txznet/sdk/TXZTtsManager$PreemptType;->PREEMPT_TYPE_NONE:Lcom/txznet/sdk/TXZTtsManager$PreemptType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/txznet/sdk/TXZTtsManager;->speakText(Ljava/lang/String;Lcom/txznet/sdk/TXZTtsManager$PreemptType;Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;)I

    move-result v0

    return v0
.end method

.method public speakText(Ljava/lang/String;Lcom/txznet/sdk/TXZTtsManager$PreemptType;Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/txznet/sdk/TXZTtsManager$PreemptType;
    .param p3, "callback"    # Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;

    .prologue
    .line 184
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/txznet/sdk/TXZTtsManager;->speakText(ILjava/lang/String;Lcom/txznet/sdk/TXZTtsManager$PreemptType;Lcom/txznet/sdk/TXZTtsManager$ITtsCallback;)I

    move-result v0

    return v0
.end method
