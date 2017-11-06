.class public Lcom/ts/set/setview/SettingSeekBar;
.super Landroid/view/View;
.source "SettingSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;
    }
.end annotation


# static fields
.field private static final PT_SIDE_W:I

.field private static final PT_X_DT:I

.field private static final PT_Y_DT:I


# instance fields
.field private mBkX:I

.field private mBkY:I

.field private mBmpBk:Landroid/graphics/Bitmap;

.field private mBmpH:I

.field private mBmpPoint:Landroid/graphics/Bitmap;

.field private mBmpProgress:Landroid/graphics/Bitmap;

.field private mBmpW:I

.field private mCurPos:I

.field private mMaxPos:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosCb:Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    iput v0, p0, Lcom/ts/set/setview/SettingSeekBar;->mCurPos:I

    .line 23
    iput v0, p0, Lcom/ts/set/setview/SettingSeekBar;->mMaxPos:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/set/setview/SettingSeekBar;->mPosCb:Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;

    .line 39
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SettingSeekBar;->initImage(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lcom/ts/set/setview/SettingSeekBar;->mCurPos:I

    .line 23
    iput v0, p0, Lcom/ts/set/setview/SettingSeekBar;->mMaxPos:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/set/setview/SettingSeekBar;->mPosCb:Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;

    .line 45
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SettingSeekBar;->initImage(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private dealTouch(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 141
    iget v0, p0, Lcom/ts/set/setview/SettingSeekBar;->mCurPos:I

    .line 142
    .local v0, "pos":I
    const/16 v1, 0x13

    if-ge p2, v1, :cond_2

    .line 145
    iget v0, p0, Lcom/ts/set/setview/SettingSeekBar;->mMaxPos:I

    .line 156
    :goto_0
    iget v1, p0, Lcom/ts/set/setview/SettingSeekBar;->mCurPos:I

    if-eq v0, v1, :cond_1

    .line 158
    iput v0, p0, Lcom/ts/set/setview/SettingSeekBar;->mCurPos:I

    .line 159
    iget-object v1, p0, Lcom/ts/set/setview/SettingSeekBar;->mPosCb:Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/ts/set/setview/SettingSeekBar;->mPosCb:Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;

    invoke-interface {v1, p0, v0}, Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;->onChanged(Landroid/view/View;I)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingSeekBar;->invalidate()V

    .line 166
    :cond_1
    return-void

    .line 147
    :cond_2
    const/16 v1, 0xdd

    if-le p2, v1, :cond_3

    .line 149
    const/4 v0, 0x0

    .line 150
    goto :goto_0

    .line 153
    :cond_3
    rsub-int v1, p2, 0xdd

    iget v2, p0, Lcom/ts/set/setview/SettingSeekBar;->mMaxPos:I

    mul-int/2addr v1, v2

    div-int/lit16 v0, v1, 0xca

    goto :goto_0
.end method

.method private initImage(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 119
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/ts/set/setview/SettingSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 121
    iput v3, p0, Lcom/ts/set/setview/SettingSeekBar;->mBkX:I

    .line 122
    iput v3, p0, Lcom/ts/set/setview/SettingSeekBar;->mBkY:I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 125
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_seekbar_track:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    .local v0, "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpBk:Landroid/graphics/Bitmap;

    .line 128
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_seekbar_progress:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 129
    .restart local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpProgress:Landroid/graphics/Bitmap;

    .line 131
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_seekbar_thumb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 132
    .restart local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpPoint:Landroid/graphics/Bitmap;

    .line 134
    iget-object v2, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpW:I

    .line 135
    iget-object v2, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpH:I

    .line 136
    return-void
.end method


# virtual methods
.method public getMostSuitableWidth()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpW:I

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "drawH":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 84
    .local v3, "src":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 86
    .local v2, "dst":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpBk:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/ts/set/setview/SettingSeekBar;->mBkX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/ts/set/setview/SettingSeekBar;->mBkY:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/ts/set/setview/SettingSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    iget v4, p0, Lcom/ts/set/setview/SettingSeekBar;->mCurPos:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/ts/set/setview/SettingSeekBar;->mMaxPos:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/ts/set/setview/SettingSeekBar;->mCurPos:I

    iget v5, p0, Lcom/ts/set/setview/SettingSeekBar;->mMaxPos:I

    if-le v4, v5, :cond_1

    .line 89
    :cond_0
    const/4 v1, 0x0

    .line 110
    .local v1, "drawW":I
    :goto_0
    iget-object v4, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpPoint:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    rsub-int v6, v0, 0xdd

    add-int/lit8 v6, v6, -0x13

    int-to-float v6, v6

    iget-object v7, p0, Lcom/ts/set/setview/SettingSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    return-void

    .line 93
    .end local v1    # "drawW":I
    :cond_1
    iget v4, p0, Lcom/ts/set/setview/SettingSeekBar;->mCurPos:I

    mul-int/lit16 v4, v4, 0xca

    iget v5, p0, Lcom/ts/set/setview/SettingSeekBar;->mMaxPos:I

    div-int v0, v4, v5

    .line 95
    iget v4, p0, Lcom/ts/set/setview/SettingSeekBar;->mCurPos:I

    iget v5, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpW:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/ts/set/setview/SettingSeekBar;->mMaxPos:I

    div-int v1, v4, v5

    .line 96
    .restart local v1    # "drawW":I
    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 97
    rsub-int v4, v0, 0xdd

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 98
    const/16 v4, 0x27

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 99
    const/16 v4, 0xdd

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 107
    iget-object v4, p0, Lcom/ts/set/setview/SettingSeekBar;->mBmpProgress:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/ts/set/setview/SettingSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 175
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/ts/set/setview/SettingSeekBar;->dealTouch(II)V

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/ts/set/setview/SettingSeekBar;->dealTouch(II)V

    goto :goto_0

    .line 183
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/ts/set/setview/SettingSeekBar;->dealTouch(II)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCurPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/ts/set/setview/SettingSeekBar;->mCurPos:I

    .line 57
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingSeekBar;->invalidate()V

    .line 58
    return-void
.end method

.method public setMaxPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/ts/set/setview/SettingSeekBar;->mMaxPos:I

    .line 68
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingSeekBar;->invalidate()V

    .line 69
    return-void
.end method

.method public setOnTouchChangedListener(Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;)V
    .locals 0
    .param p1, "l"    # Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ts/set/setview/SettingSeekBar;->mPosCb:Lcom/ts/set/setview/SettingSeekBar$onTouchPosChanged;

    .line 74
    return-void
.end method
