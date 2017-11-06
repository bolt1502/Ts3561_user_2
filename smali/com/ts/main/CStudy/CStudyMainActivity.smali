.class public Lcom/ts/main/CStudy/CStudyMainActivity;
.super Landroid/app/Activity;
.source "CStudyMainActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field static Step:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MainCScreen"

.field static nTickNum:I


# instance fields
.field BtnCstudy:[Lcom/ts/other/ParamButton;

.field MyRelativeLayout:Landroid/widget/RelativeLayout;

.field ShowTouchSize:Landroid/widget/TextView;

.field TextShow:[Landroid/widget/TextView;

.field TouSizeSeek:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 143
    sput v0, Lcom/ts/main/CStudy/CStudyMainActivity;->nTickNum:I

    .line 144
    sput v0, Lcom/ts/main/CStudy/CStudyMainActivity;->Step:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x13

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    new-array v0, v1, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    .line 25
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->TextShow:[Landroid/widget/TextView;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->MyRelativeLayout:Landroid/widget/RelativeLayout;

    .line 21
    return-void
.end method


# virtual methods
.method protected TvCreateRelative(IIII)Landroid/widget/TextView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 42
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v1, "tv":Landroid/widget/TextView;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/CStudy/CStudyMainActivity;->setViewPos(Landroid/view/View;IIII)V

    .line 44
    return-object v1
.end method

.method public UserAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 190
    return-void

    .line 153
    :cond_0
    invoke-static {}, Lcom/ts/main/common/MainCScreen;->GetInstance()Lcom/ts/main/common/MainCScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ts/main/common/MainCScreen;->IsStudy(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 155
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 156
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->TextShow:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-static {}, Lcom/ts/main/common/MainCScreen;->GetInstance()Lcom/ts/main/common/MainCScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ts/main/common/MainCScreen;->GetShowString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->TextShow:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {}, Lcom/ts/main/common/MainCScreen;->GetInstance()Lcom/ts/main/common/MainCScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/main/common/MainCScreen;->GetStudyID()I

    move-result v1

    iget-object v2, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 165
    sget v1, Lcom/ts/main/CStudy/CStudyMainActivity;->nTickNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ts/main/CStudy/CStudyMainActivity;->nTickNum:I

    .line 166
    sget v1, Lcom/ts/main/CStudy/CStudyMainActivity;->nTickNum:I

    rem-int/lit8 v1, v1, 0xf

    if-nez v1, :cond_1

    .line 168
    sget v1, Lcom/ts/main/CStudy/CStudyMainActivity;->Step:I

    if-nez v1, :cond_3

    .line 170
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 171
    sput v3, Lcom/ts/main/CStudy/CStudyMainActivity;->Step:I

    goto :goto_1

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 176
    sput v4, Lcom/ts/main/CStudy/CStudyMainActivity;->Step:I

    goto :goto_1

    .line 182
    :cond_4
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x320

    const/16 v8, 0x12

    const/4 v7, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x4c

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v1, Lcom/ts/MainUI/R$layout;->activity_cstudy_main:I

    invoke-virtual {p0, v1}, Lcom/ts/main/CStudy/CStudyMainActivity;->setContentView(I)V

    .line 52
    sget v1, Lcom/ts/MainUI/R$id;->activity_cstudy_mainid:I

    invoke-virtual {p0, v1}, Lcom/ts/main/CStudy/CStudyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->MyRelativeLayout:Landroid/widget/RelativeLayout;

    .line 55
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->MyRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v1, v7}, Lcom/ts/other/ParamButton;->initFactory(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 57
    sget v1, Lcom/ts/MainUI/R$id;->Touch_seekBar1:I

    invoke-virtual {p0, v1}, Lcom/ts/main/CStudy/CStudyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->TouSizeSeek:Landroid/widget/SeekBar;

    .line 58
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->TouSizeSeek:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 60
    sget v1, Lcom/ts/MainUI/R$id;->Touch_seekBarsize:I

    invoke-virtual {p0, v1}, Lcom/ts/main/CStudy/CStudyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->ShowTouchSize:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->ShowTouchSize:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v7

    const-string v2, "\u7535\u6e90"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "\u4e3b\u9875"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-string v2, "\u8fd4\u56de"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const-string v2, "\u97f3\u91cf+"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const-string v2, "\u97f3\u91cf-"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const-string v2, "\u5bfc\u822a"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const-string v2, "\u63a5\u542c"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    const-string v2, "\u6302\u65ad"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    const-string v2, "\u4e0a\u66f2"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    const-string v2, "\u4e0b\u66f2"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    const-string v2, "\u51fa\u789f"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    const-string v2, "\u641c\u53f0"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    const-string v2, "\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    const-string v2, "\u9759\u97f3"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    const-string v2, "\u505c\u6b62"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    const-string v2, "\u6682\u505c"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    const-string v2, "\u6536\u97f3"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    const-string v2, "DVD"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v8

    const-string v2, "\u6e05\u9664"

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void

    .line 67
    :cond_0
    if-ne v0, v8, :cond_1

    .line 69
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->TextShow:[Landroid/widget/TextView;

    const/16 v2, 0x1de

    invoke-virtual {p0, v9, v2, v6, v5}, Lcom/ts/main/CStudy/CStudyMainActivity;->TvCreateRelative(IIII)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 70
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    const/16 v2, 0x192

    invoke-static {v9, v2, v6, v5}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 77
    :goto_1
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    sget v2, Lcom/ts/MainUI/R$drawable;->cstudy_public_up:I

    sget v3, Lcom/ts/MainUI/R$drawable;->cstudy_public_dn:I

    sget v4, Lcom/ts/MainUI/R$drawable;->cstudy_public_dn:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 78
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 79
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 80
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTextSize(F)V

    .line 82
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    new-instance v2, Lcom/ts/main/CStudy/CStudyMainActivity$1;

    invoke-direct {v2, p0}, Lcom/ts/main/CStudy/CStudyMainActivity$1;-><init>(Lcom/ts/main/CStudy/CStudyMainActivity;)V

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->TextShow:[Landroid/widget/TextView;

    rem-int/lit8 v2, v0, 0x6

    mul-int/lit16 v2, v2, 0x96

    add-int/lit8 v2, v2, 0x32

    div-int/lit8 v3, v0, 0x6

    mul-int/lit8 v3, v3, 0x6e

    add-int/lit16 v3, v3, 0x94

    invoke-virtual {p0, v2, v3, v6, v5}, Lcom/ts/main/CStudy/CStudyMainActivity;->TvCreateRelative(IIII)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 74
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->BtnCstudy:[Lcom/ts/other/ParamButton;

    rem-int/lit8 v2, v0, 0x6

    mul-int/lit16 v2, v2, 0x96

    add-int/lit8 v2, v2, 0x32

    div-int/lit8 v3, v0, 0x6

    mul-int/lit8 v3, v3, 0x6e

    add-int/lit8 v3, v3, 0x48

    invoke-static {v2, v3, v6, v5}, Lcom/ts/other/ParamButton;->fsCreateRelative(IIII)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 142
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "frpmTouch"    # Z

    .prologue
    .line 195
    const/4 v0, 0x5

    if-lt p2, v0, :cond_0

    .line 197
    invoke-static {}, Lcom/ts/main/common/MainCScreen;->GetInstance()Lcom/ts/main/common/MainCScreen;

    move-result-object v0

    iput p2, v0, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    .line 198
    iget-object v0, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->ShowTouchSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ts/main/common/MainCScreen;->GetInstance()Lcom/ts/main/common/MainCScreen;

    move-result-object v2

    iget v2, v2, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 129
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 130
    iget-object v0, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->TouSizeSeek:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/ts/main/common/MainCScreen;->GetInstance()Lcom/ts/main/common/MainCScreen;

    move-result-object v1

    iget v1, v1, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 131
    iget-object v0, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->ShowTouchSize:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ts/main/common/MainCScreen;->GetInstance()Lcom/ts/main/common/MainCScreen;

    move-result-object v2

    iget v2, v2, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 207
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 211
    invoke-static {}, Lcom/ts/main/common/MainCScreen;->GetInstance()Lcom/ts/main/common/MainCScreen;

    move-result-object v0

    iget v0, v0, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetCtErr(I)I

    .line 212
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->Save(I)I

    .line 213
    const-string v0, "MainCScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStopTrackingTouch nTouchLen =="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ts/main/common/MainCScreen;->GetInstance()Lcom/ts/main/common/MainCScreen;

    move-result-object v2

    iget v2, v2, Lcom/ts/main/common/MainCScreen;->nTouchLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method protected setViewPos(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 34
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 36
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v1, p0, Lcom/ts/main/CStudy/CStudyMainActivity;->MyRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method
