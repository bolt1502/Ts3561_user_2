.class Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;
.super Ljava/lang/Object;
.source "CanBMWMiniStatusOilActivity.java"

# interfaces
.implements Lcom/ts/other/CustomImgView$onPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->addImageView(IIII)Lcom/ts/other/CustomImgView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

    iput-object p2, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userPaint(Lcom/ts/other/CustomImgView;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 7
    .param p1, "view"    # Lcom/ts/other/CustomImgView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v6, 0x0

    .line 172
    sget v3, Lcom/ts/MainUI/R$drawable;->can_seekbar_track:I

    iget-object v4, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

    # getter for: Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mBkX:I
    invoke-static {v4}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->access$0(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

    # getter for: Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mBkY:I
    invoke-static {v5}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->access$1(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 173
    iget-object v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

    # getter for: Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mCur:I
    invoke-static {v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->access$2(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

    # getter for: Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mCur:I
    invoke-static {v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->access$2(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I

    move-result v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_0

    .line 174
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 175
    .local v2, "src":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 177
    .local v1, "dst":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

    # getter for: Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mCur:I
    invoke-static {v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->access$2(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    mul-int/lit16 v3, v3, 0x12e

    div-int/lit16 v0, v3, 0xff

    .line 178
    .local v0, "drawW":I
    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 179
    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 180
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 181
    iget-object v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 182
    iget-object v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

    # getter for: Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mBkX:I
    invoke-static {v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->access$0(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 183
    iget-object v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

    # getter for: Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mBkY:I
    invoke-static {v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->access$1(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 184
    iget-object v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

    # getter for: Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mBkX:I
    invoke-static {v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->access$0(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I

    move-result v3

    add-int/2addr v3, v0

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 185
    iget-object v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;

    # getter for: Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->mBkY:I
    invoke-static {v3}, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;->access$1(Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 187
    iget-object v3, p0, Lcom/ts/can/bmw/mini/CanBMWMiniStatusOilActivity$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v3, v2, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 189
    .end local v0    # "drawW":I
    .end local v1    # "dst":Landroid/graphics/Rect;
    .end local v2    # "src":Landroid/graphics/Rect;
    :cond_0
    return v6
.end method
