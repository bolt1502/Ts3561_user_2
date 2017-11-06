.class public interface abstract Lcom/txznet/sdk/TXZStatusManager$StatusListener;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/T3/T/TJ$T3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusListener"
.end annotation


# virtual methods
.method public abstract onBeepEnd()V
.end method

.method public abstract onBeginAsr()V
.end method

.method public abstract onBeginCall()V
.end method

.method public abstract onBeginTts()V
.end method

.method public abstract onEndAsr()V
.end method

.method public abstract onEndCall()V
.end method

.method public abstract onEndTts()V
.end method

.method public abstract onMusicPause()V
.end method

.method public abstract onMusicPlay()V
.end method
