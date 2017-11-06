.class public final Lcom/TN/T/T3/T$T;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/T3/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation


# static fields
.field private static volatile Tn:[Lcom/TN/T/T3/T$T;


# instance fields
.field public T2:[Ljava/lang/String;

.field public T3:Ljava/lang/String;

.field public TN:Ljava/lang/Integer;

.field public Te:Ljava/lang/Integer;

.field public Tw:Ljava/lang/Integer;

.field public Ty:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    .line 184
    invoke-virtual {p0}, Lcom/TN/T/T3/T$T;->Te()Lcom/TN/T/T3/T$T;

    .line 185
    return-void
.end method

.method public static TN()[Lcom/TN/T/T3/T$T;
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/TN/T/T3/T$T;->Tn:[Lcom/TN/T/T3/T$T;

    if-nez v0, :cond_1

    .line 155
    sget-object v1, Lcom/T3/T/T/T2;->T:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    sget-object v0, Lcom/TN/T/T3/T$T;->Tn:[Lcom/TN/T/T3/T$T;

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/TN/T/T3/T$T;

    sput-object v0, Lcom/TN/T/T3/T$T;->Tn:[Lcom/TN/T/T3/T$T;

    .line 160
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_1
    sget-object v0, Lcom/TN/T/T3/T$T;->Tn:[Lcom/TN/T/T3/T$T;

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic T(Lcom/T3/T/T/T;)Lcom/T3/T/T/Te;
    .locals 1
    .param p1, "x0"    # Lcom/T3/T/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/TN/T/T3/T$T;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/T3/T$T;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/T3/T/T/T3;)V
    .locals 4
    .param p1, "output"    # Lcom/T3/T/T/T3;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 202
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 207
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 208
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 205
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 213
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(II)V

    .line 215
    :cond_3
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 216
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T3(II)V

    .line 218
    :cond_4
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 219
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T3(II)V

    .line 221
    :cond_5
    iget-object v2, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 222
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T3(II)V

    .line 224
    :cond_6
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    .line 225
    return-void
.end method

.method protected T2()I
    .locals 7

    .prologue
    .line 229
    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v4

    .line 230
    .local v4, "size":I
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 231
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 234
    :cond_0
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 237
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 238
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 239
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 241
    invoke-static {v2}, Lcom/T3/T/T/T3;->T3(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 237
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    add-int/2addr v4, v1

    .line 246
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 248
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 249
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->T2(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 252
    :cond_4
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 253
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 256
    :cond_5
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 257
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 260
    :cond_6
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    if-eqz v5, :cond_7

    .line 261
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 264
    :cond_7
    return v4
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/T3/T$T;
    .locals 6
    .param p1, "input"    # Lcom/T3/T/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 272
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v3

    .line 273
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 277
    invoke-static {p1, v3}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 278
    :sswitch_0
    return-object p0

    .line 283
    :sswitch_1
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    goto :goto_0

    .line 287
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/T3/T/T/Ty;->T3(Lcom/T3/T/T/T;I)I

    move-result v0

    .line 289
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 290
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 291
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 292
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 295
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 296
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 289
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 299
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 300
    iput-object v2, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    goto :goto_0

    .line 304
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tw()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    goto :goto_0

    .line 308
    :sswitch_4
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    goto :goto_0

    .line 312
    :sswitch_5
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    goto :goto_0

    .line 316
    :sswitch_6
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    goto :goto_0

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public Te()Lcom/TN/T/T3/T$T;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iput-object v1, p0, Lcom/TN/T/T3/T$T;->T3:Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/T3/T/T/Ty;->Tw:[Ljava/lang/String;

    iput-object v0, p0, Lcom/TN/T/T3/T$T;->T2:[Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/TN/T/T3/T$T;->TN:Ljava/lang/Integer;

    .line 191
    iput-object v1, p0, Lcom/TN/T/T3/T$T;->Te:Ljava/lang/Integer;

    .line 192
    iput-object v1, p0, Lcom/TN/T/T3/T$T;->Tw:Ljava/lang/Integer;

    .line 193
    iput-object v1, p0, Lcom/TN/T/T3/T$T;->Ty:Ljava/lang/Integer;

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/T3/T$T;->T:I

    .line 195
    return-object p0
.end method
