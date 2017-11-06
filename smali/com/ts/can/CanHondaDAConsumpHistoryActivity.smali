.class public Lcom/ts/can/CanHondaDAConsumpHistoryActivity;
.super Lcom/ts/can/CanGolfBaseActivity;
.source "CanHondaDAConsumpHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final BTN_CURRENT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanHondaDAConsumpHistoryActivity"


# instance fields
.field private mBtnCurrent:Lcom/ts/other/ParamButton;

.field private mConsump:[Lcom/ts/other/CustomTextView;

.field private mConsumpData:[I

.field private mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

.field private mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mMark:[Lcom/ts/other/CustomTextView;

.field private mProg:[Lcom/ts/canview/MyProgressBar;

.field private mRange:Lcom/ts/other/CustomTextView;

.field private mStrRange:Ljava/lang/String;

.field private mTitle:[Lcom/ts/other/CustomTextView;

.field private mTripA:[Lcom/ts/other/CustomTextView;

.field private mTripAData:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanGolfBaseActivity;-><init>()V

    .line 37
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    .line 38
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripAData:[I

    .line 41
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsumpData:[I

    .line 20
    return-void
.end method

.method private GetRangeVal(II)Ljava/lang/String;
    .locals 3
    .param p1, "range"    # I
    .param p2, "dw"    # I

    .prologue
    .line 268
    const-string v0, ""

    .line 269
    .local v0, "strRange":Ljava/lang/String;
    const v1, 0xffff

    if-lt p1, v1, :cond_0

    .line 271
    const-string v0, "---- "

    .line 278
    :goto_0
    if-nez p2, :cond_1

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_1
    return-object v0

    .line 275
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "mi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private GetTripAVal(II)Ljava/lang/String;
    .locals 6
    .param p1, "tripA"    # I
    .param p2, "dw"    # I

    .prologue
    .line 293
    const-string v0, ""

    .line 294
    .local v0, "strRange":Ljava/lang/String;
    const v1, 0xffffff

    if-lt p1, v1, :cond_0

    .line 296
    const-string v0, "---- "

    .line 304
    :goto_0
    if-nez p2, :cond_1

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_1
    return-object v0

    .line 301
    :cond_0
    const-string v1, "%.1f "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, p1

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "mi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private GetYhDW(I)Ljava/lang/String;
    .locals 1
    .param p1, "dw"    # I

    .prologue
    .line 227
    const-string v0, ""

    .line 228
    .local v0, "ret":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 246
    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    const-string v0, "mpg"

    .line 232
    goto :goto_0

    .line 235
    :pswitch_1
    const-string v0, "km/l"

    .line 236
    goto :goto_0

    .line 239
    :pswitch_2
    const-string v0, "l/100km"

    .line 240
    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private GetYhVal(II)Ljava/lang/String;
    .locals 6
    .param p1, "yh"    # I
    .param p2, "dw"    # I

    .prologue
    .line 251
    const-string v0, ""

    .line 252
    .local v0, "ret":Ljava/lang/String;
    const v1, 0xffff

    if-lt p1, v1, :cond_0

    .line 254
    const-string v0, "--.- "

    .line 262
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->GetYhDW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    return-object v0

    .line 259
    :cond_0
    const-string v1, "%.1f "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, p1

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected QueryData()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x2

    .line 327
    const/16 v0, 0x14

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 329
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->CrstourQuery(II)V

    .line 339
    :goto_0
    return-void

    .line 331
    :cond_0
    const/16 v0, 0x60

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetCanType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 333
    invoke-static {v3, v2}, Lcom/lgb/canmodule/CanJni;->Yg9XbsQuery(II)V

    goto :goto_0

    .line 337
    :cond_1
    const/16 v0, 0x33

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->HondaDAQuery(II)V

    goto :goto_0
.end method

.method protected ResetData(Z)V
    .locals 12
    .param p1, "check"    # Z

    .prologue
    const v11, 0xffff

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 148
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    invoke-static {v2, v3}, Lcom/lgb/canmodule/CanJni;->HondaDAGetConsump(Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;)V

    .line 149
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->UpdateOnce:I

    invoke-static {v2}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Update:I

    invoke-static {v2}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iput v7, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Update:I

    .line 154
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripA:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->TripA:I

    iget-object v4, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->DwTripA:I

    invoke-direct {p0, v3, v4}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->GetTripAVal(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Pjyh:I

    iget-object v4, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->DwPjyh:I

    invoke-direct {p0, v3, v4}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->GetYhVal(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Yhlc:I

    mul-int/lit8 v1, v2, 0xa

    .line 158
    .local v1, "maxpos":I
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v2, v2, v7

    invoke-virtual {v2, v7, v1}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 159
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Pjyh:I

    if-lt v2, v1, :cond_5

    .line 161
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Pjyh:I

    if-ne v11, v2, :cond_4

    .line 163
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v2, v2, v7

    invoke-virtual {v2, v7}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mRange:Lcom/ts/other/CustomTextView;

    const-string v3, "%s %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mStrRange:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Range:I

    iget-object v6, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v6, v6, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->DwRange:I

    invoke-direct {p0, v5, v6}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->GetRangeVal(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .end local v1    # "maxpos":I
    :cond_1
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->UpdateOnce:I

    invoke-static {v2}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->Update:I

    invoke-static {v2}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iput v7, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->Update:I

    .line 185
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->Yhlc:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->Yhlc:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripAData:[I

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->Xc1:I

    aput v3, v2, v8

    .line 189
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripAData:[I

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->Xc2:I

    aput v3, v2, v9

    .line 190
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripAData:[I

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->Xc3:I

    aput v3, v2, v10

    .line 192
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsumpData:[I

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->Yh1:I

    aput v3, v2, v8

    .line 193
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsumpData:[I

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->Yh2:I

    aput v3, v2, v9

    .line 194
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsumpData:[I

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->Yh3:I

    aput v3, v2, v10

    .line 196
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->Yhlc:I

    mul-int/lit8 v1, v2, 0xa

    .line 197
    .restart local v1    # "maxpos":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x4

    if-lt v0, v2, :cond_6

    .line 223
    .end local v0    # "i":I
    .end local v1    # "maxpos":I
    :cond_3
    return-void

    .line 167
    .restart local v1    # "maxpos":I
    :cond_4
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v2, v2, v7

    invoke-virtual {v2, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto/16 :goto_0

    .line 172
    :cond_5
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mCurData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_1;->Pjyh:I

    invoke-virtual {v2, v3}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto/16 :goto_0

    .line 199
    .restart local v0    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripA:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripAData:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->DwTripA:I

    invoke-direct {p0, v3, v4}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->GetTripAVal(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsumpData:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mHistoryData:Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$HondaYLLCData_2;->DwPjyh:I

    invoke-direct {p0, v3, v4}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->GetYhVal(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7, v1}, Lcom/ts/canview/MyProgressBar;->SetMinMax(II)V

    .line 203
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsumpData:[I

    aget v2, v2, v0

    if-ne v11, v2, :cond_7

    .line 205
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    .line 197
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_7
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsumpData:[I

    aget v2, v2, v0

    if-lt v2, v1, :cond_8

    .line 212
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto :goto_2

    .line 216
    :cond_8
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsumpData:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/ts/canview/MyProgressBar;->SetCurPos(I)V

    goto :goto_2
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->ResetData(Z)V

    .line 372
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 356
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 359
    :pswitch_0
    const-class v1, Lcom/ts/can/CanHondaDAConsumpCurrentActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/16 v7, 0x2f

    const/4 v8, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/ts/can/CanGolfBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->setContentView(I)V

    .line 50
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 51
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x3e

    const/16 v4, 0x45

    sget v5, Lcom/ts/MainUI/R$drawable;->can_btyh_line:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 52
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x3e

    const/16 v4, 0xb6

    sget v5, Lcom/ts/MainUI/R$drawable;->can_btyh_line:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 53
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x3e

    const/16 v4, 0x17e

    sget v5, Lcom/ts/MainUI/R$drawable;->can_btyh_line:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 56
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x174

    const/16 v4, 0x10

    const/16 v5, 0x12c

    const/16 v6, 0x2e

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    .line 57
    .local v1, "tv":Lcom/ts/other/CustomTextView;
    sget v2, Lcom/ts/MainUI/R$string;->can_jszkll:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 58
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 60
    new-array v2, v11, [Lcom/ts/other/CustomTextView;

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    .line 61
    new-array v2, v11, [Lcom/ts/other/CustomTextView;

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripA:[Lcom/ts/other/CustomTextView;

    .line 62
    new-array v2, v11, [Lcom/ts/canview/MyProgressBar;

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    .line 63
    new-array v2, v11, [Lcom/ts/other/CustomTextView;

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v11, :cond_0

    .line 103
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v9

    sget v3, Lcom/ts/MainUI/R$string;->can_bczk:I

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 104
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v8

    sget v3, Lcom/ts/MainUI/R$string;->can_1st:I

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 105
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v10

    sget v3, Lcom/ts/MainUI/R$string;->can_2st:I

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 106
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    sget v3, Lcom/ts/MainUI/R$string;->can_3st:I

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 108
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/ts/other/CustomTextView;

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    .line 109
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x1b5

    const/16 v5, 0x4f

    const/16 v6, 0x2d

    const/16 v7, 0x22

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v9

    .line 110
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v9

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 111
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v9

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 112
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v9

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x237

    const/16 v5, 0x4f

    const/16 v6, 0x2d

    const/16 v7, 0x22

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v8

    .line 115
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v8

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 116
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v8

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 117
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v8

    const-string v3, "10"

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x2b9

    const/16 v5, 0x4f

    const/16 v6, 0x2d

    const/16 v7, 0x22

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v10

    .line 120
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v10

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 121
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v10

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 122
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mMark:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v10

    const-string v3, "20"

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x119

    const/16 v4, 0x4f

    const/16 v5, 0x56

    const/16 v6, 0x22

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    .line 125
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 126
    const-string v2, "TRIP A"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x307

    const/16 v4, 0x4f

    const/16 v5, 0xe6

    const/16 v6, 0x22

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v1

    .line 129
    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 130
    sget v2, Lcom/ts/MainUI/R$string;->can_pjyh:I

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(I)V

    .line 133
    invoke-virtual {p0}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ts/MainUI/R$string;->can_range_xhlc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mStrRange:Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x275

    const/16 v4, 0x186

    const/16 v5, 0x14a

    const/16 v6, 0x32

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mRange:Lcom/ts/other/CustomTextView;

    .line 137
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mRange:Lcom/ts/other/CustomTextView;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 138
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mRange:Lcom/ts/other/CustomTextView;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 140
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x19a

    const/16 v4, 0x1bc

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mBtnCurrent:Lcom/ts/other/ParamButton;

    .line 141
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mBtnCurrent:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$string;->can_jsxx:I

    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->SetCommBtn(Lcom/ts/other/ParamButton;I)V

    .line 142
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mBtnCurrent:Lcom/ts/other/ParamButton;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 143
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mBtnCurrent:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void

    .line 67
    :cond_0
    if-nez v0, :cond_1

    .line 69
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x44

    const/16 v5, 0x77

    const/16 v6, 0x85

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 70
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripA:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0xe5

    const/16 v5, 0x77

    const/16 v6, 0xaf

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 71
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x307

    const/16 v5, 0x77

    const/16 v6, 0xe6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 73
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    new-instance v3, Lcom/ts/canview/MyProgressBar;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_btyh_pro_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_btyh_pro_dn:I

    invoke-direct {v3, p0, v4, v5}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    aput-object v3, v2, v0

    .line 74
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v3, v3, v0

    const/16 v4, 0x1b5

    const/16 v5, 0x7c

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 89
    :goto_1
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 91
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 94
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripA:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 95
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripA:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 98
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 99
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTitle:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x44

    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v5, v5, 0x3f

    add-int/lit16 v5, v5, 0xc5

    const/16 v6, 0x85

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 81
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mTripA:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0xe5

    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v5, v5, 0x3f

    add-int/lit16 v5, v5, 0xc5

    const/16 v6, 0xaf

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 82
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mConsump:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x307

    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v5, v5, 0x3f

    add-int/lit16 v5, v5, 0xc5

    const/16 v6, 0xe6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 85
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    new-instance v3, Lcom/ts/canview/MyProgressBar;

    sget v4, Lcom/ts/MainUI/R$drawable;->can_btyh_pro_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->can_btyh_pro_dn:I

    invoke-direct {v3, p0, v4, v5}, Lcom/ts/canview/MyProgressBar;-><init>(Landroid/content/Context;II)V

    aput-object v3, v2, v0

    .line 86
    iget-object v2, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v3, p0, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->mProg:[Lcom/ts/canview/MyProgressBar;

    aget-object v3, v3, v0

    const/16 v4, 0x1b5

    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v5, v5, 0x3d

    add-int/lit16 v5, v5, 0xcd

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 320
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 321
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onPause()V

    .line 323
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lcom/ts/can/CanGolfBaseActivity;->onResume()V

    .line 346
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->ResetData(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/ts/can/CanHondaDAConsumpHistoryActivity;->QueryData()V

    .line 349
    return-void
.end method
