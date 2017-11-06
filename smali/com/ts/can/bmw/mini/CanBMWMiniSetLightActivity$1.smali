.class Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity$1;
.super Ljava/lang/Object;
.source "CanBMWMiniSetLightActivity.java"

# interfaces
.implements Lcom/ts/canview/CanNumInuptDlg$onInputOK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(Ljava/lang/String;II)V
    .locals 3
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "id"    # I

    .prologue
    .line 104
    if-ltz p2, :cond_0

    const/16 v0, 0xf0

    if-gt p2, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;

    # getter for: Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->mItemHomeLight:Lcom/ts/canview/CanItemTitleValList;
    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->access$0(Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, p2}, Lcom/ts/can/bmw/mini/CanBMWMiniSetLightActivity;->CarSet(II)V

    .line 108
    :cond_0
    return-void
.end method
