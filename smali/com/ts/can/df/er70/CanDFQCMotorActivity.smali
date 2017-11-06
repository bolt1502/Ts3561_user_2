.class public Lcom/ts/can/df/er70/CanDFQCMotorActivity;
.super Lcom/ts/can/df/er70/CanDFQCBaseActivity;
.source "CanDFQCMotorActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private mTvA:Landroid/widget/TextView;

.field private mTvC:Landroid/widget/TextView;

.field private mTvOut:Landroid/widget/TextView;

.field private mTvP:Landroid/widget/TextView;

.field private mTvR:Landroid/widget/TextView;

.field private mTvV:Landroid/widget/TextView;

.field private out:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ts/can/df/er70/CanDFQCBaseActivity;-><init>()V

    return-void
.end method

.method private initValue(Z)V
    .locals 2
    .param p1, "isSet"    # Z

    .prologue
    .line 39
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_motor_r:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->r:Ljava/lang/String;

    .line 40
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_motor_c:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->c:Ljava/lang/String;

    .line 41
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_motor_a:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->a:Ljava/lang/String;

    .line 42
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_motor_v:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->v:Ljava/lang/String;

    .line 43
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_motor_p:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->p:Ljava/lang/String;

    .line 44
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_motor_out:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->out:Ljava/lang/String;

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvR:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvA:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvP:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvOut:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->out:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method protected InitLayout()V
    .locals 5

    .prologue
    const/16 v1, 0x148

    const/16 v4, 0xcb

    const/16 v3, 0x79

    const/16 v2, 0x19

    .line 26
    sget v0, Lcom/ts/MainUI/R$drawable;->can_dfqc_dianji_bg:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->SetBackground(I)V

    .line 28
    const/16 v0, 0xa8

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvR:Landroid/widget/TextView;

    .line 29
    const/16 v0, 0xcf

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvC:Landroid/widget/TextView;

    .line 30
    const/16 v0, 0xf9

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvA:Landroid/widget/TextView;

    .line 31
    const/16 v0, 0x122

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvV:Landroid/widget/TextView;

    .line 32
    const/16 v0, 0x14b

    const/16 v1, 0x8b

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvP:Landroid/widget/TextView;

    .line 33
    const/16 v0, 0x176

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvOut:Landroid/widget/TextView;

    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->initValue(Z)V

    .line 36
    return-void
.end method

.method protected Query()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method protected ResetData(Z)V
    .locals 8
    .param p1, "check"    # Z

    .prologue
    const v7, 0x3dcccccd    # 0.1f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->VenuciaGetMotorSpd()V

    .line 60
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->VenuciaGetMotorSta3()V

    .line 61
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->VenuciaGetChargerSta1()V

    .line 62
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->VenuciaGetVcuVp()V

    .line 64
    invoke-direct {p0, v5}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->initValue(Z)V

    .line 66
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mMotorSpd:Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mMotorSpd:Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;->Update:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mMotorSpd:Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;->Update:I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%d r/min"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mMotorSpd:Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$MOTORC_PowerSpd;->MOTORC_PwerSpd_A:I

    add-int/lit16 v3, v3, -0x7d00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->r:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvR:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;->Update:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;->Update:I

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%d \u2103"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;->MOTORC_Motor_Temp:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->c:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mChargerSta1:Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mChargerSta1:Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;->Update:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mChargerSta1:Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;->Update:I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.1f A"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mChargerSta1:Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;->CHARGER_Output_Crt:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    const/high16 v4, 0x44160000    # 600.0f

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->a:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->v:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.1f V"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mChargerSta1:Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;->CHARGER_Output_Vol:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->v:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvA:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mVcuVp:Lcom/lgb/canmodule/CanDataInfo$VCU_VP;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_VP;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mVcuVp:Lcom/lgb/canmodule/CanDataInfo$VCU_VP;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_VP;->Update:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mVcuVp:Lcom/lgb/canmodule/CanDataInfo$VCU_VP;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$VCU_VP;->Update:I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->out:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%d KW"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mVcuVp:Lcom/lgb/canmodule/CanDataInfo$VCU_VP;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$VCU_VP;->VCU_Motor_LimtPower:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->out:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->mTvOut:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCMotorActivity;->out:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_7
    return-void
.end method
