.class public final Lcom/TN/T/Ty/T$T;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/Ty/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T"
.end annotation


# instance fields
.field public T2:Ljava/lang/String;

.field public T3:Ljava/lang/String;

.field public TB:Ljava/lang/String;

.field public TG:Ljava/lang/String;

.field public TJ:Ljava/lang/String;

.field public TN:Ljava/lang/String;

.field public TR:Ljava/lang/String;

.field public TW:Ljava/lang/String;

.field public Te:Ljava/lang/String;

.field public Tn:Ljava/lang/String;

.field public Tw:Ljava/lang/String;

.field public Ty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1858
    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    .line 1859
    invoke-virtual {p0}, Lcom/TN/T/Ty/T$T;->TN()Lcom/TN/T/Ty/T$T;

    .line 1860
    return-void
.end method

.method public static T([B)Lcom/TN/T/Ty/T$T;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/T3/T/T/TN;
        }
    .end annotation

    .prologue
    .line 2044
    new-instance v0, Lcom/TN/T/Ty/T$T;

    invoke-direct {v0}, Lcom/TN/T/Ty/T$T;-><init>()V

    invoke-static {v0, p0}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/Te;[B)Lcom/T3/T/T/Te;

    move-result-object v0

    check-cast v0, Lcom/TN/T/Ty/T$T;

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
    .line 1805
    invoke-virtual {p0, p1}, Lcom/TN/T/Ty/T$T;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/Ty/T$T;

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
    .line 1882
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->T3:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1883
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->T3:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1885
    :cond_0
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->T2:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1886
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->T2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1888
    :cond_1
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->TN:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1889
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1891
    :cond_2
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->Te:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1892
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->Te:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1894
    :cond_3
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->Tw:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1895
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->Tw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1897
    :cond_4
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->Ty:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1898
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->Ty:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1900
    :cond_5
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->Tn:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1901
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->Tn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1903
    :cond_6
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->TG:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1904
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1906
    :cond_7
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->TR:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1907
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1909
    :cond_8
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->TW:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1910
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1912
    :cond_9
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->TJ:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1913
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TJ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1915
    :cond_a
    iget-object v0, p0, Lcom/TN/T/Ty/T$T;->TB:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1916
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 1918
    :cond_b
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    .line 1919
    return-void
.end method

.method protected T2()I
    .locals 3

    .prologue
    .line 1923
    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v0

    .line 1924
    .local v0, "size":I
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->T3:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1925
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->T3:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1928
    :cond_0
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->T2:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1929
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->T2:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1932
    :cond_1
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TN:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1933
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->TN:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1936
    :cond_2
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->Te:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1937
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->Te:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1940
    :cond_3
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->Tw:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1941
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->Tw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1944
    :cond_4
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->Ty:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1945
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->Ty:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1948
    :cond_5
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->Tn:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1949
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->Tn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1952
    :cond_6
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TG:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1953
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->TG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1956
    :cond_7
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TR:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1957
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->TR:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1960
    :cond_8
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TW:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1961
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->TW:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1964
    :cond_9
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TJ:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1965
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->TJ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1968
    :cond_a
    iget-object v1, p0, Lcom/TN/T/Ty/T$T;->TB:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1969
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/TN/T/Ty/T$T;->TB:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1972
    :cond_b
    return v0
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/Ty/T$T;
    .locals 2
    .param p1, "input"    # Lcom/T3/T/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1980
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v0

    .line 1981
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1985
    invoke-static {p1, v0}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1986
    :sswitch_0
    return-object p0

    .line 1991
    :sswitch_1
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->T3:Ljava/lang/String;

    goto :goto_0

    .line 1995
    :sswitch_2
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->T2:Ljava/lang/String;

    goto :goto_0

    .line 1999
    :sswitch_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->TN:Ljava/lang/String;

    goto :goto_0

    .line 2003
    :sswitch_4
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->Te:Ljava/lang/String;

    goto :goto_0

    .line 2007
    :sswitch_5
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->Tw:Ljava/lang/String;

    goto :goto_0

    .line 2011
    :sswitch_6
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->Ty:Ljava/lang/String;

    goto :goto_0

    .line 2015
    :sswitch_7
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->Tn:Ljava/lang/String;

    goto :goto_0

    .line 2019
    :sswitch_8
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->TG:Ljava/lang/String;

    goto :goto_0

    .line 2023
    :sswitch_9
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->TR:Ljava/lang/String;

    goto :goto_0

    .line 2027
    :sswitch_a
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->TW:Ljava/lang/String;

    goto :goto_0

    .line 2031
    :sswitch_b
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->TJ:Ljava/lang/String;

    goto :goto_0

    .line 2035
    :sswitch_c
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Ty/T$T;->TB:Ljava/lang/String;

    goto :goto_0

    .line 1981
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
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method

.method public TN()Lcom/TN/T/Ty/T$T;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1863
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->T3:Ljava/lang/String;

    .line 1864
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->T2:Ljava/lang/String;

    .line 1865
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->TN:Ljava/lang/String;

    .line 1866
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->Te:Ljava/lang/String;

    .line 1867
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->Tw:Ljava/lang/String;

    .line 1868
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->Ty:Ljava/lang/String;

    .line 1869
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->Tn:Ljava/lang/String;

    .line 1870
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->TG:Ljava/lang/String;

    .line 1871
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->TR:Ljava/lang/String;

    .line 1872
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->TW:Ljava/lang/String;

    .line 1873
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->TJ:Ljava/lang/String;

    .line 1874
    iput-object v0, p0, Lcom/TN/T/Ty/T$T;->TB:Ljava/lang/String;

    .line 1875
    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/Ty/T$T;->T:I

    .line 1876
    return-object p0
.end method
