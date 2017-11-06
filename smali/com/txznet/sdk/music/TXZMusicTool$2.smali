.class Lcom/txznet/sdk/music/TXZMusicTool$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/T2/T$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/music/TXZMusicTool;->setStatusListener(Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/music/TXZMusicTool;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/music/TXZMusicTool;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/txznet/sdk/music/TXZMusicTool$2;->T:Lcom/txznet/sdk/music/TXZMusicTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 212
    const-string v0, "updateProgress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    sput-wide v0, Lcom/txznet/sdk/music/TXZMusicTool;->Tw:D

    .line 215
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v0, v0, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v0, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v0}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onProgressChange()V

    .line 257
    :cond_0
    :goto_0
    return-object v4

    .line 222
    :cond_1
    const-string v0, "isPlaying"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/txznet/sdk/music/TXZMusicTool;->TN:Z

    .line 225
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.getCurrentMusicIndex"

    new-instance v3, Lcom/txznet/sdk/music/TXZMusicTool$2$1;

    invoke-direct {v3, p0}, Lcom/txznet/sdk/music/TXZMusicTool$2$1;-><init>(Lcom/txznet/sdk/music/TXZMusicTool$2;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    .line 240
    :cond_2
    const-string v0, "isBufferProccessing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/txznet/sdk/music/TXZMusicTool;->Te:Z

    .line 243
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    invoke-interface {v0}, Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;->onStatusChange()V

    goto :goto_0

    .line 248
    :cond_3
    const-string v0, "updateMusicList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    invoke-static {p3}, Lcom/txznet/sdk/music/TXZMusicTool;->T3([B)Z

    goto :goto_0

    .line 253
    :cond_4
    const-string v0, "updatePlayMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p3}, Lcom/txznet/sdk/music/TXZMusicTool;->T([B)Z

    goto :goto_0
.end method
