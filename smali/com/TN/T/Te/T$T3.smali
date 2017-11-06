.class public final Lcom/TN/T/Te/T$T3;
.super Lcom/T3/T/T/Te;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TN/T/Te/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T3"
.end annotation


# instance fields
.field public T2:Ljava/lang/Double;

.field public T3:Ljava/lang/Integer;

.field public TG:Ljava/lang/Integer;

.field public TN:Ljava/lang/Double;

.field public Te:Ljava/lang/Float;

.field public Tn:Ljava/lang/Float;

.field public Tw:Ljava/lang/Float;

.field public Ty:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/T3/T/T/Te;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/TN/T/Te/T$T3;->TN()Lcom/TN/T/Te/T$T3;

    .line 72
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
    .line 29
    invoke-virtual {p0, p1}, Lcom/TN/T/Te/T$T3;->T3(Lcom/T3/T/T/T;)Lcom/TN/T/Te/T$T3;

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
    .line 90
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T3(II)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/T3/T/T/T3;->T(ID)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 97
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/T3/T/T/T3;->T(ID)V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 100
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(IF)V

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 103
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(IF)V

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 106
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/T3/T/T/T3;->T(ID)V

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 109
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T(IF)V

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 112
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/T3/T/T/T3;->T3(II)V

    .line 114
    :cond_7
    invoke-super {p0, p1}, Lcom/T3/T/T/Te;->T(Lcom/T3/T/T/T3;)V

    .line 115
    return-void
.end method

.method protected T2()I
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Lcom/T3/T/T/Te;->T2()I

    move-result v0

    .line 120
    .local v0, "size":I
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 125
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/T3/T/T/T3;->T3(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 129
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/T3/T/T/T3;->T3(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 133
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 137
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 141
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/T3/T/T/T3;->T3(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_5
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 145
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->T3(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 149
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/T3/T/T/T3;->TN(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_7
    return v0
.end method

.method public T3(Lcom/T3/T/T/T;)Lcom/TN/T/Te/T$T3;
    .locals 3
    .param p1, "input"    # Lcom/T3/T/T/T;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T()I

    move-result v0

    .line 161
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 165
    invoke-static {p1, v0}, Lcom/T3/T/T/Ty;->T(Lcom/T3/T/T/T;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    :sswitch_0
    return-object p0

    .line 171
    :sswitch_1
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    goto :goto_0

    .line 175
    :sswitch_2
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T2()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    goto :goto_0

    .line 179
    :sswitch_3
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T2()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    goto :goto_0

    .line 183
    :sswitch_4
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TN()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    goto :goto_0

    .line 187
    :sswitch_5
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TN()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    goto :goto_0

    .line 191
    :sswitch_6
    invoke-virtual {p1}, Lcom/T3/T/T/T;->T2()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    goto :goto_0

    .line 195
    :sswitch_7
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TN()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    goto :goto_0

    .line 199
    :sswitch_8
    invoke-virtual {p1}, Lcom/T3/T/T/T;->TR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    goto :goto_0

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x31 -> :sswitch_6
        0x3d -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public TN()Lcom/TN/T/Te/T$T3;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->T3:Ljava/lang/Integer;

    .line 76
    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->T2:Ljava/lang/Double;

    .line 77
    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->TN:Ljava/lang/Double;

    .line 78
    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->Te:Ljava/lang/Float;

    .line 79
    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->Tw:Ljava/lang/Float;

    .line 80
    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->Ty:Ljava/lang/Double;

    .line 81
    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->Tn:Ljava/lang/Float;

    .line 82
    iput-object v0, p0, Lcom/TN/T/Te/T$T3;->TG:Ljava/lang/Integer;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/TN/T/Te/T$T3;->T:I

    .line 84
    return-object p0
.end method
