.class Lcom/ts/can/CanHondaExdActivity$1;
.super Ljava/lang/Object;
.source "CanHondaExdActivity.java"

# interfaces
.implements Lcom/ts/other/CustomImgView$onPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/CanHondaExdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanHondaExdActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanHondaExdActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanHondaExdActivity$1;->this$0:Lcom/ts/can/CanHondaExdActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userPaint(Lcom/ts/other/CustomImgView;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 8
    .param p1, "view"    # Lcom/ts/other/CustomImgView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/16 v7, 0x19

    const/16 v6, 0xc

    const/4 v5, 0x0

    .line 92
    iget-object v4, p0, Lcom/ts/can/CanHondaExdActivity$1;->this$0:Lcom/ts/can/CanHondaExdActivity;

    # getter for: Lcom/ts/can/CanHondaExdActivity;->mMediaData:Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;
    invoke-static {v4}, Lcom/ts/can/CanHondaExdActivity;->access$0(Lcom/ts/can/CanHondaExdActivity;)Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;

    move-result-object v4

    iget v1, v4, Lcom/lgb/canmodule/CanDataInfo$HondaMediaDev;->Progress:I

    .line 93
    .local v1, "pos":I
    sget v4, Lcom/ts/MainUI/R$drawable;->can_mediadev_slider_up:I

    invoke-virtual {p1, v4, v6, v5}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 94
    if-lez v1, :cond_0

    const/16 v4, 0x64

    if-gt v1, v4, :cond_0

    .line 96
    mul-int/lit16 v4, v1, 0x2e5

    div-int/lit8 v3, v4, 0x64

    .line 97
    .local v3, "w":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .local v2, "src":Landroid/graphics/Rect;
    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 99
    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 100
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 101
    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 104
    .local v0, "des":Landroid/graphics/Rect;
    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 105
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 106
    add-int/lit8 v4, v3, 0xc

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 107
    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 109
    iget-object v4, p0, Lcom/ts/can/CanHondaExdActivity$1;->this$0:Lcom/ts/can/CanHondaExdActivity;

    # getter for: Lcom/ts/can/CanHondaExdActivity;->mBmpProgDn:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/ts/can/CanHondaExdActivity;->access$1(Lcom/ts/can/CanHondaExdActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p2, v4, v2, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 114
    .end local v0    # "des":Landroid/graphics/Rect;
    .end local v2    # "src":Landroid/graphics/Rect;
    .end local v3    # "w":I
    :cond_0
    return v5
.end method
