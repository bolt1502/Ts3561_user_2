.class public Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniStatusRPAActivity.java"


# instance fields
.field private mErrorIcons:[Landroid/widget/ImageView;

.field private mErrorSans:[Landroid/widget/ImageView;

.field private mManager:Landroid/widget/RelativeLayout;

.field private mTvResetBtn:Landroid/widget/TextView;

.field private mTvRpaStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 13
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    .line 18
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorIcons:[Landroid/widget/ImageView;

    .line 19
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorSans:[Landroid/widget/ImageView;

    .line 13
    return-void
.end method

.method private addImageView(III)Landroid/widget/ImageView;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v2, -0x2

    .line 157
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    .local v1, "view":Landroid/widget/ImageView;
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 162
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 163
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    return-object v1
.end method

.method private addTextView(III)Landroid/widget/TextView;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 141
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v1, "view":Landroid/widget/TextView;
    if-eqz p3, :cond_0

    .line 143
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 145
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    const/16 v2, 0x1e

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 148
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 151
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 152
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    return-object v1
.end method

.method private getColorStateList()Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 132
    .local v0, "colors":[I
    new-array v1, v2, [[I

    .line 133
    .local v1, "states":[[I
    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    .line 135
    new-array v2, v5, [I

    const v3, 0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v5

    .line 136
    new-array v2, v4, [I

    aput-object v2, v1, v6

    .line 137
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 131
    nop

    :array_0
    .array-data 4
        -0x10000
        -0x1
        -0x777778
    .end array-data

    .line 133
    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method private setCarStatus(IIIII)V
    .locals 6
    .param p1, "valid"    # I
    .param p2, "lf"    # I
    .param p3, "lr"    # I
    .param p4, "rf"    # I
    .param p5, "rr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 76
    new-array v1, v3, [I

    .line 78
    .local v1, "status":[I
    invoke-static {p1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->i2b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-array v1, v3, [I

    .end local v1    # "status":[I
    aput p2, v1, v4

    aput p4, v1, v5

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p5, v1, v2

    .line 84
    .restart local v1    # "status":[I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorIcons:[Landroid/widget/ImageView;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 98
    return-void

    .line 81
    .end local v0    # "i":I
    :cond_0
    new-array v1, v3, [I

    goto :goto_0

    .line 86
    .restart local v0    # "i":I
    :cond_1
    aget v2, v1, v0

    if-ne v2, v5, :cond_2

    .line 87
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorIcons:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mini_hook:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorIcons:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorSans:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorIcons:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mini_warning:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorIcons:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorSans:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setResetStatus(I)V
    .locals 3
    .param p1, "reset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-static {p1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mTvResetBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 123
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mTvResetBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mTvResetBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 126
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mTvResetBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setRpaStatus(II)V
    .locals 3
    .param p1, "valid"    # I
    .param p2, "status"    # I

    .prologue
    .line 101
    sget v1, Lcom/ts/MainUI/R$string;->can_rpa:I

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "str":Ljava/lang/String;
    invoke-static {p1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    if-nez p2, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/MainUI/R$string;->can_rpa_not_start:I

    invoke-virtual {p0, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mTvRpaStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void

    .line 105
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/MainUI/R$string;->can_rpa_starting:I

    invoke-virtual {p0, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/MainUI/R$string;->can_rpa_started:I

    invoke-virtual {p0, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/MainUI/R$string;->can_rpa_resetting:I

    invoke-virtual {p0, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/MainUI/R$string;->can_rpa_tybz:I

    invoke-virtual {p0, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/MainUI/R$string;->can_rpa_invalide:I

    invoke-virtual {p0, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected AddItemView()V
    .locals 8

    .prologue
    const/16 v7, 0x96

    const/16 v4, 0x1e

    const/16 v6, 0x8

    .line 30
    const/16 v2, 0x12c

    sget v3, Lcom/ts/MainUI/R$string;->can_rpa_reset:I

    invoke-direct {p0, v4, v2, v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->addTextView(III)Landroid/widget/TextView;

    .line 31
    const/16 v2, 0x15e

    sget v3, Lcom/ts/MainUI/R$string;->can_rpa_reset_notice:I

    invoke-direct {p0, v4, v2, v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->addTextView(III)Landroid/widget/TextView;

    .line 33
    const/16 v2, 0x64

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mini_car_normal:I

    invoke-direct {p0, v7, v2, v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->addImageView(III)Landroid/widget/ImageView;

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorIcons:[Landroid/widget/ImageView;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 45
    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-direct {p0, v2, v7, v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->addTextView(III)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mTvRpaStatus:Landroid/widget/TextView;

    .line 47
    const/16 v2, 0x320

    const/16 v3, 0x1c2

    sget v4, Lcom/ts/MainUI/R$string;->can_rpa_start_reset:I

    invoke-direct {p0, v2, v3, v4}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->addTextView(III)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mTvResetBtn:Landroid/widget/TextView;

    .line 49
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mTvResetBtn:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->getColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 50
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mTvResetBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorIcons:[Landroid/widget/ImageView;

    rem-int/lit8 v3, v0, 0x2

    mul-int/lit16 v3, v3, 0xd2

    add-int/lit8 v3, v3, 0x50

    .line 37
    div-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x37

    add-int/lit8 v4, v4, 0x6e

    sget v5, Lcom/ts/MainUI/R$drawable;->can_mini_hook:I

    .line 36
    invoke-direct {p0, v3, v4, v5}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->addImageView(III)Landroid/widget/ImageView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 38
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorIcons:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_1

    sget v1, Lcom/ts/MainUI/R$drawable;->can_mini_car_left:I

    .line 41
    .local v1, "resId":I
    :goto_1
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorSans:[Landroid/widget/ImageView;

    rem-int/lit8 v3, v0, 0x2

    mul-int/lit8 v3, v3, 0x67

    add-int/lit16 v3, v3, 0x96

    div-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x4b

    add-int/lit8 v4, v4, 0x70

    invoke-direct {p0, v3, v4, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->addImageView(III)Landroid/widget/ImageView;

    move-result-object v3

    aput-object v3, v2, v0

    .line 42
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mErrorSans:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "resId":I
    :cond_1
    sget v1, Lcom/ts/MainUI/R$drawable;->can_mini_car_right:I

    goto :goto_1
.end method

.method protected Query()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x49

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->Query(I)V

    .line 73
    return-void
.end method

.method protected ResetData(Z)V
    .locals 6
    .param p1, "check"    # Z

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->GetMiniRpa()V

    .line 57
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;->Update:I

    .line 61
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;->Avalid:I

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;->Status:I

    invoke-direct {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->setRpaStatus(II)V

    .line 62
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;->ResetAvalid:I

    invoke-direct {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->setResetStatus(I)V

    .line 63
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    iget v1, v0, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;->Avalid:I

    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    iget v2, v0, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;->LFSta:I

    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    iget v3, v0, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;->LRSta:I

    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;->RFSta:I

    .line 64
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mRpa:Lcom/lgb/canmodule/CanDataInfo$MiniRPA;

    iget v5, v0, Lcom/lgb/canmodule/CanDataInfo$MiniRPA;->RRSta:I

    move-object v0, p0

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->setCarStatus(IIIII)V

    .line 68
    :cond_1
    return-void
.end method

.method protected SetLayoutContainer()V
    .locals 2

    .prologue
    .line 23
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->setContentView(I)V

    .line 24
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mManager:Landroid/widget/RelativeLayout;

    .line 25
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->mManager:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_mini_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 26
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    const/16 v0, 0x91

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusRPAActivity;->CarSet(II)V

    .line 170
    return-void
.end method
