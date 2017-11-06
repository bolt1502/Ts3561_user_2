.class public Lcom/txznet/comm/ui/view/RippleView;
.super Landroid/widget/RelativeLayout;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/IKeepClass;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/view/RippleView$T3;,
        Lcom/txznet/comm/ui/view/RippleView$T;
    }
.end annotation


# instance fields
.field private T:I

.field private T0:I

.field private T2:I

.field private T3:I

.field private T7:Ljava/lang/Boolean;

.field private TB:I

.field private TF:Lcom/txznet/comm/ui/view/RippleView$T;

.field private TG:I

.field private TH:I

.field private TJ:F

.field private TL:Landroid/graphics/Bitmap;

.field private TN:I

.field private TO:Ljava/lang/Boolean;

.field private TP:F

.field private TQ:Landroid/graphics/Paint;

.field private TR:I

.field private TW:F

.field private Tc:Landroid/view/GestureDetector;

.field private Te:I

.field private final Tk:Ljava/lang/Runnable;

.field private Tn:I

.field private To:Ljava/lang/Integer;

.field private Tr:Landroid/view/animation/ScaleAnimation;

.field private Tw:F

.field private Ty:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/16 v0, 0xa

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    .line 66
    const/16 v0, 0x12c

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TN:I

    .line 67
    const/16 v0, 0x5a

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Te:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tw:F

    .line 69
    iput-boolean v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Ty:Z

    .line 70
    iput v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    .line 71
    iput v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TG:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TR:I

    .line 73
    iput v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TW:F

    .line 74
    iput v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TJ:F

    .line 86
    new-instance v0, Lcom/txznet/comm/ui/view/RippleView$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/view/RippleView$1;-><init>(Lcom/txznet/comm/ui/view/RippleView;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tk:Ljava/lang/Runnable;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/txznet/comm/ui/view/RippleView;->T(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/16 v0, 0xa

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    .line 66
    const/16 v0, 0x12c

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TN:I

    .line 67
    const/16 v0, 0x5a

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Te:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tw:F

    .line 69
    iput-boolean v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Ty:Z

    .line 70
    iput v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    .line 71
    iput v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TG:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TR:I

    .line 73
    iput v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TW:F

    .line 74
    iput v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TJ:F

    .line 86
    new-instance v0, Lcom/txznet/comm/ui/view/RippleView$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/view/RippleView$1;-><init>(Lcom/txznet/comm/ui/view/RippleView;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tk:Ljava/lang/Runnable;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/txznet/comm/ui/view/RippleView;->T(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/16 v0, 0xa

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    .line 66
    const/16 v0, 0x12c

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TN:I

    .line 67
    const/16 v0, 0x5a

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Te:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tw:F

    .line 69
    iput-boolean v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Ty:Z

    .line 70
    iput v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    .line 71
    iput v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TG:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TR:I

    .line 73
    iput v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TW:F

    .line 74
    iput v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TJ:F

    .line 86
    new-instance v0, Lcom/txznet/comm/ui/view/RippleView$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/view/RippleView$1;-><init>(Lcom/txznet/comm/ui/view/RippleView;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tk:Ljava/lang/Runnable;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/txznet/comm/ui/view/RippleView;->T(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method private T(I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "radius"    # I

    .prologue
    const/4 v9, 0x0

    .line 335
    iget-object v4, p0, Lcom/txznet/comm/ui/view/RippleView;->TL:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/txznet/comm/ui/view/RippleView;->TL:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 336
    .local v1, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 338
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/txznet/comm/ui/view/RippleView;->TW:F

    int-to-float v5, p1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/txznet/comm/ui/view/RippleView;->TJ:F

    int-to-float v6, p1

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/txznet/comm/ui/view/RippleView;->TW:F

    int-to-float v7, p1

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lcom/txznet/comm/ui/view/RippleView;->TJ:F

    int-to-float v8, p1

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 340
    .local v3, "rect":Landroid/graphics/Rect;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 341
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 342
    iget v4, p0, Lcom/txznet/comm/ui/view/RippleView;->TW:F

    iget v5, p0, Lcom/txznet/comm/ui/view/RippleView;->TJ:F

    int-to-float v6, p1

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 344
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 345
    iget-object v4, p0, Lcom/txznet/comm/ui/view/RippleView;->TL:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 347
    return-object v1
.end method

.method static synthetic T(Lcom/txznet/comm/ui/view/RippleView;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/view/RippleView;
    .param p1, "x1"    # Landroid/view/GestureDetector;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/txznet/comm/ui/view/RippleView;->Tc:Landroid/view/GestureDetector;

    return-object p1
.end method

.method private T(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 264
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RippleView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Ty:Z

    if-nez v0, :cond_4

    .line 265
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->T7:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tr:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/view/RippleView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 268
    :cond_0
    iget v0, p0, Lcom/txznet/comm/ui/view/RippleView;->T:I

    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->T3:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tw:F

    .line 270
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->To:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 271
    iget v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tw:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tw:F

    .line 273
    :cond_1
    iget v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tw:F

    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->T0:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tw:F

    .line 275
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->To:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RippleView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TW:F

    .line 277
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RippleView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TJ:F

    .line 283
    :goto_0
    iput-boolean v2, p0, Lcom/txznet/comm/ui/view/RippleView;->Ty:Z

    .line 285
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->To:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TL:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 286
    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/view/RippleView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TL:Landroid/graphics/Bitmap;

    .line 288
    :cond_3
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RippleView;->invalidate()V

    .line 290
    :cond_4
    return-void

    .line 279
    :cond_5
    iput p1, p0, Lcom/txznet/comm/ui/view/RippleView;->TW:F

    .line 280
    iput p2, p0, Lcom/txznet/comm/ui/view/RippleView;->TJ:F

    goto :goto_0
.end method

.method private T(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RippleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TH:I

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->To:Ljava/lang/Integer;

    .line 129
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->T7:Ljava/lang/Boolean;

    .line 130
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TO:Ljava/lang/Boolean;

    .line 131
    iput v2, p0, Lcom/txznet/comm/ui/view/RippleView;->T0:I

    .line 133
    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TP:F

    .line 134
    const/16 v0, 0xc8

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TB:I

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    .line 136
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TH:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Te:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 140
    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/view/RippleView;->setWillNotDraw(Z)V

    .line 142
    new-instance v0, Lcom/txznet/comm/ui/view/RippleView$2;

    invoke-direct {v0, p0, p1}, Lcom/txznet/comm/ui/view/RippleView$2;-><init>(Lcom/txznet/comm/ui/view/RippleView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/view/RippleView;->post(Ljava/lang/Runnable;)Z

    .line 168
    invoke-virtual {p0, v3}, Lcom/txznet/comm/ui/view/RippleView;->setDrawingCacheEnabled(Z)V

    .line 169
    invoke-virtual {p0, v3}, Lcom/txznet/comm/ui/view/RippleView;->setClickable(Z)V

    goto :goto_0
.end method

.method static synthetic T(Lcom/txznet/comm/ui/view/RippleView;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/comm/ui/view/RippleView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/view/RippleView;->T(Ljava/lang/Boolean;)V

    return-void
.end method

.method private T(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "isLongClick"    # Ljava/lang/Boolean;

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RippleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RippleView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 317
    .local v6, "ad":Landroid/widget/ExpandableListView;
    invoke-virtual {v6, p0}, Landroid/widget/ExpandableListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 318
    .local v3, "position":I
    invoke-virtual {v6, v3}, Landroid/widget/ExpandableListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 319
    .local v4, "id":J
    invoke-virtual {v6, p0, v3, v4, v5}, Landroid/widget/ExpandableListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 332
    .end local v3    # "position":I
    .end local v4    # "id":J
    .end local v6    # "ad":Landroid/widget/ExpandableListView;
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RippleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RippleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView;

    .line 322
    .local v1, "adapterView":Landroid/widget/AdapterView;
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 323
    .restart local v3    # "position":I
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 324
    .restart local v4    # "id":J
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method


# virtual methods
.method public animateRipple(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Lcom/txznet/comm/ui/view/RippleView;->T(FF)V

    .line 255
    return-void
.end method

.method public animateRipple(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/txznet/comm/ui/view/RippleView;->T(FF)V

    .line 245
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 174
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 175
    iget-boolean v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Ty:Z

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 177
    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TN:I

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    iget v3, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    mul-int/2addr v2, v3

    if-gt v1, v2, :cond_2

    .line 178
    iput-boolean v4, p0, Lcom/txznet/comm/ui/view/RippleView;->Ty:Z

    .line 179
    iput v4, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    .line 180
    iput v7, p0, Lcom/txznet/comm/ui/view/RippleView;->TR:I

    .line 181
    iput v4, p0, Lcom/txznet/comm/ui/view/RippleView;->TG:I

    .line 184
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RippleView;->invalidate()V

    .line 188
    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TF:Lcom/txznet/comm/ui/view/RippleView$T;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TF:Lcom/txznet/comm/ui/view/RippleView$T;

    invoke-interface {v1, p0}, Lcom/txznet/comm/ui/view/RippleView$T;->T(Lcom/txznet/comm/ui/view/RippleView;)V

    .line 224
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Tk:Ljava/lang/Runnable;

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/txznet/comm/ui/view/RippleView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    if-nez v1, :cond_3

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    :cond_3
    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TW:F

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TJ:F

    iget v3, p0, Lcom/txznet/comm/ui/view/RippleView;->Tw:F

    iget v4, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    int-to-float v4, v4

    iget v5, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/txznet/comm/ui/view/RippleView;->TN:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 199
    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    const-string v2, "#ffff4444"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->To:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_5

    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TL:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    int-to-float v1, v1

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TN:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 202
    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TR:I

    if-ne v1, v7, :cond_4

    .line 203
    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TN:I

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    iget v3, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TR:I

    .line 205
    :cond_4
    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TG:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TG:I

    .line 206
    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Tw:F

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TG:I

    int-to-float v2, v2

    iget v3, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/txznet/comm/ui/view/RippleView;->TR:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/txznet/comm/ui/view/RippleView;->T(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    .local v0, "tmpBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 208
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    .end local v0    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TH:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->To:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_7

    .line 214
    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    int-to-float v1, v1

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TN:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 215
    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->Te:I

    int-to-float v2, v2

    iget v3, p0, Lcom/txznet/comm/ui/view/RippleView;->Te:I

    int-to-float v3, v3

    iget v4, p0, Lcom/txznet/comm/ui/view/RippleView;->TG:I

    int-to-float v4, v4

    iget v5, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/txznet/comm/ui/view/RippleView;->TR:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    :goto_1
    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    goto/16 :goto_0

    .line 217
    :cond_6
    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->Te:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 220
    :cond_7
    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TQ:Landroid/graphics/Paint;

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->Te:I

    int-to-float v2, v2

    iget v3, p0, Lcom/txznet/comm/ui/view/RippleView;->Te:I

    int-to-float v3, v3

    iget v4, p0, Lcom/txznet/comm/ui/view/RippleView;->Tn:I

    int-to-float v4, v4

    iget v5, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/txznet/comm/ui/view/RippleView;->TN:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method public getFrameRate()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    return v0
.end method

.method public getRippleAlpha()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Te:I

    return v0
.end method

.method public getRippleColor()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TH:I

    return v0
.end method

.method public getRippleDuration()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TN:I

    return v0
.end method

.method public getRipplePadding()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/txznet/comm/ui/view/RippleView;->T0:I

    return v0
.end method

.method public getRippleType()Lcom/txznet/comm/ui/view/RippleView$T3;
    .locals 2

    .prologue
    .line 366
    invoke-static {}, Lcom/txznet/comm/ui/view/RippleView$T3;->values()[Lcom/txznet/comm/ui/view/RippleView$T3;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/view/RippleView;->To:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getZoomDuration()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TB:I

    return v0
.end method

.method public getZoomScale()F
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TP:F

    return v0
.end method

.method public isCentered()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TO:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isZooming()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->T7:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/txznet/comm/ui/view/RippleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 306
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 229
    iput p1, p0, Lcom/txznet/comm/ui/view/RippleView;->T:I

    .line 230
    iput p2, p0, Lcom/txznet/comm/ui/view/RippleView;->T3:I

    .line 232
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/txznet/comm/ui/view/RippleView;->TP:F

    iget v4, p0, Lcom/txznet/comm/ui/view/RippleView;->TP:F

    div-int/lit8 v3, p1, 0x2

    int-to-float v5, v3

    div-int/lit8 v3, p2, 0x2

    int-to-float v6, v3

    move v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tr:Landroid/view/animation/ScaleAnimation;

    .line 233
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tr:Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/txznet/comm/ui/view/RippleView;->TB:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 234
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tr:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 235
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tr:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 236
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tc:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Tc:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Lcom/txznet/comm/ui/view/RippleView;->animateRipple(Landroid/view/MotionEvent;)V

    .line 297
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/view/RippleView;->T(Ljava/lang/Boolean;)V

    .line 300
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/view/RippleView;->Ty:Z

    .line 115
    return-void
.end method

.method public setCentered(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isCentered"    # Ljava/lang/Boolean;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/txznet/comm/ui/view/RippleView;->TO:Ljava/lang/Boolean;

    .line 392
    return-void
.end method

.method public setFrameRate(I)V
    .locals 0
    .param p1, "frameRate"    # I

    .prologue
    .line 481
    iput p1, p0, Lcom/txznet/comm/ui/view/RippleView;->T2:I

    .line 482
    return-void
.end method

.method public setOnRippleCompleteListener(Lcom/txznet/comm/ui/view/RippleView$T;)V
    .locals 0
    .param p1, "listener"    # Lcom/txznet/comm/ui/view/RippleView$T;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/txznet/comm/ui/view/RippleView;->TF:Lcom/txznet/comm/ui/view/RippleView$T;

    .line 501
    return-void
.end method

.method public setRippleAlpha(I)V
    .locals 0
    .param p1, "rippleAlpha"    # I

    .prologue
    .line 496
    iput p1, p0, Lcom/txznet/comm/ui/view/RippleView;->Te:I

    .line 497
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1, "rippleColor"    # I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/RippleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/txznet/comm/ui/view/RippleView;->TH:I

    .line 358
    return-void
.end method

.method public setRippleDuration(I)V
    .locals 0
    .param p1, "rippleDuration"    # I

    .prologue
    .line 466
    iput p1, p0, Lcom/txznet/comm/ui/view/RippleView;->TN:I

    .line 467
    return-void
.end method

.method public setRipplePadding(I)V
    .locals 0
    .param p1, "ripplePadding"    # I

    .prologue
    .line 406
    iput p1, p0, Lcom/txznet/comm/ui/view/RippleView;->T0:I

    .line 407
    return-void
.end method

.method public setRippleType(Lcom/txznet/comm/ui/view/RippleView$T3;)V
    .locals 1
    .param p1, "rippleType"    # Lcom/txznet/comm/ui/view/RippleView$T3;

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/txznet/comm/ui/view/RippleView$T3;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/view/RippleView;->To:Ljava/lang/Integer;

    .line 377
    return-void
.end method

.method public setZoomDuration(I)V
    .locals 0
    .param p1, "zoomDuration"    # I

    .prologue
    .line 451
    iput p1, p0, Lcom/txznet/comm/ui/view/RippleView;->TB:I

    .line 452
    return-void
.end method

.method public setZoomScale(F)V
    .locals 0
    .param p1, "zoomScale"    # F

    .prologue
    .line 436
    iput p1, p0, Lcom/txznet/comm/ui/view/RippleView;->TP:F

    .line 437
    return-void
.end method

.method public setZooming(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "hasToZoom"    # Ljava/lang/Boolean;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/txznet/comm/ui/view/RippleView;->T7:Ljava/lang/Boolean;

    .line 422
    return-void
.end method
