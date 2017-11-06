.class public Lcom/ts/can/CanOdysseyExdActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanOdysseyExdActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static mfgFinish:Z

.field public static mfgShow:Z


# instance fields
.field private mAutoSelect:Landroid/widget/ImageView;

.field private mBtBattery:Landroid/widget/ImageView;

.field private mBtBatteryArray:[I

.field private mBtIcon:Landroid/widget/ImageView;

.field private mBtSignal:Landroid/widget/ImageView;

.field private mBtSignalsArray:[I

.field private mCdStatusArray:[I

.field private mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

.field private mIconLayout:Landroid/widget/LinearLayout;

.field private mManager:Landroid/widget/RelativeLayout;

.field private mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

.field private mPlayIcon:Landroid/widget/ImageView;

.field private mSTStatus:Landroid/widget/ImageView;

.field private mScanStatus:Landroid/widget/ImageView;

.field private mSelBottomArrow:Landroid/widget/ImageView;

.field private mSelIcon:Landroid/widget/ImageView;

.field private mSelTopArrow:Landroid/widget/ImageView;

.field private mTvMenu1:Landroid/widget/TextView;

.field private mTvMenu2:Landroid/widget/TextView;

.field private mTvMenu3:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mTvVol:Landroid/widget/TextView;

.field private mUsbIcon:Landroid/widget/ImageView;

.field private mUsbStatusArray:[I

.field private mVolData:Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/ts/can/CanOdysseyExdActivity;->mfgShow:Z

    .line 77
    sput-boolean v0, Lcom/ts/can/CanOdysseyExdActivity;->mfgFinish:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_signal01:I

    aput v1, v0, v3

    .line 55
    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_signal02:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_signal03:I

    aput v1, v0, v5

    .line 56
    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_signal04:I

    aput v1, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_signal05:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 57
    sget v2, Lcom/ts/MainUI/R$drawable;->can_aode_signal06:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mBtSignalsArray:[I

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_battery00:I

    aput v1, v0, v3

    .line 60
    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_battery02:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_battery03:I

    aput v1, v0, v5

    .line 61
    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_battery04:I

    aput v1, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_battery05:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 62
    sget v2, Lcom/ts/MainUI/R$drawable;->can_aode_battery06:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mBtBatteryArray:[I

    .line 64
    new-array v0, v6, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_xh01:I

    aput v1, v0, v3

    .line 65
    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_sj01:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_scan03:I

    aput v1, v0, v5

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mCdStatusArray:[I

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_xh01:I

    aput v1, v0, v3

    .line 68
    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_xh02:I

    aput v1, v0, v4

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_sj02:I

    aput v1, v0, v5

    .line 69
    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_sj01:I

    aput v1, v0, v6

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_scan03:I

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 70
    sget v2, Lcom/ts/MainUI/R$drawable;->can_aode_scan02:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mUsbStatusArray:[I

    .line 72
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    .line 73
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    .line 74
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;-><init>()V

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;

    .line 27
    return-void
.end method

.method private AddIcon(I)Landroid/widget/ImageView;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v2, -0x2

    .line 131
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "icon":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 139
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v2, p0, Lcom/ts/can/CanOdysseyExdActivity;->mIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    return-object v0
.end method

.method private AddIconLayout(II)Landroid/widget/LinearLayout;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, -0x2

    .line 117
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 120
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 123
    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v2, p0, Lcom/ts/can/CanOdysseyExdActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 127
    return-object v0
.end method

.method private AddImage(III)Landroid/widget/ImageView;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v2, -0x2

    .line 182
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 187
    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lcom/ts/can/CanOdysseyExdActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 192
    return-object v0
.end method

.method private AddText(IIII)Landroid/widget/TextView;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 165
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "text":Landroid/widget/TextView;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    const/16 v2, 0x32

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 169
    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 170
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 171
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 174
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v2, p0, Lcom/ts/can/CanOdysseyExdActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 178
    return-object v1
.end method

.method private AddVol()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, -0x2

    .line 148
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 149
    .local v1, "vol":Landroid/widget/TextView;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 152
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 156
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 157
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v2, p0, Lcom/ts/can/CanOdysseyExdActivity;->mIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    return-object v1
.end method

.method private InitViews()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/16 v5, 0xb2

    const/16 v4, 0x5e

    const/16 v2, 0x4c

    const/16 v3, 0x3e8

    .line 88
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanOdysseyExdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mManager:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mManager:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 91
    const/16 v0, 0x5a

    const/16 v1, 0x28

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanOdysseyExdActivity;->AddIconLayout(II)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mIconLayout:Landroid/widget/LinearLayout;

    .line 93
    sget v0, Lcom/ts/MainUI/R$drawable;->can_aode_bt:I

    invoke-direct {p0, v0}, Lcom/ts/can/CanOdysseyExdActivity;->AddIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mBtIcon:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mBtSignalsArray:[I

    aget v0, v0, v6

    invoke-direct {p0, v0}, Lcom/ts/can/CanOdysseyExdActivity;->AddIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mBtSignal:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mBtBatteryArray:[I

    aget v0, v0, v6

    invoke-direct {p0, v0}, Lcom/ts/can/CanOdysseyExdActivity;->AddIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mBtBattery:Landroid/widget/ImageView;

    .line 96
    sget v0, Lcom/ts/MainUI/R$drawable;->can_aode_usb:I

    invoke-direct {p0, v0}, Lcom/ts/can/CanOdysseyExdActivity;->AddIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mUsbIcon:Landroid/widget/ImageView;

    .line 97
    sget v0, Lcom/ts/MainUI/R$drawable;->can_aode_sj01:I

    invoke-direct {p0, v0}, Lcom/ts/can/CanOdysseyExdActivity;->AddIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mPlayIcon:Landroid/widget/ImageView;

    .line 98
    sget v0, Lcom/ts/MainUI/R$drawable;->can_aode_auto:I

    invoke-direct {p0, v0}, Lcom/ts/can/CanOdysseyExdActivity;->AddIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mAutoSelect:Landroid/widget/ImageView;

    .line 99
    sget v0, Lcom/ts/MainUI/R$drawable;->can_aode_st:I

    invoke-direct {p0, v0}, Lcom/ts/can/CanOdysseyExdActivity;->AddIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSTStatus:Landroid/widget/ImageView;

    .line 100
    sget v0, Lcom/ts/MainUI/R$drawable;->can_aode_scan01:I

    invoke-direct {p0, v0}, Lcom/ts/can/CanOdysseyExdActivity;->AddIcon(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mScanStatus:Landroid/widget/ImageView;

    .line 102
    invoke-direct {p0}, Lcom/ts/can/CanOdysseyExdActivity;->AddVol()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mTvVol:Landroid/widget/TextView;

    .line 104
    const/16 v0, 0xf6

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_bg01:I

    invoke-direct {p0, v2, v0, v1}, Lcom/ts/can/CanOdysseyExdActivity;->AddImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelIcon:Landroid/widget/ImageView;

    .line 105
    const/16 v0, 0xf6

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_bg02:I

    invoke-direct {p0, v2, v0, v1}, Lcom/ts/can/CanOdysseyExdActivity;->AddImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelTopArrow:Landroid/widget/ImageView;

    .line 106
    const/16 v0, 0x1a6

    sget v1, Lcom/ts/MainUI/R$drawable;->can_aode_bg03:I

    invoke-direct {p0, v2, v0, v1}, Lcom/ts/can/CanOdysseyExdActivity;->AddImage(III)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelBottomArrow:Landroid/widget/ImageView;

    .line 108
    const/16 v0, 0x96

    const/16 v1, 0x69

    const/16 v2, 0x78

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/ts/can/CanOdysseyExdActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mTvTitle:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mTvTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    const/16 v0, 0xdd

    invoke-direct {p0, v5, v0, v3, v4}, Lcom/ts/can/CanOdysseyExdActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mTvMenu1:Landroid/widget/TextView;

    .line 112
    const/16 v0, 0x12d

    invoke-direct {p0, v5, v0, v3, v4}, Lcom/ts/can/CanOdysseyExdActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mTvMenu2:Landroid/widget/TextView;

    .line 113
    const/16 v0, 0x17e

    invoke-direct {p0, v5, v0, v3, v4}, Lcom/ts/can/CanOdysseyExdActivity;->AddText(IIII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mTvMenu3:Landroid/widget/TextView;

    .line 114
    return-void
.end method

.method private ResetData(Z)V
    .locals 20
    .param p1, "check"    # Z

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/lgb/canmodule/CanJni;->OdysseyGetMenu(Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/lgb/canmodule/CanJni;->OdysseyGetIcon(Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/lgb/canmodule/CanJni;->OdysseyGetVol(Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->UpdateOnce:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 231
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Update:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 232
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Update:I

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Code:[I

    .line 235
    .local v8, "encode":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->DataLen:[I

    .line 236
    .local v7, "dataLen":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Gl:[I

    .line 238
    .local v10, "isLight":[I
    const-string v15, ""

    .line 239
    .local v15, "title":Ljava/lang/String;
    const-string v11, ""

    .line 240
    .local v11, "line1":Ljava/lang/String;
    const-string v12, ""

    .line 241
    .local v12, "line2":Ljava/lang/String;
    const-string v13, ""

    .line 243
    .local v13, "line3":Ljava/lang/String;
    const/16 v17, 0x0

    aget v17, v8, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->TitleData:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v7, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/ts/can/CanOdysseyExdActivity;->byte2String(I[BI)Ljava/lang/String;

    move-result-object v15

    .line 244
    const/16 v17, 0x1

    aget v17, v8, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Menu1Data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v7, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/ts/can/CanOdysseyExdActivity;->byte2String(I[BI)Ljava/lang/String;

    move-result-object v11

    .line 245
    const/16 v17, 0x2

    aget v17, v8, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Menu2Data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v19, v7, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/ts/can/CanOdysseyExdActivity;->byte2String(I[BI)Ljava/lang/String;

    move-result-object v12

    .line 246
    const/16 v17, 0x3

    aget v17, v8, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mMenuData:Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyMenu;->Menu3Data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget v19, v7, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/ts/can/CanOdysseyExdActivity;->byte2String(I[BI)Ljava/lang/String;

    move-result-object v13

    .line 249
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 250
    const-string v15, ""

    .line 252
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mTvTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mTvMenu1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v18, v10, v18

    invoke-static/range {v18 .. v18}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/ts/can/CanOdysseyExdActivity;->changeLineText(Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mTvMenu2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v18, v10, v18

    invoke-static/range {v18 .. v18}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/ts/can/CanOdysseyExdActivity;->changeLineText(Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mTvMenu3:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget v18, v10, v18

    invoke-static/range {v18 .. v18}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/ts/can/CanOdysseyExdActivity;->changeLineText(Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 258
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/ts/can/CanOdysseyExdActivity;->changeSelIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v7    # "dataLen":[I
    .end local v8    # "encode":[I
    .end local v10    # "isLight":[I
    .end local v11    # "line1":Ljava/lang/String;
    .end local v12    # "line2":Ljava/lang/String;
    .end local v13    # "line3":Ljava/lang/String;
    .end local v15    # "title":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->UpdateOnce:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 263
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->Update:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 264
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->Update:I

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mAutoSelect:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->AutoSelect:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mSTStatus:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->St:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mScanStatus:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->Scan:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->CdState:I

    .line 271
    .local v6, "cdStatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->UsbState:I

    move/from16 v16, v0

    .line 273
    .local v16, "usbStatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->HaveUsb:I

    .line 275
    .local v9, "haveUsb":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mUsbIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-static {v9}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 277
    invoke-static {v9}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mPlayIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 279
    if-lez v16, :cond_4

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_4

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mPlayIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mUsbStatusArray:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v16, -0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->BtState:I

    .line 293
    .local v5, "btConn":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mBtIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-static {v5}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mBtSignal:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-static {v5}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mBtBattery:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-static {v5}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 297
    invoke-static {v5}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->BtXhqd:I

    .line 299
    .local v14, "signalStatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mIconData:Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v4, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyIcon;->BtDcdl:I

    .line 301
    .local v4, "batteryStatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mBtSignal:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-static {v14}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mBtBattery:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-static {v4}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 304
    if-lez v14, :cond_5

    const/16 v17, 0x6

    move/from16 v0, v17

    if-gt v14, v0, :cond_5

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mBtSignal:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mBtSignalsArray:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, -0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    :cond_5
    if-lez v4, :cond_6

    const/16 v17, 0x6

    move/from16 v0, v17

    if-gt v4, v0, :cond_6

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mBtBattery:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mBtBatteryArray:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, -0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    .end local v4    # "batteryStatus":I
    .end local v5    # "btConn":I
    .end local v6    # "cdStatus":I
    .end local v9    # "haveUsb":I
    .end local v14    # "signalStatus":I
    .end local v16    # "usbStatus":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;->UpdateOnce:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 319
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;->Update:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 320
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;->Update:I

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mTvVol:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "VOL "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;->Vol:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mTvVol:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mVolData:Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$OdysseyVol;->Disp:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 326
    :cond_8
    return-void

    .line 284
    .restart local v6    # "cdStatus":I
    .restart local v9    # "haveUsb":I
    .restart local v16    # "usbStatus":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mPlayIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-static {v6}, Lcom/ts/can/CanOdysseyExdActivity;->i2b(I)Z

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 285
    if-lez v6, :cond_4

    const/16 v17, 0x3

    move/from16 v0, v17

    if-gt v6, v0, :cond_4

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mPlayIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/can/CanOdysseyExdActivity;->mCdStatusArray:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v6, -0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private byte2ASCIIString([BI)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 379
    const-string v1, ""

    .line 382
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .end local v1    # "str":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "GBK"

    invoke-direct {v1, p1, v2, p2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .restart local v1    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 383
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method private byte2String(I[BI)Ljava/lang/String;
    .locals 1
    .param p1, "encode"    # I
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    .line 391
    const-string v0, ""

    .line 393
    .local v0, "str":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 395
    invoke-direct {p0, p2, p3}, Lcom/ts/can/CanOdysseyExdActivity;->byte2ASCIIString([BI)Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    .line 398
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/ts/can/CanOdysseyExdActivity;->byte2UnicodeString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private byte2UnicodeString([BI)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 367
    const-string v1, ""

    .line 370
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .end local v1    # "str":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "UNICODE"

    invoke-direct {v1, p1, v2, p2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .restart local v1    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 371
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method private changeLineText(Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "isLight"    # Z
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 354
    if-eqz p2, :cond_1

    sget v0, Lcom/ts/MainUI/R$drawable;->can_aode_bg04:I

    .line 357
    .local v0, "background":I
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const-string p3, ""

    .line 359
    const v0, 0x106000d

    .line 362
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 364
    return-void

    .line 355
    .end local v0    # "background":I
    :cond_1
    const v0, 0x106000d

    goto :goto_0
.end method

.method private changeSelIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "line1"    # Ljava/lang/String;
    .param p2, "line2"    # Ljava/lang/String;
    .param p3, "line3"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 330
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelTopArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 331
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelBottomArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 336
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelTopArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 337
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelBottomArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelTopArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    .line 340
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelBottomArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelTopArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    goto :goto_0

    .line 343
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/ts/can/CanOdysseyExdActivity;->mSelBottomArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/ts/can/CanOdysseyExdActivity;->showGone(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public static finishOdysseyWin()V
    .locals 1

    .prologue
    .line 220
    sget-boolean v0, Lcom/ts/can/CanOdysseyExdActivity;->mfgShow:Z

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/CanOdysseyExdActivity;->mfgFinish:Z

    .line 223
    :cond_0
    return-void
.end method

.method private showGone(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isShow"    # Z

    .prologue
    .line 349
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 350
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 351
    return-void

    .line 349
    .end local v0    # "visibility":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static showOdysseyWin()V
    .locals 1

    .prologue
    .line 214
    sget-boolean v0, Lcom/ts/can/CanOdysseyExdActivity;->mfgShow:Z

    if-nez v0, :cond_0

    .line 215
    const-class v0, Lcom/ts/can/CanOdysseyExdActivity;

    invoke-static {v0}, Lcom/ts/can/CanFunc;->showCanActivity(Ljava/lang/Class;)V

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method public UserAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 406
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/CanOdysseyExdActivity;->ResetData(Z)V

    .line 408
    sget-boolean v0, Lcom/ts/can/CanOdysseyExdActivity;->mfgShow:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ts/can/CanOdysseyExdActivity;->mfgFinish:Z

    if-eqz v0, :cond_0

    .line 409
    sput-boolean v1, Lcom/ts/can/CanOdysseyExdActivity;->mfgFinish:Z

    .line 410
    sput-boolean v1, Lcom/ts/can/CanOdysseyExdActivity;->mfgShow:Z

    .line 412
    invoke-virtual {p0}, Lcom/ts/can/CanOdysseyExdActivity;->finish()V

    .line 415
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/CanOdysseyExdActivity;->setContentView(I)V

    .line 84
    invoke-direct {p0}, Lcom/ts/can/CanOdysseyExdActivity;->InitViews()V

    .line 85
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 208
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 210
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/CanOdysseyExdActivity;->mfgShow:Z

    .line 211
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 198
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 199
    invoke-direct {p0, v2}, Lcom/ts/can/CanOdysseyExdActivity;->ResetData(Z)V

    .line 200
    invoke-static {}, Lcom/ts/MainUI/Evc;->GetInstance()Lcom/ts/MainUI/Evc;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 201
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/CanOdysseyExdActivity;->mfgShow:Z

    .line 202
    sput-boolean v2, Lcom/ts/can/CanOdysseyExdActivity;->mfgFinish:Z

    .line 203
    return-void
.end method
