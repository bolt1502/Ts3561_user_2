.class public Lcom/ts/canview/MyProgressBar;
.super Landroid/view/View;
.source "MyProgressBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyProgressBar"


# instance fields
.field private mBkX:I

.field private mBkY:I

.field private mBmpBk:Landroid/graphics/Bitmap;

.field private mBmpH:I

.field private mBmpProgress:Landroid/graphics/Bitmap;

.field private mBmpW:I

.field private mCur:I

.field private mMax:I

.field private mMin:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bkId"    # I
    .param p3, "progressId"    # I

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    iput v1, p0, Lcom/ts/canview/MyProgressBar;->mBkX:I

    .line 18
    iput v1, p0, Lcom/ts/canview/MyProgressBar;->mBkY:I

    .line 33
    invoke-virtual {p0}, Lcom/ts/canview/MyProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 34
    .local v0, "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/canview/MyProgressBar;->mBmpBk:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {p0}, Lcom/ts/canview/MyProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    .restart local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/canview/MyProgressBar;->mBmpProgress:Landroid/graphics/Bitmap;

    .line 39
    iget-object v1, p0, Lcom/ts/canview/MyProgressBar;->mBmpBk:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/ts/canview/MyProgressBar;->mBmpW:I

    .line 40
    iget-object v1, p0, Lcom/ts/canview/MyProgressBar;->mBmpBk:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/ts/canview/MyProgressBar;->mBmpH:I

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/ts/canview/MyProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 44
    return-void
.end method


# virtual methods
.method public SetCurPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/ts/canview/MyProgressBar;->mCur:I

    .line 59
    invoke-virtual {p0}, Lcom/ts/canview/MyProgressBar;->invalidate()V

    .line 60
    return-void
.end method

.method public SetDt(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 64
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 66
    iput p1, p0, Lcom/ts/canview/MyProgressBar;->mBkX:I

    .line 67
    iput p2, p0, Lcom/ts/canview/MyProgressBar;->mBkY:I

    .line 69
    :cond_0
    return-void
.end method

.method public SetMinMax(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 48
    if-le p2, p1, :cond_0

    .line 50
    iput p1, p0, Lcom/ts/canview/MyProgressBar;->mMin:I

    .line 51
    iput p2, p0, Lcom/ts/canview/MyProgressBar;->mMax:I

    .line 54
    :cond_0
    return-void
.end method

.method public Show(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 75
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ts/canview/MyProgressBar;->setVisibility(I)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/canview/MyProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public Show(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 87
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ts/canview/MyProgressBar;->setVisibility(I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/canview/MyProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected calcMeasure(II)I
    .locals 6
    .param p1, "val"    # I
    .param p2, "def"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 132
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 133
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 158
    :goto_0
    const-string v3, "MyProgressBar"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v0

    .line 137
    :sswitch_0
    const-string v3, "MyProgressBar"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5b50\u5bb9\u5668\u53ef\u4ee5\u662f\u58f0\u660e\u5927\u5c0f\u5185\u7684\u4efb\u610f\u5927\u5c0f, \u5927\u5c0f\u4e3a: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move v0, p2

    .line 139
    goto :goto_0

    .line 143
    :sswitch_1
    const-string v3, "MyProgressBar"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7236\u5bb9\u5668\u5df2\u7ecf\u4e3a\u5b50\u5bb9\u5668\u8bbe\u7f6e\u4e86\u5c3a\u5bf8,\u5927\u5c0f\u4e3a:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move v0, v2

    .line 145
    goto :goto_0

    .line 150
    :sswitch_2
    const-string v3, "MyProgressBar"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7236\u5bb9\u5668\u5bf9\u4e8e\u5b50\u5bb9\u5668\u6ca1\u6709\u4efb\u4f55\u9650\u5236,\u5927\u5c0f\u4e3a:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move v0, p2

    .line 152
    goto :goto_0

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 101
    iget-object v3, p0, Lcom/ts/canview/MyProgressBar;->mBmpBk:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/ts/canview/MyProgressBar;->mBkX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/ts/canview/MyProgressBar;->mBkY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/ts/canview/MyProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    iget v3, p0, Lcom/ts/canview/MyProgressBar;->mCur:I

    iget v4, p0, Lcom/ts/canview/MyProgressBar;->mMin:I

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/ts/canview/MyProgressBar;->mCur:I

    iget v4, p0, Lcom/ts/canview/MyProgressBar;->mMax:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/ts/canview/MyProgressBar;->mMin:I

    iget v4, p0, Lcom/ts/canview/MyProgressBar;->mMax:I

    if-ge v3, v4, :cond_0

    .line 109
    iget v3, p0, Lcom/ts/canview/MyProgressBar;->mCur:I

    iget v4, p0, Lcom/ts/canview/MyProgressBar;->mMin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/ts/canview/MyProgressBar;->mBmpW:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/ts/canview/MyProgressBar;->mMax:I

    iget v5, p0, Lcom/ts/canview/MyProgressBar;->mMin:I

    sub-int/2addr v4, v5

    div-int v0, v3, v4

    .line 111
    .local v0, "drawW":I
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/ts/canview/MyProgressBar;->mBmpH:I

    invoke-direct {v2, v7, v7, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    .local v2, "src":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/ts/canview/MyProgressBar;->mBkX:I

    iget v4, p0, Lcom/ts/canview/MyProgressBar;->mBkY:I

    iget v5, p0, Lcom/ts/canview/MyProgressBar;->mBkX:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/ts/canview/MyProgressBar;->mBkY:I

    iget v7, p0, Lcom/ts/canview/MyProgressBar;->mBmpH:I

    add-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 113
    .local v1, "dst":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/ts/canview/MyProgressBar;->mBmpProgress:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/ts/canview/MyProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 115
    .end local v0    # "drawW":I
    .end local v1    # "dst":Landroid/graphics/Rect;
    .end local v2    # "src":Landroid/graphics/Rect;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 124
    iget v0, p0, Lcom/ts/canview/MyProgressBar;->mBmpW:I

    iget v1, p0, Lcom/ts/canview/MyProgressBar;->mBkX:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/ts/canview/MyProgressBar;->calcMeasure(II)I

    move-result v0

    iget v1, p0, Lcom/ts/canview/MyProgressBar;->mBmpH:I

    iget v2, p0, Lcom/ts/canview/MyProgressBar;->mBkY:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/ts/canview/MyProgressBar;->calcMeasure(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ts/canview/MyProgressBar;->setMeasuredDimension(II)V

    .line 126
    return-void
.end method
