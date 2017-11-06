.class Lcom/ts/can/CanPradoParkAssistActivity$1;
.super Ljava/lang/Object;
.source "CanPradoParkAssistActivity.java"

# interfaces
.implements Lcom/ts/other/CustomImgView$onPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/CanPradoParkAssistActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanPradoParkAssistActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanPradoParkAssistActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanPradoParkAssistActivity$1;->this$0:Lcom/ts/can/CanPradoParkAssistActivity;

    .line 72
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
    const/16 v7, 0x2be

    const/16 v6, 0x262

    const/16 v5, 0x241

    const/16 v4, 0x1f0

    const/16 v3, 0x1dc

    .line 79
    sget v0, Lcom/ts/MainUI/R$drawable;->can_radar_set_car:I

    const/16 v1, 0x25e

    const/16 v2, 0x107

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 80
    sget v0, Lcom/ts/MainUI/R$drawable;->can_radar_set_h:I

    const/16 v1, 0x1e1

    invoke-virtual {p1, v0, v6, v1}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 81
    sget v0, Lcom/ts/MainUI/R$drawable;->can_radar_set_l:I

    const/16 v1, 0x1fb

    invoke-virtual {p1, v0, v6, v1}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 82
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity$1;->this$0:Lcom/ts/can/CanPradoParkAssistActivity;

    iget-object v0, v0, Lcom/ts/can/CanPradoParkAssistActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;->UpdateOnce:I

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ts/can/CanPradoParkAssistActivity$1;->this$0:Lcom/ts/can/CanPradoParkAssistActivity;

    iget-object v0, v0, Lcom/ts/can/CanPradoParkAssistActivity;->mCtrlData:Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaCtrlInfo;->fgRearRadarFar:I

    invoke-static {v0}, Lcom/ts/can/CanPradoParkAssistActivity;->i2b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    sget v0, Lcom/ts/MainUI/R$drawable;->can_radar_set_sjx_r:I

    invoke-virtual {p1, v0, v5, v3}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 87
    sget v0, Lcom/ts/MainUI/R$drawable;->can_radar_set_sjx_l:I

    invoke-virtual {p1, v0, v7, v3}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 95
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_1
    sget v0, Lcom/ts/MainUI/R$drawable;->can_radar_set_sjx_r:I

    invoke-virtual {p1, v0, v5, v4}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 92
    sget v0, Lcom/ts/MainUI/R$drawable;->can_radar_set_sjx_l:I

    invoke-virtual {p1, v0, v7, v4}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_0
.end method
