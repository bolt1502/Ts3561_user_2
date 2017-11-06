.class Lcom/ts/can/CanRadarActivity$1;
.super Ljava/lang/Object;
.source "CanRadarActivity.java"

# interfaces
.implements Lcom/ts/other/CustomImgView$onPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanRadarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanRadarActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanRadarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanRadarActivity$1;->this$0:Lcom/ts/can/CanRadarActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userPaint(Lcom/ts/other/CustomImgView;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 4
    .param p1, "view"    # Lcom/ts/other/CustomImgView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v1, p0, Lcom/ts/can/CanRadarActivity$1;->this$0:Lcom/ts/can/CanRadarActivity;

    invoke-virtual {v1}, Lcom/ts/can/CanRadarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ts/MainUI/R$drawable;->can_radar_big_car01:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0, v3, v3, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    const/4 v1, 0x0

    return v1
.end method
