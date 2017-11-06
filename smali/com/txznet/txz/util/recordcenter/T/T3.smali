.class public Lcom/txznet/txz/util/recordcenter/T/T3;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private T:[B

.field private T2:I

.field private T3:I

.field private TN:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x7d00

    invoke-direct {p0, v0}, Lcom/txznet/txz/util/recordcenter/T/T3;-><init>(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "cacheSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    .line 13
    iput v1, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    .line 14
    iput v1, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    .line 15
    iput v1, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    .line 22
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    .line 23
    return-void
.end method


# virtual methods
.method public T([BII)I
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/16 v4, -0x3e7

    .line 64
    const/4 v3, -0x1

    .line 65
    .local v3, "ret":I
    iget v0, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    .line 66
    .local v0, "fIndex":I
    iget v2, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    .line 67
    .local v2, "readIndex":I
    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    if-le v2, v5, :cond_3

    .line 68
    move v3, p3

    .line 70
    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    sub-int v5, v2, v5

    add-int/lit8 v5, v5, -0x4

    if-le p3, v5, :cond_0

    .line 72
    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    sub-int v5, v2, v5

    add-int/lit8 v3, v5, -0x4

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "discard record data size["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], read["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], write["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/txznet/txz/util/recordcenter/T/T3;->T()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-static {p1, p2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    if-eq v0, v5, :cond_2

    .line 122
    :cond_1
    :goto_0
    return v4

    .line 82
    :cond_2
    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    :goto_1
    move v4, v3

    .line 122
    goto :goto_0

    .line 84
    :cond_3
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v5, v5

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    sub-int/2addr v5, v6

    if-le p3, v5, :cond_5

    .line 85
    if-nez v2, :cond_4

    .line 86
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v5, v5

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    sub-int/2addr v5, v6

    add-int/lit8 v3, v5, -0x1

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "discard record data size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], read["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], write["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/txznet/txz/util/recordcenter/T/T3;->T()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    .line 91
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-static {p1, p2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    if-ne v0, v5, :cond_1

    .line 96
    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    goto :goto_1

    .line 98
    :cond_4
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v5, v5

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    sub-int v3, v5, v6

    .line 99
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-static {p1, p2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    if-ne v0, v5, :cond_1

    .line 104
    const/4 v5, 0x0

    iput v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    .line 106
    add-int v5, p2, v3

    sub-int v6, p3, v3

    invoke-virtual {p0, p1, v5, v6}, Lcom/txznet/txz/util/recordcenter/T/T3;->T([BII)I

    move-result v4

    .line 107
    .local v4, "w":I
    if-ltz v4, :cond_1

    .line 110
    add-int/2addr v4, v3

    goto/16 :goto_0

    .line 113
    .end local v4    # "w":I
    :cond_5
    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    invoke-static {p1, p2, v5, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    add-int/2addr v5, p3

    iget-object v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v6, v6

    rem-int v1, v5, v6

    .line 115
    .local v1, "index":I
    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    if-ne v0, v5, :cond_1

    .line 118
    iput v1, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    goto/16 :goto_1
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/txznet/txz/util/recordcenter/T/T;)V
    .locals 8
    .param p1, "writer"    # Lcom/txznet/txz/util/recordcenter/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    :goto_0
    iget v0, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    .line 39
    .local v0, "fIndex":I
    iget v3, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T2:I

    .line 40
    .local v3, "writeIndex":I
    iget v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    if-ne v3, v4, :cond_1

    .line 61
    :cond_0
    return-void

    .line 46
    :cond_1
    iget v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    if-le v3, v4, :cond_2

    .line 47
    iget-object v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    iget v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    sub-int v6, v3, v6

    invoke-interface {p1, v4, v5, v6}, Lcom/txznet/txz/util/recordcenter/T/T;->T([BII)I

    move-result v2

    .line 53
    .local v2, "r":I
    :goto_1
    iget v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v5, v5

    rem-int v1, v4, v5

    .line 54
    .local v1, "index":I
    iget v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->TN:I

    if-ne v0, v4, :cond_0

    .line 57
    iput v1, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    goto :goto_0

    .line 50
    .end local v1    # "index":I
    .end local v2    # "r":I
    :cond_2
    iget-object v4, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    iget v5, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    iget-object v6, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T:[B

    array-length v6, v6

    iget v7, p0, Lcom/txznet/txz/util/recordcenter/T/T3;->T3:I

    sub-int/2addr v6, v7

    invoke-interface {p1, v4, v5, v6}, Lcom/txznet/txz/util/recordcenter/T/T;->T([BII)I

    move-result v2

    .restart local v2    # "r":I
    goto :goto_1
.end method
