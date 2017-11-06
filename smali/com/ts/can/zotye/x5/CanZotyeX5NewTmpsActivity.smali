.class public Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanZotyeX5NewTmpsActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# instance fields
.field protected mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

.field protected mIvTyres:[Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mTvPress:[Lcom/ts/other/CustomTextView;

.field protected mTvTemp:[Lcom/ts/other/CustomTextView;

.field protected mTvWarn:[Lcom/ts/other/CustomTextView;

.field private mWarnStatus:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 19
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 22
    new-array v0, v3, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    .line 23
    new-array v0, v3, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    .line 24
    new-array v0, v3, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    .line 26
    new-array v0, v3, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    .line 31
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;-><init>()V

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    .line 34
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 35
    const-string v2, "\u7cfb\u7edf\u6545\u969c  "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4fe1\u53f7\u4e22\u5931  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u7cfb\u7edf\u81ea\u68c0  "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u80ce\u538b\u6545\u969c\u706f  "

    aput-object v2, v0, v1

    .line 36
    const-string v1, "\u7535\u6c60\u7535\u91cf\u4f4e  "

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "\u9ad8\u6e29  "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u8d85\u9ad8\u6e29  "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u6c14\u538b\u4f4e  "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6c14\u538b\u9ad8  "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u6162\u901f\u6f0f\u6c14  "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5feb\u901f\u6f0f\u6c14  "

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    .line 19
    return-void
.end method

.method private Query()V
    .locals 2

    .prologue
    .line 88
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lgb/canmodule/CanJni;->ZotyeQuery(II)V

    .line 89
    return-void
.end method

.method private ResetData(Z)V
    .locals 13
    .param p1, "check"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ZtDmX5GetTpms(Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlUpdate:I

    invoke-static {v0}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlUpdate:I

    .line 108
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlVal:I

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlTemp:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->SetVal(III)V

    .line 109
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    const/4 v1, 0x0

    aget-object v12, v0, v1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlSysWarn:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlMsgWarn:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v3, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlSysChk:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlTpmsLed:I

    .line 110
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v5, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlBatLow:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v6, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlHigTemp:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlHigTempM:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v8, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlBarLow:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v9, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlBarHigh:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v10, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlSlowLeak:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v11, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlFastLeak:I

    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v11}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->GetWarnStr(IIIIIIIIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlSysWarn:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlMsgWarn:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlSysChk:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlTpmsLed:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlBatLow:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlHigTemp:I

    if-gtz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlHigTempM:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlBarLow:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlBarHigh:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlSlowLeak:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FlFastLeak:I

    if-lez v0, :cond_c

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 124
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrUpdate:I

    invoke-static {v0}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrUpdate:I

    .line 129
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrVal:I

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrTemp:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->SetVal(III)V

    .line 130
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    const/4 v1, 0x1

    aget-object v12, v0, v1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrSysWarn:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrMsgWarn:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v3, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrSysChk:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrTpmsLed:I

    .line 131
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v5, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrBatLow:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v6, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrHigTemp:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrHigTempM:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v8, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrBarLow:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v9, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrBarHigh:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v10, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrSlowLeak:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v11, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrFastLeak:I

    move-object v0, p0

    .line 130
    invoke-virtual/range {v0 .. v11}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->GetWarnStr(IIIIIIIIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrSysWarn:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrMsgWarn:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrSysChk:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrTpmsLed:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrBatLow:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrHigTemp:I

    if-gtz v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrHigTempM:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrBarLow:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrBarHigh:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrSlowLeak:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->FrFastLeak:I

    if-lez v0, :cond_d

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 145
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 147
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlUpdate:I

    invoke-static {v0}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlUpdate:I

    .line 150
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlVal:I

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlTemp:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->SetVal(III)V

    .line 151
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    const/4 v1, 0x2

    aget-object v12, v0, v1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlSysWarn:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlMsgWarn:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v3, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlSysChk:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlTpmsLed:I

    .line 152
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v5, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlBatLow:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v6, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlHigTemp:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlHigTempM:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v8, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlBarLow:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v9, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlBarHigh:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v10, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlSlowLeak:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v11, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlFastLeak:I

    move-object v0, p0

    .line 151
    invoke-virtual/range {v0 .. v11}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->GetWarnStr(IIIIIIIIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlSysWarn:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlMsgWarn:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlSysChk:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlTpmsLed:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlBatLow:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlHigTemp:I

    if-gtz v0, :cond_7

    .line 155
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlHigTempM:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlBarLow:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlBarHigh:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlSlowLeak:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RlFastLeak:I

    if-lez v0, :cond_e

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 167
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrUpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 169
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrUpdate:I

    invoke-static {v0}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 171
    :cond_9
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrUpdate:I

    .line 172
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrVal:I

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrTemp:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->SetVal(III)V

    .line 173
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    const/4 v1, 0x3

    aget-object v12, v0, v1

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrSysWarn:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrMsgWarn:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v3, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrSysChk:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrTpmsLed:I

    .line 174
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v5, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrBatLow:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v6, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrHigTemp:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v7, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrHigTempM:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v8, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrBarLow:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v9, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrBarHigh:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v10, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrSlowLeak:I

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v11, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrFastLeak:I

    move-object v0, p0

    .line 173
    invoke-virtual/range {v0 .. v11}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->GetWarnStr(IIIIIIIIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrSysWarn:I

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrMsgWarn:I

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrSysChk:I

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrTpmsLed:I

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrBatLow:I

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrHigTemp:I

    if-gtz v0, :cond_a

    .line 177
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrHigTempM:I

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrBarLow:I

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrBarHigh:I

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrSlowLeak:I

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ZtX5TPMSData;->RrFastLeak:I

    if-lez v0, :cond_f

    .line 179
    :cond_a
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 188
    :cond_b
    :goto_3
    return-void

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto/16 :goto_0

    .line 140
    :cond_d
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto/16 :goto_1

    .line 161
    :cond_e
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto/16 :goto_2

    .line 183
    :cond_f
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_3
.end method


# virtual methods
.method public GetPressStr(I)Ljava/lang/String;
    .locals 5
    .param p1, "press"    # I

    .prologue
    .line 211
    const-string v0, ""

    .line 212
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    .line 214
    const-string v1, "%d Kpa"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 218
    :cond_0
    const-string v0, "-- Kpa"

    goto :goto_0
.end method

.method public GetTempStr(I)Ljava/lang/String;
    .locals 5
    .param p1, "temp"    # I

    .prologue
    .line 225
    const-string v0, ""

    .line 226
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    .line 228
    const-string v1, "%d \u2103"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 232
    :cond_0
    const-string v0, "-- \u2103"

    goto :goto_0
.end method

.method public GetWarnStr(IIIIIIIIIII)Ljava/lang/String;
    .locals 4
    .param p1, "temp1"    # I
    .param p2, "temp2"    # I
    .param p3, "temp3"    # I
    .param p4, "temp4"    # I
    .param p5, "temp5"    # I
    .param p6, "temp6"    # I
    .param p7, "temp7"    # I
    .param p8, "temp8"    # I
    .param p9, "temp9"    # I
    .param p10, "temp10"    # I
    .param p11, "temp11"    # I

    .prologue
    .line 240
    const-string v0, ""

    .line 242
    .local v0, "stringw":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 246
    :cond_0
    if-eqz p2, :cond_1

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_1
    if-eqz p3, :cond_2

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_2
    if-eqz p4, :cond_3

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_3
    if-eqz p5, :cond_4

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_4
    if-eqz p7, :cond_8

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_5
    :goto_0
    if-eqz p8, :cond_9

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_6
    :goto_1
    if-eqz p10, :cond_a

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_7
    :goto_2
    return-object v0

    .line 269
    :cond_8
    if-eqz p6, :cond_5

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_9
    if-eqz p9, :cond_6

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 288
    :cond_a
    if-eqz p11, :cond_7

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public SetVal(III)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "press"    # I
    .param p3, "temp"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    invoke-virtual {p0, p2}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->GetPressStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    invoke-virtual {p0, p3}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->GetTempStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->ResetData(Z)V

    .line 299
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x8a

    const/16 v10, 0x32

    const/16 v9, 0x23

    const/4 v8, 0x3

    .line 42
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->setContentView(I)V

    .line 45
    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v2}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 46
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 48
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x177

    const/16 v4, 0x37

    sget v5, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_line:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 76
    return-void

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    iget-object v3, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x84

    add-int/lit16 v4, v4, 0x1af

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xba

    add-int/lit8 v5, v5, 0x74

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 53
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v0

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_dn:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 55
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit8 v4, v4, 0x61

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit8 v5, v5, 0x45

    invoke-virtual {v3, v4, v5, v11, v10}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 56
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v9}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 57
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v8}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 59
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit8 v4, v4, 0x61

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit16 v5, v5, 0x82

    invoke-virtual {v3, v4, v5, v11, v10}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 60
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v9}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 61
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v8}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 63
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit16 v4, v4, 0xd2

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit8 v5, v5, 0x2c

    const/16 v6, 0x9e

    const/16 v7, 0x98

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 64
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 65
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v8}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 66
    iget-object v2, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 95
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 82
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->ResetData(Z)V

    .line 84
    invoke-direct {p0}, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->Query()V

    .line 85
    return-void
.end method

.method public setWarn(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "warn"    # I

    .prologue
    .line 191
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 192
    if-nez p2, :cond_1

    .line 193
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 194
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mWarnStatus:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lcom/ts/can/zotye/x5/CanZotyeX5NewTmpsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_0
.end method
