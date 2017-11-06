.class public interface abstract Lcom/txznet/sdk/TXZMusicManager$MusicTool;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicTool"
.end annotation


# virtual methods
.method public abstract exit()V
.end method

.method public abstract favourMusic()V
.end method

.method public abstract getCurrentMusicModel()Lcom/txznet/sdk/TXZMusicManager$MusicModel;
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract next()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playFavourMusic()V
.end method

.method public abstract playMusic(Lcom/txznet/sdk/TXZMusicManager$MusicModel;)V
.end method

.method public abstract playRandom()V
.end method

.method public abstract prev()V
.end method

.method public abstract setStatusListener(Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V
.end method

.method public abstract switchModeLoopAll()V
.end method

.method public abstract switchModeLoopOne()V
.end method

.method public abstract switchModeRandom()V
.end method

.method public abstract switchSong()V
.end method

.method public abstract unfavourMusic()V
.end method
