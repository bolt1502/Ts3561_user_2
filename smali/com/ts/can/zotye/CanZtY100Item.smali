.class public Lcom/ts/can/zotye/CanZtY100Item;
.super Ljava/lang/Object;
.source "CanZtY100Item.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CanZtY100Item"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mLayout:Landroid/widget/RelativeLayout;

.field protected mManager:Lcom/ts/other/RelativeLayoutManager;

.field protected mTvTitle:Lcom/ts/other/CustomTextView;

.field protected mTvVal:Lcom/ts/other/CustomTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0x14

    const/16 v4, 0x13

    const/4 v1, 0x1

    const/16 v3, 0x28

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ts/can/zotye/CanZtY100Item;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mLayout:Landroid/widget/RelativeLayout;

    .line 28
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 29
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 31
    const-string v0, "CanZtY100Item"

    const-string v1, "CanZtY100Item"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    iget-object v1, p0, Lcom/ts/can/zotye/CanZtY100Item;->mLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 36
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x122

    invoke-virtual {v0, v3, v5, v1, v3}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mTvTitle:Lcom/ts/other/CustomTextView;

    .line 37
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mTvTitle:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v6}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 38
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mTvTitle:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v4}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 40
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mManager:Lcom/ts/other/RelativeLayoutManager;

    const/16 v1, 0x14a

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mTvVal:Lcom/ts/other/CustomTextView;

    .line 41
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mTvVal:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v6}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 42
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mTvVal:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, v4}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected AddText(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 71
    iget-object v1, p0, Lcom/ts/can/zotye/CanZtY100Item;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 72
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPixelSize(I)V

    .line 74
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 75
    return-object v0
.end method

.method protected GetTitleTv()Lcom/ts/other/CustomTextView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mTvTitle:Lcom/ts/other/CustomTextView;

    return-object v0
.end method

.method protected GetValTv()Lcom/ts/other/CustomTextView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mTvVal:Lcom/ts/other/CustomTextView;

    return-object v0
.end method

.method public GetView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected SetText(Ljava/lang/String;)V
    .locals 1
    .param p1, "strText"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mTvTitle:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method protected SetVal(Ljava/lang/String;)V
    .locals 1
    .param p1, "strVal"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ts/can/zotye/CanZtY100Item;->mTvVal:Lcom/ts/other/CustomTextView;

    invoke-virtual {v0, p1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public setStateDrawable(III)V
    .locals 9
    .param p1, "normal"    # I
    .param p2, "pressed"    # I
    .param p3, "selected"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 48
    iget-object v5, p0, Lcom/ts/can/zotye/CanZtY100Item;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 49
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 50
    .local v4, "sd":Landroid/graphics/drawable/StateListDrawable;
    if-ne p1, v6, :cond_0

    move-object v0, v2

    .line 51
    .local v0, "iNormal":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-ne p2, v6, :cond_1

    move-object v1, v2

    .line 52
    .local v1, "iPressed":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-ne p3, v6, :cond_2

    .line 56
    .local v2, "iSelected":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 57
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    invoke-virtual {v4, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 58
    new-array v5, v8, [I

    const v6, 0x101009e

    aput v6, v5, v7

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 59
    new-array v5, v7, [I

    invoke-virtual {v4, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v5, p0, Lcom/ts/can/zotye/CanZtY100Item;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    return-void

    .line 50
    .end local v0    # "iNormal":Landroid/graphics/drawable/Drawable;
    .end local v1    # "iPressed":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iSelected":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 51
    .restart local v0    # "iNormal":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 52
    .restart local v1    # "iPressed":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2
.end method
