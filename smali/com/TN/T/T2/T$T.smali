.class public final Lcom/TN/T/T2/T$T;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/T2/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation


# instance fields
.field public T2:Ljava/lang/String;

.field public T3:Ljava/lang/String;

.field public TN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5970
    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    .line 5971
    invoke-virtual {p0}, Lcom/TN/T/T2/T$T;->TN()Lcom/TN/T/T2/T$T;

    .line 5972
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
    .line 5944
    invoke-virtual {p0, p1}, Lcom/TN/T/T2/T$T;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/T2/T$T;

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
    .line 5985
    iget-object v0, p0, Lcom/TN/T/T2/T$T;->T3:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5986
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/TN/T/T2/T$T;->T3:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 5988
    :cond_0
    iget-object v0, p0, Lcom/TN/T/T2/T$T;->T2:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5989
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/TN/T/T2/T$T;->T2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 5991
    :cond_1
    iget-object v0, p0, Lcom/TN/T/T2/T$T;->TN:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5992
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/TN/T/T2/T$T;->TN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 5994
    :cond_2
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    .line 5995
    return-void
.end method

.method protected T2()I
    .locals 3

    .prologue
    .line 5999
    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v0

    .line 6000
    .local v0, "size":I
    iget-object v1, p0, Lcom/TN/T/T2/T$T;->T3:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6001
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/TN/T/T2/T$T;->T3:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6004
    :cond_0
    iget-object v1, p0, Lcom/TN/T/T2/T$T;->T2:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6005
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/TN/T/T2/T$T;->T2:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6008
    :cond_1
    iget-object v1, p0, Lcom/TN/T/T2/T$T;->TN:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6009
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/TN/T/T2/T$T;->TN:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6012
    :cond_2
    return v0
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/T2/T$T;
    .locals 2
    .param p1, "input"    # Lcom/T3/T/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6020
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v0

    .line 6021
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6025
    invoke-static {p1, v0}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6026
    :sswitch_0
    return-object p0

    .line 6031
    :sswitch_1
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/T2/T$T;->T3:Ljava/lang/String;

    goto :goto_0

    .line 6035
    :sswitch_2
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/T2/T$T;->T2:Ljava/lang/String;

    goto :goto_0

    .line 6039
    :sswitch_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/T2/T$T;->TN:Ljava/lang/String;

    goto :goto_0

    .line 6021
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public TN()Lcom/TN/T/T2/T$T;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5975
    iput-object v0, p0, Lcom/TN/T/T2/T$T;->T3:Ljava/lang/String;

    .line 5976
    iput-object v0, p0, Lcom/TN/T/T2/T$T;->T2:Ljava/lang/String;

    .line 5977
    iput-object v0, p0, Lcom/TN/T/T2/T$T;->TN:Ljava/lang/String;

    .line 5978
    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/T2/T$T;->T:I

    .line 5979
    return-object p0
.end method
