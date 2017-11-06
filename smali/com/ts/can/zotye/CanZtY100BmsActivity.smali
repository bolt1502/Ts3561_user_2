.class public Lcom/ts/can/zotye/CanZtY100BmsActivity;
.super Lcom/ts/can/zotye/CanZtY100BaseActivity;
.source "CanZtY100BmsActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanZtY100BmsActivity"


# instance fields
.field protected mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;

.field protected mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;

.field protected mItemDjwd:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemDjzs:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemKzqwd:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemMxdl:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemMxdy:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemRunMode:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mItemRunSta:Lcom/ts/can/zotye/CanZtY100Item;

.field protected mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;-><init>()V

    .line 27
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    .line 28
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;

    .line 29
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;

    .line 15
    return-void
.end method

.method private ResetData(Z)V
    .locals 11
    .param p1, "check"    # Z

    .prologue
    const-wide v9, 0x3fb999999999999aL    # 0.1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 78
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget-object v1, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;

    iget-object v2, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;

    invoke-static {v0, v1, v2}, Lcom/lgb/canmodule/CanJni;->ZtY100GetBmsInfo(Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;)V

    .line 79
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->Update:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->Update:I

    .line 84
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->RunSta:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->RunMode:I

    packed-switch v0, :pswitch_data_1

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ZtY100GetWarn(Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;)V

    .line 114
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mWarnData:Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_WARN_ENTER;->MachineWarn:I

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->UpdateWarnNum(I)V

    .line 116
    invoke-virtual {p0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->RemoveAllWarn()V

    .line 117
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->Mxdy:I

    const-string v1, "\u6bcd\u7ebf\u6b20\u538b"

    const-string v2, "\u6bcd\u7ebf\u8fc7\u538b"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddWarn2(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->fgDjkzgl:I

    const-string v1, "\u7535\u6d41\u63a7\u5236\u5668\u8fc7\u6d41\u62a5\u8b66"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddWarn(ILjava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->fgUVW:I

    const-string v1, "UVW\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddWarn(ILjava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->fgQztj:I

    const-string v1, "\u5f3a\u5236\u505c\u673a\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddWarn(ILjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->fgJstb:I

    const-string v1, "\u52a0\u901f\u8e0f\u677f\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddWarn(ILjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->fgTx:I

    const-string v1, "\u901a\u8baf\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddWarn(ILjava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->fgDw:I

    const-string v1, "\u6863\u4f4d\u6545\u969c"

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddWarn(ILjava/lang/String;)V

    .line 125
    const-string v0, "CanZtY100BmsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Toohot = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->TooHot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_STA;->TooHot:I

    const-string v1, "\u63a7\u5236\u5668\u8fc7\u70ed"

    const-string v2, "\u7535\u673a\u8fc7\u70ed"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddWarn2(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;->Update:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;->Update:I

    .line 136
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemMxdy:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%.1f V"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;->Mxdy:I

    int-to-double v3, v3

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemMxdl:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%.1f A"

    new-array v2, v8, [Ljava/lang/Object;

    const-wide/high16 v3, -0x3f8c000000000000L    # -320.0

    iget-object v5, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;->Mxdl:I

    int-to-double v5, v5

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemDjzs:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%d RPM"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData1:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA1;->Zs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;->Update:I

    invoke-static {v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;->Update:I

    .line 148
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemKzqwd:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%d  \u2103"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;->CtlTemp:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemDjwd:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "%d  \u2103"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mData2:Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ZT_BMS_DATA2;->DjTemp:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    .line 153
    :cond_5
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemRunSta:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "\u8fd0\u884c"

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemRunSta:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "\u505c\u6b62"

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemRunMode:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "\u7275\u5f15"

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 105
    :pswitch_3
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemRunMode:Lcom/ts/can/zotye/CanZtY100Item;

    const-string v1, "\u5236\u52a8"

    invoke-virtual {v0, v1}, Lcom/ts/can/zotye/CanZtY100Item;->SetVal(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 98
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->ResetData(Z)V

    .line 184
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 161
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 164
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->ShowStatus(Z)V

    goto :goto_0

    .line 168
    :pswitch_1
    iget v1, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mWarnNum:I

    if-lez v1, :cond_0

    .line 169
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->ShowStatus(Z)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_zt_xx_icon_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->can_zt_xx_icon_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 38
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    const-string v1, "\u7535\u673a\u72b6\u6001"

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const-string v0, "\u8fd0\u884c\u72b6\u6001:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemRunSta:Lcom/ts/can/zotye/CanZtY100Item;

    .line 41
    const-string v0, "\u8fd0\u884c\u6a21\u5f0f:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemRunMode:Lcom/ts/can/zotye/CanZtY100Item;

    .line 42
    const-string v0, "\u6bcd\u7ebf\u7535\u538b:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemMxdy:Lcom/ts/can/zotye/CanZtY100Item;

    .line 43
    const-string v0, "\u6bcd\u7ebf\u7535\u6d41:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemMxdl:Lcom/ts/can/zotye/CanZtY100Item;

    .line 44
    const-string v0, "\u7535\u673a\u8f6c\u901f:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemDjzs:Lcom/ts/can/zotye/CanZtY100Item;

    .line 45
    const-string v0, "\u7535\u673a\u6e29\u5ea6:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemDjwd:Lcom/ts/can/zotye/CanZtY100Item;

    .line 46
    const-string v0, "\u63a7\u5236\u5668\u6e29\u5ea6:"

    invoke-virtual {p0, v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->AddStaLine(Ljava/lang/String;)Lcom/ts/can/zotye/CanZtY100Item;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mItemKzqwd:Lcom/ts/can/zotye/CanZtY100Item;

    .line 48
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mBtnStatus:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100BmsActivity;->mBtnWarn:Lcom/ts/other/ParamButton;

    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 68
    invoke-super {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onPause()V

    .line 70
    const-string v0, "CanZtY100BmsActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/ts/can/zotye/CanZtY100BaseActivity;->onResume()V

    .line 58
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/CanZtY100BmsActivity;->ResetData(Z)V

    .line 60
    const-string v0, "CanZtY100BmsActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method
