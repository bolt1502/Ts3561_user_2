.class Lcom/ts/main/radio/RadioMainActivity$4;
.super Ljava/lang/Object;
.source "RadioMainActivity.java"

# interfaces
.implements Lcom/ts/other/CustomImgView$onPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/radio/RadioMainActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/radio/RadioMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/radio/RadioMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/radio/RadioMainActivity$4;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    .line 1012
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

    .line 1021
    sget v0, Lcom/ts/MainUI/R$drawable;->radio_move_fore:I

    iget-object v1, p0, Lcom/ts/main/radio/RadioMainActivity$4;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    iget v1, v1, Lcom/ts/main/radio/RadioMainActivity;->mXYoubiao:I

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity$4;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    iget-object v2, v2, Lcom/ts/main/radio/RadioMainActivity;->ptFreqAdj:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity$4;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    iget v2, v2, Lcom/ts/main/radio/RadioMainActivity;->wYoubiao:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/ts/main/radio/RadioMainActivity$4;->this$0:Lcom/ts/main/radio/RadioMainActivity;

    iget v2, v2, Lcom/ts/main/radio/RadioMainActivity;->YoubiaoOffsetY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 1022
    return v3
.end method
