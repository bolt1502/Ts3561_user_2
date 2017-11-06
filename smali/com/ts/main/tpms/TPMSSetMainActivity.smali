.class public Lcom/ts/main/tpms/TPMSSetMainActivity;
.super Landroid/app/Activity;
.source "TPMSSetMainActivity.java"


# instance fields
.field private ItemDisp:[Landroid/widget/TextView;

.field private TaiwaDw:[Lcom/ts/other/ParamButton;

.field private TempDw:[Lcom/ts/other/ParamButton;

.field private TpmsAdd:[Lcom/ts/other/ParamButton;

.field private TpmsDec:[Lcom/ts/other/ParamButton;

.field TpmsSetManage:Lcom/ts/other/RelativeLayoutManager;

.field private TpmsShowinfo:[Landroid/widget/TextView;

.field private TpmssetOptions:[Ljava/lang/String;

.field mStTpms:Lcom/ts/MainUI/StTpms;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x3

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->ItemDisp:[Landroid/widget/TextView;

    .line 22
    new-array v0, v2, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    .line 24
    new-array v0, v2, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    .line 25
    new-array v0, v1, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsAdd:[Lcom/ts/other/ParamButton;

    .line 26
    new-array v0, v1, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsDec:[Lcom/ts/other/ParamButton;

    .line 27
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsShowinfo:[Landroid/widget/TextView;

    .line 28
    invoke-static {}, Lcom/ts/MainUI/StTpms;->GetInstance()Lcom/ts/MainUI/StTpms;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    .line 14
    return-void
.end method


# virtual methods
.method UpdateShowInfor()V
    .locals 10

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v0, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempDW:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsShowinfo:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    iget-object v6, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v6, v6, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v6, v6, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempHigh:I

    int-to-double v6, v6

    const-wide v8, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v0, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskDW:I

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsShowinfo:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v4, v4, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v4, v4, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskHigh:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsShowinfo:[Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v4, v4, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v4, v4, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskLow:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_1
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsShowinfo:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v4, v4, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v4, v4, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempHigh:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsShowinfo:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v4, v4, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v4, v4, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskHigh:I

    int-to-double v4, v4

    const-wide v6, 0x3fc290abb44e50c6L    # 0.14504

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsShowinfo:[Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v4, v4, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v4, v4, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskLow:I

    int-to-double v4, v4

    const-wide v6, 0x3fc290abb44e50c6L    # 0.14504

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method UpdateTaiyaDw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 232
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v0, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskDW:I

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 235
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 240
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    goto :goto_0
.end method

.method UpdateTempDw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 246
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v0, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempDW:I

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 249
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->SetSel(I)V

    .line 254
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->SetSel(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x41a00000    # 20.0f

    const/16 v3, 0xb8

    const/4 v8, -0x1

    const/16 v4, 0x3c

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/ts/MainUI/R$layout;->activity_tpmsset_main:I

    invoke-virtual {p0, v0}, Lcom/ts/main/tpms/TPMSSetMainActivity;->setContentView(I)V

    .line 34
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    sget v1, Lcom/ts/MainUI/R$id;->activity_tpmsset_mainid:I

    invoke-direct {v0, p0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsSetManage:Lcom/ts/other/RelativeLayoutManager;

    .line 36
    invoke-virtual {p0}, Lcom/ts/main/tpms/TPMSSetMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->tpms_general_disp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmssetOptions:[Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsSetManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2fe

    const/16 v2, 0x31

    sget v5, Lcom/ts/MainUI/R$drawable;->tpms_parameter_temp_box:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 40
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsSetManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x2fe

    const/16 v2, 0x87

    sget v5, Lcom/ts/MainUI/R$drawable;->tpms_parameter_temp_box:I

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddImageEx(IIIII)Lcom/ts/other/CustomImgView;

    .line 41
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x5

    if-lt v6, v0, :cond_0

    .line 57
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    const/4 v0, 0x2

    if-lt v7, v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v10

    sget v1, Lcom/ts/MainUI/R$string;->Laucher_out_temp_dw1:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$string;->Laucher_out_temp_dw2:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 117
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v10

    sget v1, Lcom/ts/MainUI/R$string;->tpms_general_bar:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget v1, Lcom/ts/MainUI/R$string;->tpms_general_psi:I

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setText(I)V

    .line 119
    invoke-virtual {p0}, Lcom/ts/main/tpms/TPMSSetMainActivity;->UpdateTempDw()V

    .line 120
    invoke-virtual {p0}, Lcom/ts/main/tpms/TPMSSetMainActivity;->UpdateTaiyaDw()V

    .line 122
    const/4 v6, 0x0

    :goto_2
    const/4 v0, 0x3

    if-lt v6, v0, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/ts/main/tpms/TPMSSetMainActivity;->UpdateShowInfor()V

    .line 205
    return-void

    .line 43
    .end local v7    # "j":I
    :cond_0
    const/4 v0, 0x2

    if-ge v6, v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->ItemDisp:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsSetManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x14

    mul-int/lit8 v5, v6, 0x5c

    add-int/lit8 v5, v5, 0x31

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v6

    .line 52
    :goto_3
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->ItemDisp:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmssetOptions:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->ItemDisp:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->ItemDisp:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->ItemDisp:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsSetManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x14

    mul-int/lit8 v5, v6, 0x5c

    add-int/lit8 v5, v5, 0x45

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_3

    .line 59
    .restart local v7    # "j":I
    :cond_2
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsSetManage:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v2, v7, 0x5b

    add-int/lit16 v2, v2, 0x2ff

    const/16 v3, 0x87

    const/16 v5, 0x5a

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v7

    .line 60
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    sget v1, Lcom/ts/MainUI/R$drawable;->tpms_parameter_temp_left_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->tpms_parameter_temp_left_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 61
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    invoke-virtual {v0, v9}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 62
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    invoke-virtual {v0, v8}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 63
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TaiwaDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    new-instance v1, Lcom/ts/main/tpms/TPMSSetMainActivity$1;

    invoke-direct {v1, p0}, Lcom/ts/main/tpms/TPMSSetMainActivity$1;-><init>(Lcom/ts/main/tpms/TPMSSetMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsSetManage:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v2, v7, 0x5b

    add-int/lit16 v2, v2, 0x2ff

    const/16 v3, 0x31

    const/16 v5, 0x5a

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v7

    .line 87
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    sget v1, Lcom/ts/MainUI/R$drawable;->tpms_parameter_temp_left_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->tpms_parameter_temp_left_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 88
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    invoke-virtual {v0, v9}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 89
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    invoke-virtual {v0, v8}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 90
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TempDw:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v7

    new-instance v1, Lcom/ts/main/tpms/TPMSSetMainActivity$2;

    invoke-direct {v1, p0}, Lcom/ts/main/tpms/TPMSSetMainActivity$2;-><init>(Lcom/ts/main/tpms/TPMSSetMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsDec:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsSetManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x1bf

    mul-int/lit8 v3, v6, 0x57

    add-int/lit16 v3, v3, 0x107

    const/16 v5, 0x5c

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v6

    .line 125
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsDec:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsDec:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->tpms_parameter_jian_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->tpms_parameter_jian_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 127
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsDec:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    new-instance v1, Lcom/ts/main/tpms/TPMSSetMainActivity$3;

    invoke-direct {v1, p0}, Lcom/ts/main/tpms/TPMSSetMainActivity$3;-><init>(Lcom/ts/main/tpms/TPMSSetMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsAdd:[Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsSetManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x35b

    mul-int/lit8 v3, v6, 0x57

    add-int/lit16 v3, v3, 0x107

    const/16 v5, 0x5c

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v1

    aput-object v1, v0, v6

    .line 160
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsAdd:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->tpms_parameter_jia_up:I

    sget v2, Lcom/ts/MainUI/R$drawable;->tpms_parameter_jia_dn:I

    invoke-virtual {v0, v1, v2}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 161
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsAdd:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsAdd:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, v6

    new-instance v1, Lcom/ts/main/tpms/TPMSSetMainActivity$4;

    invoke-direct {v1, p0}, Lcom/ts/main/tpms/TPMSSetMainActivity$4;-><init>(Lcom/ts/main/tpms/TPMSSetMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsShowinfo:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsSetManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v2, 0x28d

    mul-int/lit8 v3, v6, 0x57

    add-int/lit16 v3, v3, 0x111

    const/16 v5, 0x82

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/ts/other/RelativeLayoutManager;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v0, v6

    .line 194
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsShowinfo:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 195
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSSetMainActivity;->TpmsShowinfo:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method
