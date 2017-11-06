.class public Lcom/ts/canview/RelativeLayoutContainer;
.super Ljava/lang/Object;
.source "RelativeLayoutContainer.java"


# instance fields
.field private mContainer:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContext:Landroid/content/Context;

    .line 27
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_layout:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContainer:Landroid/widget/RelativeLayout;

    .line 28
    return-void
.end method

.method private createLayoutParam(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 185
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 187
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 188
    return-object v0
.end method


# virtual methods
.method public addButton(II)Lcom/ts/other/ParamButton;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x2

    .line 153
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/ts/canview/RelativeLayoutContainer;->addButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    return-object v0
.end method

.method public addButton(IIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 146
    new-instance v0, Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "button":Lcom/ts/other/ParamButton;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ts/canview/RelativeLayoutContainer;->createLayoutParam(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v1, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 149
    return-object v0
.end method

.method public addImage(III)Landroid/widget/ImageView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v3, -0x2

    .line 168
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->addImage(IIIII)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public addImage(IIIII)Landroid/widget/ImageView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "resId"    # I

    .prologue
    .line 158
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "image":Landroid/widget/ImageView;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ts/canview/RelativeLayoutContainer;->createLayoutParam(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    if-lez p5, :cond_0

    .line 161
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 164
    return-object v0
.end method

.method public addText(II)Landroid/widget/TextView;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x2

    .line 180
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/ts/canview/RelativeLayoutContainer;->addText(IIII)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public addText(IIII)Landroid/widget/TextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 173
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, "text":Landroid/widget/TextView;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ts/canview/RelativeLayoutContainer;->createLayoutParam(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v1, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 176
    return-object v0
.end method

.method public addView(Landroid/view/View;II)Landroid/view/View;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v4, -0x2

    .line 192
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->addView(Landroid/view/View;IIII)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public addView(Landroid/view/View;IIII)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 197
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ts/canview/RelativeLayoutContainer;->createLayoutParam(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 198
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v1, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 200
    return-object p1
.end method

.method public getContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public setBackgroundColor(I)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 41
    return-object p0
.end method

.method public setBackgroundResource(I)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 36
    return-object p0
.end method

.method public setColorStateList(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 8
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "normal"    # I
    .param p3, "pressed"    # I
    .param p4, "selected"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 134
    new-array v1, v3, [I

    aput p3, v1, v5

    aput p4, v1, v6

    aput p2, v1, v7

    .line 135
    .local v1, "colors":[I
    new-array v2, v3, [[I

    .line 136
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v2, v5

    .line 137
    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    aput-object v3, v2, v6

    .line 138
    new-array v3, v5, [I

    aput-object v3, v2, v7

    .line 140
    .local v2, "states":[[I
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 141
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 142
    return-object p0
.end method

.method public setColorUpDnList(Landroid/widget/TextView;II)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "normal"    # I
    .param p3, "pressed"    # I

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2, p3, p2}, Lcom/ts/canview/RelativeLayoutContainer;->setColorStateList(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    return-object v0
.end method

.method public setColorUpDnSelList(Landroid/widget/TextView;II)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "normal"    # I
    .param p3, "preAndSel"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/ts/canview/RelativeLayoutContainer;->setColorStateList(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    return-object v0
.end method

.method public setColorUpSelList(Landroid/widget/TextView;II)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "normal"    # I
    .param p3, "selected"    # I

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/ts/canview/RelativeLayoutContainer;->setColorStateList(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    return-object v0
.end method

.method public setDrawableStateList(Landroid/view/View;III)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "normal"    # I
    .param p3, "pressed"    # I
    .param p4, "selected"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 106
    iget-object v5, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 107
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 109
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    if-gtz p2, :cond_0

    move-object v1, v4

    .line 110
    .local v1, "normalDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-gtz p3, :cond_1

    move-object v2, v4

    .line 111
    .local v2, "pressedDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-gtz p4, :cond_2

    .line 113
    .local v4, "selectedDrawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    invoke-virtual {v0, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 114
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    invoke-virtual {v0, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 115
    new-array v5, v7, [I

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-object p0

    .line 109
    .end local v1    # "normalDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "pressedDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "selectedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 110
    .restart local v1    # "normalDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 111
    .restart local v2    # "pressedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2
.end method

.method public setDrawableUpDn(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "normal"    # I
    .param p3, "pressed"    # I

    .prologue
    .line 97
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableStateList(Landroid/view/View;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    return-object v0
.end method

.method public setDrawableUpDnSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "normal"    # I
    .param p3, "preAndSel"    # I

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableStateList(Landroid/view/View;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    return-object v0
.end method

.method public setDrawableUpSel(Landroid/view/View;II)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "normal"    # I
    .param p3, "selected"    # I

    .prologue
    .line 101
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ts/canview/RelativeLayoutContainer;->setDrawableStateList(Landroid/view/View;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    return-object v0
.end method

.method public setIdClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-object p0
.end method

.method public setIdTouchListener(Landroid/view/View;ILandroid/view/View$OnTouchListener;)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    return-object p0
.end method

.method public setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 6
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "textId"    # I
    .param p3, "gravity"    # I
    .param p4, "color"    # I
    .param p5, "size"    # I

    .prologue
    .line 72
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/ts/canview/RelativeLayoutContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;III)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    return-object v0

    .line 72
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public setTextStyle(Landroid/widget/TextView;Ljava/lang/String;III)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "gravity"    # I
    .param p4, "color"    # I
    .param p5, "size"    # I

    .prologue
    .line 77
    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    if-eqz p3, :cond_1

    .line 81
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    :cond_1
    if-eqz p4, :cond_2

    .line 84
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :cond_2
    if-eqz p5, :cond_3

    .line 87
    int-to-float v0, p5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    :cond_3
    return-object p0
.end method

.method public setTextStyle1(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 6
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "textId"    # I
    .param p3, "color"    # I
    .param p4, "size"    # I

    .prologue
    .line 59
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    return-object v0
.end method

.method public setTextStyle2(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 6
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "textId"    # I
    .param p3, "gravity"    # I
    .param p4, "size"    # I

    .prologue
    .line 63
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    return-object v0
.end method

.method public setTextStyle3(Landroid/widget/TextView;III)Lcom/ts/canview/RelativeLayoutContainer;
    .locals 6
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "textId"    # I
    .param p3, "gravity"    # I
    .param p4, "color"    # I

    .prologue
    .line 67
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ts/canview/RelativeLayoutContainer;->setTextStyle(Landroid/widget/TextView;IIII)Lcom/ts/canview/RelativeLayoutContainer;

    move-result-object v0

    return-object v0
.end method
