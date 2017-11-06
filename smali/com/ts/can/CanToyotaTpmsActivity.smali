.class public Lcom/ts/can/CanToyotaTpmsActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanToyotaTpmsActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanToyotaTpmsActivity"


# instance fields
.field private mCarBg:Lcom/ts/other/CustomImgView;

.field private mCarLine:Lcom/ts/other/CustomImgView;

.field private mDW:Lcom/ts/other/CustomTextView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mPressure:[I

.field private mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

.field private mTyres1:[Lcom/ts/other/CustomImgView;

.field private mTyres2:[Lcom/ts/other/CustomImgView;

.field private mValue1:[Lcom/ts/other/CustomTextView;

.field private mValue2:[Lcom/ts/other/CustomTextView;

.field private mbShowLine:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    .line 19
    return-void
.end method

.method private ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaGetTpms(Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;)V

    .line 120
    iget-object v0, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaTpmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanToyotaTpmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->Update:I

    .line 125
    invoke-direct {p0}, Lcom/ts/can/CanToyotaTpmsActivity;->showTyres()V

    .line 129
    :cond_1
    return-void
.end method

.method private SetText(Lcom/ts/other/CustomTextView;)V
    .locals 1
    .param p1, "tv"    # Lcom/ts/other/CustomTextView;

    .prologue
    .line 268
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 269
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 270
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 271
    return-void
.end method

.method private showTyres()V
    .locals 15

    .prologue
    .line 152
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->fgShowOneCar:I

    invoke-static {v7}, Lcom/ts/can/CanToyotaTpmsActivity;->i2b(I)Z

    move-result v1

    .line 153
    .local v1, "bCar":Z
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->fgShowBT:I

    invoke-static {v7}, Lcom/ts/can/CanToyotaTpmsActivity;->i2b(I)Z

    move-result v0

    .line 154
    .local v0, "bBak":Z
    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 155
    .local v3, "bLine":Z
    :goto_0
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mCarBg:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 156
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mCarLine:Lcom/ts/other/CustomImgView;

    invoke-virtual {v7, v3}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 158
    const/4 v6, 0x0

    .line 159
    .local v6, "tvVal":[Landroid/widget/TextView;
    const/4 v5, 0x5

    .line 160
    .local v5, "showNum":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 162
    const/4 v5, 0x4

    .line 165
    :cond_0
    if-eqz v3, :cond_3

    .line 167
    iget-object v6, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue2:[Lcom/ts/other/CustomTextView;

    .line 174
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v7, 0x4

    if-lt v4, v7, :cond_4

    .line 182
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres1:[Lcom/ts/other/CustomImgView;

    const/4 v8, 0x4

    aget-object v8, v7, v8

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v8, v7}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 183
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue1:[Lcom/ts/other/CustomTextView;

    const/4 v8, 0x4

    aget-object v8, v7, v8

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v8, v7}, Lcom/ts/other/CustomTextView;->ShowHide(Z)V

    .line 185
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres2:[Lcom/ts/other/CustomImgView;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 186
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue2:[Lcom/ts/other/CustomTextView;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Lcom/ts/other/CustomTextView;->ShowHide(Z)V

    .line 188
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v9, v9, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->LFVal:I

    aput v9, v7, v8

    .line 189
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v9, v9, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->RFVal:I

    aput v9, v7, v8

    .line 190
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v9, v9, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->LRVal:I

    aput v9, v7, v8

    .line 191
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v9, v9, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->RRVal:I

    aput v9, v7, v8

    .line 192
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v9, v9, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->BTVal:I

    aput v9, v7, v8

    .line 194
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->DW:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_7

    const/4 v2, 0x1

    .line 195
    .local v2, "bDataAvalid":Z
    :goto_5
    if-eqz v2, :cond_b

    .line 197
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTpmsData:Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$ToyotaTpmsInfo;->DW:I

    packed-switch v7, :pswitch_data_0

    .line 256
    :cond_1
    return-void

    .line 154
    .end local v2    # "bDataAvalid":Z
    .end local v3    # "bLine":Z
    .end local v4    # "i":I
    .end local v5    # "showNum":I
    .end local v6    # "tvVal":[Landroid/widget/TextView;
    :cond_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 171
    .restart local v3    # "bLine":Z
    .restart local v5    # "showNum":I
    .restart local v6    # "tvVal":[Landroid/widget/TextView;
    :cond_3
    iget-object v6, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue1:[Lcom/ts/other/CustomTextView;

    goto :goto_1

    .line 176
    .restart local v4    # "i":I
    :cond_4
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres1:[Lcom/ts/other/CustomImgView;

    aget-object v7, v7, v4

    invoke-virtual {v7, v1}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 177
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue1:[Lcom/ts/other/CustomTextView;

    aget-object v7, v7, v4

    invoke-virtual {v7, v1}, Lcom/ts/other/CustomTextView;->ShowHide(Z)V

    .line 178
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres2:[Lcom/ts/other/CustomImgView;

    aget-object v7, v7, v4

    invoke-virtual {v7, v3}, Lcom/ts/other/CustomImgView;->Show(Z)V

    .line 179
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue2:[Lcom/ts/other/CustomTextView;

    aget-object v7, v7, v4

    invoke-virtual {v7, v3}, Lcom/ts/other/CustomTextView;->ShowHide(Z)V

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 182
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 183
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 194
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 200
    .restart local v2    # "bDataAvalid":Z
    :pswitch_0
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mDW:Lcom/ts/other/CustomTextView;

    const-string v8, "BAR"

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_1

    .line 203
    const/16 v7, 0xff

    iget-object v8, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    aget v8, v8, v4

    if-ne v7, v8, :cond_8

    .line 205
    aget-object v7, v6, v4

    const-string v8, "--"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 209
    :cond_8
    aget-object v7, v6, v4

    const-string v8, "%.1f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide v11, 0x3fb999999999999aL    # 0.1

    iget-object v13, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    aget v13, v13, v4

    int-to-double v13, v13

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 215
    :pswitch_1
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mDW:Lcom/ts/other/CustomTextView;

    const-string v8, "PSI"

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v5, :cond_1

    .line 218
    const/16 v7, 0xff

    iget-object v8, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    aget v8, v8, v4

    if-ne v7, v8, :cond_9

    .line 220
    aget-object v7, v6, v4

    const-string v8, "--"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 224
    :cond_9
    aget-object v7, v6, v4

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    aget v9, v9, v4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 230
    :pswitch_2
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mDW:Lcom/ts/other/CustomTextView;

    const-string v8, "kPA"

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const/4 v4, 0x0

    :goto_a
    if-ge v4, v5, :cond_1

    .line 233
    const/16 v7, 0xff

    iget-object v8, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    aget v8, v8, v4

    if-ne v7, v8, :cond_a

    .line 235
    aget-object v7, v6, v4

    const-string v8, "--"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 239
    :cond_a
    aget-object v7, v6, v4

    const-string v8, "%.1f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/high16 v11, 0x4004000000000000L    # 2.5

    iget-object v13, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mPressure:[I

    aget v13, v13, v4

    int-to-double v13, v13

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 250
    :cond_b
    iget-object v7, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mDW:Lcom/ts/other/CustomTextView;

    const-string v8, "--"

    invoke-virtual {v7, v8}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v5, :cond_1

    .line 253
    aget-object v7, v6, v4

    const-string v8, "--"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanToyotaTpmsActivity;->ResetData(Z)V

    .line 264
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    .local v0, "Id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0xd1

    const/16 v7, 0x3c

    const/4 v6, 0x5

    const/4 v5, 0x4

    .line 45
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaTpmsActivity;->setContentView(I)V

    .line 49
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 51
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x19c

    const/16 v3, 0xa

    const/16 v4, 0xc8

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mDW:Lcom/ts/other/CustomTextView;

    .line 52
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mDW:Lcom/ts/other/CustomTextView;

    invoke-direct {p0, v1}, Lcom/ts/can/CanToyotaTpmsActivity;->SetText(Lcom/ts/other/CustomTextView;)V

    .line 53
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mDW:Lcom/ts/other/CustomTextView;

    const-string v2, "kPa"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xd6

    const/16 v3, 0x4f

    sget v4, Lcom/ts/MainUI/R$drawable;->tpms_car:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mCarBg:Lcom/ts/other/CustomImgView;

    .line 58
    new-array v1, v6, [Lcom/ts/other/CustomImgView;

    iput-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres1:[Lcom/ts/other/CustomImgView;

    .line 59
    new-array v1, v6, [Lcom/ts/other/CustomTextView;

    iput-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue1:[Lcom/ts/other/CustomTextView;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 70
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres1:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x1e1

    const/16 v4, 0x166

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v5

    .line 71
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres1:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v5

    sget v2, Lcom/ts/MainUI/R$drawable;->tpms_car_bk_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->tpms_car_bk_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 73
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue1:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x19a

    const/16 v4, 0x1c3

    invoke-virtual {v2, v3, v4, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v1, v5

    .line 74
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    const-string v2, "888"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    invoke-direct {p0, v1}, Lcom/ts/can/CanToyotaTpmsActivity;->SetText(Lcom/ts/other/CustomTextView;)V

    .line 78
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x51

    const/16 v3, 0x15e

    sget v4, Lcom/ts/MainUI/R$drawable;->tpms_tires_line:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mCarLine:Lcom/ts/other/CustomImgView;

    .line 80
    new-array v1, v6, [Lcom/ts/other/CustomImgView;

    iput-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres2:[Lcom/ts/other/CustomImgView;

    .line 81
    new-array v1, v6, [Lcom/ts/other/CustomTextView;

    iput-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue2:[Lcom/ts/other/CustomTextView;

    .line 82
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v6, :cond_1

    .line 95
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres1:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v3, v0, 0x2

    mul-int/lit8 v3, v3, 0x74

    add-int/lit16 v3, v3, 0x1b9

    div-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0xca

    add-int/lit8 v4, v4, 0x7d

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 63
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres1:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->tpms_car_k_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->tpms_car_k_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 65
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue1:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v3, v0, 0x2

    mul-int/lit16 v3, v3, 0x19a

    add-int/lit16 v3, v3, 0xd1

    div-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0xcd

    add-int/lit8 v4, v4, 0x7b

    invoke-virtual {v2, v3, v4, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 66
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v0

    const-string v2, "888"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue1:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/ts/can/CanToyotaTpmsActivity;->SetText(Lcom/ts/other/CustomTextView;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres2:[Lcom/ts/other/CustomImgView;

    iget-object v2, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit16 v3, v0, 0xb6

    add-int/lit8 v3, v3, 0x55

    const/16 v4, 0x9a

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 85
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mTyres2:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->tpms_tires_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->tpms_tires_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 87
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue2:[Lcom/ts/other/CustomTextView;

    iget-object v2, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit16 v3, v0, 0xb7

    add-int/lit8 v3, v3, 0x51

    const/16 v4, 0x122

    const/16 v5, 0x84

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 88
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue2:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v0

    const-string v2, "888"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/ts/can/CanToyotaTpmsActivity;->mValue2:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/ts/can/CanToyotaTpmsActivity;->SetText(Lcom/ts/other/CustomTextView;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 111
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 112
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 102
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanToyotaTpmsActivity;->ResetData(Z)V

    .line 104
    return-void
.end method
