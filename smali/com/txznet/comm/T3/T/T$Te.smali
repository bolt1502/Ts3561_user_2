.class public abstract Lcom/txznet/comm/T3/T/T$Te;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Te"
.end annotation


# instance fields
.field T:Z

.field T3:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-boolean v0, p0, Lcom/txznet/comm/T3/T/T$Te;->T:Z

    .line 412
    iput-boolean v0, p0, Lcom/txznet/comm/T3/T/T$Te;->T3:Z

    return-void
.end method


# virtual methods
.method public genKeywords()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getTaskId()Ljava/lang/String;
.end method

.method public isFromCore()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/txznet/comm/T3/T/T$Te;->T3:Z

    return v0
.end method

.method public isWakeupResult()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/txznet/comm/T3/T/T$Te;->T:Z

    return v0
.end method

.method public abstract needAsrState()Z
.end method

.method public needTts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAsrResult(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public onSpeechBegin()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public onSpeechEnd()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public onTtsEnd()V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method public onVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 433
    return-void
.end method

.method public setIsFromCore(Z)V
    .locals 0
    .param p1, "fromCore"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/txznet/comm/T3/T/T$Te;->T3:Z

    .line 416
    return-void
.end method

.method public setIsWakeupResult(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/txznet/comm/T3/T/T$Te;->T:Z

    .line 423
    return-void
.end method
