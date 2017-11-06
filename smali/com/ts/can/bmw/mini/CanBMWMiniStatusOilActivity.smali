.class public Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniStatusOilActivity.java"


# instance fields
.field private mBkX:I

.field private mBkY:I

.field private mCur:I

.field private mManager:Landroid/widget/RelativeLayout;

.field private mMaxValue:Landroid/widget/TextView;

.field private mMinValue:Landroid/widget/TextView;

.field private mOilIcon:Landroid/widget/ImageView;

.field private mOilProgressBar:Lcom/ts/other/CustomImgView;

.field private mTvMeasureBtn:Landroid/widget/TextView;

.field private mTvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    .line 31
    const/16 v0, 0x13

    iput v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mBkX:I

    .line 32
    const/16 v0, 0xf

    iput v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mBkY:I

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mBkX:I

    return v0
.end method

.method static synthetic access$1(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mBkY:I

    return v0
.end method

.method static synthetic access$2(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mCur:I

    return v0
.end method

.method private addImageView(III)Landroid/widget/ImageView;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v2, -0x2

    .line 149
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "view":Landroid/widget/ImageView;
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 154
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 155
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-object v1
.end method

.method private addImageView(IIII)Lcom/ts/other/CustomImgView;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 161
    sget v7, Lcom/ts/MainUI/R$drawable;->can_seekbar_progress:I

    .line 160
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 162
    .local v1, "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 165
    .local v3, "mMin":I
    const/16 v2, 0xff

    .line 167
    .local v2, "mMax":I
    new-instance v5, Lcom/ts/other/CustomImgView;

    invoke-direct {v5, p0}, Lcom/ts/other/CustomImgView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v5, "view":Lcom/ts/other/CustomImgView;
    new-instance v6, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;

    invoke-direct {v6, p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;-><init>(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Lcom/ts/other/CustomImgView;->setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V

    .line 193
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v4, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 195
    iput p2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 196
    iget-object v6, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    return-object v5
.end method

.method private addTextView(III)Landroid/widget/TextView;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 133
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v1, "view":Landroid/widget/TextView;
    if-eqz p3, :cond_0

    .line 135
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    const/16 v2, 0x1e

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 143
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 144
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-object v1
.end method

.method private getColorStateList()Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 125
    .local v0, "colors":[I
    new-array v1, v2, [[I

    .line 126
    .local v1, "states":[[I
    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    .line 127
    new-array v2, v5, [I

    const v3, 0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v5

    .line 128
    new-array v2, v4, [I

    aput-object v2, v1, v6

    .line 129
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 124
    nop

    :array_0
    .array-data 4
        -0x10000
        -0x1
        -0x777778
    .end array-data

    .line 126
    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method private setMeasureStatus(I)V
    .locals 3
    .param p1, "measure"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-static {p1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvMeasureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 100
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvMeasureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvMeasureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 103
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvMeasureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setOilStatus(II)V
    .locals 2
    .param p1, "valid"    # I
    .param p2, "status"    # I

    .prologue
    .line 84
    invoke-static {p1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    if-nez p2, :cond_0

    .line 86
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvStatus:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_oil_status_none:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvStatus:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_oil_status_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvStatus:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_oil_status_measuring:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvStatus:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->can_oil_status_invalid:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setOilValue(I)V
    .locals 3
    .param p1, "val"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 108
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 109
    iput p1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mCur:I

    .line 110
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mOilProgressBar:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0}, Lcom/ts/other/CustomImgView;->invalidate()V

    .line 111
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mOilIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mOilProgressBar:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomImgView;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mOilIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mOilProgressBar:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v2}, Lcom/ts/other/CustomImgView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected AddItemView()V
    .locals 6

    .prologue
    const/16 v5, 0x15e

    const/16 v2, 0xbe

    const/16 v4, 0x1e

    const/4 v3, 0x4

    .line 43
    const/16 v0, 0x12c

    sget v1, Lcom/ts/MainUI/R$string;->can_oil_measure:I

    invoke-direct {p0, v4, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->addTextView(III)Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/ts/MainUI/R$string;->can_oil_measure_notice:I

    invoke-direct {p0, v4, v5, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->addTextView(III)Landroid/widget/TextView;

    .line 46
    const/16 v0, 0x118

    sget v1, Lcom/ts/MainUI/R$string;->can_oil_min_value:I

    invoke-direct {p0, v0, v2, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->addTextView(III)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mMinValue:Landroid/widget/TextView;

    .line 47
    const/16 v0, 0x2d0

    sget v1, Lcom/ts/MainUI/R$string;->can_oil_max_value:I

    invoke-direct {p0, v0, v2, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->addTextView(III)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mMaxValue:Landroid/widget/TextView;

    .line 48
    const/16 v0, 0x82

    const/16 v1, 0x9b

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_icon_oil:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->addImageView(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mOilIcon:Landroid/widget/ImageView;

    .line 49
    const/16 v0, 0xaa

    const/16 v1, 0x154

    const/16 v2, 0x50

    invoke-direct {p0, v5, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->addImageView(IIII)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mOilProgressBar:Lcom/ts/other/CustomImgView;

    .line 51
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mMinValue:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mMaxValue:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mOilIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mOilProgressBar:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomImgView;->setVisibility(I)V

    .line 56
    const/16 v0, 0x3c

    const/4 v1, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->addTextView(III)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvStatus:Landroid/widget/TextView;

    .line 57
    const/16 v0, 0x320

    const/16 v1, 0x1c2

    sget v2, Lcom/ts/MainUI/R$string;->can_oil_start_measure:I

    invoke-direct {p0, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->addTextView(III)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvMeasureBtn:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvMeasureBtn:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->getColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mTvMeasureBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method protected Query()V
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x4a

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->Query(I)V

    .line 81
    return-void
.end method

.method protected ResetData(Z)V
    .locals 2
    .param p1, "check"    # Z

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->GetMiniEngineOil()V

    .line 67
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mEngineOil:Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mEngineOil:Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;->Update:I

    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mEngineOil:Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;->Update:I

    .line 71
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mEngineOil:Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;->Avalid:I

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mEngineOil:Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;->Status:I

    invoke-direct {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->setOilStatus(II)V

    .line 72
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mEngineOil:Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;->MeasureAvalid:I

    invoke-direct {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->setMeasureStatus(I)V

    .line 73
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mEngineOil:Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$MiniEngineOil;->CurFuel:I

    invoke-direct {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->setOilValue(I)V

    .line 76
    :cond_1
    return-void
.end method

.method protected SetLayoutContainer()V
    .locals 2

    .prologue
    .line 36
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->setContentView(I)V

    .line 37
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mManager:Landroid/widget/RelativeLayout;

    .line 38
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mManager:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_mini_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    const/16 v0, 0xa1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->CarSet(II)V

    .line 203
    return-void
.end method
