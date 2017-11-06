.class Lcom/T2/T/T/T/T/T/T2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final T:Ljava/io/InputStream;

.field private T2:[B

.field private final T3:Ljava/nio/charset/Charset;

.field private TN:I

.field private Te:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 89
    :cond_1
    if-gez p2, :cond_2

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    sget-object v0, Lcom/T2/T/T/T/T/T/TN;->T:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_3
    iput-object p1, p0, Lcom/T2/T/T/T/T/T/T2;->T:Ljava/io/InputStream;

    .line 97
    iput-object p3, p0, Lcom/T2/T/T/T/T/T/T2;->T3:Ljava/nio/charset/Charset;

    .line 98
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 71
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/T2/T/T/T/T/T/T2;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 72
    return-void
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T2;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T2;->T3:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private T3()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T2;->T:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 184
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 185
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 187
    :cond_0
    iput v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    .line 188
    iput v0, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    .line 189
    return-void
.end method


# virtual methods
.method public T()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 125
    iget-object v5, p0, Lcom/T2/T/T/T/T/T/T2;->T:Ljava/io/InputStream;

    monitor-enter v5

    .line 126
    :try_start_0
    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    if-nez v4, :cond_0

    .line 127
    new-instance v4, Ljava/io/IOException;

    const-string v6, "LineReader is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 133
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    iget v6, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    if-lt v4, v6, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T2;->T3()V

    .line 137
    :cond_1
    iget v0, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    if-ne v0, v4, :cond_4

    .line 147
    new-instance v2, Lcom/T2/T/T/T/T/T/T2$1;

    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    iget v6, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x50

    invoke-direct {v2, p0, v4}, Lcom/T2/T/T/T/T/T/T2$1;-><init>(Lcom/T2/T/T/T/T/T/T2;I)V

    .line 160
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :cond_2
    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    iget v6, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    iget v7, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    iget v8, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 162
    const/4 v4, -0x1

    iput v4, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    .line 163
    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T2;->T3()V

    .line 165
    iget v0, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    :goto_1
    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->Te:I

    if-eq v0, v4, :cond_2

    .line 166
    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_7

    .line 167
    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    if-eq v0, v4, :cond_3

    .line 168
    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    iget v6, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    iget v7, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    sub-int v7, v0, v7

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 170
    :cond_3
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    .line 171
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v5

    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_2
    return-object v3

    .line 138
    :cond_4
    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_6

    .line 139
    iget v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    if-eq v0, v4, :cond_5

    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    add-int/lit8 v6, v0, -0x1

    aget-byte v4, v4, v6

    const/16 v6, 0xd

    if-ne v4, v6, :cond_5

    add-int/lit8 v1, v0, -0x1

    .line 140
    .local v1, "lineEnd":I
    :goto_3
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    iget v6, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    iget v7, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T2;->T3:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 141
    .local v3, "res":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/T2/T/T/T/T/T/T2;->TN:I

    .line 142
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v1    # "lineEnd":I
    .end local v3    # "res":Ljava/lang/String;
    :cond_5
    move v1, v0

    .line 139
    goto :goto_3

    .line 137
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T2;->T:Ljava/io/InputStream;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T2;->T2:[B

    .line 111
    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T2;->T:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 108
    :cond_0
    monitor-exit v1

    .line 114
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
