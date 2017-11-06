.class public Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;
.super Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;
.source "CanBMWMiniServiceDetailActivity.java"


# static fields
.field private static final ITEM_MONTH:I = 0x1

.field private static final ITEM_SETUP:I = 0x2

.field private static final ITEM_YEAR:I = 0x0

.field public static final KEY_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_NUM:Ljava/lang/String; = "num"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"


# instance fields
.field private mDateLayout:Landroid/widget/LinearLayout;

.field private mIconArrays:[I

.field private mItemIndex:I

.field private mItemNum:I

.field private mItemStatus:I

.field private mManager:Landroid/widget/RelativeLayout;

.field private mNoticeArrays:[Ljava/lang/String;

.field private mServiceArrays:[Ljava/lang/String;

.field private mTvDistance:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniBaseActivity;-><init>()V

    .line 39
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_icon_oil:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 40
    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_icon_02:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_icon_03:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 41
    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_icon_04:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_icon_05:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 42
    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_icon_06:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_icon_07:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 43
    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_icon_08:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_icon_09:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 44
    sget v2, Lcom/ts/MainUI/R$drawable;->can_mini_icon_10:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mIconArrays:[I

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;II)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->setDate(II)V

    return-void
.end method

.method private addChild(Landroid/widget/LinearLayout;IIIII)Landroid/widget/TextView;
    .locals 4
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "bgId"    # I
    .param p5, "color"    # I
    .param p6, "tag"    # I

    .prologue
    .line 221
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addWrapChild(Landroid/widget/LinearLayout;I)Landroid/widget/TextView;

    move-result-object v1

    .line 222
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz p4, :cond_0

    .line 223
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 225
    :cond_0
    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemNum:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemNum:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 228
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 229
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 234
    :cond_2
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 233
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 235
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 236
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 237
    const/16 v2, 0x1e

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 238
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    return-object v1
.end method

.method private addDate(II)Landroid/widget/LinearLayout;
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x2

    const/16 v5, -0x100

    const/16 v3, 0x3c

    const/4 v2, 0x5

    .line 189
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 190
    .local v1, "layout":Landroid/widget/LinearLayout;
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 192
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 193
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 195
    .local v7, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 196
    iput p2, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 197
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    sget v0, Lcom/ts/MainUI/R$string;->can_year:I

    invoke-direct {p0, v1, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addWrapChild(Landroid/widget/LinearLayout;I)Landroid/widget/TextView;

    .line 201
    const/16 v2, 0x8c

    sget v4, Lcom/ts/MainUI/R$drawable;->btn_mini_date_bg:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addChild(Landroid/widget/LinearLayout;IIIII)Landroid/widget/TextView;

    .line 204
    sget v0, Lcom/ts/MainUI/R$string;->can_month:I

    invoke-direct {p0, v1, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addWrapChild(Landroid/widget/LinearLayout;I)Landroid/widget/TextView;

    .line 206
    const/16 v2, 0x78

    sget v4, Lcom/ts/MainUI/R$drawable;->btn_mini_date_bg:I

    .line 207
    const/4 v6, 0x1

    move-object v0, p0

    .line 206
    invoke-direct/range {v0 .. v6}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addChild(Landroid/widget/LinearLayout;IIIII)Landroid/widget/TextView;

    .line 209
    iget v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemNum:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemNum:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 210
    :cond_0
    const/16 v2, 0x8c

    .line 211
    sget v4, Lcom/ts/MainUI/R$drawable;->btn_mini_service_item:I

    const/4 v5, -0x1

    const/4 v6, 0x2

    move-object v0, p0

    .line 210
    invoke-direct/range {v0 .. v6}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addChild(Landroid/widget/LinearLayout;IIIII)Landroid/widget/TextView;

    move-result-object v8

    .line 212
    .local v8, "setBtn":Landroid/widget/TextView;
    sget v0, Lcom/ts/MainUI/R$string;->can_setup:I

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 216
    .end local v8    # "setBtn":Landroid/widget/TextView;
    :cond_1
    return-object v1
.end method

.method private addIcon(III)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v2, -0x2

    .line 281
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 286
    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 287
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    return-void
.end method

.method private addText(II)Landroid/widget/TextView;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, -0x2

    .line 270
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, "tv":Landroid/widget/TextView;
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 272
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 275
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 276
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    return-object v1
.end method

.method private addText(IILjava/lang/String;I)Landroid/widget/TextView;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "color"    # I

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addText(II)Landroid/widget/TextView;

    move-result-object v0

    .line 264
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    return-object v0
.end method

.method private addWrapChild(Landroid/widget/LinearLayout;I)Landroid/widget/TextView;
    .locals 3
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "textId"    # I

    .prologue
    const/4 v2, -0x2

    .line 243
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 247
    const/16 v2, 0x14

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 249
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, "child":Landroid/widget/TextView;
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 251
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 252
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    if-eqz p2, :cond_0

    .line 255
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 258
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    return-object v0
.end method

.method private getInitData()V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    sget v2, Lcom/ts/MainUI/R$array;->can_service_notice_array:I

    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mNoticeArrays:[Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 60
    sget v2, Lcom/ts/MainUI/R$array;->can_by_service_array:I

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mServiceArrays:[Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 65
    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemIndex:I

    .line 66
    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemStatus:I

    .line 67
    const-string v1, "num"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemNum:I

    .line 69
    :cond_0
    return-void
.end method

.method private getMonth()I
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mDateLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 181
    .local v1, "tvMonth":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "month":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 185
    .end local v0    # "month":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getYear()I
    .locals 4

    .prologue
    .line 171
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mDateLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 172
    .local v0, "tvYear":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "year":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 176
    .end local v1    # "year":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private setDate(II)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/4 v4, -0x1

    .line 159
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mDateLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 160
    .local v1, "tvYear":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    if-eq p1, v4, :cond_0

    .line 161
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mDateLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    .local v0, "tvMonth":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    if-eq p2, v4, :cond_1

    .line 166
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_1
    return-void
.end method

.method private setDateStatus(III)V
    .locals 2
    .param p1, "valid"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I

    .prologue
    .line 113
    invoke-static {p1}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    const/16 v0, 0x7d1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x833

    if-le p2, v0, :cond_1

    .line 116
    :cond_0
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_4

    .line 117
    const/16 p2, 0x833

    .line 123
    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-lt p3, v0, :cond_2

    const/16 v0, 0xc

    if-le p3, v0, :cond_3

    .line 124
    :cond_2
    const/4 p3, -0x1

    .line 127
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->setDate(II)V

    .line 129
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mDateLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    :goto_1
    return-void

    .line 119
    :cond_4
    const/4 p2, -0x1

    goto :goto_0

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mDateLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setDistanceStatus(IIII)V
    .locals 3
    .param p1, "valid"    # I
    .param p2, "distance"    # I
    .param p3, "unit"    # I
    .param p4, "status"    # I

    .prologue
    .line 136
    invoke-static {p1}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->i2b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    const-string v0, ""

    .line 138
    .local v0, "text":Ljava/lang/String;
    if-nez p4, :cond_1

    .line 139
    sget v1, Lcom/ts/MainUI/R$string;->can_service_distance_hs:I

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/MainUI/R$string;->can_service_distance_km:I

    invoke-virtual {p0, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mTvDistance:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mTvDistance:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    .end local v0    # "text":Ljava/lang/String;
    :goto_2
    return-void

    .line 141
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/ts/MainUI/R$string;->can_service_distance_cg:I

    invoke-virtual {p0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_2
    if-nez p3, :cond_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/ts/MainUI/R$string;->can_service_distance_mi:I

    invoke-virtual {p0, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 154
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mTvDistance:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected AddItemView()V
    .locals 5

    .prologue
    const/16 v4, 0x12c

    .line 74
    const/16 v0, 0x78

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mIconArrays:[I

    iget v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemNum:I

    aget v1, v1, v2

    invoke-direct {p0, v4, v0, v1}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addIcon(III)V

    .line 75
    const/16 v0, 0x1f4

    const/16 v1, 0xa0

    iget-object v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mServiceArrays:[Ljava/lang/String;

    iget v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemNum:I

    aget-object v2, v2, v3

    const v3, -0xff0100

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addText(IILjava/lang/String;I)Landroid/widget/TextView;

    .line 76
    const/16 v0, 0xfa

    iget-object v1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mNoticeArrays:[Ljava/lang/String;

    iget v2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemStatus:I

    aget-object v1, v1, v2

    const/16 v2, -0x100

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addText(IILjava/lang/String;I)Landroid/widget/TextView;

    .line 78
    invoke-direct {p0, v4, v4}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addDate(II)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mDateLayout:Landroid/widget/LinearLayout;

    .line 80
    const/16 v0, 0x17c

    const-string v1, ""

    const/4 v2, -0x1

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->addText(IILjava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mTvDistance:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method protected Query()V
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->Query(I)V

    .line 110
    return-void
.end method

.method protected ResetData(Z)V
    .locals 9
    .param p1, "check"    # Z

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->GetMiniService()V

    .line 87
    iget-object v7, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$MiniService;->UpdateOnce:I

    invoke-static {v7}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->i2b(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget v7, v7, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Update:I

    invoke-static {v7}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->i2b(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 89
    :cond_0
    iget-object v7, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    const/4 v8, 0x0

    iput v8, v7, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Update:I

    .line 91
    iget-object v7, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$MiniService;->fgDateAvalid:[I

    iget v8, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemIndex:I

    aget v0, v7, v8

    .line 92
    .local v0, "dateValid":I
    iget-object v7, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Year:[I

    iget v8, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemIndex:I

    aget v6, v7, v8

    .line 93
    .local v6, "year":I
    iget-object v7, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Month:[I

    iget v8, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemIndex:I

    aget v4, v7, v8

    .line 94
    .local v4, "month":I
    invoke-direct {p0, v0, v6, v4}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->setDateStatus(III)V

    .line 96
    iget-object v7, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$MiniService;->fgDistAvalid:[I

    iget v8, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemIndex:I

    aget v2, v7, v8

    .line 97
    .local v2, "distanceValid":I
    iget-object v7, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$MiniService;->Distance:[I

    iget v8, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemIndex:I

    aget v1, v7, v8

    .line 98
    .local v1, "distance":I
    iget-object v7, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$MiniService;->DistanceDW:[I

    iget v8, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemIndex:I

    aget v3, v7, v8

    .line 99
    .local v3, "dw":I
    iget-object v7, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mCarService:Lcom/lgb/canmodule/CanDataInfo$MiniService;

    iget-object v7, v7, Lcom/lgb/canmodule/CanDataInfo$MiniService;->DistanceSta:[I

    iget v8, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemIndex:I

    aget v5, v7, v8

    .line 101
    .local v5, "sta":I
    invoke-direct {p0, v2, v1, v3, v5}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->setDistanceStatus(IIII)V

    .line 105
    .end local v0    # "dateValid":I
    .end local v1    # "distance":I
    .end local v2    # "distanceValid":I
    .end local v3    # "dw":I
    .end local v4    # "month":I
    .end local v5    # "sta":I
    .end local v6    # "year":I
    :cond_1
    return-void
.end method

.method protected SetLayoutContainer()V
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_relative:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->setContentView(I)V

    .line 49
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p0, v0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mManager:Landroid/widget/RelativeLayout;

    .line 51
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->getInitData()V

    .line 52
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 293
    .local v6, "item":I
    packed-switch v6, :pswitch_data_0

    .line 322
    :goto_0
    return-void

    .line 295
    :pswitch_0
    new-instance v0, Lcom/ts/canview/CanNumInuptDlg;

    new-instance v1, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity$1;-><init>(Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;)V

    .line 303
    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 295
    invoke-direct {v0, p0, v1, v2, v5}, Lcom/ts/canview/CanNumInuptDlg;-><init>(Landroid/content/Context;Lcom/ts/canview/CanNumInuptDlg$onInputOK;II)V

    goto :goto_0

    .line 306
    :pswitch_1
    new-instance v0, Lcom/ts/canview/CanNumInuptDlg;

    new-instance v1, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity$2;-><init>(Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;)V

    .line 314
    const/4 v2, 0x3

    const/4 v5, 0x1

    .line 306
    invoke-direct {v0, p0, v1, v2, v5}, Lcom/ts/canview/CanNumInuptDlg;-><init>(Landroid/content/Context;Lcom/ts/canview/CanNumInuptDlg$onInputOK;II)V

    goto :goto_0

    .line 317
    :pswitch_2
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->getYear()I

    move-result v0

    div-int/lit16 v3, v0, 0xff

    .line 318
    .local v3, "high":I
    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->getYear()I

    move-result v0

    rem-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v0, -0x8

    .line 319
    .local v4, "low":I
    const/16 v1, 0xb1

    iget v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->mItemNum:I

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->getMonth()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/bmw/mini/CanBMWMiniServiceDetailActivity;->CarSet(IIIII)V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
