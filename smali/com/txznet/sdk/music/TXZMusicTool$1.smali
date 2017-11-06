.class final Lcom/txznet/sdk/music/TXZMusicTool$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/music/TXZMusicTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.status.subscrib"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 143
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.isPlaying"

    new-instance v3, Lcom/txznet/sdk/music/TXZMusicTool$1$1;

    invoke-direct {v3, p0}, Lcom/txznet/sdk/music/TXZMusicTool$1$1;-><init>(Lcom/txznet/sdk/music/TXZMusicTool$1;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 153
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.isBufferProccessing"

    new-instance v3, Lcom/txznet/sdk/music/TXZMusicTool$1$2;

    invoke-direct {v3, p0}, Lcom/txznet/sdk/music/TXZMusicTool$1$2;-><init>(Lcom/txznet/sdk/music/TXZMusicTool$1;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 163
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.getProgress"

    new-instance v3, Lcom/txznet/sdk/music/TXZMusicTool$1$3;

    invoke-direct {v3, p0}, Lcom/txznet/sdk/music/TXZMusicTool$1$3;-><init>(Lcom/txznet/sdk/music/TXZMusicTool$1;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 175
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.getCurrentMusicIndex"

    new-instance v3, Lcom/txznet/sdk/music/TXZMusicTool$1$4;

    invoke-direct {v3, p0}, Lcom/txznet/sdk/music/TXZMusicTool$1$4;-><init>(Lcom/txznet/sdk/music/TXZMusicTool$1;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 185
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.getMusicList"

    new-instance v3, Lcom/txznet/sdk/music/TXZMusicTool$1$5;

    invoke-direct {v3, p0}, Lcom/txznet/sdk/music/TXZMusicTool$1$5;-><init>(Lcom/txznet/sdk/music/TXZMusicTool$1;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 192
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.getPlayMode"

    new-instance v3, Lcom/txznet/sdk/music/TXZMusicTool$1$6;

    invoke-direct {v3, p0}, Lcom/txznet/sdk/music/TXZMusicTool$1$6;-><init>(Lcom/txznet/sdk/music/TXZMusicTool$1;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 199
    return-void
.end method
