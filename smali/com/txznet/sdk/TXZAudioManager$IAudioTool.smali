.class public abstract Lcom/txznet/sdk/TXZAudioManager$IAudioTool;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IAudioTool"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract exit()V
.end method

.method public getCurrentFmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, ""

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract playFm(Ljava/lang/String;)V
.end method

.method public prev()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public abstract setAudioStatusListener(Lcom/txznet/sdk/TXZAudioManager$AudioToolStatusListener;)V
.end method

.method public abstract start()V
.end method
