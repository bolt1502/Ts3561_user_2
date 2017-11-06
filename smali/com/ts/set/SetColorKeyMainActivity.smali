.class public Lcom/ts/set/SetColorKeyMainActivity;
.super Landroid/app/Activity;
.source "SetColorKeyMainActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SetColorKeyMainActivity"


# instance fields
.field private ColorDnIcon:[I

.field ColorKeyBtn:[Lcom/ts/other/ParamButton;

.field private ColorUpIcon:[I

.field ColorkeyManage:Lcom/ts/other/RelativeLayoutManager;

.field SetColor:[I

.field mSeekBar:[Landroid/widget/SeekBar;

.field mShowInfo:[Landroid/widget/TextView;

.field mShowInfo2:[Landroid/widget/TextView;

.field nColor:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/16 v5, 0x9

    const/4 v4, 0x3

    const/16 v3, 0xff

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-array v0, v5, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorKeyBtn:[Lcom/ts/other/ParamButton;

    .line 23
    new-array v0, v4, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/ts/set/SetColorKeyMainActivity;->mSeekBar:[Landroid/widget/SeekBar;

    .line 24
    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo:[Landroid/widget/TextView;

    .line 25
    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo2:[Landroid/widget/TextView;

    .line 27
    const/16 v0, 0x1b

    new-array v0, v0, [I

    .line 28
    aput v3, v0, v6

    .line 29
    aput v3, v0, v7

    const/16 v1, 0x8

    .line 30
    aput v3, v0, v1

    .line 31
    aput v3, v0, v5

    const/16 v1, 0xa

    const/16 v2, 0x99

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xcc

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 32
    const/16 v2, 0xcc

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x99

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 33
    const/16 v2, 0x6b

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xcc

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    .line 34
    aput v3, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x15

    .line 35
    aput v3, v0, v1

    const/16 v1, 0x16

    aput v3, v0, v1

    const/16 v1, 0x17

    aput v3, v0, v1

    const/16 v1, 0x18

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x66

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/set/SetColorKeyMainActivity;->SetColor:[I

    .line 39
    new-array v0, v5, [I

    .line 40
    sget v1, Lcom/ts/MainUI/R$drawable;->set_qcd_01_up:I

    aput v1, v0, v6

    const/4 v1, 0x1

    .line 41
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_02_up:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 42
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_03_up:I

    aput v2, v0, v1

    .line 43
    sget v1, Lcom/ts/MainUI/R$drawable;->set_qcd_04_up:I

    aput v1, v0, v4

    .line 44
    sget v1, Lcom/ts/MainUI/R$drawable;->set_qcd_05_up:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 45
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_06_up:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 46
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_07_up:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 47
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_08_up:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 48
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_09_up:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorUpIcon:[I

    .line 51
    new-array v0, v5, [I

    .line 52
    sget v1, Lcom/ts/MainUI/R$drawable;->set_qcd_01_dn:I

    aput v1, v0, v6

    const/4 v1, 0x1

    .line 53
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_02_dn:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 54
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_03_dn:I

    aput v2, v0, v1

    .line 55
    sget v1, Lcom/ts/MainUI/R$drawable;->set_qcd_04_dn:I

    aput v1, v0, v4

    .line 56
    sget v1, Lcom/ts/MainUI/R$drawable;->set_qcd_05_dn:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 57
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_06_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 58
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_07_dn:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 59
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_08_dn:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 60
    sget v2, Lcom/ts/MainUI/R$drawable;->set_qcd_09_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorDnIcon:[I

    .line 147
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    .line 19
    return-void
.end method


# virtual methods
.method GetColor(I)I
    .locals 1
    .param p1, "nColor"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "Color":I
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    return v0

    .line 171
    :pswitch_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetIllR()I

    move-result v0

    .line 172
    goto :goto_0

    .line 174
    :pswitch_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetIllG()I

    move-result v0

    .line 175
    goto :goto_0

    .line 177
    :pswitch_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetIllB()I

    move-result v0

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method SetColor(II)V
    .locals 0
    .param p1, "nMode"    # I
    .param p2, "nColor"    # I

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 154
    :pswitch_0
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetIllR(I)I

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetIllG(I)I

    goto :goto_0

    .line 160
    :pswitch_2
    invoke-static {p2}, Lcom/yyw/ts70xhw/FtSet;->SetIllB(I)I

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method ShowSelectBtn(I)V
    .locals 3
    .param p1, "nNum"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorKeyBtn:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 70
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorKeyBtn:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method UpdateSeekBar()V
    .locals 4

    .prologue
    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 194
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    aget v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/ts/set/SetColorKeyMainActivity;->GetColor(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 189
    iget-object v1, p0, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    invoke-virtual {p0, v0}, Lcom/ts/set/SetColorKeyMainActivity;->GetColor(I)I

    move-result v2

    aput v2, v1, v0

    .line 190
    iget-object v1, p0, Lcom/ts/set/SetColorKeyMainActivity;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 191
    iget-object v1, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo2:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public UserAll()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, -0x1

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v9, 0x3

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget v3, Lcom/ts/MainUI/R$layout;->activity_set_color_key_main:I

    invoke-virtual {p0, v3}, Lcom/ts/set/SetColorKeyMainActivity;->setContentView(I)V

    .line 76
    new-instance v3, Lcom/ts/other/RelativeLayoutManager;

    sget v4, Lcom/ts/MainUI/R$id;->set_color_mainid:I

    invoke-direct {v3, p0, v4}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorkeyManage:Lcom/ts/other/RelativeLayoutManager;

    .line 78
    iget-object v4, p0, Lcom/ts/set/SetColorKeyMainActivity;->mSeekBar:[Landroid/widget/SeekBar;

    sget v3, Lcom/ts/MainUI/R$id;->seekBarR:I

    invoke-virtual {p0, v3}, Lcom/ts/set/SetColorKeyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    aput-object v3, v4, v10

    .line 79
    iget-object v4, p0, Lcom/ts/set/SetColorKeyMainActivity;->mSeekBar:[Landroid/widget/SeekBar;

    sget v3, Lcom/ts/MainUI/R$id;->seekBarG:I

    invoke-virtual {p0, v3}, Lcom/ts/set/SetColorKeyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    aput-object v3, v4, v11

    .line 80
    iget-object v4, p0, Lcom/ts/set/SetColorKeyMainActivity;->mSeekBar:[Landroid/widget/SeekBar;

    const/4 v5, 0x2

    sget v3, Lcom/ts/MainUI/R$id;->seekBarB:I

    invoke-virtual {p0, v3}, Lcom/ts/set/SetColorKeyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    aput-object v3, v4, v5

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v9, :cond_0

    .line 96
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo:[Landroid/widget/TextView;

    aget-object v3, v3, v10

    const-string v4, "R:"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo:[Landroid/widget/TextView;

    aget-object v3, v3, v11

    const-string v4, "G:"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo:[Landroid/widget/TextView;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const-string v4, "B:"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v9, :cond_1

    .line 146
    return-void

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo:[Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorkeyManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v5, 0x78

    mul-int/lit8 v6, v0, 0x47

    add-int/lit16 v6, v6, 0xaa

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddText(II)Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v3, v0

    .line 86
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->mSeekBar:[Landroid/widget/SeekBar;

    aget-object v3, v3, v0

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 92
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo2:[Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorkeyManage:Lcom/ts/other/RelativeLayoutManager;

    const/16 v5, 0x1d6

    mul-int/lit8 v6, v0, 0x47

    add-int/lit16 v6, v6, 0xaa

    invoke-virtual {v4, v5, v6}, Lcom/ts/other/RelativeLayoutManager;->AddText(II)Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v3, v0

    .line 93
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo2:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo2:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-lt v1, v9, :cond_2

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_2
    mul-int/lit8 v3, v0, 0x3

    add-int v2, v3, v1

    .line 113
    .local v2, "k":I
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorKeyBtn:[Lcom/ts/other/ParamButton;

    iget-object v4, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorkeyManage:Lcom/ts/other/RelativeLayoutManager;

    mul-int/lit8 v5, v1, 0x7d

    add-int/lit16 v5, v5, 0x230

    mul-int/lit8 v6, v0, 0x48

    add-int/lit16 v6, v6, 0x9c

    const/16 v7, 0x73

    const/16 v8, 0x3e

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v4

    aput-object v4, v3, v2

    .line 114
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorKeyBtn:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorUpIcon:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorDnIcon:[I

    aget v5, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 115
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorKeyBtn:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->ColorKeyBtn:[Lcom/ts/other/ParamButton;

    aget-object v3, v3, v2

    new-instance v4, Lcom/ts/set/SetColorKeyMainActivity$1;

    invoke-direct {v4, p0}, Lcom/ts/set/SetColorKeyMainActivity$1;-><init>(Lcom/ts/set/SetColorKeyMainActivity;)V

    invoke-virtual {v3, v4}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 213
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 226
    .local v0, "nTag":I
    const-string v1, "SetColorKeyMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nTag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "progress=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    aget v1, v1, v0

    if-eq p2, v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    aput p2, v1, v0

    .line 230
    invoke-virtual {p0, v0, p2}, Lcom/ts/set/SetColorKeyMainActivity;->SetColor(II)V

    .line 231
    iget-object v1, p0, Lcom/ts/set/SetColorKeyMainActivity;->mShowInfo2:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/ts/set/SetColorKeyMainActivity;->UpdateSeekBar()V

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/ts/set/SetColorKeyMainActivity;->nColor:[I

    const v2, 0xffff

    aput v2, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 242
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    .local v0, "nTag":I
    const-string v1, "SetColorKeyMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStopTrackingTouch nTag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/ts/set/SetColorKeyMainActivity;->SetColor(II)V

    .line 251
    return-void
.end method
