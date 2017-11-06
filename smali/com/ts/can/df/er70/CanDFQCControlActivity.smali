.class public Lcom/ts/can/df/er70/CanDFQCControlActivity;
.super Lcom/ts/can/df/er70/CanDFQCBaseActivity;
.source "CanDFQCControlActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private mTvA:Landroid/widget/TextView;

.field private mTvP:Landroid/widget/TextView;

.field private mTvV:Landroid/widget/TextView;

.field private mTvX:Landroid/widget/TextView;

.field private p:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private x:Ljava/lang/String;


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
    .line 35
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_control_v:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->v:Ljava/lang/String;

    .line 36
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_control_a:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->a:Ljava/lang/String;

    .line 37
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_control_x:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->x:Ljava/lang/String;

    .line 38
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_control_p:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->p:Ljava/lang/String;

    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mTvV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mTvA:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mTvX:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mTvP:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method protected InitLayout()V
    .locals 5

    .prologue
    const/16 v4, 0xcb

    const/16 v3, 0x79

    const/16 v2, 0x19

    .line 23
    sget v0, Lcom/ts/MainUI/R$drawable;->can_dfqc_diankong_bg:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->SetBackground(I)V

    .line 25
    const/16 v0, 0xbc

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mTvV:Landroid/widget/TextView;

    .line 26
    const/16 v0, 0xe3

    const/16 v1, 0x148

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mTvA:Landroid/widget/TextView;

    .line 27
    const/16 v0, 0x10d

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mTvX:Landroid/widget/TextView;

    .line 28
    const/16 v0, 0x136

    const/16 v1, 0x8b

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mTvP:Landroid/widget/TextView;

    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->initValue(Z)V

    .line 31
    return-void
.end method

.method protected Query()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const/4 v6, 0x1

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->VenuciaGetMotorSta3()V

    .line 54
    invoke-direct {p0, v5}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->initValue(Z)V

    .line 56
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;->Update:I

    invoke-static {v0}, Lcom/ts/can/df/er70/CanDFQCControlActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    iput v5, v0, Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;->Update:I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->v:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.1f V"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;->MOTORC_Motor_Vol:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->v:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.1f A"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mMotorSta3:Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$MOTORC_STA3;->MOTORC_Motor_Crt:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    const v4, 0x44bb8000    # 1500.0f

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

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->a:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mTvV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->mTvA:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCControlActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_1
    return-void
.end method
