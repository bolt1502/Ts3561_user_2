.class public Lcom/txznet/sdk/TXZAudioManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZAudioManager$AudioTool;,
        Lcom/txznet/sdk/TXZAudioManager$IAudioTool;,
        Lcom/txznet/sdk/TXZAudioManager$AudioToolStatusListener;
    }
.end annotation


# static fields
.field private static T2:Lcom/txznet/sdk/TXZAudioManager;


# instance fields
.field T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

.field T3:Z

.field private TG:Ljava/lang/Boolean;

.field private TN:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

.field private Te:Z

.field private Tn:Ljava/lang/String;

.field private Tw:Ljava/lang/String;

.field private Ty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/txznet/sdk/TXZAudioManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZAudioManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZAudioManager;->T2:Lcom/txznet/sdk/TXZAudioManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZAudioManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/txznet/sdk/TXZAudioManager;->T2:Lcom/txznet/sdk/TXZAudioManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 3

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZAudioManager;->Te:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->TN:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAudioManager;->setDefaultAudioTool(Lcom/txznet/sdk/TXZAudioManager$AudioTool;)V

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZAudioManager;->T3:Z

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAudioManager;->setAudioTool(Lcom/txznet/sdk/TXZAudioManager$IAudioTool;)V

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->Tw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->Tw:Ljava/lang/String;

    iget-object v1, p0, Lcom/txznet/sdk/TXZAudioManager;->Ty:Ljava/lang/String;

    iget-object v2, p0, Lcom/txznet/sdk/TXZAudioManager;->Tn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/txznet/sdk/TXZAudioManager;->setXMLYAppkey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->TG:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->TG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZAudioManager;->showXmlySearchResult(Z)V

    .line 45
    :cond_3
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 285
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.exit"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 287
    return-void
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    .line 246
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "txz.audio.isPlaying"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 248
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 249
    const/4 v1, 0x0

    .line 250
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public next()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.next"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 295
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.pause"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 269
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 259
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.play"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 261
    return-void
.end method

.method public playKeywords(Ljava/lang/String;)V
    .locals 5
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.playFm"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 279
    return-void
.end method

.method public prev()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.prev"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 303
    return-void
.end method

.method public setAudioTool(Lcom/txznet/sdk/TXZAudioManager$IAudioTool;)V
    .locals 4
    .param p1, "tool"    # Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    .prologue
    const/4 v3, 0x0

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZAudioManager;->T3:Z

    .line 192
    iput-object p1, p0, Lcom/txznet/sdk/TXZAudioManager;->T:Lcom/txznet/sdk/TXZAudioManager$IAudioTool;

    .line 193
    if-nez p1, :cond_0

    .line 194
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 238
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Lcom/txznet/sdk/TXZAudioManager$1;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZAudioManager$1;-><init>(Lcom/txznet/sdk/TXZAudioManager;)V

    invoke-virtual {p1, v0}, Lcom/txznet/sdk/TXZAudioManager$IAudioTool;->setAudioStatusListener(Lcom/txznet/sdk/TXZAudioManager$AudioToolStatusListener;)V

    .line 207
    const-string v0, "tool.audio."

    new-instance v1, Lcom/txznet/sdk/TXZAudioManager$2;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZAudioManager$2;-><init>(Lcom/txznet/sdk/TXZAudioManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    .line 236
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.setInnerTool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setDefaultAudioTool(Lcom/txznet/sdk/TXZAudioManager$AudioTool;)V
    .locals 5
    .param p1, "at"    # Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    .prologue
    const/4 v4, 0x0

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZAudioManager;->Te:Z

    .line 153
    iput-object p1, p0, Lcom/txznet/sdk/TXZAudioManager;->TN:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    .line 154
    if-nez p1, :cond_0

    .line 155
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.cleartool"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.setInnerTool"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAudioManager;->TN:Lcom/txznet/sdk/TXZAudioManager$AudioTool;

    invoke-virtual {v3}, Lcom/txznet/sdk/TXZAudioManager$AudioTool;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setXMLYAppkey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "appSecret"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/txznet/sdk/TXZAudioManager;->Tw:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcom/txznet/sdk/TXZAudioManager;->Ty:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Lcom/txznet/sdk/TXZAudioManager;->Tn:Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    .line 180
    .local v0, "builder":Lcom/txznet/comm/TN/T;
    const-string v1, "appSecret"

    invoke-virtual {v0, v1, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 181
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 182
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    .line 183
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.audio.setkey.xmly"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 185
    return-void
.end method

.method public showXmlySearchResult(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 311
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAudioManager;->TG:Ljava/lang/Boolean;

    .line 312
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.audio.showSelect.xmly"

    iget-object v3, p0, Lcom/txznet/sdk/TXZAudioManager;->TG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 315
    return-void
.end method
