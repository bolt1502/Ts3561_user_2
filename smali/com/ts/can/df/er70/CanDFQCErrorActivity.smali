.class public Lcom/ts/can/df/er70/CanDFQCErrorActivity;
.super Lcom/ts/can/df/er70/CanDFQCBaseActivity;
.source "CanDFQCErrorActivity.java"


# instance fields
.field private mTvBattery:Landroid/widget/TextView;

.field private mTvControl:Landroid/widget/TextView;

.field private mTvMotor:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ts/can/df/er70/CanDFQCBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected InitLayout()V
    .locals 4

    .prologue
    const/16 v1, 0xcb

    const/16 v3, 0x6c

    const/16 v2, 0x19

    .line 16
    sget v0, Lcom/ts/MainUI/R$drawable;->can_dfqc_guzhang_bg:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCErrorActivity;->SetBackground(I)V

    .line 18
    const/16 v0, 0xbc

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCErrorActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCErrorActivity;->mTvBattery:Landroid/widget/TextView;

    .line 19
    const/16 v0, 0xfb

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCErrorActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCErrorActivity;->mTvMotor:Landroid/widget/TextView;

    .line 20
    const/16 v0, 0x139

    const/16 v1, 0x8b

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCErrorActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCErrorActivity;->mTvControl:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCErrorActivity;->mTvBattery:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_dfqc_battery:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 23
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCErrorActivity;->mTvMotor:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_dfqc_motor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 24
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCErrorActivity;->mTvControl:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_dfqc_control:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 25
    return-void
.end method

.method protected Query()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 31
    return-void
.end method
