.class public final Lcom/TN/T/Tw/T$T;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/Tw/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation


# static fields
.field private static volatile TN:[Lcom/TN/T/Tw/T$T;


# instance fields
.field public T2:[Lcom/TN/T/Tw/T$T2;

.field public T3:Lcom/TN/T/Tw/T$T2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    .line 507
    invoke-virtual {p0}, Lcom/TN/T/Tw/T$T;->Te()Lcom/TN/T/Tw/T$T;

    .line 508
    return-void
.end method

.method public static TN()[Lcom/TN/T/Tw/T$T;
    .locals 2

    .prologue
    .line 489
    sget-object v0, Lcom/TN/T/Tw/T$T;->TN:[Lcom/TN/T/Tw/T$T;

    if-nez v0, :cond_1

    .line 490
    sget-object v1, Lcom/T3/T/T/T2;->T:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    :try_start_0
    sget-object v0, Lcom/TN/T/Tw/T$T;->TN:[Lcom/TN/T/Tw/T$T;

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/TN/T/Tw/T$T;

    sput-object v0, Lcom/TN/T/Tw/T$T;->TN:[Lcom/TN/T/Tw/T$T;

    .line 495
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :cond_1
    sget-object v0, Lcom/TN/T/Tw/T$T;->TN:[Lcom/TN/T/Tw/T$T;

    return-object v0

    .line 495
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
    .line 483
    invoke-virtual {p0, p1}, Lcom/TN/T/Tw/T$T;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/Tw/T$T;

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
    .line 520
    iget-object v2, p0, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    if-eqz v2, :cond_0

    .line 521
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILcom/T3/T/T/Te;)V

    .line 523
    :cond_0
    iget-object v2, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 524
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 525
    iget-object v2, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    aget-object v0, v2, v1

    .line 526
    .local v0, "element":Lcom/TN/T/Tw/T$T2;
    if-eqz v0, :cond_1

    .line 527
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/T3/T/T/T3;->T(ILcom/T3/T/T/Te;)V

    .line 524
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    .end local v0    # "element":Lcom/TN/T/Tw/T$T2;
    .end local v1    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    .line 532
    return-void
.end method

.method protected T2()I
    .locals 5

    .prologue
    .line 536
    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v2

    .line 537
    .local v2, "size":I
    iget-object v3, p0, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    if-eqz v3, :cond_0

    .line 538
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    invoke-static {v3, v4}, Lcom/T3/T/T/T3;->T3(ILcom/T3/T/T/Te;)I

    move-result v3

    add-int/2addr v2, v3

    .line 541
    :cond_0
    iget-object v3, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 542
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 543
    iget-object v3, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    aget-object v0, v3, v1

    .line 544
    .local v0, "element":Lcom/TN/T/Tw/T$T2;
    if-eqz v0, :cond_1

    .line 545
    const/16 v3, 0xe

    invoke-static {v3, v0}, Lcom/T3/T/T/T3;->T3(ILcom/T3/T/T/Te;)I

    move-result v3

    add-int/2addr v2, v3

    .line 542
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    .end local v0    # "element":Lcom/TN/T/Tw/T$T2;
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/Tw/T$T;
    .locals 6
    .param p1, "input"    # Lcom/T3/T/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 558
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v3

    .line 559
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 563
    invoke-static {p1, v3}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 564
    :sswitch_0
    return-object p0

    .line 569
    :sswitch_1
    iget-object v5, p0, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    if-nez v5, :cond_1

    .line 570
    new-instance v5, Lcom/TN/T/Tw/T$T2;

    invoke-direct {v5}, Lcom/TN/T/Tw/T$T2;-><init>()V

    iput-object v5, p0, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    .line 572
    :cond_1
    iget-object v5, p0, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    goto :goto_0

    .line 576
    :sswitch_2
    const/16 v5, 0x72

    invoke-static {p1, v5}, Lcom/T3/T/T/Ty;->T3(Lcom/T3/T/T/T;I)I

    move-result v0

    .line 578
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    if-nez v5, :cond_3

    move v1, v4

    .line 579
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/TN/T/Tw/T$T2;

    .line 581
    .local v2, "newArray":[Lcom/TN/T/Tw/T$T2;
    if-eqz v1, :cond_2

    .line 582
    iget-object v5, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 585
    new-instance v5, Lcom/TN/T/Tw/T$T2;

    invoke-direct {v5}, Lcom/TN/T/Tw/T$T2;-><init>()V

    aput-object v5, v2, v1

    .line 586
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    .line 587
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 578
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/TN/T/Tw/T$T2;
    :cond_3
    iget-object v5, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    array-length v1, v5

    goto :goto_1

    .line 590
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/TN/T/Tw/T$T2;
    :cond_4
    new-instance v5, Lcom/TN/T/Tw/T$T2;

    invoke-direct {v5}, Lcom/TN/T/Tw/T$T2;-><init>()V

    aput-object v5, v2, v1

    .line 591
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    .line 592
    iput-object v2, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    goto :goto_0

    .line 559
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x72 -> :sswitch_2
    .end sparse-switch
.end method

.method public Te()Lcom/TN/T/Tw/T$T;
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    .line 512
    invoke-static {}, Lcom/TN/T/Tw/T$T2;->TN()[Lcom/TN/T/Tw/T$T2;

    move-result-object v0

    iput-object v0, p0, Lcom/TN/T/Tw/T$T;->T2:[Lcom/TN/T/Tw/T$T2;

    .line 513
    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/Tw/T$T;->T:I

    .line 514
    return-object p0
.end method
