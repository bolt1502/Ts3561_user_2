.class public final Lcom/TN/T/Te/T$T2;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/Te/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T2"
.end annotation


# instance fields
.field public T2:Lcom/TN/T/Te/T$T3;

.field public T3:Ljava/lang/Integer;

.field public TN:Lcom/TN/T/Te/T$T;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    .line 419
    invoke-virtual {p0}, Lcom/TN/T/Te/T$T2;->TN()Lcom/TN/T/Te/T$T2;

    .line 420
    return-void
.end method

.method public static T([B)Lcom/TN/T/Te/T$T2;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/T3/T/T/TN;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v0, Lcom/TN/T/Te/T$T2;

    invoke-direct {v0}, Lcom/TN/T/Te/T$T2;-><init>()V

    invoke-static {v0, p0}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/Te;[B)Lcom/T3/T/T/Te;

    move-result-object v0

    check-cast v0, Lcom/TN/T/Te/T$T2;

    return-object v0
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
    .line 392
    invoke-virtual {p0, p1}, Lcom/TN/T/Te/T$T2;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/Te/T$T2;

    move-result-object v0

    return-object v0
.end method

.method public T(Lcom/T3/T/T/T3;)V
    .locals 2
    .param p1, "output"    # Lcom/T3/T/T/T3;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T3(II)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    if-eqz v0, :cond_1

    .line 437
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILcom/T3/T/T/Te;)V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    if-eqz v0, :cond_2

    .line 440
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILcom/T3/T/T/Te;)V

    .line 442
    :cond_2
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    .line 443
    return-void
.end method

.method protected T2()I
    .locals 3

    .prologue
    .line 447
    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v0

    .line 448
    .local v0, "size":I
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 449
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    if-eqz v1, :cond_1

    .line 453
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILcom/T3/T/T/Te;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    if-eqz v1, :cond_2

    .line 457
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILcom/T3/T/T/Te;)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    :cond_2
    return v0
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/Te/T$T2;
    .locals 2
    .param p1, "input"    # Lcom/T3/T/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v0

    .line 469
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 473
    invoke-static {p1, v0}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    :sswitch_0
    return-object p0

    .line 479
    :sswitch_1
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    goto :goto_0

    .line 483
    :sswitch_2
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    if-nez v1, :cond_1

    .line 484
    new-instance v1, Lcom/TN/T/Te/T$T3;

    invoke-direct {v1}, Lcom/TN/T/Te/T$T3;-><init>()V

    iput-object v1, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    invoke-virtual {p1, v1}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    goto :goto_0

    .line 490
    :sswitch_3
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    if-nez v1, :cond_2

    .line 491
    new-instance v1, Lcom/TN/T/Te/T$T;

    invoke-direct {v1}, Lcom/TN/T/Te/T$T;-><init>()V

    iput-object v1, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    .line 493
    :cond_2
    iget-object v1, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    invoke-virtual {p1, v1}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    goto :goto_0

    .line 469
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public TN()Lcom/TN/T/Te/T$T2;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/TN/T/Te/T$T2;->T3:Ljava/lang/Integer;

    .line 424
    iput-object v0, p0, Lcom/TN/T/Te/T$T2;->T2:Lcom/TN/T/Te/T$T3;

    .line 425
    iput-object v0, p0, Lcom/TN/T/Te/T$T2;->TN:Lcom/TN/T/Te/T$T;

    .line 426
    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/Te/T$T2;->T:I

    .line 427
    return-object p0
.end method
