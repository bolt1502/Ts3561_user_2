.class public final Lcom/TN/T/Tw/T$T3;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/Tw/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T3"
.end annotation


# instance fields
.field public T2:Ljava/lang/Integer;

.field public T3:[Lcom/TN/T/Tw/T$T;

.field public TN:Ljava/lang/Integer;

.field public Te:Ljava/lang/String;

.field public Tn:[Lcom/TN/T/T/T$T;

.field public Tw:Lcom/TN/T/Tw/T$T2;

.field public Ty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    .line 650
    invoke-virtual {p0}, Lcom/TN/T/Tw/T$T3;->TN()Lcom/TN/T/Tw/T$T3;

    .line 651
    return-void
.end method

.method public static T([B)Lcom/TN/T/Tw/T$T3;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/T3/T/T/TN;
        }
    .end annotation

    .prologue
    .line 830
    new-instance v0, Lcom/TN/T/Tw/T$T3;

    invoke-direct {v0}, Lcom/TN/T/Tw/T$T3;-><init>()V

    invoke-static {v0, p0}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/Te;[B)Lcom/T3/T/T/Te;

    move-result-object v0

    check-cast v0, Lcom/TN/T/Tw/T$T3;

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
    .line 611
    invoke-virtual {p0, p1}, Lcom/TN/T/Tw/T$T3;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/Tw/T$T3;

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
    .line 668
    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 669
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 670
    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    aget-object v0, v2, v1

    .line 671
    .local v0, "element":Lcom/TN/T/Tw/T$T;
    if-eqz v0, :cond_0

    .line 672
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/T3/T/T/T3;->T(ILcom/T3/T/T/Te;)V

    .line 669
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    .end local v0    # "element":Lcom/TN/T/Tw/T$T;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->T2:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 677
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->T2:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(II)V

    .line 679
    :cond_2
    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->TN:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 680
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->TN:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(II)V

    .line 682
    :cond_3
    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->Te:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 683
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->Te:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 685
    :cond_4
    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->Tw:Lcom/TN/T/Tw/T$T2;

    if-eqz v2, :cond_5

    .line 686
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->Tw:Lcom/TN/T/Tw/T$T2;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILcom/T3/T/T/Te;)V

    .line 688
    :cond_5
    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->Ty:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 689
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->Ty:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/T3/T/T/T3;->T(ILjava/lang/String;)V

    .line 691
    :cond_6
    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 692
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 693
    iget-object v2, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    aget-object v0, v2, v1

    .line 694
    .local v0, "element":Lcom/TN/T/T/T$T;
    if-eqz v0, :cond_7

    .line 695
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/T3/T/T/T3;->T(ILcom/T3/T/T/Te;)V

    .line 692
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 699
    .end local v0    # "element":Lcom/TN/T/T/T$T;
    .end local v1    # "i":I
    :cond_8
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    .line 700
    return-void
.end method

.method protected T2()I
    .locals 5

    .prologue
    .line 704
    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v2

    .line 705
    .local v2, "size":I
    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 706
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 707
    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    aget-object v0, v3, v1

    .line 708
    .local v0, "element":Lcom/TN/T/Tw/T$T;
    if-eqz v0, :cond_0

    .line 709
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/T3/T/T/T3;->T3(ILcom/T3/T/T/Te;)I

    move-result v3

    add-int/2addr v2, v3

    .line 706
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    .end local v0    # "element":Lcom/TN/T/Tw/T$T;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->T2:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 715
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/TN/T/Tw/T$T3;->T2:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/T3/T/T/T3;->T2(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 718
    :cond_2
    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->TN:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 719
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/TN/T/Tw/T$T3;->TN:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/T3/T/T/T3;->T2(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 722
    :cond_3
    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->Te:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 723
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/TN/T/Tw/T$T3;->Te:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 726
    :cond_4
    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->Tw:Lcom/TN/T/Tw/T$T2;

    if-eqz v3, :cond_5

    .line 727
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/TN/T/Tw/T$T3;->Tw:Lcom/TN/T/Tw/T$T2;

    invoke-static {v3, v4}, Lcom/T3/T/T/T3;->T3(ILcom/T3/T/T/Te;)I

    move-result v3

    add-int/2addr v2, v3

    .line 730
    :cond_5
    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->Ty:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 731
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/TN/T/Tw/T$T3;->Ty:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/T3/T/T/T3;->T3(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 734
    :cond_6
    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    array-length v3, v3

    if-lez v3, :cond_8

    .line 735
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 736
    iget-object v3, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    aget-object v0, v3, v1

    .line 737
    .local v0, "element":Lcom/TN/T/T/T$T;
    if-eqz v0, :cond_7

    .line 738
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/T3/T/T/T3;->T3(ILcom/T3/T/T/Te;)I

    move-result v3

    add-int/2addr v2, v3

    .line 735
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 743
    .end local v0    # "element":Lcom/TN/T/T/T$T;
    .end local v1    # "i":I
    :cond_8
    return v2
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/Tw/T$T3;
    .locals 6
    .param p1, "input"    # Lcom/T3/T/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 751
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v3

    .line 752
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 756
    invoke-static {p1, v3}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 757
    :sswitch_0
    return-object p0

    .line 762
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/T3/T/T/Ty;->T3(Lcom/T3/T/T/T;I)I

    move-result v0

    .line 764
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    if-nez v5, :cond_2

    move v1, v4

    .line 765
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/TN/T/Tw/T$T;

    .line 767
    .local v2, "newArray":[Lcom/TN/T/Tw/T$T;
    if-eqz v1, :cond_1

    .line 768
    iget-object v5, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 771
    new-instance v5, Lcom/TN/T/Tw/T$T;

    invoke-direct {v5}, Lcom/TN/T/Tw/T$T;-><init>()V

    aput-object v5, v2, v1

    .line 772
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    .line 773
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 764
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/TN/T/Tw/T$T;
    :cond_2
    iget-object v5, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    array-length v1, v5

    goto :goto_1

    .line 776
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/TN/T/Tw/T$T;
    :cond_3
    new-instance v5, Lcom/TN/T/Tw/T$T;

    invoke-direct {v5}, Lcom/TN/T/Tw/T$T;-><init>()V

    aput-object v5, v2, v1

    .line 777
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    .line 778
    iput-object v2, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    goto :goto_0

    .line 782
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/TN/T/Tw/T$T;
    :sswitch_2
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tw()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T3;->T2:Ljava/lang/Integer;

    goto :goto_0

    .line 786
    :sswitch_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tw()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T3;->TN:Ljava/lang/Integer;

    goto :goto_0

    .line 790
    :sswitch_4
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T3;->Te:Ljava/lang/String;

    goto :goto_0

    .line 794
    :sswitch_5
    iget-object v5, p0, Lcom/TN/T/Tw/T$T3;->Tw:Lcom/TN/T/Tw/T$T2;

    if-nez v5, :cond_4

    .line 795
    new-instance v5, Lcom/TN/T/Tw/T$T2;

    invoke-direct {v5}, Lcom/TN/T/Tw/T$T2;-><init>()V

    iput-object v5, p0, Lcom/TN/T/Tw/T$T3;->Tw:Lcom/TN/T/Tw/T$T2;

    .line 797
    :cond_4
    iget-object v5, p0, Lcom/TN/T/Tw/T$T3;->Tw:Lcom/TN/T/Tw/T$T2;

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    goto :goto_0

    .line 801
    :sswitch_6
    invoke-virtual {p1}, Lcom/T3/T/T/T;->Tn()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/TN/T/Tw/T$T3;->Ty:Ljava/lang/String;

    goto/16 :goto_0

    .line 805
    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/T3/T/T/Ty;->T3(Lcom/T3/T/T/T;I)I

    move-result v0

    .line 807
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    if-nez v5, :cond_6

    move v1, v4

    .line 808
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/TN/T/T/T$T;

    .line 810
    .local v2, "newArray":[Lcom/TN/T/T/T$T;
    if-eqz v1, :cond_5

    .line 811
    iget-object v5, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 814
    new-instance v5, Lcom/TN/T/T/T$T;

    invoke-direct {v5}, Lcom/TN/T/T/T$T;-><init>()V

    aput-object v5, v2, v1

    .line 815
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    .line 816
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 807
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/TN/T/T/T$T;
    :cond_6
    iget-object v5, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    array-length v1, v5

    goto :goto_3

    .line 819
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/TN/T/T/T$T;
    :cond_7
    new-instance v5, Lcom/TN/T/T/T$T;

    invoke-direct {v5}, Lcom/TN/T/T/T$T;-><init>()V

    aput-object v5, v2, v1

    .line 820
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/T3/T/T/T;->T(Lcom/T3/T/T/Te;)V

    .line 821
    iput-object v2, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    goto/16 :goto_0

    .line 752
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public TN()Lcom/TN/T/Tw/T$T3;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 654
    invoke-static {}, Lcom/TN/T/Tw/T$T;->TN()[Lcom/TN/T/Tw/T$T;

    move-result-object v0

    iput-object v0, p0, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    .line 655
    iput-object v1, p0, Lcom/TN/T/Tw/T$T3;->T2:Ljava/lang/Integer;

    .line 656
    iput-object v1, p0, Lcom/TN/T/Tw/T$T3;->TN:Ljava/lang/Integer;

    .line 657
    iput-object v1, p0, Lcom/TN/T/Tw/T$T3;->Te:Ljava/lang/String;

    .line 658
    iput-object v1, p0, Lcom/TN/T/Tw/T$T3;->Tw:Lcom/TN/T/Tw/T$T2;

    .line 659
    iput-object v1, p0, Lcom/TN/T/Tw/T$T3;->Ty:Ljava/lang/String;

    .line 660
    invoke-static {}, Lcom/TN/T/T/T$T;->TN()[Lcom/TN/T/T/T$T;

    move-result-object v0

    iput-object v0, p0, Lcom/TN/T/Tw/T$T3;->Tn:[Lcom/TN/T/T/T$T;

    .line 661
    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/Tw/T$T3;->T:I

    .line 662
    return-object p0
.end method
