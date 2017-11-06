.class public Lcom/ts/can/df/er70/CanDFQCACActivity;
.super Lcom/ts/can/df/er70/CanDFQCBaseActivity;
.source "CanDFQCACActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private mTvA:Landroid/widget/TextView;

.field private mTvC:Landroid/widget/TextView;

.field private mTvMode:Landroid/widget/TextView;

.field private mTvP:Landroid/widget/TextView;

.field private mTvWind:Landroid/widget/TextView;

.field private mode:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private wind:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ts/can/df/er70/CanDFQCBaseActivity;-><init>()V

    return-void
.end method

.method private initValue()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_ac_a:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCACActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->a:Ljava/lang/String;

    .line 39
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_ac_p:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCACActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->p:Ljava/lang/String;

    .line 40
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_ac_mode:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCACActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mode:Ljava/lang/String;

    .line 41
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_ac_c:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCACActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->c:Ljava/lang/String;

    .line 42
    sget v0, Lcom/ts/MainUI/R$string;->can_dfqc_ac_wind:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCACActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->wind:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/ts/can/df/er70/CanDFQCACActivity;->setValue()V

    .line 45
    return-void
.end method

.method private setValue()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mTvA:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mTvP:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mTvMode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mTvC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mTvWind:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->wind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected InitLayout()V
    .locals 5

    .prologue
    const/16 v4, 0xcb

    const/16 v3, 0x79

    const/16 v2, 0x19

    .line 24
    sget v0, Lcom/ts/MainUI/R$drawable;->can_dfqc_ac_bg:I

    invoke-virtual {p0, v0}, Lcom/ts/can/df/er70/CanDFQCACActivity;->SetBackground(I)V

    .line 26
    const/16 v0, 0xad

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/ts/can/df/er70/CanDFQCACActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mTvA:Landroid/widget/TextView;

    .line 27
    const/16 v0, 0xd4

    const/16 v1, 0x148

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCACActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mTvP:Landroid/widget/TextView;

    .line 28
    const/16 v0, 0xfe

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/ts/can/df/er70/CanDFQCACActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mTvMode:Landroid/widget/TextView;

    .line 29
    const/16 v0, 0x127

    const/16 v1, 0x8b

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCACActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mTvC:Landroid/widget/TextView;

    .line 30
    const/16 v0, 0x150

    const/16 v1, 0x35

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ts/can/df/er70/CanDFQCACActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/df/er70/CanDFQCACActivity;->mTvWind:Landroid/widget/TextView;

    .line 32
    invoke-direct {p0}, Lcom/ts/can/df/er70/CanDFQCACActivity;->initValue()V

    .line 34
    return-void
.end method

.method protected Query()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 60
    return-void
.end method
