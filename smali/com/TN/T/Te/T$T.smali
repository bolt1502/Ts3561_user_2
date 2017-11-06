.class public final Lcom/TN/T/Te/T$T;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/Te/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation


# instance fields
.field public T2:Ljava/lang/String;

.field public T3:Ljava/lang/String;

.field public TN:Ljava/lang/String;

.field public Te:Ljava/lang/String;

.field public Tn:Ljava/lang/String;

.field public Tw:Ljava/lang/String;

.field public Ty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    .line 257
    invoke-virtual {p0}, Lcom/TN/T/Te/T$T;->TN()Lcom/TN/T/Te/T$T;

    .line 258
    return-void
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
    .line 218
    invoke-virtual {p0, p1}, Lcom/TN/T/Te/T$T;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/Te/T$T;

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
    .line 275
    iget-object v0, p0, Lcom/TN/T/Te/T$T;->T3:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/TN/T/Te/T$T;->T3:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/TN/T/Te/T$T;->T2:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 279
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/TN/T/Te/T$T;->T2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/TN/T/Te/T$T;->TN:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 282
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/TN/T/Te/T$T;->TN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/TN/T/Te/T$T;->Te:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 285
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/TN/T/Te/T$T;->Te:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/TN/T/Te/T$T;->Tw:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 288
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/TN/T/Te/T$T;->Tw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/TN/T/Te/T$T;->Ty:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 291
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/TN/T/Te/T$T;->Ty:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/TN/T/Te/T$T;->Tn:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 294
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/TN/T/Te/T$T;->Tn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 296
    :cond_6
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    .line 297
    return-void
.end method

.method protected T2()I
    .locals 3

    .prologue
    .line 301
    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v0

    .line 302
    .local v0, "size":I
    iget-object v1, p0, Lcom/TN/T/Te/T$T;->T3:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 303
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/TN/T/Te/T$T;->T3:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/TN/T/Te/T$T;->T2:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 307
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/TN/T/Te/T$T;->T2:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/TN/T/Te/T$T;->TN:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 311
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/TN/T/Te/T$T;->TN:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/TN/T/Te/T$T;->Te:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 315
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/TN/T/Te/T$T;->Te:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    :cond_3
    iget-object v1, p0, Lcom/TN/T/Te/T$T;->Tw:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 319
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/TN/T/Te/T$T;->Tw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_4
    iget-object v1, p0, Lcom/TN/T/Te/T$T;->Ty:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 323
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/TN/T/Te/T$T;->Ty:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_5
    iget-object v1, p0, Lcom/TN/T/Te/T$T;->Tn:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 327
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/TN/T/Te/T$T;->Tn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_6
    return v0
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/Te/T$T;
    .locals 2
    .param p1, "input"    # Lcom/T3/T/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v0

    .line 339
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 343
    invoke-static {p1, v0}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    :sswitch_0
    return-object p0

    .line 349
    :sswitch_1
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T;->T3:Ljava/lang/String;

    goto :goto_0

    .line 353
    :sswitch_2
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T;->T2:Ljava/lang/String;

    goto :goto_0

    .line 357
    :sswitch_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T;->TN:Ljava/lang/String;

    goto :goto_0

    .line 361
    :sswitch_4
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T;->Te:Ljava/lang/String;

    goto :goto_0

    .line 365
    :sswitch_5
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T;->Tw:Ljava/lang/String;

    goto :goto_0

    .line 369
    :sswitch_6
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T;->Ty:Ljava/lang/String;

    goto :goto_0

    .line 373
    :sswitch_7
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T;->Tn:Ljava/lang/String;

    goto :goto_0

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public TN()Lcom/TN/T/Te/T$T;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/TN/T/Te/T$T;->T3:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lcom/TN/T/Te/T$T;->T2:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/TN/T/Te/T$T;->TN:Ljava/lang/String;

    .line 264
    iput-object v0, p0, Lcom/TN/T/Te/T$T;->Te:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lcom/TN/T/Te/T$T;->Tw:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcom/TN/T/Te/T$T;->Ty:Ljava/lang/String;

    .line 267
    iput-object v0, p0, Lcom/TN/T/Te/T$T;->Tn:Ljava/lang/String;

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/Te/T$T;->T:I

    .line 269
    return-object p0
.end method
