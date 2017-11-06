.class public interface abstract Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/music/TXZMusicTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TXZMusicStatusListener"
.end annotation


# virtual methods
.method public abstract onListChange()V
.end method

.method public abstract onModeChange()V
.end method

.method public abstract onProgressChange()V
.end method

.method public abstract onStatusChange()V
.end method
