.class public interface abstract Lcom/txznet/sdk/TXZAsrManager$AsrCallback;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAsrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsrCallback"
.end annotation


# virtual methods
.method public abstract onAbort()V
.end method

.method public abstract onBeginRecord()V
.end method

.method public abstract onBeginSpeech()V
.end method

.method public abstract onCancel()V
.end method

.method public abstract onEndRecord()V
.end method

.method public abstract onEndSpeech()V
.end method

.method public abstract onError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSceneResult(Lcom/txznet/sdk/TXZSceneManager$SceneType;Ljava/lang/String;)V
.end method

.method public abstract onTextResult(Ljava/lang/String;)V
.end method

.method public abstract onVolume(I)V
.end method
