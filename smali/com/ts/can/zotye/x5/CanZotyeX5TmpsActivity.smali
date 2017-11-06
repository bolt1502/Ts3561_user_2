.class public Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanZotyeX5TmpsActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# instance fields
.field protected mData:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;

.field protected mIvTyres:[Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mTvPress:[Lcom/ts/other/CustomTextView;

.field protected mTvStatus:Lcom/ts/other/CustomTextView;

.field protected mTvTemp:[Lcom/ts/other/CustomTextView;

.field protected mTvWarn:[Lcom/ts/other/CustomTextView;

.field protected mWarn:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;

.field private mWarnStatus:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 20
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 23
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    .line 24
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    .line 25
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    .line 26
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    .line 30
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;

    .line 33
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    const-string v2, "\u6b63\u5e38"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5931\u6548"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4f4e\u538b"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u9ad8\u538b"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mWarnStatus:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method private Query()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    const/16 v0, 0x38

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->ZotyeQuery(II)V

    .line 85
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->Sleep(J)V

    .line 86
    const/16 v0, 0x39

    invoke-static {v0, v2}, Lcom/lgb/canmodule/CanJni;->ZotyeQuery(II)V

    .line 87
    return-void
.end method

.method private ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->ZotyeGetTpmsData(Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;)V

    .line 99
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->ZotyeGetTpmsWarn(Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;)V

    .line 101
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;->Update:I

    invoke-static {v1}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;->Update:I

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;->Val:[I

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 113
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;->Update:I

    invoke-static {v1}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;

    iput v3, v1, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;->Update:I

    .line 119
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;->Warn:[I

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 123
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;->SysInvalid:I

    invoke-static {v1}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const-string v2, "\u7cfb\u7edf\u5931\u6548"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 134
    .end local v0    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 108
    .restart local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;->Val:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;

    iget-object v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSData;->Temp:[I

    aget v2, v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->SetVal(III)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtTPMSWarn;->Warn:[I

    aget v1, v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->setWarn(II)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_6
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const-string v2, "\u7cfb\u7edf\u6b63\u5e38"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto :goto_2
.end method


# virtual methods
.method public GetPressStr(I)Ljava/lang/String;
    .locals 6
    .param p1, "press"    # I

    .prologue
    .line 157
    const-string v0, ""

    .line 158
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0xbb

    if-ge p1, v1, :cond_0

    .line 160
    const-string v1, "%.1f Kpa"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, p1

    const v5, 0x3fafbe77    # 1.373f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 164
    :cond_0
    const-string v0, "-.- Kpa"

    goto :goto_0
.end method

.method public GetTempStr(I)Ljava/lang/String;
    .locals 5
    .param p1, "temp"    # I

    .prologue
    .line 171
    const-string v0, ""

    .line 172
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0xa6

    if-ge p1, v1, :cond_0

    .line 174
    const-string v1, "%d \u2103"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 178
    :cond_0
    const-string v0, "-- \u2103"

    goto :goto_0
.end method

.method public SetVal(III)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "press"    # I
    .param p3, "temp"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    invoke-virtual {p0, p2}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->GetPressStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    invoke-virtual {p0, p3}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->GetTempStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->ResetData(Z)V

    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x177

    const/16 v9, 0x119

    const/16 v8, 0x32

    const/16 v7, 0x23

    const/16 v6, 0x11

    .line 40
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->setContentView(I)V

    .line 43
    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 44
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 46
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2d

    invoke-virtual {v2, v10, v3, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    .line 67
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    invoke-virtual {v2, v7}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 68
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    invoke-virtual {v2, v6}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 70
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x37

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_line:I

    invoke-virtual {v2, v10, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 72
    return-void

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    iget-object v3, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x84

    add-int/lit16 v4, v4, 0x1af

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xba

    add-int/lit8 v5, v5, 0x74

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 51
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v0

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_dn:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 53
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit8 v4, v4, 0x5b

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit8 v5, v5, 0x31

    invoke-virtual {v3, v4, v5, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 54
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 55
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 57
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit8 v4, v4, 0x5b

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit8 v5, v5, 0x5f

    invoke-virtual {v3, v4, v5, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 58
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 59
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 61
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit8 v4, v4, 0x5b

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit16 v5, v5, 0x90

    invoke-virtual {v3, v4, v5, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 62
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 63
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 93
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 78
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->ResetData(Z)V

    .line 80
    invoke-direct {p0}, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->Query()V

    .line 81
    return-void
.end method

.method public setWarn(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "warn"    # I

    .prologue
    .line 137
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mWarnStatus:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 138
    if-nez p2, :cond_1

    .line 139
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 140
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mWarnStatus:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5TmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_0
.end method
