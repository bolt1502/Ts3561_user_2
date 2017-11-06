.class public Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanJACRefineWcTpmsActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_VOL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanJACRefineWcTpmsActivity"

.field private static final mWarnArrays:[Ljava/lang/String;


# instance fields
.field protected mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

.field protected mIvTyres:[Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mTvPress:[Lcom/ts/other/CustomTextView;

.field protected mTvStatus:Lcom/ts/other/CustomTextView;

.field protected mTvTemp:[Lcom/ts/other/CustomTextView;

.field protected mTvWarn:[Lcom/ts/other/CustomTextView;

.field protected mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 41
    const-string v2, "\u80ce\u538b\u6b63\u5e38"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4f20\u611f\u5668\u4e22\u5931"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u8f6e\u80ce\u6f0f\u6c14"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6c14\u538b\u8fc7\u4f4e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u6c14\u538b\u8fc7\u9ad8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u4f20\u611f\u5668\u7535\u91cf\u8fc7\u4f4e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4f20\u611f\u5668\u635f\u574f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u80ce\u538b\u5fae\u9ad8\u6216\u5fae\u4f4e"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6e29\u5ea6\u8fc7\u9ad8"

    aput-object v2, v0, v1

    .line 40
    sput-object v0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 23
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 29
    new-array v0, v1, [Lcom/ts/other/CustomImgView;

    iput-object v0, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    .line 31
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    .line 32
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    .line 33
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    .line 37
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    .line 38
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    .line 23
    return-void
.end method

.method private ResetData(Z)V
    .locals 9
    .param p1, "check"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->JACRefineGetTpms(Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;)V

    .line 108
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->Update:I

    invoke-static {v1}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->Update:I

    .line 113
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->FLPress:I

    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->FLTemp:I

    invoke-virtual {p0, v4, v1, v2}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->SetVal(III)V

    .line 114
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->FRPress:I

    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->FRTemp:I

    invoke-virtual {p0, v5, v1, v2}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->SetVal(III)V

    .line 115
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->RLPress:I

    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->RLTemp:I

    invoke-virtual {p0, v6, v1, v2}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->SetVal(III)V

    .line 116
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->RRPress:I

    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->RRTemp:I

    invoke-virtual {p0, v7, v1, v2}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->SetVal(III)V

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    invoke-static {v1}, Lcom/lgb/canmodule/CanJni;->JacRefineWcGetTpmsWarn(Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;)V

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "Warm":I
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->UpdateOnce:I

    invoke-static {v1}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 134
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->Update:I

    invoke-static {v1}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iput v4, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->Update:I

    .line 137
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    aget v1, v1, v4

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    aget v1, v1, v5

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    aget v1, v1, v6

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    aget v1, v1, v7

    if-gtz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    aget v1, v1, v8

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    if-lez v1, :cond_28

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v5}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 141
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    aget v1, v1, v4

    if-lez v1, :cond_4

    .line 142
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    aget v1, v1, v5

    if-lez v1, :cond_5

    .line 144
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    aget v1, v1, v6

    if-lez v1, :cond_6

    .line 146
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_6
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    aget v1, v1, v7

    if-lez v1, :cond_7

    .line 148
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_7
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    aget v1, v1, v8

    if-lez v1, :cond_8

    .line 150
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_8
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-lez v1, :cond_9

    .line 152
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_9
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    if-lez v1, :cond_a

    .line 154
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_a
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FLWarm:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    if-lez v1, :cond_b

    .line 156
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_b
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 159
    const/4 v0, 0x1

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    aget v1, v1, v4

    if-gtz v1, :cond_c

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    aget v1, v1, v5

    if-gtz v1, :cond_c

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    aget v1, v1, v6

    if-gtz v1, :cond_c

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    aget v1, v1, v7

    if-gtz v1, :cond_c

    .line 170
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    aget v1, v1, v8

    if-gtz v1, :cond_c

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-gtz v1, :cond_c

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    if-gtz v1, :cond_c

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    if-lez v1, :cond_29

    .line 172
    :cond_c
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v5}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 173
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    aget v1, v1, v4

    if-lez v1, :cond_d

    .line 174
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_d
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    aget v1, v1, v5

    if-lez v1, :cond_e

    .line 176
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_e
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    aget v1, v1, v6

    if-lez v1, :cond_f

    .line 178
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_f
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    aget v1, v1, v7

    if-lez v1, :cond_10

    .line 180
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_10
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    aget v1, v1, v8

    if-lez v1, :cond_11

    .line 182
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_11
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-lez v1, :cond_12

    .line 184
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_12
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    if-lez v1, :cond_13

    .line 186
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_13
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->FRWarm:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    if-lez v1, :cond_14

    .line 188
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_14
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 191
    const/4 v0, 0x1

    .line 200
    :goto_1
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    aget v1, v1, v4

    if-gtz v1, :cond_15

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    aget v1, v1, v5

    if-gtz v1, :cond_15

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    aget v1, v1, v6

    if-gtz v1, :cond_15

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    aget v1, v1, v7

    if-gtz v1, :cond_15

    .line 201
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    aget v1, v1, v8

    if-gtz v1, :cond_15

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-gtz v1, :cond_15

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    if-gtz v1, :cond_15

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    if-lez v1, :cond_2a

    .line 203
    :cond_15
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 204
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    aget v1, v1, v4

    if-lez v1, :cond_16

    .line 205
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_16
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    aget v1, v1, v5

    if-lez v1, :cond_17

    .line 207
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_17
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    aget v1, v1, v6

    if-lez v1, :cond_18

    .line 209
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_18
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    aget v1, v1, v7

    if-lez v1, :cond_19

    .line 211
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_19
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    aget v1, v1, v8

    if-lez v1, :cond_1a

    .line 213
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_1a
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-lez v1, :cond_1b

    .line 215
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_1b
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    if-lez v1, :cond_1c

    .line 217
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_1c
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RLWarm:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    if-lez v1, :cond_1d

    .line 219
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_1d
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 222
    const/4 v0, 0x1

    .line 231
    :goto_2
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    aget v1, v1, v4

    if-gtz v1, :cond_1e

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    aget v1, v1, v5

    if-gtz v1, :cond_1e

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    aget v1, v1, v6

    if-gtz v1, :cond_1e

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    aget v1, v1, v7

    if-gtz v1, :cond_1e

    .line 232
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    aget v1, v1, v8

    if-gtz v1, :cond_1e

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-gtz v1, :cond_1e

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    if-gtz v1, :cond_1e

    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    if-lez v1, :cond_2b

    .line 234
    :cond_1e
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 235
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    aget v1, v1, v4

    if-lez v1, :cond_1f

    .line 236
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_1f
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    aget v1, v1, v5

    if-lez v1, :cond_20

    .line 238
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_20
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    aget v1, v1, v6

    if-lez v1, :cond_21

    .line 240
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_21
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    aget v1, v1, v7

    if-lez v1, :cond_22

    .line 242
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_22
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    aget v1, v1, v8

    if-lez v1, :cond_23

    .line 244
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_23
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-lez v1, :cond_24

    .line 246
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_24
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    if-lez v1, :cond_25

    .line 248
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_25
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->RRWarm:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    if-lez v1, :cond_26

    .line 250
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_26
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 253
    const/4 v0, 0x1

    .line 262
    :goto_3
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->SysWarn:[I

    aget v1, v1, v4

    if-lez v1, :cond_2c

    .line 264
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const-string v2, "\u5b66\u4e60\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 289
    :cond_27
    :goto_4
    return-void

    .line 163
    :cond_28
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 164
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v4

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 195
    :cond_29
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 196
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v5

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 226
    :cond_2a
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 227
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v6

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 257
    :cond_2b
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v1, v1, v7

    invoke-virtual {v1, v4}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 258
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    sget-object v2, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v1, v1, v7

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 267
    :cond_2c
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->SysWarn:[I

    aget v1, v1, v5

    if-lez v1, :cond_2d

    .line 269
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const-string v2, "\u7cfb\u7edf\u6545\u969c"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 272
    :cond_2d
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;

    iget-object v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN_WC;->SysWarn:[I

    aget v1, v1, v6

    if-lez v1, :cond_2e

    .line 274
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const-string v2, "\u5b66\u4e60\u672a\u5b8c\u6210"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 277
    :cond_2e
    if-lez v0, :cond_2f

    .line 279
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const-string v2, "\u7cfb\u7edf\u5f02\u5e38"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 284
    :cond_2f
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const-string v2, "\u7cfb\u7edf\u6b63\u5e38"

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v1, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto/16 :goto_4
.end method


# virtual methods
.method public GetPressStr(I)Ljava/lang/String;
    .locals 8
    .param p1, "press"    # I

    .prologue
    .line 327
    const-string v0, ""

    .line 328
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0xff

    if-ge p1, v1, :cond_0

    .line 330
    const-string v1, "%.1f bar"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-double v4, p1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    .line 334
    :cond_0
    const-string v0, "-.- bar"

    goto :goto_0
.end method

.method public GetTempStr(I)Ljava/lang/String;
    .locals 5
    .param p1, "temp"    # I

    .prologue
    .line 341
    const-string v0, ""

    .line 342
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0xff

    if-ge p1, v1, :cond_0

    .line 344
    const-string v1, "%d \u2103"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 348
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
    .line 355
    iget-object v0, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    invoke-virtual {p0, p2}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->GetPressStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    invoke-virtual {p0, p3}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->GetTempStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->ResetData(Z)V

    .line 312
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 323
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 303
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x177

    const/16 v9, 0x23

    const/16 v8, 0x119

    const/16 v7, 0x32

    const/16 v6, 0x11

    .line 49
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v2}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->setContentView(I)V

    .line 52
    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v2}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 53
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 56
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 58
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2d

    invoke-virtual {v2, v5, v3, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    .line 59
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    invoke-virtual {v2, v9}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 60
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvStatus:Lcom/ts/other/CustomTextView;

    invoke-virtual {v2, v6}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 62
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x37

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_line:I

    invoke-virtual {v2, v5, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 82
    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    iget-object v3, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x84

    add-int/lit16 v4, v4, 0x1af

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xba

    add-int/lit8 v5, v5, 0x74

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 67
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v0

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_dn:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 69
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit8 v4, v4, 0x5b

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit8 v5, v5, 0x31

    invoke-virtual {v3, v4, v5, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 70
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v9}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 71
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 73
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit8 v4, v4, 0x5b

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit8 v5, v5, 0x5f

    invoke-virtual {v3, v4, v5, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 74
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v9}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 75
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 77
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit8 v4, v4, 0x5b

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit16 v5, v5, 0x90

    invoke-virtual {v3, v4, v5, v8, v7}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 78
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 79
    iget-object v2, p0, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 99
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 101
    const-string v0, "CanJACRefineWcTpmsActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 89
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/jac/wc/CanJACRefineWcTpmsActivity;->ResetData(Z)V

    .line 91
    const-string v0, "CanJACRefineWcTpmsActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
