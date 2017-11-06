.class Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity$1;
.super Ljava/lang/Object;
.source "CanBMWMiniSetSpeedActivity.java"

# interfaces
.implements Lcom/ts/canview/CanNumInuptDlg$onInputOK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOK(Ljava/lang/String;II)V
    .locals 6
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 90
    if-ltz p2, :cond_0

    const/16 v0, 0x190

    if-gt p2, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;

    # getter for: Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->mItemValue:Lcom/ts/canview/CanItemTitleValList;
    invoke-static {v0}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->access$0(Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;)Lcom/ts/canview/CanItemTitleValList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " KM/H"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTitleValList;->SetVal(Ljava/lang/String;)V

    .line 93
    div-int/lit16 v2, p2, 0x100

    .line 94
    .local v2, "high":I
    rem-int/lit16 v3, p2, 0x100

    .line 95
    .local v3, "low":I
    iget-object v0, p0, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity$1;->this$0:Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;

    const/16 v1, 0x42

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/bmw/mini/CanBMWMiniSetSpeedActivity;->CarSet(IIIII)V

    .line 97
    .end local v2    # "high":I
    .end local v3    # "low":I
    :cond_0
    return-void
.end method
