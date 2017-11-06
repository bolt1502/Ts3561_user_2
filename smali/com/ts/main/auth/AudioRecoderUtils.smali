.class public Lcom/ts/main/auth/AudioRecoderUtils;
.super Ljava/lang/Object;
.source "AudioRecoderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;
    }
.end annotation


# static fields
.field public static final MAX_LENGTH:I = 0x927c0


# instance fields
.field private BASE:I

.field private FolderPath:Ljava/lang/String;

.field private SPACE:I

.field private final TAG:Ljava/lang/String;

.field private audioStatusUpdateListener:Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;

.field private endTime:J

.field private filePath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mUpdateMicStatusTimer:Ljava/lang/Runnable;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/record/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ts/main/auth/AudioRecoderUtils;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v1, "fan"

    iput-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->TAG:Ljava/lang/String;

    .line 122
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v1, Lcom/ts/main/auth/AudioRecoderUtils$1;

    invoke-direct {v1, p0}, Lcom/ts/main/auth/AudioRecoderUtils$1;-><init>(Lcom/ts/main/auth/AudioRecoderUtils;)V

    iput-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mUpdateMicStatusTimer:Ljava/lang/Runnable;

    .line 130
    const/4 v1, 0x1

    iput v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->BASE:I

    .line 131
    const/16 v1, 0x64

    iput v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->SPACE:I

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->FolderPath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/ts/main/auth/AudioRecoderUtils;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/ts/main/auth/AudioRecoderUtils;->updateMicStatus()V

    return-void
.end method

.method private updateMicStatus()V
    .locals 9

    .prologue
    .line 142
    iget-object v4, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_1

    .line 143
    iget-object v4, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v4

    int-to-double v4, v4

    iget v6, p0, Lcom/ts/main/auth/AudioRecoderUtils;->BASE:I

    int-to-double v6, v6

    div-double v2, v4, v6

    .line 144
    .local v2, "ratio":D
    const-wide/16 v0, 0x0

    .line 145
    .local v0, "db":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 146
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    mul-double v0, v4, v6

    .line 147
    iget-object v4, p0, Lcom/ts/main/auth/AudioRecoderUtils;->audioStatusUpdateListener:Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;

    if-eqz v4, :cond_0

    .line 148
    iget-object v4, p0, Lcom/ts/main/auth/AudioRecoderUtils;->audioStatusUpdateListener:Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/ts/main/auth/AudioRecoderUtils;->startTime:J

    sub-long/2addr v5, v7

    invoke-interface {v4, v0, v1, v5, v6}, Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;->onUpdate(DJ)V

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mUpdateMicStatusTimer:Ljava/lang/Runnable;

    iget v6, p0, Lcom/ts/main/auth/AudioRecoderUtils;->SPACE:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .end local v0    # "db":D
    .end local v2    # "ratio":D
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelRecord()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 111
    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 112
    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 118
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->filePath:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setOnAudioStatusUpdateListener(Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;)V
    .locals 0
    .param p1, "audioStatusUpdateListener"    # Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->audioStatusUpdateListener:Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;

    .line 135
    return-void
.end method

.method public startRecord()V
    .locals 5

    .prologue
    .line 56
    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 60
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 62
    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 67
    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ts/main/auth/AudioRecoderUtils;->FolderPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "record"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->filePath:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/ts/main/auth/AudioRecoderUtils;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v2, 0x927c0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 73
    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 75
    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->startTime:J

    .line 79
    invoke-direct {p0}, Lcom/ts/main/auth/AudioRecoderUtils;->updateMicStatus()V

    .line 80
    const-string v1, "fan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startTime"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/ts/main/auth/AudioRecoderUtils;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "fan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call startAmr(File mRecAudioFile) failed!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "fan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call startAmr(File mRecAudioFile) failed!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecord()J
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 93
    const-wide/16 v0, 0x0

    .line 102
    :goto_0
    return-wide v0

    .line 94
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ts/main/auth/AudioRecoderUtils;->endTime:J

    .line 95
    iget-object v0, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 96
    iget-object v0, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 97
    iget-object v0, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/auth/AudioRecoderUtils;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 100
    iget-object v0, p0, Lcom/ts/main/auth/AudioRecoderUtils;->audioStatusUpdateListener:Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;

    iget-object v1, p0, Lcom/ts/main/auth/AudioRecoderUtils;->filePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ts/main/auth/AudioRecoderUtils$OnAudioStatusUpdateListener;->onStop(Ljava/lang/String;)V

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/main/auth/AudioRecoderUtils;->filePath:Ljava/lang/String;

    .line 102
    iget-wide v0, p0, Lcom/ts/main/auth/AudioRecoderUtils;->endTime:J

    iget-wide v2, p0, Lcom/ts/main/auth/AudioRecoderUtils;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method
