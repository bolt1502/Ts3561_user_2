.class public Lcom/ts/other/CustomImgView;
.super Landroid/widget/ImageView;
.source "CustomImgView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/other/CustomImgView$onPaint;
    }
.end annotation


# instance fields
.field protected mCanvas:Landroid/graphics/Canvas;

.field protected mCbPaint:Lcom/ts/other/CustomImgView$onPaint;

.field protected mIsDrawing:Z

.field protected mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mP1:I

.field protected mP2:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mRes:Landroid/content/res/Resources;

.field protected mXDrawDt:I

.field protected mYDrawDt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v1, p0, Lcom/ts/other/CustomImgView;->mCbPaint:Lcom/ts/other/CustomImgView$onPaint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ts/other/CustomImgView;->mPaint:Landroid/graphics/Paint;

    .line 21
    iput-object v1, p0, Lcom/ts/other/CustomImgView;->mCanvas:Landroid/graphics/Canvas;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/other/CustomImgView;->mIsDrawing:Z

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ts/other/CustomImgView;->mMap:Ljava/util/HashMap;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/other/CustomImgView;->mRes:Landroid/content/res/Resources;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ts/other/CustomImgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-object v1, p0, Lcom/ts/other/CustomImgView;->mCbPaint:Lcom/ts/other/CustomImgView$onPaint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ts/other/CustomImgView;->mPaint:Landroid/graphics/Paint;

    .line 21
    iput-object v1, p0, Lcom/ts/other/CustomImgView;->mCanvas:Landroid/graphics/Canvas;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/other/CustomImgView;->mIsDrawing:Z

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ts/other/CustomImgView;->mMap:Ljava/util/HashMap;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/other/CustomImgView;->mRes:Landroid/content/res/Resources;

    .line 51
    return-void
.end method


# virtual methods
.method public SetSel(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_0
.end method

.method public Show(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomImgView;->setVisibility(I)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomImgView;->setVisibility(I)V

    goto :goto_0
.end method

.method public Show(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomImgView;->setVisibility(I)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ts/other/CustomImgView;->setVisibility(I)V

    goto :goto_0
.end method

.method public drawImage(III)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .prologue
    .line 82
    iget-boolean v2, p0, Lcom/ts/other/CustomImgView;->mIsDrawing:Z

    if-nez v2, :cond_0

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/ts/other/CustomImgView;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 86
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 88
    iget-object v2, p0, Lcom/ts/other/CustomImgView;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 89
    .local v1, "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/ts/other/CustomImgView;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v1    # "bmpDa":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    iget-object v2, p0, Lcom/ts/other/CustomImgView;->mCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/ts/other/CustomImgView;->mXDrawDt:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    iget v4, p0, Lcom/ts/other/CustomImgView;->mYDrawDt:I

    add-int/2addr v4, p3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/ts/other/CustomImgView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntParam1()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/ts/other/CustomImgView;->mP1:I

    return v0
.end method

.method public getIntParam2()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ts/other/CustomImgView;->mP2:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/other/CustomImgView;->mIsDrawing:Z

    .line 60
    iput-object p1, p0, Lcom/ts/other/CustomImgView;->mCanvas:Landroid/graphics/Canvas;

    .line 61
    iget-object v0, p0, Lcom/ts/other/CustomImgView;->mCbPaint:Lcom/ts/other/CustomImgView$onPaint;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ts/other/CustomImgView;->mCbPaint:Lcom/ts/other/CustomImgView$onPaint;

    iget-object v1, p0, Lcom/ts/other/CustomImgView;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p0, p1, v1}, Lcom/ts/other/CustomImgView$onPaint;->userPaint(Lcom/ts/other/CustomImgView;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/other/CustomImgView;->mIsDrawing:Z

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    return-void
.end method

.method public setDrawDt(II)V
    .locals 0
    .param p1, "xDt"    # I
    .param p2, "yDt"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/ts/other/CustomImgView;->mXDrawDt:I

    .line 77
    iput p2, p0, Lcom/ts/other/CustomImgView;->mYDrawDt:I

    .line 78
    return-void
.end method

.method public setIntParam1(I)V
    .locals 0
    .param p1, "p1"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/ts/other/CustomImgView;->mP1:I

    .line 101
    return-void
.end method

.method public setIntParma2(I)V
    .locals 0
    .param p1, "p2"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/ts/other/CustomImgView;->mP2:I

    .line 106
    return-void
.end method

.method public setStateDrawable(II)V
    .locals 9
    .param p1, "normal"    # I
    .param p2, "selected"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 121
    iget-object v3, p0, Lcom/ts/other/CustomImgView;->mRes:Landroid/content/res/Resources;

    .line 122
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 123
    .local v4, "sd":Landroid/graphics/drawable/StateListDrawable;
    if-ne p1, v5, :cond_0

    move-object v0, v2

    .line 124
    .local v0, "iNormal":Landroid/graphics/drawable/Drawable;
    :goto_0
    const/4 v1, 0x0

    .line 125
    .local v1, "iPressed":Landroid/graphics/drawable/Drawable;
    if-ne p2, v5, :cond_1

    .line 129
    .local v2, "iSelected":Landroid/graphics/drawable/Drawable;
    :goto_1
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 130
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    invoke-virtual {v4, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 131
    new-array v5, v8, [I

    const v6, 0x101009e

    aput v6, v5, v7

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 132
    new-array v5, v7, [I

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-virtual {p0, v4}, Lcom/ts/other/CustomImgView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-void

    .line 123
    .end local v0    # "iNormal":Landroid/graphics/drawable/Drawable;
    .end local v1    # "iPressed":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iSelected":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 125
    .restart local v0    # "iNormal":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "iPressed":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public setStateDrawable(III)V
    .locals 9
    .param p1, "normal"    # I
    .param p2, "down"    # I
    .param p3, "selected"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 139
    iget-object v3, p0, Lcom/ts/other/CustomImgView;->mRes:Landroid/content/res/Resources;

    .line 140
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 141
    .local v4, "sd":Landroid/graphics/drawable/StateListDrawable;
    if-ne p1, v5, :cond_0

    move-object v0, v2

    .line 142
    .local v0, "iNormal":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-ne p2, v5, :cond_1

    move-object v1, v2

    .line 143
    .local v1, "iPressed":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-ne p3, v5, :cond_2

    .line 147
    .local v2, "iSelected":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 148
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    invoke-virtual {v4, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 149
    new-array v5, v8, [I

    const v6, 0x101009e

    aput v6, v5, v7

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 150
    new-array v5, v7, [I

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {p0, v4}, Lcom/ts/other/CustomImgView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    return-void

    .line 141
    .end local v0    # "iNormal":Landroid/graphics/drawable/Drawable;
    .end local v1    # "iPressed":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iSelected":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 142
    .restart local v0    # "iNormal":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 143
    .restart local v1    # "iPressed":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2
.end method

.method public setUserPaint(Lcom/ts/other/CustomImgView$onPaint;)V
    .locals 0
    .param p1, "paint"    # Lcom/ts/other/CustomImgView$onPaint;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ts/other/CustomImgView;->mCbPaint:Lcom/ts/other/CustomImgView$onPaint;

    .line 72
    return-void
.end method
