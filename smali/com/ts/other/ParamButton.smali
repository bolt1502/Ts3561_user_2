.class public Lcom/ts/other/ParamButton;
.super Landroid/widget/Button;
.source "ParamButton.java"


# static fields
.field private static mFsContext:Landroid/content/Context;

.field private static mFsLayout:Landroid/view/ViewGroup;

.field private static mFsYDt:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParam:I

.field private mParam2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/ts/other/ParamButton;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object p1, p0, Lcom/ts/other/ParamButton;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static fsCreateRelative(IIII)Lcom/ts/other/ParamButton;
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/ts/other/ParamButton;

    sget-object v2, Lcom/ts/other/ParamButton;->mFsContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "btn":Lcom/ts/other/ParamButton;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v1, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 174
    sget v2, Lcom/ts/other/ParamButton;->mFsYDt:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    sget-object v2, Lcom/ts/other/ParamButton;->mFsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    return-object v0
.end method

.method public static initFactory(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "yDt"    # I

    .prologue
    .line 163
    sput-object p0, Lcom/ts/other/ParamButton;->mFsContext:Landroid/content/Context;

    .line 164
    sput-object p1, Lcom/ts/other/ParamButton;->mFsLayout:Landroid/view/ViewGroup;

    .line 165
    sput p2, Lcom/ts/other/ParamButton;->mFsYDt:I

    .line 166
    return-void
.end method


# virtual methods
.method public SetBgTransparent()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/other/ParamButton;->setBackgroundColor(I)V

    .line 207
    return-void
.end method

.method public SetSel(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0
.end method

.method public Show(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ts/other/ParamButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 157
    invoke-super {p0, p1}, Landroid/widget/Button;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getIntParam()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ts/other/ParamButton;->mParam:I

    return v0
.end method

.method public getIntParam2()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/ts/other/ParamButton;->mParam2:I

    return v0
.end method

.method public setColor(II)V
    .locals 8
    .param p1, "normal"    # I
    .param p2, "pressedDn"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    new-array v1, v3, [I

    aput p2, v1, v5

    aput p2, v1, v6

    aput p1, v1, v7

    .line 124
    .local v1, "colors":[I
    new-array v2, v3, [[I

    .line 125
    .local v2, "states":[[I
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v2, v5

    .line 126
    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    aput-object v3, v2, v6

    .line 127
    new-array v3, v5, [I

    aput-object v3, v2, v7

    .line 128
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 129
    .local v0, "colorList":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v0}, Lcom/ts/other/ParamButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 130
    return-void
.end method

.method public setColorUpDn(II)V
    .locals 7
    .param p1, "normal"    # I
    .param p2, "pressed"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    new-array v1, v3, [I

    aput p2, v1, v5

    aput p1, v1, v6

    .line 114
    .local v1, "colors":[I
    new-array v2, v3, [[I

    .line 115
    .local v2, "states":[[I
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v2, v5

    .line 116
    new-array v3, v5, [I

    aput-object v3, v2, v6

    .line 117
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 118
    .local v0, "colorList":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v0}, Lcom/ts/other/ParamButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 119
    return-void
.end method

.method public setDrawable(II)V
    .locals 0
    .param p1, "normal"    # I
    .param p2, "pressedSel"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2, p2}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 71
    return-void
.end method

.method public setIntParam(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/ts/other/ParamButton;->mParam:I

    .line 41
    return-void
.end method

.method public setIntParam2(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/ts/other/ParamButton;->mParam2:I

    .line 51
    return-void
.end method

.method public setStateColor(IIII)V
    .locals 10
    .param p1, "normal"    # I
    .param p2, "pressed"    # I
    .param p3, "selected"    # I
    .param p4, "unable"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 134
    const/4 v3, 0x6

    new-array v1, v3, [I

    aput p2, v1, v5

    aput p3, v1, v6

    aput p1, v1, v7

    aput p3, v1, v8

    aput p4, v1, v9

    const/4 v3, 0x5

    aput p1, v1, v3

    .line 135
    .local v1, "colors":[I
    const/4 v3, 0x6

    new-array v2, v3, [[I

    .line 136
    .local v2, "states":[[I
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    aput-object v3, v2, v5

    .line 137
    new-array v3, v7, [I

    fill-array-data v3, :array_1

    aput-object v3, v2, v6

    .line 138
    new-array v3, v6, [I

    const v4, 0x101009e

    aput v4, v3, v5

    aput-object v3, v2, v7

    .line 139
    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    aput-object v3, v2, v8

    .line 140
    new-array v3, v6, [I

    const v4, 0x101009d

    aput v4, v3, v5

    aput-object v3, v2, v9

    .line 141
    const/4 v3, 0x5

    new-array v4, v5, [I

    aput-object v4, v2, v3

    .line 142
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 143
    .local v0, "colorList":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v0}, Lcom/ts/other/ParamButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 144
    return-void

    .line 136
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 137
    :array_1
    .array-data 4
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public setStateDrawable(III)V
    .locals 9
    .param p1, "normal"    # I
    .param p2, "pressed"    # I
    .param p3, "selected"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    iget-object v5, p0, Lcom/ts/other/ParamButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 76
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 77
    .local v4, "sd":Landroid/graphics/drawable/StateListDrawable;
    if-gtz p1, :cond_0

    move-object v0, v2

    .line 78
    .local v0, "iNormal":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-gtz p2, :cond_1

    move-object v1, v2

    .line 79
    .local v1, "iPressed":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-gtz p3, :cond_2

    .line 83
    .local v2, "iSelected":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 84
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    invoke-virtual {v4, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 85
    new-array v5, v8, [I

    const v6, 0x101009e

    aput v6, v5, v7

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 86
    new-array v5, v7, [I

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, v4}, Lcom/ts/other/ParamButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void

    .line 77
    .end local v0    # "iNormal":Landroid/graphics/drawable/Drawable;
    .end local v1    # "iPressed":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iSelected":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 78
    .restart local v0    # "iNormal":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 79
    .restart local v1    # "iPressed":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2
.end method

.method public setStateFocus(III)V
    .locals 9
    .param p1, "normal"    # I
    .param p2, "pressedSel"    # I
    .param p3, "focused"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    iget-object v5, p0, Lcom/ts/other/ParamButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 95
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 96
    .local v4, "sd":Landroid/graphics/drawable/StateListDrawable;
    if-gtz p1, :cond_0

    move-object v1, v0

    .line 97
    .local v1, "iNormal":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-gtz p2, :cond_1

    move-object v2, v0

    .line 98
    .local v2, "iPressed":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-gtz p3, :cond_2

    .line 102
    .local v0, "iFocused":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 103
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 104
    new-array v5, v8, [I

    const v6, 0x101009c

    aput v6, v5, v7

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 105
    new-array v5, v8, [I

    const v6, 0x101009e

    aput v6, v5, v7

    invoke-virtual {v4, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 106
    new-array v5, v7, [I

    invoke-virtual {v4, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {p0, v4}, Lcom/ts/other/ParamButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void

    .line 96
    .end local v0    # "iFocused":Landroid/graphics/drawable/Drawable;
    .end local v1    # "iNormal":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iPressed":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 97
    .restart local v1    # "iNormal":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 98
    .restart local v2    # "iPressed":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method public setStateUpDn(II)V
    .locals 1
    .param p1, "normal"    # I
    .param p2, "pressed"    # I

    .prologue
    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 61
    return-void
.end method

.method public setStateUpSel(II)V
    .locals 1
    .param p1, "normal"    # I
    .param p2, "selected"    # I

    .prologue
    .line 65
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 66
    return-void
.end method
