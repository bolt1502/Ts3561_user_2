.class public final Lcom/TN/T/TN/T$T;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/TN/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation


# instance fields
.field public T2:Ljava/lang/String;

.field public T3:Ljava/lang/String;

.field public TG:Ljava/lang/Integer;

.field public TN:[B

.field public TR:[B

.field public Te:Ljava/lang/String;

.field public Tn:Ljava/lang/Boolean;

.field public Tw:Ljava/lang/Integer;

.field public Ty:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    .line 1699
    invoke-virtual {p0}, Lcom/TN/T/TN/T$T;->TN()Lcom/TN/T/TN/T$T;

    .line 1700
    return-void
.end method

.method public static T([B)Lcom/TN/T/TN/T$T;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/T3/T/T/TN;
        }
    .end annotation

    .prologue
    .line 1848
    new-instance v0, Lcom/TN/T/TN/T$T;

    invoke-direct {v0}, Lcom/TN/T/TN/T$T;-><init>()V

    invoke-static {v0, p0}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/Te;[B)Lcom/T3/T/T/Te;

    move-result-object v0

    check-cast v0, Lcom/TN/T/TN/T$T;

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
    .line 1654
    invoke-virtual {p0, p1}, Lcom/TN/T/TN/T$T;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/TN/T$T;

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
    .line 1719
    iget-object v0, p0, Lcom/TN/T/TN/T$T;->T3:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1720
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->T3:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/TN/T/TN/T$T;->T2:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1723
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->T2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1725
    :cond_1
    iget-object v0, p0, Lcom/TN/T/TN/T$T;->TN:[B

    if-eqz v0, :cond_2

    .line 1726
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->TN:[B

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(I[B)V

    .line 1728
    :cond_2
    iget-object v0, p0, Lcom/TN/T/TN/T$T;->Te:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1729
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->Te:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1731
    :cond_3
    iget-object v0, p0, Lcom/TN/T/TN/T$T;->Tw:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1732
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->Tw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T3(II)V

    .line 1734
    :cond_4
    iget-object v0, p0, Lcom/TN/T/TN/T$T;->Ty:[B

    if-eqz v0, :cond_5

    .line 1735
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->Ty:[B

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(I[B)V

    .line 1737
    :cond_5
    iget-object v0, p0, Lcom/TN/T/TN/T$T;->Tn:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 1738
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->Tn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(IZ)V

    .line 1740
    :cond_6
    iget-object v0, p0, Lcom/TN/T/TN/T$T;->TG:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 1741
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->TG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T3(II)V

    .line 1743
    :cond_7
    iget-object v0, p0, Lcom/TN/T/TN/T$T;->TR:[B

    if-eqz v0, :cond_8

    .line 1744
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/TN/T/TN/T$T;->TR:[B

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(I[B)V

    .line 1746
    :cond_8
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    .line 1747
    return-void
.end method

.method protected T2()I
    .locals 3

    .prologue
    .line 1751
    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v0

    .line 1752
    .local v0, "size":I
    iget-object v1, p0, Lcom/TN/T/TN/T$T;->T3:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1753
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/TN/T/TN/T$T;->T3:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1756
    :cond_0
    iget-object v1, p0, Lcom/TN/T/TN/T$T;->T2:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1757
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/TN/T/TN/T$T;->T2:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1760
    :cond_1
    iget-object v1, p0, Lcom/TN/T/TN/T$T;->TN:[B

    if-eqz v1, :cond_2

    .line 1761
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/TN/T/TN/T$T;->TN:[B

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1764
    :cond_2
    iget-object v1, p0, Lcom/TN/T/TN/T$T;->Te:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1765
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/TN/T/TN/T$T;->Te:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1768
    :cond_3
    iget-object v1, p0, Lcom/TN/T/TN/T$T;->Tw:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1769
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/TN/T/TN/T$T;->Tw:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1772
    :cond_4
    iget-object v1, p0, Lcom/TN/T/TN/T$T;->Ty:[B

    if-eqz v1, :cond_5

    .line 1773
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/TN/T/TN/T$T;->Ty:[B

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1776
    :cond_5
    iget-object v1, p0, Lcom/TN/T/TN/T$T;->Tn:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 1777
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/TN/T/TN/T$T;->Tn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1780
    :cond_6
    iget-object v1, p0, Lcom/TN/T/TN/T$T;->TG:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 1781
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/TN/T/TN/T$T;->TG:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1784
    :cond_7
    iget-object v1, p0, Lcom/TN/T/TN/T$T;->TR:[B

    if-eqz v1, :cond_8

    .line 1785
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/TN/T/TN/T$T;->TR:[B

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1788
    :cond_8
    return v0
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/TN/T$T;
    .locals 2
    .param p1, "input"    # Lcom/T3/T/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1796
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v0

    .line 1797
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1801
    invoke-static {p1, v0}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1802
    :sswitch_0
    return-object p0

    .line 1807
    :sswitch_1
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/TN/T$T;->T3:Ljava/lang/String;

    goto :goto_0

    .line 1811
    :sswitch_2
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/TN/T$T;->T2:Ljava/lang/String;

    goto :goto_0

    .line 1815
    :sswitch_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TG()[B

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/TN/T$T;->TN:[B

    goto :goto_0

    .line 1819
    :sswitch_4
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/TN/T$T;->Te:Ljava/lang/String;

    goto :goto_0

    .line 1823
    :sswitch_5
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/TN/T$T;->Tw:Ljava/lang/Integer;

    goto :goto_0

    .line 1827
    :sswitch_6
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TG()[B

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/TN/T$T;->Ty:[B

    goto :goto_0

    .line 1831
    :sswitch_7
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Ty()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/TN/T$T;->Tn:Ljava/lang/Boolean;

    goto :goto_0

    .line 1835
    :sswitch_8
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/TN/T$T;->TG:Ljava/lang/Integer;

    goto :goto_0

    .line 1839
    :sswitch_9
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TG()[B

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/TN/T$T;->TR:[B

    goto :goto_0

    .line 1797
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public TN()Lcom/TN/T/TN/T$T;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1703
    iput-object v0, p0, Lcom/TN/T/TN/T$T;->T3:Ljava/lang/String;

    .line 1704
    iput-object v0, p0, Lcom/TN/T/TN/T$T;->T2:Ljava/lang/String;

    .line 1705
    iput-object v0, p0, Lcom/TN/T/TN/T$T;->TN:[B

    .line 1706
    iput-object v0, p0, Lcom/TN/T/TN/T$T;->Te:Ljava/lang/String;

    .line 1707
    iput-object v0, p0, Lcom/TN/T/TN/T$T;->Tw:Ljava/lang/Integer;

    .line 1708
    iput-object v0, p0, Lcom/TN/T/TN/T$T;->Ty:[B

    .line 1709
    iput-object v0, p0, Lcom/TN/T/TN/T$T;->Tn:Ljava/lang/Boolean;

    .line 1710
    iput-object v0, p0, Lcom/TN/T/TN/T$T;->TG:Ljava/lang/Integer;

    .line 1711
    iput-object v0, p0, Lcom/TN/T/TN/T$T;->TR:[B

    .line 1712
    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/TN/T$T;->T:I

    .line 1713
    return-object p0
.end method
