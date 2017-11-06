.class public Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field T:Lcom/txznet/txz/util/recordcenter/T/T3;

.field private T2:Ljava/nio/channels/SocketChannel;

.field private T3:I

.field private TN:Ljava/nio/channels/Selector;

.field private Te:Z

.field private Tw:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;-><init>(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T3:I

    .line 23
    iput-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    .line 24
    iput-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->TN:Ljava/nio/channels/Selector;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Te:Z

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Tw:[B

    .line 191
    iput-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T:Lcom/txznet/txz/util/recordcenter/T/T3;

    .line 65
    iput p1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T3:I

    .line 67
    invoke-direct {p0}, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T()V

    .line 68
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "needAEC"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T3:I

    .line 23
    iput-object v2, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    .line 24
    iput-object v2, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->TN:Ljava/nio/channels/Selector;

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Te:Z

    .line 29
    const/16 v1, 0x9

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Tw:[B

    .line 191
    iput-object v2, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T:Lcom/txznet/txz/util/recordcenter/T/T3;

    .line 53
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :cond_0
    iput v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T3:I

    .line 56
    invoke-direct {p0}, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T()V

    .line 57
    return-void
.end method

.method private T()V
    .locals 5

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    .line 34
    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 35
    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "127.0.0.1"

    sget-short v4, Lcom/txznet/txz/util/recordcenter/T2;->T3:S

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 37
    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 38
    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 39
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->TN:Ljava/nio/channels/Selector;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record client create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public beginSaveCache(I)V
    .locals 1
    .param p1, "cacheSize"    # I

    .prologue
    .line 194
    new-instance v0, Lcom/txznet/txz/util/recordcenter/T/T3;

    invoke-direct {v0, p1}, Lcom/txznet/txz/util/recordcenter/T/T3;-><init>(I)V

    iput-object v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T:Lcom/txznet/txz/util/recordcenter/T/T3;

    .line 195
    return-void
.end method

.method public endSaveCache(Ljava/io/File;)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 203
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 204
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->endSaveCache(Ljava/io/OutputStream;)Z

    .line 205
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    const/4 v2, 0x1

    .line 208
    .end local v1    # "out":Ljava/io/OutputStream;
    :goto_0
    return v2

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public endSaveCache(Ljava/io/OutputStream;)Z
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T:Lcom/txznet/txz/util/recordcenter/T/T3;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T:Lcom/txznet/txz/util/recordcenter/T/T3;

    new-instance v1, Lcom/txznet/txz/util/recordcenter/T/T$T;

    invoke-direct {v1, p1}, Lcom/txznet/txz/util/recordcenter/T/T$T;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/txznet/txz/util/recordcenter/T/T3;->T(Lcom/txznet/txz/util/recordcenter/T/T;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    const/4 v0, 0x1

    .line 220
    iput-object v2, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T:Lcom/txznet/txz/util/recordcenter/T/T3;

    .line 222
    :goto_0
    return v0

    .line 220
    :cond_0
    iput-object v2, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T:Lcom/txznet/txz/util/recordcenter/T/T3;

    .line 222
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 220
    iput-object v2, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T:Lcom/txznet/txz/util/recordcenter/T/T3;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T:Lcom/txznet/txz/util/recordcenter/T/T3;

    throw v0
.end method

.method public endSaveCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->endSaveCache(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Te:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 228
    :cond_0
    :try_start_0
    iget-boolean v5, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Te:Z

    if-eqz v5, :cond_4

    .line 229
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    iget-object v6, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->TN:Ljava/nio/channels/Selector;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 230
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->TN:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->select()I

    move-result v3

    .line 231
    .local v3, "n":I
    if-gez v3, :cond_1

    .line 258
    .end local v3    # "n":I
    :goto_0
    return v3

    .line 234
    .restart local v3    # "n":I
    :cond_1
    if-eqz v3, :cond_0

    .line 237
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->TN:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 239
    .local v2, "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 241
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 242
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 245
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 248
    .local v4, "r":I
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T:Lcom/txznet/txz/util/recordcenter/T/T3;

    if-eqz v5, :cond_3

    if-lez v4, :cond_3

    .line 249
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T:Lcom/txznet/txz/util/recordcenter/T/T3;

    invoke-virtual {v5, p1, p2, v4}, Lcom/txznet/txz/util/recordcenter/T/T3;->T([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v3, v4

    .line 251
    goto :goto_0

    .line 255
    .end local v1    # "key":Ljava/nio/channels/SelectionKey;
    .end local v2    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v3    # "n":I
    .end local v4    # "r":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public rebuild()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 164
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Te:Z

    .line 173
    iget-object v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->TN:Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->TN:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->TN:Ljava/nio/channels/Selector;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record client release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :try_start_3
    iget-object v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    :cond_1
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :catch_0
    move-exception v0

    goto :goto_1

    .line 176
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized setType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T3:I

    .line 82
    iget-boolean v0, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Te:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->startRecording()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startRecording()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->startRecording(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized startRecording(Ljava/lang/Long;)I
    .locals 7
    .param p1, "startTime"    # Ljava/lang/Long;

    .prologue
    const/4 v2, 0x0

    .line 100
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record client start cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 104
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 105
    :cond_0
    iget v3, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T3:I

    packed-switch v3, :pswitch_data_0

    .line 119
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "unknow recorder type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    const/4 v2, -0x1

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    return v2

    .line 107
    :pswitch_0
    :try_start_2
    iget-object v3, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Tw:[B

    const/4 v4, 0x0

    const/4 v5, 0x3

    aput-byte v5, v3, v4

    .line 129
    :goto_1
    iget-object v3, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Tw:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Te:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 110
    :pswitch_1
    :try_start_4
    iget-object v3, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Tw:[B

    const/4 v4, 0x0

    const/4 v5, 0x5

    aput-byte v5, v3, v4

    goto :goto_1

    .line 113
    :pswitch_2
    iget-object v3, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Tw:[B

    const/4 v4, 0x0

    const/4 v5, 0x6

    aput-byte v5, v3, v4

    goto :goto_1

    .line 116
    :pswitch_3
    iget-object v3, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Tw:[B

    const/4 v4, 0x0

    const/4 v5, 0x3

    aput-byte v5, v3, v4

    goto :goto_1

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Tw:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput-byte v5, v3, v4

    .line 124
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/txznet/txz/util/T3;->T(J)[B

    move-result-object v1

    .line 126
    .local v1, "startTimeData":[B
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Tw:[B

    const/4 v5, 0x1

    const/16 v6, 0x8

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->TN:Ljava/nio/channels/Selector;

    if-nez v1, :cond_1

    .line 141
    :cond_0
    const-string v1, "record client stop warnning: Client has released"

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Te:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record client stop cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Tw:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 149
    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->T2:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->Tw:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 150
    iget-object v1, p0, Lcom/txznet/txz/util/recordcenter/TXZAudioRecorder;->TN:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
