.class public Lcom/ts/main/radio/RadioFreqInput;
.super Lcom/ts/other/CustomDialog;
.source "RadioFreqInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ITEM_BK:I = 0xb

.field private static final ITEM_CLOSE:I = 0xc

.field private static final ITEM_DOT:I = 0xa

.field private static final ITEM_NUM_BASE:I = 0x0

.field private static final ITEM_OK:I = 0xd


# instance fields
.field private mBtnNumDn:[I

.field private mBtnNumUp:[I

.field private mContext:Landroid/content/Context;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mStrFreq:Ljava/lang/String;

.field private mStrNum:[Ljava/lang/String;

.field private mTvInput:Lcom/ts/other/CustomTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 36
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_popup_num01_up:I

    aput v1, v0, v3

    .line 37
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_popup_num02_up:I

    aput v1, v0, v4

    .line 38
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_popup_num03_up:I

    aput v1, v0, v5

    .line 5
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_popup_num04_up:I

    aput v1, v0, v6

    .line 40
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_popup_num05_up:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 41
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_popup_num06_up:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 42
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_popup_num07_up:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 43
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_popup_num08_up:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 44
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_popup_num09_up:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mBtnNumUp:[I

    .line 49
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 50
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_popup_num01_dn:I

    aput v1, v0, v3

    .line 51
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_popup_num02_dn:I

    aput v1, v0, v4

    .line 52
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_popup_num03_dn:I

    aput v1, v0, v5

    .line 53
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_popup_num04_dn:I

    aput v1, v0, v6

    .line 54
    sget v1, Lcom/ts/MainUI/R$drawable;->radio_popup_num05_dn:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 55
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_popup_num06_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 56
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_popup_num07_dn:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 57
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_popup_num08_dn:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 58
    sget v2, Lcom/ts/MainUI/R$drawable;->radio_popup_num09_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mBtnNumDn:[I

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v6

    const-string v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrNum:[Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p1}, Lcom/ts/main/radio/RadioFreqInput;->createDlg(Landroid/content/Context;)V

    .line 66
    return-void
.end method


# virtual methods
.method public AddButton(IIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "up"    # I
    .param p5, "dn"    # I

    .prologue
    .line 127
    new-instance v0, Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/main/radio/RadioFreqInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0, p4, p5}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 130
    invoke-virtual {p0, v0, p2, p3}, Lcom/ts/main/radio/RadioFreqInput;->AddViewWrapContent(Landroid/view/View;II)V

    .line 131
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-object v0
.end method

.method protected AddNum(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 220
    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mTvInput:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrNum:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    goto :goto_0
.end method

.method public AddText(IIII)Lcom/ts/other/CustomTextView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 101
    new-instance v1, Lcom/ts/other/CustomTextView;

    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/ts/other/CustomTextView;-><init>(Landroid/content/Context;)V

    .local v1, "text":Lcom/ts/other/CustomTextView;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioFreqInput;->AddView(Landroid/view/View;IIII)V

    .line 103
    return-object v1
.end method

.method public AddView(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 108
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 110
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v1, p0, Lcom/ts/main/radio/RadioFreqInput;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method public AddViewWrapContent(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, -0x2

    .line 118
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 120
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v1, p0, Lcom/ts/main/radio/RadioFreqInput;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public Input()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x2e

    .line 137
    iget-object v4, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v4, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 143
    .local v3, "tLen":I
    const/4 v0, 0x0

    .line 144
    .local v0, "Freq":I
    const/4 v1, 0x0

    .line 146
    .local v1, "dot":I
    invoke-virtual {p0}, Lcom/ts/main/radio/RadioFreqInput;->IsCurAmBand()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 148
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_3

    .line 158
    :goto_2
    if-nez v1, :cond_2

    .line 160
    iget-object v4, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 209
    :cond_2
    :goto_3
    invoke-static {v0}, Lcom/yyw/ts70xhw/Radio;->TuneFsset(I)I

    goto :goto_0

    .line 150
    :cond_3
    iget-object v4, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    goto :goto_2

    .line 148
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 168
    .end local v2    # "i":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-lt v2, v3, :cond_6

    .line 180
    if-nez v1, :cond_9

    .line 182
    const/16 v4, 0x31

    iget-object v5, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_8

    .line 184
    const/4 v4, 0x3

    if-ne v4, v3, :cond_2

    .line 186
    mul-int/lit8 v0, v0, 0x64

    .line 188
    goto :goto_3

    .line 170
    :cond_6
    iget-object v4, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_7

    .line 172
    mul-int/lit8 v4, v0, 0xa

    iget-object v5, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v0, v4, -0x30

    .line 168
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 176
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 191
    :cond_8
    if-ne v7, v3, :cond_2

    .line 193
    mul-int/lit8 v0, v0, 0x64

    .line 196
    goto :goto_3

    .line 199
    :cond_9
    if-le v3, v7, :cond_2

    .line 201
    iget-object v4, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    add-int/lit8 v5, v3, -0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v6, v4, :cond_2

    .line 203
    mul-int/lit8 v0, v0, 0xa

    goto :goto_3
.end method

.method protected IsCurAmBand()Z
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/yyw/ts70xhw/Radio;->GetDisp(I)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createDlg(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x12

    const/16 v10, 0x11

    const/16 v9, 0xc

    const/16 v8, 0x1bb

    const/4 v7, 0x0

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/ts/main/radio/RadioFreqInput;->mContext:Landroid/content/Context;

    .line 75
    sget v0, Lcom/ts/MainUI/R$layout;->radio_input_dlg:I

    invoke-super {p0, v0, p1}, Lcom/ts/other/CustomDialog;->create(ILandroid/content/Context;)Landroid/app/AlertDialog;

    .line 76
    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mWindow:Landroid/view/Window;

    sget v1, Lcom/ts/MainUI/R$id;->radio_input_layout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mLayout:Landroid/widget/RelativeLayout;

    .line 78
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v0, 0x9

    if-lt v6, v0, :cond_0

    .line 85
    const/16 v1, 0xb

    const/16 v2, 0x12d

    sget v4, Lcom/ts/MainUI/R$drawable;->radio_popup_del_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_popup_del_dn:I

    move-object v0, p0

    move v3, v11

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioFreqInput;->AddButton(IIIII)Lcom/ts/other/ParamButton;

    .line 86
    const/16 v1, 0xd

    sget v4, Lcom/ts/MainUI/R$drawable;->radio_popup_enter_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_popup_enter_dn:I

    move-object v0, p0

    move v2, v8

    move v3, v11

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioFreqInput;->AddButton(IIIII)Lcom/ts/other/ParamButton;

    .line 87
    const/16 v1, 0xa

    const/16 v3, 0x63

    sget v4, Lcom/ts/MainUI/R$drawable;->radio_popup_point_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_popup_point_dn:I

    move-object v0, p0

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioFreqInput;->AddButton(IIIII)Lcom/ts/other/ParamButton;

    .line 88
    const/16 v3, 0xb4

    sget v4, Lcom/ts/MainUI/R$drawable;->radio_popup_num00_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_popup_num00_dn:I

    move-object v0, p0

    move v1, v7

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioFreqInput;->AddButton(IIIII)Lcom/ts/other/ParamButton;

    .line 89
    const/16 v3, 0x105

    sget v4, Lcom/ts/MainUI/R$drawable;->radio_popup_close_up:I

    sget v5, Lcom/ts/MainUI/R$drawable;->radio_popup_close_dn:I

    move-object v0, p0

    move v1, v9

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioFreqInput;->AddButton(IIIII)Lcom/ts/other/ParamButton;

    .line 91
    const/16 v0, 0x117

    const/16 v1, 0x46

    invoke-virtual {p0, v10, v9, v0, v1}, Lcom/ts/main/radio/RadioFreqInput;->AddText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mTvInput:Lcom/ts/other/CustomTextView;

    .line 92
    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mTvInput:Lcom/ts/other/CustomTextView;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 93
    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mTvInput:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v7, v7, v7, v7}, Lcom/ts/other/CustomTextView;->setPadding(IIII)V

    .line 94
    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mTvInput:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v10}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 97
    return-void

    .line 80
    :cond_0
    add-int/lit8 v0, v6, 0x0

    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v6, 0x3

    mul-int/lit16 v0, v0, 0x8e

    add-int/lit8 v2, v0, 0x11

    div-int/lit8 v0, v6, 0x3

    mul-int/lit8 v0, v0, 0x51

    add-int/lit16 v0, v0, 0xa7

    add-int/lit8 v3, v0, -0x44

    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mBtnNumUp:[I

    aget v4, v0, v6

    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mBtnNumDn:[I

    aget v5, v0, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/main/radio/RadioFreqInput;->AddButton(IIIII)Lcom/ts/other/ParamButton;

    .line 78
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected decStr()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mTvInput:Lcom/ts/other/CustomTextView;

    iget-object v1, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x31

    const/4 v3, 0x0

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 252
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 269
    iget-object v2, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 270
    .local v1, "len":I
    iget-object v2, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 272
    invoke-virtual {p0, v0}, Lcom/ts/main/radio/RadioFreqInput;->AddNum(I)V

    .line 316
    .end local v1    # "len":I
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    invoke-virtual {p0}, Lcom/ts/main/radio/RadioFreqInput;->dismiss()V

    goto :goto_0

    .line 260
    :pswitch_1
    invoke-virtual {p0}, Lcom/ts/main/radio/RadioFreqInput;->decStr()V

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {p0}, Lcom/ts/main/radio/RadioFreqInput;->Input()V

    .line 265
    invoke-virtual {p0}, Lcom/ts/main/radio/RadioFreqInput;->dismiss()V

    goto :goto_0

    .line 276
    .restart local v1    # "len":I
    :cond_1
    invoke-virtual {p0}, Lcom/ts/main/radio/RadioFreqInput;->IsCurAmBand()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 282
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lcom/ts/main/radio/RadioFreqInput;->AddNum(I)V

    goto :goto_0

    .line 289
    :cond_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 291
    invoke-virtual {p0, v0}, Lcom/ts/main/radio/RadioFreqInput;->AddNum(I)V

    goto :goto_0

    .line 299
    :cond_3
    iget-object v2, p0, Lcom/ts/main/radio/RadioFreqInput;->mStrFreq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_4

    .line 301
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 303
    invoke-virtual {p0, v0}, Lcom/ts/main/radio/RadioFreqInput;->AddNum(I)V

    goto :goto_0

    .line 308
    :cond_4
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 310
    invoke-virtual {p0, v0}, Lcom/ts/main/radio/RadioFreqInput;->AddNum(I)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
