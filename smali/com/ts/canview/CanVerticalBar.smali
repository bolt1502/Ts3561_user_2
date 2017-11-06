.class public Lcom/ts/canview/CanVerticalBar;
.super Landroid/view/View;
.source "CanVerticalBar.java"


# instance fields
.field private mBmpBg:Landroid/graphics/Bitmap;

.field private mBmpH:I

.field private mBmpProgress:Landroid/graphics/Bitmap;

.field private mBmpW:I

.field private mCurPos:F

.field private mMaxPos:F

.field private mMinPos:F

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lcom/ts/canview/CanVerticalBar;->mCurPos:F

    .line 19
    iput v0, p0, Lcom/ts/canview/CanVerticalBar;->mMaxPos:F

    .line 20
    iput v0, p0, Lcom/ts/canview/CanVerticalBar;->mMinPos:F

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/ts/canview/CanVerticalBar;->initImage(Landroid/content/Context;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resProg"    # I
    .param p3, "resBg"    # I

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lcom/ts/canview/CanVerticalBar;->mCurPos:F

    .line 19
    iput v0, p0, Lcom/ts/canview/CanVerticalBar;->mMaxPos:F

    .line 20
    iput v0, p0, Lcom/ts/canview/CanVerticalBar;->mMinPos:F

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/ts/canview/CanVerticalBar;->initImage(Landroid/content/Context;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v0, p0, Lcom/ts/canview/CanVerticalBar;->mCurPos:F

    .line 19
    iput v0, p0, Lcom/ts/canview/CanVerticalBar;->mMaxPos:F

    .line 20
    iput v0, p0, Lcom/ts/canview/CanVerticalBar;->mMinPos:F

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ts/canview/CanVerticalBar;->initImage(Landroid/content/Context;I)V

    .line 43
    return-void
.end method

.method private initImage(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 87
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/ts/canview/CanVerticalBar;->mPaint:Landroid/graphics/Paint;

    .line 89
    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 94
    .local v0, "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpProgress:Landroid/graphics/Bitmap;

    .line 96
    iget-object v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpW:I

    .line 97
    iget-object v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpH:I

    .line 100
    .end local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private initImage(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resProg"    # I
    .param p3, "resBg"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/ts/canview/CanVerticalBar;->initImage(Landroid/content/Context;I)V

    .line 106
    if-eqz p3, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 111
    .local v0, "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpBg:Landroid/graphics/Bitmap;

    .line 113
    .end local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 60
    iget-object v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpBg:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpBg:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/ts/canview/CanVerticalBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 65
    :cond_0
    iget v2, p0, Lcom/ts/canview/CanVerticalBar;->mCurPos:F

    iget v3, p0, Lcom/ts/canview/CanVerticalBar;->mMinPos:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/ts/canview/CanVerticalBar;->mCurPos:F

    iget v3, p0, Lcom/ts/canview/CanVerticalBar;->mMaxPos:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpProgress:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "drawH":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .local v1, "src":Landroid/graphics/Rect;
    iget v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ts/canview/CanVerticalBar;->mCurPos:F

    iget v4, p0, Lcom/ts/canview/CanVerticalBar;->mMinPos:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/ts/canview/CanVerticalBar;->mMaxPos:F

    iget v4, p0, Lcom/ts/canview/CanVerticalBar;->mMinPos:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 76
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 77
    iget v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpH:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 78
    iget v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpW:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 79
    iget v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpH:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 80
    iget-object v2, p0, Lcom/ts/canview/CanVerticalBar;->mBmpProgress:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/ts/canview/CanVerticalBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 82
    .end local v0    # "drawH":I
    .end local v1    # "src":Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 120
    iget v0, p0, Lcom/ts/canview/CanVerticalBar;->mBmpW:I

    iget v1, p0, Lcom/ts/canview/CanVerticalBar;->mBmpH:I

    invoke-virtual {p0, v0, v1}, Lcom/ts/canview/CanVerticalBar;->setMeasuredDimension(II)V

    .line 122
    return-void
.end method

.method public setCurPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 47
    int-to-float v0, p1

    iput v0, p0, Lcom/ts/canview/CanVerticalBar;->mCurPos:F

    .line 48
    invoke-virtual {p0}, Lcom/ts/canview/CanVerticalBar;->invalidate()V

    .line 49
    return-void
.end method

.method public setMinMax(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 53
    iput p2, p0, Lcom/ts/canview/CanVerticalBar;->mMaxPos:F

    .line 54
    iput p1, p0, Lcom/ts/canview/CanVerticalBar;->mMinPos:F

    .line 55
    return-void
.end method
