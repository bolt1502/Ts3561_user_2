.class public Lcom/ts/can/jac/CanJACRefineTpmsActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanJACRefineTpmsActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/canview/CanItemProgressList$onPosChange;


# static fields
.field public static final ITEM_VOL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CanJACRefineTpmsActivity"

.field private static final mWarnArrays:[Ljava/lang/String;


# instance fields
.field protected mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

.field protected mIvTyres:[Lcom/ts/other/CustomImgView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mTvPress:[Lcom/ts/other/CustomTextView;

.field protected mTvStatus:Lcom/ts/other/CustomTextView;

.field protected mTvTemp:[Lcom/ts/other/CustomTextView;

.field protected mTvWarn:[Lcom/ts/other/CustomTextView;

.field protected mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 41
    const-string v2, "\u80ce\u538b\u6b63\u5e38"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u80ce\u538b\u5f02\u5e38"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u8f6e\u80ce\u6f0f\u6c14"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u80ce\u538b\u8b66\u544a"

    aput-object v2, v0, v1

    .line 40
    sput-object v0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mWarnArrays:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    .line 31
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    .line 32
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    .line 33
    new-array v0, v1, [Lcom/ts/other/CustomTextView;

    iput-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    .line 37
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    .line 38
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;-><init>()V

    iput-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;

    .line 23
    return-void
.end method

.method private ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->JACRefineGetTpms(Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;)V

    .line 104
    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->Update:I

    invoke-static {v0}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->Update:I

    .line 109
    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->FLPress:I

    iget-object v1, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->FLTemp:I

    invoke-virtual {p0, v3, v0, v1}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->SetVal(III)V

    .line 110
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->FRPress:I

    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->FRTemp:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->SetVal(III)V

    .line 111
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->RLPress:I

    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->RLTemp:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->SetVal(III)V

    .line 112
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->RRPress:I

    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mData:Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JAC_PMS_DATA;->RRTemp:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->SetVal(III)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->JacGetTpmsrSta(Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;)V

    .line 117
    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;->Update:I

    invoke-static {v0}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;

    iput v3, v0, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;->Update:I

    .line 123
    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;->FLState:I

    iget-object v1, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;->FRState:I

    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;->RLState:I

    iget-object v3, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mWarn:Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$JAC_TPMS_WARN;->RRState:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->setTyresInfos(IIII)V

    .line 127
    :cond_3
    return-void
.end method

.method private setTyresInfos(IIII)V
    .locals 7
    .param p1, "fLState"    # I
    .param p2, "fRState"    # I
    .param p3, "rLState"    # I
    .param p4, "rRState"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 131
    const/4 v2, 0x4

    new-array v1, v2, [I

    aput p1, v1, v4

    aput p2, v1, v3

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    .line 132
    .local v1, "states":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 152
    return-void

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v5, v2, v0

    aget v2, v1, v0

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 134
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    sget-object v5, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mWarnArrays:[Ljava/lang/String;

    aget v6, v1, v0

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    aget v2, v1, v0

    packed-switch v2, :pswitch_data_0

    .line 132
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 133
    goto :goto_1

    .line 138
    :pswitch_0
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto :goto_2

    .line 143
    :pswitch_1
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/high16 v5, -0x10000

    invoke-virtual {v2, v5}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto :goto_2

    .line 147
    :pswitch_2
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    const/16 v5, -0x100

    invoke-virtual {v2, v5}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    goto :goto_2

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public GetPressStr(I)Ljava/lang/String;
    .locals 8
    .param p1, "press"    # I

    .prologue
    .line 189
    const-string v0, ""

    .line 190
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0xa6

    if-ge p1, v1, :cond_0

    .line 192
    const-string v1, "%.1f bar"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-double v4, p1

    const-wide v6, 0x3f9c1bda5119ce07L    # 0.02745

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const-string v0, "-.- bar"

    goto :goto_0
.end method

.method public GetTempStr(I)Ljava/lang/String;
    .locals 5
    .param p1, "temp"    # I

    .prologue
    .line 203
    const-string v0, ""

    .line 204
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0xa6

    if-ge p1, v1, :cond_0

    .line 206
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

    .line 212
    :goto_0
    return-object v0

    .line 210
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
    .line 217
    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    invoke-virtual {p0, p2}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->GetPressStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v0, v0, p1

    invoke-virtual {p0, p3}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->GetTempStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->ResetData(Z)V

    .line 174
    return-void
.end method

.method public onChanged(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pos"    # I

    .prologue
    .line 185
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 165
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x119

    const/16 v8, 0x32

    const/16 v7, 0x23

    const/16 v6, 0x11

    .line 48
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v2}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->setContentView(I)V

    .line 51
    sget v2, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v2}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 52
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    sget v2, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 55
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 77
    return-void

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    iget-object v3, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x84

    add-int/lit16 v4, v4, 0x1af

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xba

    add-int/lit8 v5, v5, 0x74

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 62
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mIvTyres:[Lcom/ts/other/CustomImgView;

    aget-object v2, v2, v0

    sget v3, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_up:I

    sget v4, Lcom/ts/MainUI/R$drawable;->can_rf_tpms_dn:I

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 64
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit8 v4, v4, 0x5b

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit8 v5, v5, 0x31

    invoke-virtual {v3, v4, v5, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 65
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 66
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvPress:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 68
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit8 v4, v4, 0x5b

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit8 v5, v5, 0x5f

    invoke-virtual {v3, v4, v5, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 69
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 70
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvTemp:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 72
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    iget-object v3, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit16 v4, v4, 0x233

    add-int/lit8 v4, v4, 0x5b

    div-int/lit8 v5, v0, 0x2

    mul-int/lit16 v5, v5, 0xe6

    add-int/lit16 v5, v5, 0x90

    invoke-virtual {v3, v4, v5, v9, v8}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 73
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 74
    iget-object v2, p0, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->mTvWarn:[Lcom/ts/other/CustomTextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 94
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 96
    const-string v0, "CanJACRefineTpmsActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 84
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/jac/CanJACRefineTpmsActivity;->ResetData(Z)V

    .line 86
    const-string v0, "CanJACRefineTpmsActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method
