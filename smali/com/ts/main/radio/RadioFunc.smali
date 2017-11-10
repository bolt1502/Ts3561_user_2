.class public Lcom/ts/main/radio/RadioFunc;
.super Ljava/lang/Object;
.source "RadioFunc.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DealKey(I)I
    .locals 6
    .param p0, "nkey"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 19
    const/4 v0, 0x1

    .line 20
    .local v0, "Beep":I
    sparse-switch p0, :sswitch_data_0

    .line 220
    const/4 v0, 0x0

    .line 224
    :goto_0
    :sswitch_0
    return v0

    .line 27
    :sswitch_1
    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneMset(I)I

    goto :goto_0

    .line 32
    :sswitch_2
    invoke-static {v3}, Lcom/yyw/ts70xhw/Radio;->TuneMset(I)I

    goto :goto_0

    .line 37
    :sswitch_3
    invoke-static {v5}, Lcom/yyw/ts70xhw/Radio;->TuneMset(I)I

    goto :goto_0

    .line 42
    :sswitch_4
    invoke-static {v4}, Lcom/yyw/ts70xhw/Radio;->TuneMset(I)I

    goto :goto_0

    .line 47
    :sswitch_5
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneMset(I)I

    goto :goto_0

    .line 52
    :sswitch_6
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneMset(I)I

    goto :goto_0

    .line 57
    :sswitch_7
    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneBand(I)I

    goto :goto_0

    .line 62
    :sswitch_8
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneMnext()I

    goto :goto_0

    .line 67
    :sswitch_9
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneMprev()I

    goto :goto_0

    .line 72
    :sswitch_a
    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneSearch(I)I

    goto :goto_0

    .line 77
    :sswitch_b
    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->TuneSearch(I)I

    goto :goto_0

    .line 82
    :sswitch_c
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->RdsAf()I

    goto :goto_0

    .line 87
    :sswitch_d
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->RdsTa()I

    goto :goto_0

    .line 95
    :sswitch_e
    invoke-static {v3}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v1

    if-ge v1, v4, :cond_0

    .line 98
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneBandAm()I

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneBandFm()I

    goto :goto_0

    .line 107
    :sswitch_f
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneBandFm()I

    goto :goto_0

    .line 111
    :sswitch_10
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneBandAm()I

    goto :goto_0

    .line 116
    :sswitch_11
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneStset()I

    goto :goto_0

    .line 126
    :sswitch_12
    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneStep(I)I

    goto :goto_0

    .line 131
    :sswitch_13
    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->TuneStep(I)I

    goto :goto_0

    .line 136
    :sswitch_14
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneAms()I

    goto :goto_0

    .line 142
    :sswitch_15
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneInt()I

    goto :goto_0

    .line 147
    :sswitch_16
    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneSearch(I)I

    goto :goto_0

    .line 152
    :sswitch_17
    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->TuneSearch(I)I

    goto :goto_0

    .line 157
    :sswitch_18
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneMprev()I

    goto :goto_0

    .line 162
    :sswitch_19
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneMnext()I

    goto :goto_0

    .line 167
    :sswitch_1a
    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneMsave(I)I

    goto :goto_0

    .line 172
    :sswitch_1b
    invoke-static {v3}, Lcom/yyw/ts70xhw/Radio;->TuneMsave(I)I

    goto :goto_0

    .line 177
    :sswitch_1c
    invoke-static {v5}, Lcom/yyw/ts70xhw/Radio;->TuneMsave(I)I

    goto :goto_0

    .line 182
    :sswitch_1d
    invoke-static {v4}, Lcom/yyw/ts70xhw/Radio;->TuneMsave(I)I

    goto :goto_0

    .line 187
    :sswitch_1e
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneMsave(I)I

    goto/16 :goto_0

    .line 192
    :sswitch_1f
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneMsave(I)I

    goto/16 :goto_0

    .line 198
    :sswitch_20
    invoke-static {v1}, Lcom/yyw/ts70xhw/Radio;->TuneSearch(I)I

    goto/16 :goto_0

    .line 203
    :sswitch_21
    invoke-static {v2}, Lcom/yyw/ts70xhw/Radio;->TuneSearch(I)I

    goto/16 :goto_0

    .line 210
    :sswitch_22
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneMnext()I

    goto/16 :goto_0

    .line 214
    :sswitch_23
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneMprev()I

    goto/16 :goto_0

    .line 20
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_4
        0x24 -> :sswitch_5
        0x25 -> :sswitch_6
        0x2b -> :sswitch_7
        0x2c -> :sswitch_8
        0x2d -> :sswitch_9
        0x2e -> :sswitch_a
        0x2f -> :sswitch_b
        0x30 -> :sswitch_c
        0x31 -> :sswitch_d
        0x32 -> :sswitch_0
        0x33 -> :sswitch_e
        0x34 -> :sswitch_f
        0x35 -> :sswitch_10
        0x36 -> :sswitch_11
        0x37 -> :sswitch_0
        0x38 -> :sswitch_12
        0x39 -> :sswitch_13
        0x3a -> :sswitch_14
        0x3b -> :sswitch_15
        0x3f -> :sswitch_15
        0x42 -> :sswitch_16
        0x43 -> :sswitch_17
        0x44 -> :sswitch_18
        0x45 -> :sswitch_19
        0x4b -> :sswitch_1a
        0x4c -> :sswitch_1b
        0x4d -> :sswitch_1c
        0x4e -> :sswitch_1d
        0x4f -> :sswitch_1e
        0x50 -> :sswitch_1f
        0x107 -> :sswitch_7
        0x114 -> :sswitch_1
        0x115 -> :sswitch_2
        0x116 -> :sswitch_3
        0x117 -> :sswitch_4
        0x118 -> :sswitch_5
        0x119 -> :sswitch_6
        0x11f -> :sswitch_19
        0x120 -> :sswitch_18
        0x121 -> :sswitch_16
        0x122 -> :sswitch_17
        0x123 -> :sswitch_8
        0x124 -> :sswitch_9
        0x125 -> :sswitch_a
        0x126 -> :sswitch_b
        0x127 -> :sswitch_14
        0x128 -> :sswitch_15
        0x129 -> :sswitch_11
        0x12a -> :sswitch_0
        0x143 -> :sswitch_1a
        0x144 -> :sswitch_1b
        0x145 -> :sswitch_1c
        0x146 -> :sswitch_1d
        0x147 -> :sswitch_1e
        0x148 -> :sswitch_1f
        0x149 -> :sswitch_c
        0x14a -> :sswitch_d
        0x14b -> :sswitch_0
        0x203 -> :sswitch_13
        0x204 -> :sswitch_12
        0x311 -> :sswitch_22
        0x312 -> :sswitch_20 #TuneSearch (1)
        0x316 -> :sswitch_23 #TuneMprev ()
        0x317 -> :sswitch_21 #TuneSearch (0)
        0x31b -> :sswitch_22 #TuneMnext ()
		0x31c -> :sswitch_20
        0x320 -> :sswitch_23 #TuneMprev ()
		0x321 -> :sswitch_21
    .end sparse-switch
.end method

.method public static ShowRdsSet(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    const-string v0, "com.ts.MainUI"

    const-string v1, "com.ts.can.radio.CanRadioRdsSetActivity"

    invoke-static {v0, v1}, Lcom/ts/main/radio/RadioFunc;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "sPackage"    # Ljava/lang/String;
    .param p1, "sActivity"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {}, Lcom/ts/main/common/MainUI;->GetInstance()Lcom/ts/main/common/MainUI;

    move-result-object v3

    .line 250
    .local v3, "ui":Lcom/ts/main/common/MainUI;
    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {v3}, Lcom/ts/main/common/MainUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 253
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 255
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v0, "componetName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    const/high16 v4, 0x14200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 264
    .end local v0    # "componetName":Landroid/content/ComponentName;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
