.class public Lcom/ts/can/CanToyotaTripHistoryActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanToyotaTripHistoryActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ID_CLEAR:I = 0x501

.field private static final ID_PERMIN:I = 0x500

.field private static final ID_UPDATE:I = 0x502

.field public static final TAG:Ljava/lang/String; = "CanToyotaTripHistoryActivity"


# instance fields
.field private mBtnClear:Lcom/ts/other/ParamButton;

.field private mBtnPerMin:Lcom/ts/other/ParamButton;

.field private mBtnUpdate:Lcom/ts/other/ParamButton;

.field private mDW:Landroid/widget/TextView;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mProgText:[Landroid/widget/TextView;

.field private mTrip:[Lcom/ts/canview/CanVerticalBar;

.field private mTripData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;

    .line 22
    return-void
.end method

.method private GetDWStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "dw"    # I

    .prologue
    .line 179
    const-string v0, ""

    .line 180
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    return-object v0

    .line 183
    :pswitch_0
    const-string v0, "MPG"

    .line 184
    goto :goto_0

    .line 187
    :pswitch_1
    const-string v0, "KM/L"

    .line 188
    goto :goto_0

    .line 191
    :pswitch_2
    const-string v0, "L/100KM"

    .line 192
    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    .line 142
    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->ToyotaGetTripHistory(Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;)V

    .line 143
    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;->UpdateOnce:I

    invoke-static {v3}, Lcom/ts/can/CanToyotaTripHistoryActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;->Update:I

    invoke-static {v3}, Lcom/ts/can/CanToyotaTripHistoryActivity;->i2b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;

    const/4 v4, 0x0

    iput v4, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;->Update:I

    .line 148
    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mDW:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;->DW:I

    invoke-direct {p0, v4}, Lcom/ts/can/CanToyotaTripHistoryActivity;->GetDWStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const/16 v0, 0xa

    .line 151
    .local v0, "base":I
    const/4 v2, 0x0

    .line 152
    .local v2, "max":I
    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;->DW:I

    if-nez v3, :cond_2

    .line 154
    const/16 v2, 0x258

    .line 155
    const/16 v0, 0x14

    .line 162
    :goto_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mProgText:[Landroid/widget/TextView;

    array-length v3, v3

    if-lt v1, v3, :cond_3

    .line 167
    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x6

    if-lt v1, v3, :cond_4

    .line 174
    .end local v0    # "base":I
    .end local v1    # "i":I
    .end local v2    # "max":I
    :cond_1
    return-void

    .line 159
    .restart local v0    # "base":I
    .restart local v2    # "max":I
    :cond_2
    const/16 v2, 0x12c

    goto :goto_0

    .line 164
    .restart local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mProgText:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int v5, v0, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    :cond_4
    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTrip:[Lcom/ts/canview/CanVerticalBar;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/ts/canview/CanVerticalBar;->setMinMax(FF)V

    .line 170
    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTrip:[Lcom/ts/canview/CanVerticalBar;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTripData:Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;

    iget-object v4, v4, Lcom/lgb/canmodule/CanDataInfo$ToyotaConsumpTrip;->Trip:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/ts/canview/CanVerticalBar;->setCurPos(I)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private SetProgText(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 134
    const/4 v0, 0x0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 135
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanToyotaTripHistoryActivity;->ResetData(Z)V

    .line 235
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 208
    .local v0, "Id":I
    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 212
    :pswitch_0
    const-class v1, Lcom/ts/can/CanToyotaTripPerMinActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaTripHistoryActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 216
    :pswitch_1
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaTripHistoryActivity;->CarSet(II)V

    goto :goto_0

    .line 220
    :pswitch_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/ts/can/CanToyotaTripHistoryActivity;->CarSet(II)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x18b

    const/16 v9, 0x64

    const/16 v6, 0x47

    const/16 v8, 0x1c7

    const/16 v7, 0x1e

    .line 48
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v2, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v2}, Lcom/ts/can/CanToyotaTripHistoryActivity;->setContentView(I)V

    .line 52
    new-instance v2, Lcom/ts/other/RelativeLayoutManager;

    sget v3, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-direct {v2, p0, v3}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 54
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2d

    const/16 v4, 0x43

    sget v5, Lcom/ts/MainUI/R$drawable;->fuel_consumption_line02:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/ts/other/RelativeLayoutManager;->AddImage(III)Lcom/ts/other/CustomImgView;

    .line 56
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/ts/canview/CanVerticalBar;

    iput-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTrip:[Lcom/ts/canview/CanVerticalBar;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTrip:[Lcom/ts/canview/CanVerticalBar;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2f8

    invoke-virtual {v2, v3, v10, v9, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    .line 75
    .local v1, "tv":Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/ts/can/CanToyotaTripHistoryActivity;->SetProgText(Landroid/widget/TextView;)V

    .line 76
    sget v2, Lcom/ts/MainUI/R$string;->can_begin:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x390

    invoke-virtual {v2, v3, v10, v9, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    .line 79
    invoke-direct {p0, v1}, Lcom/ts/can/CanToyotaTripHistoryActivity;->SetProgText(Landroid/widget/TextView;)V

    .line 80
    sget v2, Lcom/ts/MainUI/R$string;->can_current:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mProgText:[Landroid/widget/TextView;

    .line 83
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mProgText:[Landroid/widget/TextView;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x334

    const/16 v4, 0x14

    const/16 v5, 0x85

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mDW:Landroid/widget/TextView;

    .line 91
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mDW:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/ts/can/CanToyotaTripHistoryActivity;->SetProgText(Landroid/widget/TextView;)V

    .line 92
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mDW:Landroid/widget/TextView;

    const-string v3, "MPG"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnPerMin:Lcom/ts/other/ParamButton;

    .line 96
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnPerMin:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$string;->can_yh_per_min:I

    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanToyotaTripHistoryActivity;->SetCommBtn(Lcom/ts/other/ParamButton;I)V

    .line 97
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnPerMin:Lcom/ts/other/ParamButton;

    const/16 v3, 0x500

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 98
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnPerMin:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x158

    invoke-virtual {v2, v3, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnClear:Lcom/ts/other/ParamButton;

    .line 101
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnClear:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$string;->can_clear:I

    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanToyotaTripHistoryActivity;->SetCommBtn(Lcom/ts/other/ParamButton;I)V

    .line 102
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnClear:Lcom/ts/other/ParamButton;

    const/16 v3, 0x501

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnClear:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v3, 0x284

    invoke-virtual {v2, v3, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    .line 106
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    sget v3, Lcom/ts/MainUI/R$string;->can_update:I

    invoke-virtual {p0, v2, v3}, Lcom/ts/can/CanToyotaTripHistoryActivity;->SetCommBtn(Lcom/ts/other/ParamButton;I)V

    .line 107
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    const/16 v3, 0x502

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mBtnUpdate:Lcom/ts/other/ParamButton;

    invoke-virtual {v2, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void

    .line 59
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTrip:[Lcom/ts/canview/CanVerticalBar;

    new-instance v3, Lcom/ts/canview/CanVerticalBar;

    sget v4, Lcom/ts/MainUI/R$drawable;->fuel_consumption_pillars03:I

    invoke-direct {v3, p0, v4}, Lcom/ts/canview/CanVerticalBar;-><init>(Landroid/content/Context;I)V

    aput-object v3, v2, v0

    .line 60
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTrip:[Lcom/ts/canview/CanVerticalBar;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3, v4}, Lcom/ts/canview/CanVerticalBar;->setMinMax(FF)V

    .line 63
    if-nez v0, :cond_1

    .line 65
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTrip:[Lcom/ts/canview/CanVerticalBar;

    aget-object v3, v3, v0

    mul-int/lit16 v4, v0, 0x98

    rsub-int v4, v4, 0x333

    invoke-virtual {v2, v3, v4, v6}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 57
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mTrip:[Lcom/ts/canview/CanVerticalBar;

    aget-object v3, v3, v0

    rsub-int/lit8 v4, v0, 0x6

    mul-int/lit16 v4, v4, 0x98

    rsub-int v4, v4, 0x333

    invoke-virtual {v2, v3, v4, v6}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    goto :goto_2

    .line 85
    .restart local v1    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mProgText:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v4, 0x3c6

    mul-int/lit8 v5, v0, 0x68

    rsub-int v5, v5, 0x16c

    const/16 v6, 0x3a

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 86
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mProgText:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/ts/can/CanToyotaTripHistoryActivity;->SetProgText(Landroid/widget/TextView;)V

    .line 87
    iget-object v2, p0, Lcom/ts/can/CanToyotaTripHistoryActivity;->mProgText:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v0, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 127
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 128
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaSetCurPage(I)V

    .line 129
    const-string v0, "CanToyotaTripHistoryActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 116
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ts/can/CanToyotaTripHistoryActivity;->ResetData(Z)V

    .line 118
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->ToyotaSetCurPage(I)V

    .line 119
    const-string v0, "CanToyotaTripHistoryActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method
