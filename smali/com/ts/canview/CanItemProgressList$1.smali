.class Lcom/ts/canview/CanItemProgressList$1;
.super Ljava/lang/Object;
.source "CanItemProgressList.java"

# interfaces
.implements Lcom/ts/other/CustomImgView$onPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/canview/CanItemProgressList;->Init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/canview/CanItemProgressList;


# direct methods
.method constructor <init>(Lcom/ts/canview/CanItemProgressList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    .line 116
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

    .line 123
    sget v3, Lcom/ts/MainUI/R$drawable;->can_seekbar_track:I

    iget-object v4, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mBkX:I
    invoke-static {v4}, Lcom/ts/canview/CanItemProgressList;->access$0(Lcom/ts/canview/CanItemProgressList;)I

    move-result v4

    iget-object v5, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mBkY:I
    invoke-static {v5}, Lcom/ts/canview/CanItemProgressList;->access$1(Lcom/ts/canview/CanItemProgressList;)I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 124
    iget-object v3, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mCur:I
    invoke-static {v3}, Lcom/ts/canview/CanItemProgressList;->access$2(Lcom/ts/canview/CanItemProgressList;)I

    move-result v3

    iget-object v4, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mMin:I
    invoke-static {v4}, Lcom/ts/canview/CanItemProgressList;->access$3(Lcom/ts/canview/CanItemProgressList;)I

    move-result v4

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mCur:I
    invoke-static {v3}, Lcom/ts/canview/CanItemProgressList;->access$2(Lcom/ts/canview/CanItemProgressList;)I

    move-result v3

    iget-object v4, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mMax:I
    invoke-static {v4}, Lcom/ts/canview/CanItemProgressList;->access$4(Lcom/ts/canview/CanItemProgressList;)I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 128
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 129
    .local v2, "src":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 131
    .local v1, "dst":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mCur:I
    invoke-static {v3}, Lcom/ts/canview/CanItemProgressList;->access$2(Lcom/ts/canview/CanItemProgressList;)I

    move-result v3

    iget-object v4, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mMin:I
    invoke-static {v4}, Lcom/ts/canview/CanItemProgressList;->access$3(Lcom/ts/canview/CanItemProgressList;)I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x12e

    iget-object v4, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mMax:I
    invoke-static {v4}, Lcom/ts/canview/CanItemProgressList;->access$4(Lcom/ts/canview/CanItemProgressList;)I

    move-result v4

    iget-object v5, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mMin:I
    invoke-static {v5}, Lcom/ts/canview/CanItemProgressList;->access$3(Lcom/ts/canview/CanItemProgressList;)I

    move-result v5

    sub-int/2addr v4, v5

    div-int v0, v3, v4

    .line 132
    .local v0, "drawW":I
    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 133
    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 134
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 135
    iget-object v3, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mBmpH:I
    invoke-static {v3}, Lcom/ts/canview/CanItemProgressList;->access$5(Lcom/ts/canview/CanItemProgressList;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 136
    iget-object v3, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mBkX:I
    invoke-static {v3}, Lcom/ts/canview/CanItemProgressList;->access$0(Lcom/ts/canview/CanItemProgressList;)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 137
    iget-object v3, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mBkY:I
    invoke-static {v3}, Lcom/ts/canview/CanItemProgressList;->access$1(Lcom/ts/canview/CanItemProgressList;)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 138
    iget-object v3, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mBkX:I
    invoke-static {v3}, Lcom/ts/canview/CanItemProgressList;->access$0(Lcom/ts/canview/CanItemProgressList;)I

    move-result v3

    add-int/2addr v3, v0

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 139
    iget-object v3, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mBkY:I
    invoke-static {v3}, Lcom/ts/canview/CanItemProgressList;->access$1(Lcom/ts/canview/CanItemProgressList;)I

    move-result v3

    iget-object v4, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mBmpH:I
    invoke-static {v4}, Lcom/ts/canview/CanItemProgressList;->access$5(Lcom/ts/canview/CanItemProgressList;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 141
    iget-object v3, p0, Lcom/ts/canview/CanItemProgressList$1;->this$0:Lcom/ts/canview/CanItemProgressList;

    # getter for: Lcom/ts/canview/CanItemProgressList;->mBmpProgress:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/ts/canview/CanItemProgressList;->access$6(Lcom/ts/canview/CanItemProgressList;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p2, v3, v2, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 143
    .end local v0    # "drawW":I
    .end local v1    # "dst":Landroid/graphics/Rect;
    .end local v2    # "src":Landroid/graphics/Rect;
    :cond_0
    return v6
.end method
