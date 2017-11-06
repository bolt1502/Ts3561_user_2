.class public Lcom/ts/set/setview/SettingBalanceView;
.super Landroid/view/View;
.source "SettingBalanceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;
    }
.end annotation


# static fields
.field private static final BK_X_DT:I = 0x0

.field private static final BK_Y_DT:I = 0x0

.field private static final PT_HALF:I = 0x10

.field private static final SP_DT:I = 0x10


# instance fields
.field private mBal:I

.field private mBmpBk:Landroid/graphics/Bitmap;

.field private mBmpPtDn:Landroid/graphics/Bitmap;

.field private mBmpPtUp:Landroid/graphics/Bitmap;

.field private mChangedCb:Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;

.field private mDragFlg:Z

.field private mFad:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPtCenX:I

.field private mPtCenY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mChangedCb:Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;

    .line 41
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SettingBalanceView;->initImage(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mChangedCb:Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;

    .line 47
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SettingBalanceView;->initImage(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private checkDrag(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingBalanceView;->getPtCenXY()V

    .line 184
    iget v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenX:I

    add-int/lit8 v0, v0, -0x10

    if-lt p1, v0, :cond_0

    .line 185
    iget v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenX:I

    add-int/lit8 v0, v0, 0x10

    if-gt p1, v0, :cond_0

    .line 186
    iget v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenY:I

    add-int/lit8 v0, v0, -0x10

    if-lt p2, v0, :cond_0

    .line 187
    iget v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenY:I

    add-int/lit8 v0, v0, 0x10

    if-gt p2, v0, :cond_0

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mDragFlg:Z

    .line 191
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingBalanceView;->invalidate()V

    .line 193
    :cond_0
    return-void
.end method

.method private dealTouch(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0x8

    .line 130
    add-int/lit8 v2, p1, -0x3

    .line 131
    .local v2, "dx":I
    add-int/lit8 v3, p2, -0x2

    .line 133
    .local v3, "dy":I
    if-gtz v2, :cond_4

    .line 135
    const/4 v0, 0x0

    .line 151
    .local v0, "curBal":I
    :cond_0
    :goto_0
    if-gtz v3, :cond_6

    .line 153
    const/4 v1, 0x0

    .line 170
    .local v1, "curFad":I
    :cond_1
    :goto_1
    iget v4, p0, Lcom/ts/set/setview/SettingBalanceView;->mBal:I

    if-ne v0, v4, :cond_2

    iget v4, p0, Lcom/ts/set/setview/SettingBalanceView;->mFad:I

    if-eq v1, v4, :cond_3

    .line 172
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/ts/set/setview/SettingBalanceView;->setBalance(II)V

    .line 173
    iget-object v4, p0, Lcom/ts/set/setview/SettingBalanceView;->mChangedCb:Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;

    if-eqz v4, :cond_3

    .line 175
    iget-object v4, p0, Lcom/ts/set/setview/SettingBalanceView;->mChangedCb:Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;

    invoke-interface {v4, p0, v1, v0}, Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;->onChanged(Landroid/view/View;II)V

    .line 179
    :cond_3
    return-void

    .line 139
    .end local v0    # "curBal":I
    .end local v1    # "curFad":I
    :cond_4
    div-int/lit8 v0, v2, 0x10

    .line 140
    .restart local v0    # "curBal":I
    rem-int/lit8 v4, v2, 0x10

    if-lt v4, v5, :cond_5

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 145
    :cond_5
    if-le v0, v6, :cond_0

    .line 147
    const/16 v0, 0xe

    goto :goto_0

    .line 157
    :cond_6
    div-int/lit8 v1, v3, 0x10

    .line 158
    .restart local v1    # "curFad":I
    rem-int/lit8 v4, v3, 0x10

    if-lt v4, v5, :cond_7

    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 163
    :cond_7
    if-le v1, v6, :cond_1

    .line 165
    const/16 v1, 0xe

    goto :goto_1
.end method

.method private initImage(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/ts/set/setview/SettingBalanceView;->mPaint:Landroid/graphics/Paint;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_balance_seat:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 116
    .local v0, "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/setview/SettingBalanceView;->mBmpBk:Landroid/graphics/Bitmap;

    .line 119
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_bal_dot_dn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 120
    .restart local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/setview/SettingBalanceView;->mBmpPtDn:Landroid/graphics/Bitmap;

    .line 122
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_bal_dot_up:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 123
    .restart local v0    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ts/set/setview/SettingBalanceView;->mBmpPtUp:Landroid/graphics/Bitmap;

    .line 125
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ts/set/setview/SettingBalanceView;->mBmpPtUp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ts/set/setview/SettingBalanceView;->mBmpPtUp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method


# virtual methods
.method getPtCenXY()V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mBal:I

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenX:I

    .line 108
    iget v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mFad:I

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenY:I

    .line 109
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x41800000    # 16.0f

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "drawW":I
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingBalanceView;->getPtCenXY()V

    .line 91
    iget-object v1, p0, Lcom/ts/set/setview/SettingBalanceView;->mBmpBk:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/ts/set/setview/SettingBalanceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "x = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenX:I

    add-int/lit8 v3, v3, -0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenY:I

    add-int/lit8 v3, v3, -0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v1, p0, Lcom/ts/set/setview/SettingBalanceView;->mDragFlg:Z

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/ts/set/setview/SettingBalanceView;->mBmpPtDn:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenX:I

    add-int/lit8 v2, v2, -0x10

    int-to-float v2, v2

    iget v3, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenY:I

    add-int/lit8 v3, v3, -0x10

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ts/set/setview/SettingBalanceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/ts/set/setview/SettingBalanceView;->mBmpPtUp:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenX:I

    add-int/lit8 v2, v2, -0x10

    int-to-float v2, v2

    iget v3, p0, Lcom/ts/set/setview/SettingBalanceView;->mPtCenY:I

    add-int/lit8 v3, v3, -0x10

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ts/set/setview/SettingBalanceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 200
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 201
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 219
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 204
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/ts/set/setview/SettingBalanceView;->checkDrag(II)V

    .line 205
    invoke-direct {p0, v0, v1}, Lcom/ts/set/setview/SettingBalanceView;->dealTouch(II)V

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/ts/set/setview/SettingBalanceView;->dealTouch(II)V

    goto :goto_0

    .line 213
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/ts/set/setview/SettingBalanceView;->dealTouch(II)V

    .line 214
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ts/set/setview/SettingBalanceView;->mDragFlg:Z

    .line 215
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingBalanceView;->invalidate()V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBal(I)V
    .locals 1
    .param p1, "bal"    # I

    .prologue
    .line 67
    iget v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mBal:I

    if-eq v0, p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingBalanceView;->invalidate()V

    .line 70
    iput p1, p0, Lcom/ts/set/setview/SettingBalanceView;->mBal:I

    .line 72
    :cond_0
    return-void
.end method

.method public setBalance(II)V
    .locals 0
    .param p1, "fad"    # I
    .param p2, "bal"    # I

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/ts/set/setview/SettingBalanceView;->setFad(I)V

    .line 77
    invoke-virtual {p0, p2}, Lcom/ts/set/setview/SettingBalanceView;->setBal(I)V

    .line 78
    return-void
.end method

.method public setBalanceChangedListener(Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;)V
    .locals 0
    .param p1, "l"    # Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ts/set/setview/SettingBalanceView;->mChangedCb:Lcom/ts/set/setview/SettingBalanceView$onTouchBalanceChanged;

    .line 83
    return-void
.end method

.method public setFad(I)V
    .locals 1
    .param p1, "fad"    # I

    .prologue
    .line 58
    iget v0, p0, Lcom/ts/set/setview/SettingBalanceView;->mFad:I

    if-eq v0, p1, :cond_0

    .line 60
    iput p1, p0, Lcom/ts/set/setview/SettingBalanceView;->mFad:I

    .line 61
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingBalanceView;->invalidate()V

    .line 63
    :cond_0
    return-void
.end method
