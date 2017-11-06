.class public Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanToyotaSpyTripPerMinActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ID_CLEAR:I = 0x501

.field private static final ID_HISTORY:I = 0x500

.field public static final TAG:Ljava/lang/String; = "CanToyotaSpyTripPerMinActivity"


# instance fields
.field private m15Min:[Lcom/ts/canview/CanVerticalBar;

.field private m15MinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;

.field private mBtnClear:Lcom/ts/other/ParamButton;

.field private mBtnHistory:Lcom/ts/other/ParamButton;

.field private mCurrent:Lcom/ts/canview/CanVerticalBar;

.field private mCurrentData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;

.field private mDW:Landroid/widget/TextView;

.field private mDriveTime:Landroid/widget/TextView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

.field private mProgText:[Landroid/widget/TextView;

.field private mRange:Landroid/widget/TextView;

.field private mSpeed:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 31
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/ts/canview/CanVerticalBar;

    iput-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15Min:[Lcom/ts/canview/CanVerticalBar;

    .line 43
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;-><init>()V

    iput-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    .line 44
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;-><init>()V

    iput-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrentData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;

    .line 45
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;-><init>()V

    iput-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15MinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;

    .line 24
    return-void
.end method

.method private GetDWStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "dw"    # I

    .prologue
    .line 167
    const-string v0, ""

    .line 168
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    return-object v0

    .line 171
    :pswitch_0
    const-string v0, "MPG"

    .line 172
    goto :goto_0

    .line 175
    :pswitch_1
    const-string v0, "KM/L"

    .line 176
    goto :goto_0

    .line 179
    :pswitch_2
    const-string v0, "L/100KM"

    .line 180
    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ResetData(Z)V
    .locals 14
    .param p1, "check"    # Z

    .prologue
    const/4 v13, 0x0

    const-wide v11, 0x3fb999999999999aL    # 0.1

    const/16 v10, 0x270f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "max":I
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget-object v4, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrentData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;

    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15MinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;

    invoke-static {v3, v4, v5}, Lcom/lgb/canmodule/CanJni;->ToyotaGetTripPerMin(Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;)V

    .line 194
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->Update:I

    invoke-static {v3}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iput v8, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->Update:I

    .line 199
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->DW:I

    if-nez v3, :cond_6

    .line 201
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mSpeed:Landroid/widget/TextView;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mRange:Landroid/widget/TextView;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :goto_0
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->ElapsedTime:I

    const/16 v4, 0x176f

    if-le v3, v4, :cond_b

    .line 257
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mDriveTime:Landroid/widget/TextView;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrentData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrentData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;->Update:I

    invoke-static {v3}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 271
    :cond_2
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrentData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;

    iput v8, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;->Update:I

    .line 272
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mDW:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrentData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;->DW:I

    invoke-direct {p0, v4}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->GetDWStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/16 v0, 0xa

    .line 274
    .local v0, "base":I
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrentData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;->DW:I

    if-nez v3, :cond_c

    .line 276
    const/16 v2, 0x258

    .line 277
    const/16 v0, 0x14

    .line 284
    :goto_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_3
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mProgText:[Landroid/widget/TextView;

    array-length v3, v3

    if-lt v1, v3, :cond_d

    .line 289
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrent:Lcom/ts/canview/CanVerticalBar;

    int-to-float v4, v2

    invoke-virtual {v3, v13, v4}, Lcom/ts/canview/CanVerticalBar;->setMinMax(FF)V

    .line 290
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrent:Lcom/ts/canview/CanVerticalBar;

    iget-object v4, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrentData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpCurrent;->Current:I

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanVerticalBar;->setCurPos(I)V

    .line 294
    .end local v0    # "base":I
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15MinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 296
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15MinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;->Update:I

    invoke-static {v3}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 298
    :cond_4
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15MinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;

    iput v8, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;->Update:I

    .line 299
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15MinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;->DW:I

    if-nez v3, :cond_e

    .line 301
    const/16 v2, 0x258

    .line 308
    :goto_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    const/16 v3, 0xf

    if-lt v1, v3, :cond_f

    .line 318
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 206
    :cond_6
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->DW:I

    packed-switch v3, :pswitch_data_0

    .line 249
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mSpeed:Landroid/widget/TextView;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mRange:Landroid/widget/TextView;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 209
    :pswitch_0
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->AverageSpeed:I

    if-le v3, v10, :cond_7

    .line 211
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mSpeed:Landroid/widget/TextView;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_6
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->CruisingRange:I

    if-le v3, v10, :cond_8

    .line 220
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mRange:Landroid/widget/TextView;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 215
    :cond_7
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mSpeed:Landroid/widget/TextView;

    const-string v4, "%.1fMile/h"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->AverageSpeed:I

    int-to-double v6, v6

    mul-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 224
    :cond_8
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mRange:Landroid/widget/TextView;

    const-string v4, "%dMile"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->CruisingRange:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 229
    :pswitch_1
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->AverageSpeed:I

    if-le v3, v10, :cond_9

    .line 231
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mSpeed:Landroid/widget/TextView;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_7
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->CruisingRange:I

    if-le v3, v10, :cond_a

    .line 240
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mRange:Landroid/widget/TextView;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 235
    :cond_9
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mSpeed:Landroid/widget/TextView;

    const-string v4, "%.1fKm/h"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->AverageSpeed:I

    int-to-double v6, v6

    mul-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 244
    :cond_a
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mRange:Landroid/widget/TextView;

    const-string v4, "%dKm"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->CruisingRange:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 261
    :cond_b
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mDriveTime:Landroid/widget/TextView;

    const-string v4, "%02d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->ElapsedTime:I

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mPerMinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpPerMin;->ElapsedTime:I

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 281
    .restart local v0    # "base":I
    :cond_c
    const/16 v2, 0x12c

    goto/16 :goto_2

    .line 286
    .restart local v1    # "i":I
    :cond_d
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mProgText:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int v5, v0, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 305
    .end local v0    # "base":I
    .end local v1    # "i":I
    :cond_e
    const/16 v2, 0x12c

    goto/16 :goto_4

    .line 310
    .restart local v1    # "i":I
    :cond_f
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15Min:[Lcom/ts/canview/CanVerticalBar;

    rsub-int/lit8 v4, v1, 0xe

    aget-object v3, v3, v4

    int-to-float v4, v2

    invoke-virtual {v3, v13, v4}, Lcom/ts/canview/CanVerticalBar;->setMinMax(FF)V

    .line 311
    iget-object v3, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15Min:[Lcom/ts/canview/CanVerticalBar;

    rsub-int/lit8 v4, v1, 0xe

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15MinData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsump15Min;->Min:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanVerticalBar;->setCurPos(I)V

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private SetLeftText(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 153
    const/4 v0, 0x0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 154
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    return-void
.end method

.method private SetProgText(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 160
    const/4 v0, 0x0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 163
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->ResetData(Z)V

    .line 352
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 329
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 343
    :goto_0
    return-void

    .line 333
    :pswitch_0
    const-class v1, Lcom/ts/can/toyota/spy/CanToyotaSpyTripHistoryActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 337
    :pswitch_1
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lgb/canmodule/CanJni;->ToyotaSpyCarSet(II)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v5, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v5}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->setContentView(I)V

    .line 55
    new-instance v5, Lcom/ts/other/RelativeLayoutManager;

    sget v6, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v5, p0, v6}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 57
    invoke-virtual {p0}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/ts/MainUI/R$array;->can_cam_yh_title:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "strLtArray":[Ljava/lang/String;
    const/4 v5, 0x3

    new-array v4, v5, [Landroid/widget/TextView;

    .line 61
    .local v4, "tvLtVal":[Landroid/widget/TextView;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x3

    if-lt v0, v5, :cond_0

    .line 72
    const/4 v5, 0x0

    aget-object v5, v4, v5

    iput-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mSpeed:Landroid/widget/TextView;

    .line 73
    const/4 v5, 0x1

    aget-object v5, v4, v5

    iput-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mDriveTime:Landroid/widget/TextView;

    .line 74
    const/4 v5, 0x2

    aget-object v5, v4, v5

    iput-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mRange:Landroid/widget/TextView;

    .line 76
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v6, 0x35c

    const/16 v7, 0x14

    const/16 v8, 0x82

    const/16 v9, 0x1e

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mDW:Landroid/widget/TextView;

    .line 77
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mDW:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->SetProgText(Landroid/widget/TextView;)V

    .line 78
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mDW:Landroid/widget/TextView;

    const-string v6, "L/100km"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/widget/TextView;

    iput-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mProgText:[Landroid/widget/TextView;

    .line 84
    const/4 v5, 0x4

    new-array v3, v5, [Landroid/widget/TextView;

    .line 85
    .local v3, "tvBot":[Landroid/widget/TextView;
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mProgText:[Landroid/widget/TextView;

    array-length v5, v5

    if-lt v0, v5, :cond_1

    .line 96
    const/4 v5, 0x0

    aget-object v5, v3, v5

    sget v6, Lcom/ts/MainUI/R$string;->can_15min:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v6, 0x35c

    const/16 v7, 0x184

    const/16 v8, 0x82

    const/16 v9, 0x1e

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v2

    .line 99
    .local v2, "tv":Landroid/widget/TextView;
    invoke-direct {p0, v2}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->SetProgText(Landroid/widget/TextView;)V

    .line 100
    sget v5, Lcom/ts/MainUI/R$string;->can_current:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v6, 0xe1

    const/16 v7, 0x3d

    sget v8, Lcom/ts/MainUI/R$drawable;->fuel_consumption_line01:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 105
    new-instance v5, Lcom/ts/canview/CanVerticalBar;

    sget v6, Lcom/ts/MainUI/R$drawable;->fuel_consumption_pillars02:I

    invoke-direct {v5, p0, v6}, Lcom/ts/canview/CanVerticalBar;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrent:Lcom/ts/canview/CanVerticalBar;

    .line 106
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v6, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrent:Lcom/ts/canview/CanVerticalBar;

    const/16 v7, 0x36f

    const/16 v8, 0x41

    invoke-virtual {v5, v6, v7, v8}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 107
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mCurrent:Lcom/ts/canview/CanVerticalBar;

    const/4 v6, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v5, v6, v7}, Lcom/ts/canview/CanVerticalBar;->setMinMax(FF)V

    .line 110
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15Min:[Lcom/ts/canview/CanVerticalBar;

    array-length v5, v5

    if-lt v0, v5, :cond_2

    .line 119
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v6, 0x2c

    const/16 v7, 0x1c7

    invoke-virtual {v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mBtnHistory:Lcom/ts/other/ParamButton;

    .line 120
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mBtnHistory:Lcom/ts/other/ParamButton;

    sget v6, Lcom/ts/MainUI/R$string;->can_yh_history:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->SetCommBtn(Lcom/ts/other/ParamButton;I)V

    .line 121
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mBtnHistory:Lcom/ts/other/ParamButton;

    const/16 v6, 0x500

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mBtnHistory:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v6, 0x158

    const/16 v7, 0x1c7

    invoke-virtual {v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v5

    iput-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mBtnClear:Lcom/ts/other/ParamButton;

    .line 125
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mBtnClear:Lcom/ts/other/ParamButton;

    sget v6, Lcom/ts/MainUI/R$string;->can_clear:I

    invoke-virtual {p0, v5, v6}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->SetCommBtn(Lcom/ts/other/ParamButton;I)V

    .line 126
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mBtnClear:Lcom/ts/other/ParamButton;

    const/16 v6, 0x501

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mBtnClear:Lcom/ts/other/ParamButton;

    invoke-virtual {v5, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void

    .line 63
    .end local v2    # "tv":Landroid/widget/TextView;
    .end local v3    # "tvBot":[Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v6, 0xf

    mul-int/lit8 v7, v0, 0x67

    add-int/lit8 v7, v7, 0x3d

    invoke-virtual {v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(II)Landroid/widget/TextView;

    move-result-object v2

    .line 64
    .restart local v2    # "tv":Landroid/widget/TextView;
    invoke-direct {p0, v2}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->SetLeftText(Landroid/widget/TextView;)V

    .line 65
    aget-object v5, v1, v0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v6, 0xf

    mul-int/lit8 v7, v0, 0x67

    add-int/lit8 v7, v7, 0x69

    const/16 v8, 0xc8

    const/16 v9, 0x28

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v4, v0

    .line 68
    aget-object v5, v4, v0

    invoke-direct {p0, v5}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->SetLeftText(Landroid/widget/TextView;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 87
    .end local v2    # "tv":Landroid/widget/TextView;
    .restart local v3    # "tvBot":[Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit16 v6, v0, 0xb0

    add-int/lit16 v6, v6, 0xb1

    const/16 v7, 0x184

    const/16 v8, 0x64

    const/16 v9, 0x1e

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v0

    .line 88
    aget-object v5, v3, v0

    invoke-direct {p0, v5}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->SetProgText(Landroid/widget/TextView;)V

    .line 89
    aget-object v5, v3, v0

    new-instance v6, Ljava/lang/StringBuilder;

    rsub-int/lit8 v7, v0, 0x3

    mul-int/lit8 v7, v7, 0x5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mProgText:[Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v7, 0x2f8

    mul-int/lit8 v8, v0, 0x68

    rsub-int v8, v8, 0x165

    const/16 v9, 0x64

    const/16 v10, 0x1e

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v5, v0

    .line 92
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mProgText:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-direct {p0, v5}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->SetProgText(Landroid/widget/TextView;)V

    .line 93
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mProgText:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    mul-int/lit8 v7, v0, 0xa

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 112
    .restart local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15Min:[Lcom/ts/canview/CanVerticalBar;

    new-instance v6, Lcom/ts/canview/CanVerticalBar;

    sget v7, Lcom/ts/MainUI/R$drawable;->fuel_consumption_pillars01:I

    invoke-direct {v6, p0, v7}, Lcom/ts/canview/CanVerticalBar;-><init>(Landroid/content/Context;I)V

    aput-object v6, v5, v0

    .line 113
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15Min:[Lcom/ts/canview/CanVerticalBar;

    aget-object v5, v5, v0

    const/4 v6, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v5, v6, v7}, Lcom/ts/canview/CanVerticalBar;->setMinMax(FF)V

    .line 116
    iget-object v5, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v6, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->m15Min:[Lcom/ts/canview/CanVerticalBar;

    aget-object v6, v6, v0

    rem-int/lit8 v7, v0, 0x5

    mul-int/lit8 v7, v7, 0x21

    add-int/lit16 v7, v7, 0xea

    div-int/lit8 v8, v0, 0x5

    mul-int/lit16 v8, v8, 0xb1

    add-int/2addr v7, v8

    const/16 v8, 0x41

    invoke-virtual {v5, v6, v7, v8}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 146
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 147
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaSpySetCurPage(I)V

    .line 148
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 136
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyTripPerMinActivity;->ResetData(Z)V

    .line 138
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaSpySetCurPage(I)V

    .line 139
    return-void
.end method
