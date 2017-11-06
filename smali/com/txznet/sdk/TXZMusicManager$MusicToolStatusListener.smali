.class public interface abstract Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicToolStatusListener"
.end annotation


# static fields
.field public static final STATE_BUFFERING:I = 0x3

.field public static final STATE_PAUSE_PLAY:I = 0x2

.field public static final STATE_SONG_CHANGE:I = 0x4

.field public static final STATE_START_PLAY:I = 0x1

.field public static final STATE_UNKNOW:I


# virtual methods
.method public abstract endMusic(Lcom/txznet/sdk/TXZMusicManager$MusicModel;)V
.end method

.method public abstract onStatusChange()V
.end method

.method public abstract onStatusChange(I)V
.end method

.method public abstract playMusic(Lcom/txznet/sdk/TXZMusicManager$MusicModel;)V
.end method
