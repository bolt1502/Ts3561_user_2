.class public final Lcom/TN/T/T/T$T;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/T/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation


# static fields
.field private static volatile Tw:[Lcom/TN/T/T/T$T;


# instance fields
.field public T2:Ljava/lang/Integer;

.field public T3:Ljava/lang/Integer;

.field public TN:Ljava/lang/Long;

.field public Te:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    .line 287
    invoke-virtual {p0}, Lcom/TN/T/T/T$T;->Te()Lcom/TN/T/T/T$T;

    .line 288
    return-void
.end method

.method public static TN()[Lcom/TN/T/T/T$T;
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/TN/T/T/T$T;->Tw:[Lcom/TN/T/T/T$T;

    if-nez v0, :cond_1

    .line 264
    sget-object v1, Lcom/T3/T/T/T2;->T:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    sget-object v0, Lcom/TN/T/T/T$T;->Tw:[Lcom/TN/T/T/T$T;

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/TN/T/T/T$T;

    sput-object v0, Lcom/TN/T/T/T$T;->Tw:[Lcom/TN/T/T/T$T;

    .line 269
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_1
    sget-object v0, Lcom/TN/T/T/T$T;->Tw:[Lcom/TN/T/T/T$T;

    return-object v0

    .line 269
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
    .line 257
    invoke-virtual {p0, p1}, Lcom/TN/T/T/T$T;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/T/T$T;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/T3/T/T/T3;)V
    .locals 3
    .param p1, "output"    # Lcom/T3/T/T/T3;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/TN/T/T/T$T;->T3:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/TN/T/T/T$T;->T3:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T3(II)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/TN/T/T/T$T;->T2:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 306
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/TN/T/T/T$T;->T2:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T3(II)V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/TN/T/T/T$T;->TN:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 309
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/TN/T/T/T$T;->TN:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/T3/T/T/T3;->T(IJ)V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/TN/T/T/T$T;->Te:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 312
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/TN/T/T/T$T;->Te:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 314
    :cond_3
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    .line 315
    return-void
.end method

.method protected T2()I
    .locals 4

    .prologue
    .line 319
    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v0

    .line 320
    .local v0, "size":I
    iget-object v1, p0, Lcom/TN/T/T/T$T;->T3:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 321
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/TN/T/T/T$T;->T3:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/TN/T/T/T$T;->T2:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 325
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/TN/T/T/T$T;->T2:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/TN/T/T/T$T;->TN:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 329
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/TN/T/T/T$T;->TN:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/T3/T/T/T3;->T3(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/TN/T/T/T$T;->Te:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 333
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/TN/T/T/T$T;->Te:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_3
    return v0
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/T/T$T;
    .locals 3
    .param p1, "input"    # Lcom/T3/T/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v0

    .line 345
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 349
    invoke-static {p1, v0}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    :sswitch_0
    return-object p0

    .line 355
    :sswitch_1
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/T/T$T;->T3:Ljava/lang/Integer;

    goto :goto_0

    .line 359
    :sswitch_2
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/T/T$T;->T2:Ljava/lang/Integer;

    goto :goto_0

    .line 363
    :sswitch_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Te()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/T/T$T;->TN:Ljava/lang/Long;

    goto :goto_0

    .line 367
    :sswitch_4
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/T/T$T;->Te:Ljava/lang/String;

    goto :goto_0

    .line 345
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public Te()Lcom/TN/T/T/T$T;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/TN/T/T/T$T;->T3:Ljava/lang/Integer;

    .line 292
    iput-object v0, p0, Lcom/TN/T/T/T$T;->T2:Ljava/lang/Integer;

    .line 293
    iput-object v0, p0, Lcom/TN/T/T/T$T;->TN:Ljava/lang/Long;

    .line 294
    iput-object v0, p0, Lcom/TN/T/T/T$T;->Te:Ljava/lang/String;

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/T/T$T;->T:I

    .line 296
    return-object p0
.end method
