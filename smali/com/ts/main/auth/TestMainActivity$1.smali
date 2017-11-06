.class Lcom/ts/main/auth/TestMainActivity$1;
.super Ljava/lang/Object;
.source "TestMainActivity.java"

# interfaces
.implements Lcom/ts/main/auth/TsImageView$UserPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/auth/TestMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/ts/main/auth/TestMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/TestMainActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/TestMainActivity$1;->this$0:Lcom/ts/main/auth/TestMainActivity;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ts/main/auth/TestMainActivity$1;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawSatellite(Landroid/graphics/Canvas;Landroid/location/GpsSatellite;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "gpsSatellite"    # Landroid/location/GpsSatellite;
    .param p3, "cx"    # I
    .param p4, "cy"    # I

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    .line 255
    invoke-virtual {p2}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v3

    .line 256
    .local v3, "snr":F
    invoke-virtual {p2}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v4

    int-to-float v1, v4

    .line 257
    .local v1, "prn":F
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$1;->this$0:Lcom/ts/main/auth/TestMainActivity;

    # invokes: Lcom/ts/main/auth/TestMainActivity;->getSNRColor(F)I
    invoke-static {v4, v3}, Lcom/ts/main/auth/TestMainActivity;->access$1(Lcom/ts/main/auth/TestMainActivity;F)I

    move-result v0

    .line 258
    .local v0, "color":I
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$1;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$1;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 262
    new-instance v2, Landroid/graphics/Rect;

    int-to-float v4, p4

    mul-float/2addr v4, v3

    div-float/2addr v4, v7

    float-to-int v4, v4

    sub-int v4, p4, v4

    add-int/lit8 v5, p3, 0x28

    invoke-direct {v2, p3, v4, v5, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 263
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p4

    mul-float/2addr v6, v3

    div-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v6, p4, v6

    add-int/lit8 v6, v6, -0x14

    int-to-float v6, v6

    iget-object v7, p0, Lcom/ts/main/auth/TestMainActivity$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 264
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    add-int/lit8 v6, p4, 0x1e

    int-to-float v6, v6

    iget-object v7, p0, Lcom/ts/main/auth/TestMainActivity$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 266
    return-void
.end method


# virtual methods
.method public userPaint(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 239
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$1;->this$0:Lcom/ts/main/auth/TestMainActivity;

    # getter for: Lcom/ts/main/auth/TestMainActivity;->satelliteList:Ljava/util/List;
    invoke-static {v4}, Lcom/ts/main/auth/TestMainActivity;->access$0(Lcom/ts/main/auth/TestMainActivity;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    .line 251
    :cond_0
    return-void

    .line 242
    :cond_1
    const/4 v1, 0x0

    .line 243
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$1;->this$0:Lcom/ts/main/auth/TestMainActivity;

    # getter for: Lcom/ts/main/auth/TestMainActivity;->satelliteList:Ljava/util/List;
    invoke-static {v4}, Lcom/ts/main/auth/TestMainActivity;->access$0(Lcom/ts/main/auth/TestMainActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 244
    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$1;->this$0:Lcom/ts/main/auth/TestMainActivity;

    # getter for: Lcom/ts/main/auth/TestMainActivity;->satelliteList:Ljava/util/List;
    invoke-static {v4}, Lcom/ts/main/auth/TestMainActivity;->access$0(Lcom/ts/main/auth/TestMainActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    .line 245
    .local v2, "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v3

    .line 246
    .local v3, "snr":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 247
    mul-int/lit8 v4, v1, 0x37

    const/16 v5, 0x96

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/ts/main/auth/TestMainActivity$1;->drawSatellite(Landroid/graphics/Canvas;Landroid/location/GpsSatellite;II)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    .line 243
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
