.class public Lcom/ts/MainUI/TsBuf;
.super Ljava/lang/Object;
.source "TsBuf.java"


# static fields
.field static final TAG:Ljava/lang/String; = "TsBuf"


# instance fields
.field CmdBuf:[B

.field nDataSize:I

.field nRead:I

.field nWrite:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "nNum"    # I

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/ts/MainUI/TsBuf;->nDataSize:I

    .line 8
    iput v0, p0, Lcom/ts/MainUI/TsBuf;->nRead:I

    .line 9
    iput v0, p0, Lcom/ts/MainUI/TsBuf;->nWrite:I

    .line 16
    iput p1, p0, Lcom/ts/MainUI/TsBuf;->nDataSize:I

    .line 17
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/ts/MainUI/TsBuf;->CmdBuf:[B

    .line 18
    return-void
.end method


# virtual methods
.method GetData(I[BI)I
    .locals 3
    .param p1, "nIndex"    # I
    .param p2, "ubData"    # [B
    .param p3, "nWei"    # I

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/ts/MainUI/TsBuf;->GetLen()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 77
    iget v1, p0, Lcom/ts/MainUI/TsBuf;->nRead:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/ts/MainUI/TsBuf;->nDataSize:I

    if-ge v1, v2, :cond_1

    .line 79
    iget-object v0, p0, Lcom/ts/MainUI/TsBuf;->CmdBuf:[B

    iget v1, p0, Lcom/ts/MainUI/TsBuf;->nRead:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    aput-byte v0, p2, p3

    .line 86
    const/4 v0, 0x1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    const-string v1, "TsBuf"

    const-string v2, "LineBuf GetData ERROR ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method GetLen()I
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/ts/MainUI/TsBuf;->nWrite:I

    iget v1, p0, Lcom/ts/MainUI/TsBuf;->nRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method Inint(I)I
    .locals 1
    .param p1, "nNum"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/ts/MainUI/TsBuf;->nDataSize:I

    .line 23
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/ts/MainUI/TsBuf;->CmdBuf:[B

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method Pop([B)I
    .locals 4
    .param p1, "ubData"    # [B

    .prologue
    const/4 v0, 0x0

    .line 63
    iget v1, p0, Lcom/ts/MainUI/TsBuf;->nRead:I

    iget v2, p0, Lcom/ts/MainUI/TsBuf;->nWrite:I

    if-ge v1, v2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/ts/MainUI/TsBuf;->CmdBuf:[B

    iget v2, p0, Lcom/ts/MainUI/TsBuf;->nRead:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ts/MainUI/TsBuf;->nRead:I

    aget-byte v1, v1, v2

    aput-byte v1, p1, v0

    .line 71
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method Push(B)I
    .locals 6
    .param p1, "ubData"    # B

    .prologue
    .line 32
    iget v3, p0, Lcom/ts/MainUI/TsBuf;->nWrite:I

    iget v4, p0, Lcom/ts/MainUI/TsBuf;->nDataSize:I

    if-ge v3, v4, :cond_1

    .line 34
    iget-object v3, p0, Lcom/ts/MainUI/TsBuf;->CmdBuf:[B

    iget v4, p0, Lcom/ts/MainUI/TsBuf;->nWrite:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ts/MainUI/TsBuf;->nWrite:I

    aput-byte p1, v3, v4

    .line 59
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 39
    :cond_1
    iget v3, p0, Lcom/ts/MainUI/TsBuf;->nRead:I

    if-lez v3, :cond_3

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "j":I
    iget v0, p0, Lcom/ts/MainUI/TsBuf;->nRead:I

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/ts/MainUI/TsBuf;->nWrite:I

    if-lt v0, v3, :cond_2

    .line 46
    const/4 v3, 0x0

    iput v3, p0, Lcom/ts/MainUI/TsBuf;->nRead:I

    .line 47
    iput v1, p0, Lcom/ts/MainUI/TsBuf;->nWrite:I

    .line 48
    iget v3, p0, Lcom/ts/MainUI/TsBuf;->nWrite:I

    iget v4, p0, Lcom/ts/MainUI/TsBuf;->nDataSize:I

    if-ge v3, v4, :cond_0

    .line 50
    iget-object v3, p0, Lcom/ts/MainUI/TsBuf;->CmdBuf:[B

    iget v4, p0, Lcom/ts/MainUI/TsBuf;->nWrite:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ts/MainUI/TsBuf;->nWrite:I

    aput-byte p1, v3, v4

    goto :goto_0

    .line 44
    :cond_2
    iget-object v3, p0, Lcom/ts/MainUI/TsBuf;->CmdBuf:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    iget-object v4, p0, Lcom/ts/MainUI/TsBuf;->CmdBuf:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v1

    .line 42
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_1

    .line 55
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_3
    const-string v3, "TsBuf"

    const-string v4, "LineBuf Push ERROR ..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
