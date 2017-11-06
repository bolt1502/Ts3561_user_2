.class public Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;
.super Lcom/ts/can/df/er70/CanDFQCBaseActivity;
.source "CanDFQCCarInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ITEM_AC:I = 0x1

.field private static final ITEM_BATTERY:I = 0x0

.field private static final ITEM_CONTROL:I = 0x4

.field private static final ITEM_ERROR:I = 0x3

.field private static final ITEM_MOTOR:I = 0x2

.field private static final ITEM_VERSION:I = 0x5


# instance fields
.field private mBatteryArray:[Lcom/ts/other/ParamButton;

.field private mBtnAC:Lcom/ts/other/ParamButton;

.field private mBtnBattery:Lcom/ts/other/ParamButton;

.field private mBtnControl:Lcom/ts/other/ParamButton;

.field private mBtnError:Lcom/ts/other/ParamButton;

.field private mBtnMotor:Lcom/ts/other/ParamButton;

.field private mBtnVersion:Lcom/ts/other/ParamButton;

.field private mListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ts/can/df/er70/CanDFQCBaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    .line 137
    new-instance v0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity$1;-><init>(Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;)V

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mListener:Landroid/view/View$OnTouchListener;

    .line 11
    return-void
.end method

.method static synthetic access$0(Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;Z)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->setBatterySelected(Z)V

    return-void
.end method

.method private setBatterySelected(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 162
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setBatteryVisible(I)V
    .locals 3
    .param p1, "startPosition"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-le p1, v1, :cond_1

    .line 178
    :cond_0
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 170
    if-ge v0, p1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    .line 172
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    .line 169
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    .line 175
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected InitLayout()V
    .locals 10

    .prologue
    const/16 v9, 0x344

    const/16 v4, 0x322

    const/16 v8, 0xa2

    const/4 v7, 0x0

    .line 33
    sget v1, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_bg:I

    invoke-virtual {p0, v1}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->SetBackground(I)V

    .line 35
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x8d

    const/16 v3, 0x33

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnBattery:Lcom/ts/other/ParamButton;

    .line 36
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnBattery:Lcom/ts/other/ParamButton;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnBattery:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_dc02_up:I

    .line 38
    sget v3, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_dc02_dn:I

    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 39
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnBattery:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnBattery:Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1b

    invoke-virtual {v1, v4, v2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    .line 43
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_ac_up:I

    .line 45
    sget v3, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_ac_dn:I

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 46
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnAC:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x5b

    const/16 v3, 0xdf

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnMotor:Lcom/ts/other/ParamButton;

    .line 49
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnMotor:Lcom/ts/other/ParamButton;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnMotor:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_dianji_up:I

    .line 51
    sget v3, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_dianji_dn:I

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 52
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnMotor:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0xdb

    invoke-virtual {v1, v4, v2}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnError:Lcom/ts/other/ParamButton;

    .line 55
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnError:Lcom/ts/other/ParamButton;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnError:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_guzhang_up:I

    .line 57
    sget v3, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_guzhang_dn:I

    .line 56
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 58
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnError:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x84

    const/16 v3, 0x193

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnControl:Lcom/ts/other/ParamButton;

    .line 61
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnControl:Lcom/ts/other/ParamButton;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnControl:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_diankong_up:I

    .line 63
    sget v3, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_diankong_dn:I

    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 64
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnControl:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x2cf

    const/16 v3, 0x196

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnVersion:Lcom/ts/other/ParamButton;

    .line 68
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnVersion:Lcom/ts/other/ParamButton;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnVersion:Lcom/ts/other/ParamButton;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_banben_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_banben_dn:I

    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 70
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBtnVersion:Lcom/ts/other/ParamButton;

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 79
    const/16 v1, 0x73

    sget v2, Lcom/ts/MainUI/R$string;->can_dfqc_battery:I

    invoke-virtual {p0, v8, v1, v2}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->AddText(III)Landroid/widget/TextView;

    .line 80
    const/16 v1, 0x81

    const/16 v2, 0x136

    sget v3, Lcom/ts/MainUI/R$string;->can_dfqc_motor:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->AddText(III)Landroid/widget/TextView;

    .line 81
    const/16 v1, 0x1ea

    sget v2, Lcom/ts/MainUI/R$string;->can_dfqc_control:I

    invoke-virtual {p0, v8, v1, v2}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->AddText(III)Landroid/widget/TextView;

    .line 82
    const/16 v1, 0x72

    sget v2, Lcom/ts/MainUI/R$string;->can_dfqc_ac:I

    invoke-virtual {p0, v9, v1, v2}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->AddText(III)Landroid/widget/TextView;

    .line 83
    const/16 v1, 0x132

    sget v2, Lcom/ts/MainUI/R$string;->can_dfqc_error:I

    invoke-virtual {p0, v9, v1, v2}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->AddText(III)Landroid/widget/TextView;

    .line 84
    const/16 v1, 0x2f0

    const/16 v2, 0x1ec

    sget v3, Lcom/ts/MainUI/R$string;->can_dfqc_version:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->AddText(III)Landroid/widget/TextView;

    .line 86
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v3, v0, 0xb

    add-int/lit16 v3, v3, 0x9f

    const/16 v4, 0x3e

    const/16 v5, 0x9

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 74
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Lcom/ts/other/ParamButton;->setClickable(Z)V

    .line 75
    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_dc01_up:I

    .line 76
    sget v3, Lcom/ts/MainUI/R$drawable;->can_dfqc_main_dc01_dn:I

    .line 75
    invoke-virtual {v1, v2, v3}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected Query()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected ResetData(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->VenuciaGetVcuSta3()V

    .line 120
    iget-object v2, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mVcuSta3:Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;->UpdateOnce:I

    invoke-static {v2}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mVcuSta3:Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;->Update:I

    invoke-static {v2}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mVcuSta3:Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

    const/4 v3, 0x0

    iput v3, v2, Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;->Update:I

    .line 124
    iget-object v2, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mVcuSta3:Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;->VCU_SOC:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float v1, v2, v3

    .line 125
    .local v1, "e":F
    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->mBatteryArray:[Lcom/ts/other/ParamButton;

    array-length v3, v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 127
    .local v0, "dE":F
    div-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->setBatteryVisible(I)V

    .line 130
    .end local v0    # "dE":F
    .end local v1    # "e":F
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 94
    :pswitch_0
    const-class v1, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 97
    :pswitch_1
    const-class v1, Lcom/ts/can/df/er70/CanDFQCACActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 100
    :pswitch_2
    const-class v1, Lcom/ts/can/df/er70/CanDFQCMotorActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 103
    :pswitch_3
    const-class v1, Lcom/ts/can/df/er70/CanDFQCErrorActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 106
    :pswitch_4
    const-class v1, Lcom/ts/can/df/er70/CanDFQCControlActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 109
    :pswitch_5
    const-class v1, Lcom/ts/can/df/er70/CanDFQCVersionActivity;

    invoke-virtual {p0, v1}, Lcom/ts/can/df/er70/CanDFQCCarInfoActivity;->enterSubWin(Ljava/lang/Class;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
