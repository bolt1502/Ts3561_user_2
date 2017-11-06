.class public Lcom/ts/main/txz/hongfan/HFAudioTool;
.super Lcom/txznet/sdk/TXZAudioManager$IAudioTool;
.source "HFAudioTool.java"


# static fields
.field public static sRadio:Lcom/ts/main/txz/hongfan/HFAudioTool;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/txznet/sdk/TXZAudioManager$IAudioTool;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ts/main/txz/hongfan/HFAudioTool;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/ts/main/txz/hongfan/HFAudioTool;->sRadio:Lcom/ts/main/txz/hongfan/HFAudioTool;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/ts/main/txz/hongfan/HFMusicAndRadioTool;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/ts/main/txz/hongfan/HFAudioTool;->sRadio:Lcom/ts/main/txz/hongfan/HFAudioTool;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/ts/main/txz/hongfan/HFAudioTool;

    invoke-direct {v0}, Lcom/ts/main/txz/hongfan/HFAudioTool;-><init>()V

    sput-object v0, Lcom/ts/main/txz/hongfan/HFAudioTool;->sRadio:Lcom/ts/main/txz/hongfan/HFAudioTool;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/ts/main/txz/hongfan/HFAudioTool;->sRadio:Lcom/ts/main/txz/hongfan/HFAudioTool;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->exitAPP(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/hongfans/carmedia/MediaAPI;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaAPI"    # Lcom/hongfans/carmedia/MediaAPI;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    .line 46
    invoke-static {}, Lcom/txznet/sdk/TXZAudioManager;->getInstance()Lcom/txznet/sdk/TXZAudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txznet/sdk/TXZAudioManager;->setAudioTool(Lcom/txznet/sdk/TXZAudioManager$IAudioTool;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayPause(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public playFm(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ts/main/txz/hongfan/AudioModel;->parse(Lorg/json/JSONObject;)Lcom/ts/main/txz/hongfan/AudioModel;

    move-result-object v0

    .line 67
    .local v0, "am":Lcom/ts/main/txz/hongfan/AudioModel;
    invoke-virtual {v0}, Lcom/ts/main/txz/hongfan/AudioModel;->getKeywords()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/ts/main/txz/hongfan/AudioModel;->getKeywords()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v3, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/ts/main/txz/hongfan/AudioModel;->getKeywords()Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v0    # "am":Lcom/ts/main/txz/hongfan/AudioModel;
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local v0    # "am":Lcom/ts/main/txz/hongfan/AudioModel;
    :cond_1
    invoke-virtual {v0}, Lcom/ts/main/txz/hongfan/AudioModel;->getAlbum()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v3, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/ts/main/txz/hongfan/AudioModel;->getAlbum()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v0    # "am":Lcom/ts/main/txz/hongfan/AudioModel;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v3, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mContext:Landroid/content/Context;

    const-string v4, ""

    invoke-virtual {v2, v3, p1, v4}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "am":Lcom/ts/main/txz/hongfan/AudioModel;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/ts/main/txz/hongfan/AudioModel;->getArtists()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/ts/main/txz/hongfan/AudioModel;->getArtists()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v3, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/ts/main/txz/hongfan/AudioModel;->getArtists()Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/hongfans/carmedia/MediaAPI;->playMusic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setAudioStatusListener(Lcom/txznet/sdk/TXZAudioManager$AudioToolStatusListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/txznet/sdk/TXZAudioManager$AudioToolStatusListener;

    .prologue
    .line 92
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v1, p0, Lcom/ts/main/txz/hongfan/HFAudioTool;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hongfans/carmedia/MediaAPI;->PlayResume(Landroid/content/Context;)V

    .line 98
    return-void
.end method
