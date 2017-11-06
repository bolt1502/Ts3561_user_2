.class public Lcom/ts/can/df/er70/CanDFQCBatteryActivity;
.super Lcom/ts/can/df/er70/CanDFQCBaseActivity;
.source "CanDFQCBatteryActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private mTvA:Landroid/widget/TextView;

.field private mTvC:Landroid/widget/TextView;

.field private mTvE:Landroid/widget/TextView;

.field private mTvEnotice:Landroid/widget/TextView;

.field private mTvEvalule:Landroid/widget/TextView;

.field private mTvR:Landroid/widget/TextView;

.field private mTvV:Landroid/widget/TextView;

.field private r:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ts/can/df/er70/CanDFQCBaseActivity;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->value:Ljava/lang/String;

    .line 8
    return-void
.end method

.method private initValue(Z)V
    .locals 2
    .param p1, "isSet"    # Z

    .prologue
    .line 49
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_battery_v:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->v:Ljava/lang/String;

    .line 50
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_battery_a:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->a:Ljava/lang/String;

    .line 51
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_battery_c:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->c:Ljava/lang/String;

    .line 52
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_battery_r:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->r:Ljava/lang/String;

    .line 53
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_battery_e:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->e:Ljava/lang/String;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvA:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvR:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvE:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvEvalule:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method protected InitLayout()V
    .locals 5

    .prologue
    const/16 v4, 0xcb

    const/16 v2, 0x19

    const/16 v3, 0x79

    .line 29
    sget v0, Lcom/ts/MainUI/R$drawable;->can_dfqc_dianc_bg:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->SetBackground(I)V

    .line 31
    const/16 v0, 0xab

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvV:Landroid/widget/TextView;

    .line 32
    const/16 v0, 0xd2

    const/16 v1, 0x148

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvA:Landroid/widget/TextView;

    .line 33
    const/16 v0, 0xfc

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvC:Landroid/widget/TextView;

    .line 34
    const/16 v0, 0x125

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvR:Landroid/widget/TextView;

    .line 35
    const/16 v0, 0x14e

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvE:Landroid/widget/TextView;

    .line 37
    const/16 v0, 0x2a9

    const/16 v1, 0x1e3

    const/16 v2, 0x1a

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvEnotice:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvEnotice:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_dfqc_battery_e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    const/16 v0, 0x35f

    const/16 v1, 0x178

    const/16 v2, 0x38

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvEvalule:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvEvalule:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvEvalule:Landroid/widget/TextView;

    const/high16 v1, 0x41d80000    # 27.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->initValue(Z)V

    .line 46
    return-void
.end method

.method protected Query()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected ResetData(Z)V
    .locals 11
    .param p1, "check"    # Z

    .prologue
    const-wide v9, 0x3fb999999999999aL    # 0.1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->VenuciaGetVcuSta2()V

    .line 69
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->VenuciaGetVcuSta1()V

    .line 70
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->VenuciaGetVcuSta3()V

    .line 71
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->VenuciaGetVcuLife()V

    .line 73
    invoke-direct {p0, v7}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->initValue(Z)V

    .line 75
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta2:Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta2:Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;->Update:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta2:Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;->Update:I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.1f A"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta2:Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;->VCU_Battery_Current:I

    int-to-double v3, v3

    mul-double/2addr v3, v9

    const-wide v5, 0x407f400000000000L    # 500.0

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->a:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->v:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.1f V"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta2:Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$VCU_STA2;->VCU_Battery_Voltage:I

    int-to-double v3, v3

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->v:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvA:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta1:Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta1:Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;->Update:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta1:Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;->Update:I

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%d \u2103"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta1:Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$VCU_STA1;->VCU_SigTemp_Highest_NO:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->c:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuLife:Lcom/lgb/canmodule/CanDataInfo$VCU_life;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_life;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuLife:Lcom/lgb/canmodule/CanDataInfo$VCU_life;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_life;->Update:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuLife:Lcom/lgb/canmodule/CanDataInfo$VCU_life;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_life;->Update:I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%d K\u03a9"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuLife:Lcom/lgb/canmodule/CanDataInfo$VCU_life;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$VCU_life;->jyzz:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->r:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvR:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta3:Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta3:Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;->Update:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta3:Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

    iput v7, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;->Update:I

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%.1f"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mVcuSta3:Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$VCU_STA3;->VCU_SOC:I

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->value:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->e:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvE:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->mTvEvalule:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCBatteryActivity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_7
    return-void
.end method
