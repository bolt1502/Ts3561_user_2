.class public Lcom/ts/can/CanGolfDrivingDataActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanGolfDrivingDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final BTN_TOP_LEFT:I = 0x3

.field public static final BTN_TOP_RIGHT:I = 0x4

.field public static final PAGE_LTERM:I = 0x2

.field public static final PAGE_REFU:I = 0x1

.field public static final PAGE_START:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanGolfDrivingDataActivity"

.field private static final mOilDW:[Ljava/lang/String;


# instance fields
.field protected mAvgConData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

.field protected mAvgConsumption:Landroid/widget/TextView;

.field protected mAvgSpeed:Landroid/widget/TextView;

.field protected mAvgSpeedData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

.field protected mBotCar:Lcom/ts/other/CustomImgView;

.field protected mBtnTopLeft:Lcom/ts/other/ParamButton;

.field protected mBtnTopRight:Lcom/ts/other/ParamButton;

.field protected mCenterTitle:Landroid/widget/TextView;

.field protected mCurPage:I

.field protected mDisData:Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

.field protected mDistance:Landroid/widget/TextView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mRange:Landroid/widget/TextView;

.field protected mRangeData:Lcom/lgb/canmodule/CanDataInfo$GolfRange;

.field protected mTextVal:[Landroid/widget/TextView;

.field protected mTravelTime:Landroid/widget/TextView;

.field protected mTravelTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "L/100km"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "km/l"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mpg(UK)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mpg(US)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ts/can/CanGolfDrivingDataActivity;->mOilDW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfDistance;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDisData:Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

    .line 50
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeedData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    .line 51
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfRange;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfRange;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mRangeData:Lcom/lgb/canmodule/CanDataInfo$GolfRange;

    .line 52
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTravelTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;

    .line 53
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    .line 24
    return-void
.end method

.method private ResetData(Z)V
    .locals 9
    .param p1, "check"    # Z

    .prologue
    const/4 v8, 0x2

    const/high16 v7, 0x41200000    # 10.0f

    const/16 v6, 0x50

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mRangeData:Lcom/lgb/canmodule/CanDataInfo$GolfRange;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->GolfGetDrivingRange(Lcom/lgb/canmodule/CanDataInfo$GolfRange;)V

    .line 179
    iget v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCurPage:I

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDisData:Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistance;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDisData:Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistance;->Update:I

    .line 200
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDisData:Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistance;->DW:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 202
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDistance:Landroid/widget/TextView;

    const-string v1, "%d mi"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDisData:Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfDistance;->Value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_1
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDisData:Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDistance;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    iget v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCurPage:I

    add-int/lit8 v0, v0, 0x20

    invoke-static {v6, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 215
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeedData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeedData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->Update:I

    .line 219
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeedData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->DW:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeed:Landroid/widget/TextView;

    const-string v1, "Av. %.1f mph"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeedData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->Value:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeedData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 230
    iget v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCurPage:I

    add-int/lit8 v0, v0, 0x40

    invoke-static {v6, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 234
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mRangeData:Lcom/lgb/canmodule/CanDataInfo$GolfRange;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfRange;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mRangeData:Lcom/lgb/canmodule/CanDataInfo$GolfRange;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GolfRange;->Update:I

    .line 237
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mRangeData:Lcom/lgb/canmodule/CanDataInfo$GolfRange;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfRange;->DW:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 239
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mRange:Landroid/widget/TextView;

    const-string v1, "%d mi"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mRangeData:Lcom/lgb/canmodule/CanDataInfo$GolfRange;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfRange;->Value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_3
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mRangeData:Lcom/lgb/canmodule/CanDataInfo$GolfRange;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfRange;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 248
    const/16 v0, 0x10

    invoke-static {v6, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 252
    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTravelTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTravelTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;->Update:I

    .line 255
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTravelTime:Landroid/widget/TextView;

    const-string v1, "%02d:%02d h"

    new-array v2, v8, [Ljava/lang/Object;

    .line 256
    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTravelTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;->Value:I

    div-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 257
    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTravelTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;->Value:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 255
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTravelTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 261
    iget v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCurPage:I

    add-int/lit8 v0, v0, 0x50

    invoke-static {v6, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 265
    :cond_7
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->Update:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 267
    :cond_8
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->Update:I

    .line 268
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->Avalid:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 270
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConsumption:Landroid/widget/TextView;

    const-string v1, "Av. %.1f %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->Value:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    .line 271
    sget-object v3, Lcom/ts/can/CanGolfDrivingDataActivity;->mOilDW:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->DW:I

    and-int/lit8 v4, v4, 0x3

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    .line 270
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_4
    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 280
    iget v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCurPage:I

    add-int/lit8 v0, v0, 0x30

    invoke-static {v6, v0}, Lcom/lgb/canmodule/CanJni;->GolfQuery(II)V

    .line 283
    :cond_9
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDisData:Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget-object v2, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeedData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTravelTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;

    invoke-static {v0, v1, v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfGetDrivingSinSatrt(Lcom/lgb/canmodule/CanDataInfo$GolfDistance;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;)V

    goto/16 :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDisData:Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget-object v2, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeedData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTravelTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;

    invoke-static {v0, v1, v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfGetDrivingSinRefu(Lcom/lgb/canmodule/CanDataInfo$GolfDistance;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;)V

    goto/16 :goto_0

    .line 190
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDisData:Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget-object v2, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeedData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTravelTimeData:Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;

    invoke-static {v0, v1, v2, v3}, Lcom/lgb/canmodule/CanJni;->GolfGetDrivingLongTerm(Lcom/lgb/canmodule/CanDataInfo$GolfDistance;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;Lcom/lgb/canmodule/CanDataInfo$GolfTravellingTime;)V

    goto/16 :goto_0

    .line 206
    :cond_a
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDistance:Landroid/widget/TextView;

    const-string v1, "%d km"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDisData:Lcom/lgb/canmodule/CanDataInfo$GolfDistance;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfDistance;->Value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 225
    :cond_b
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeed:Landroid/widget/TextView;

    const-string v1, "Av. %.1f km/h"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeedData:Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfDrivingComm;->Value:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 243
    :cond_c
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mRange:Landroid/widget/TextView;

    const-string v1, "%d km"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mRangeData:Lcom/lgb/canmodule/CanDataInfo$GolfRange;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$GolfRange;->Value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 275
    :cond_d
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConsumption:Landroid/widget/TextView;

    const-string v1, "Av. --.-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ShowPage()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/ts/can/CanGolfDrivingDataActivity;->ShowTitle()V

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->ResetData(Z)V

    .line 174
    return-void
.end method

.method private ShowTitle()V
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCurPage:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCenterTitle:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_since_start:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCenterTitle:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_since_refu:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCenterTitle:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_long_term:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 151
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
    .line 289
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanGolfDrivingDataActivity;->ResetData(Z)V

    .line 290
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCurPage:I

    invoke-static {v1, v3, v4, v3}, Lcom/ts/other/ValCal;->dataStepLoop(IIIZ)I

    move-result v1

    iput v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCurPage:I

    .line 139
    invoke-direct {p0}, Lcom/ts/can/CanGolfDrivingDataActivity;->ShowPage()V

    goto :goto_0

    .line 143
    :pswitch_1
    iget v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCurPage:I

    const/4 v2, 0x1

    invoke-static {v1, v3, v4, v2}, Lcom/ts/other/ValCal;->dataStepLoop(IIIZ)I

    move-result v1

    iput v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCurPage:I

    .line 144
    invoke-direct {p0}, Lcom/ts/can/CanGolfDrivingDataActivity;->ShowPage()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/16 v5, 0x4a

    const/16 v7, 0x3c

    .line 65
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanGolfDrivingDataActivity;->setContentView(I)V

    .line 69
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 71
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x16a

    const/16 v3, 0x1e

    const/16 v4, 0x12c

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCenterTitle:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCenterTitle:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCenterTitle:Landroid/widget/TextView;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCenterTitle:Landroid/widget/TextView;

    sget v2, Lcom/ts/MainUI/R$string;->can_vehi_status:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mCenterTitle:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1c

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mBtnTopLeft:Lcom/ts/other/ParamButton;

    .line 78
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mBtnTopLeft:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_vup_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_vup_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 79
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mBtnTopLeft:Lcom/ts/other/ParamButton;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mBtnTopLeft:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x39a

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mBtnTopRight:Lcom/ts/other/ParamButton;

    .line 83
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mBtnTopRight:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_vdn_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_golf_vdn_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 84
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mBtnTopRight:Lcom/ts/other/ParamButton;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mBtnTopRight:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1c2

    const/16 v3, 0x400

    const/16 v4, 0x53

    invoke-virtual {v1, v8, v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mBotCar:Lcom/ts/other/CustomImgView;

    .line 88
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mBotCar:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_golf_car01:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 90
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x3e

    const/16 v4, 0xa0

    const/16 v5, 0xfa

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v8

    .line 93
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x138

    const/16 v5, 0xa0

    const/16 v6, 0x190

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 94
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x2c8

    const/16 v5, 0xa0

    const/16 v6, 0x12c

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v3

    aput-object v3, v1, v2

    .line 95
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x3e

    const/16 v4, 0x118

    const/16 v5, 0xfa

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v9

    .line 96
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x138

    const/16 v4, 0x118

    const/16 v5, 0x190

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v10

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    aget-object v1, v1, v8

    iput-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mDistance:Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgSpeed:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mRange:Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTravelTime:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    aget-object v1, v1, v10

    iput-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mAvgConsumption:Landroid/widget/TextView;

    .line 111
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, "0.0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/ts/can/CanGolfDrivingDataActivity;->mTextVal:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 118
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 126
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 127
    invoke-direct {p0}, Lcom/ts/can/CanGolfDrivingDataActivity;->ShowPage()V

    .line 128
    return-void
.end method
