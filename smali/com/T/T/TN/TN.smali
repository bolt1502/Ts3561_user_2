.class public Lcom/T/T/TN/TN;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field static final T:[C

.field static final T2:[C

.field static final T3:[C

.field static final TN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 166
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/T/T/TN/TN;->T:[C

    .line 169
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/T/T/TN/TN;->T3:[C

    .line 175
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/T/T/TN/TN;->T2:[C

    .line 181
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/T/T/TN/TN;->TN:[I

    return-void

    .line 166
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 169
    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    .line 175
    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    .line 181
    :array_3
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public static T(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/T/T/TN/TN;->TN:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    .line 187
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static T(J)I
    .locals 6
    .param p0, "x"    # J

    .prologue
    const/16 v3, 0x13

    .line 44
    const-wide/16 v1, 0xa

    .line 45
    .local v1, "p":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 46
    cmp-long v4, p0, v1

    if-gez v4, :cond_0

    .line 49
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 47
    .restart local v0    # "i":I
    :cond_0
    const-wide/16 v4, 0xa

    mul-long/2addr v1, v4

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 49
    goto :goto_1
.end method

.method public static T(II[C)V
    .locals 6
    .param p0, "i"    # I
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .prologue
    .line 106
    move v0, p1

    .line 107
    .local v0, "charPos":I
    const/4 v3, 0x0

    .line 109
    .local v3, "sign":C
    if-gez p0, :cond_0

    .line 110
    const/16 v3, 0x2d

    .line 111
    neg-int p0, p0

    .line 115
    :cond_0
    :goto_0
    const/high16 v4, 0x10000

    if-lt p0, v4, :cond_1

    .line 116
    div-int/lit8 v1, p0, 0x64

    .line 118
    .local v1, "q":I
    shl-int/lit8 v4, v1, 0x6

    shl-int/lit8 v5, v1, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    .line 119
    .local v2, "r":I
    move p0, v1

    .line 120
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/T/T/TN/TN;->T2:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    .line 121
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/T/T/TN/TN;->T3:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    goto :goto_0

    .line 127
    .end local v1    # "q":I
    .end local v2    # "r":I
    :cond_1
    const v4, 0xcccd

    mul-int/2addr v4, p0

    ushr-int/lit8 v1, v4, 0x13

    .line 128
    .restart local v1    # "q":I
    shl-int/lit8 v4, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    .line 129
    .restart local v2    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/T/T/TN/TN;->T:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    .line 130
    move p0, v1

    .line 131
    if-nez p0, :cond_1

    .line 133
    if-eqz v3, :cond_2

    .line 134
    add-int/lit8 v0, v0, -0x1

    aput-char v3, p2, v0

    .line 136
    :cond_2
    return-void
.end method

.method public static T(JI[C)V
    .locals 11
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    .prologue
    .line 55
    move v0, p2

    .line 56
    .local v0, "charPos":I
    const/4 v6, 0x0

    .line 58
    .local v6, "sign":C
    const-wide/16 v7, 0x0

    cmp-long v7, p0, v7

    if-gez v7, :cond_0

    .line 59
    const/16 v6, 0x2d

    .line 60
    neg-long p0, p0

    .line 64
    :cond_0
    :goto_0
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, p0, v7

    if-lez v7, :cond_1

    .line 65
    const-wide/16 v7, 0x64

    div-long v2, p0, v7

    .line 67
    .local v2, "q":J
    const/4 v7, 0x6

    shl-long v7, v2, v7

    const/4 v9, 0x5

    shl-long v9, v2, v9

    add-long/2addr v7, v9

    const/4 v9, 0x2

    shl-long v9, v2, v9

    add-long/2addr v7, v9

    sub-long v7, p0, v7

    long-to-int v5, v7

    .line 68
    .local v5, "r":I
    move-wide p0, v2

    .line 69
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/T/T/TN/TN;->T2:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 70
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/T/T/TN/TN;->T3:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_0

    .line 75
    .end local v2    # "q":J
    .end local v5    # "r":I
    :cond_1
    long-to-int v1, p0

    .line 76
    .local v1, "i2":I
    :goto_1
    const/high16 v7, 0x10000

    if-lt v1, v7, :cond_2

    .line 77
    div-int/lit8 v4, v1, 0x64

    .line 79
    .local v4, "q2":I
    shl-int/lit8 v7, v4, 0x6

    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v7, v8

    shl-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 80
    .restart local v5    # "r":I
    move v1, v4

    .line 81
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/T/T/TN/TN;->T2:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 82
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/T/T/TN/TN;->T3:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    goto :goto_1

    .line 88
    .end local v4    # "q2":I
    .end local v5    # "r":I
    :cond_2
    const v7, 0xcccd

    mul-int/2addr v7, v1

    ushr-int/lit8 v4, v7, 0x13

    .line 89
    .restart local v4    # "q2":I
    shl-int/lit8 v7, v4, 0x3

    shl-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    sub-int v5, v1, v7

    .line 90
    .restart local v5    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/T/T/TN/TN;->T:[C

    aget-char v7, v7, v5

    aput-char v7, p3, v0

    .line 91
    move v1, v4

    .line 92
    if-nez v1, :cond_2

    .line 94
    if-eqz v6, :cond_3

    .line 95
    add-int/lit8 v0, v0, -0x1

    aput-char v6, p3, v0

    .line 97
    :cond_3
    return-void
.end method
