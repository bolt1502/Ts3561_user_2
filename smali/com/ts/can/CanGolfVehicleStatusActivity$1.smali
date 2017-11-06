.class Lcom/ts/can/CanGolfVehicleStatusActivity$1;
.super Ljava/lang/Object;
.source "CanGolfVehicleStatusActivity.java"

# interfaces
.implements Lcom/ts/canview/CanPopupDialog$OnItemClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/CanGolfVehicleStatusActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanGolfVehicleStatusActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanGolfVehicleStatusActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanGolfVehicleStatusActivity$1;->this$0:Lcom/ts/can/CanGolfVehicleStatusActivity;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 535
    const/16 v0, 0x23

    invoke-static {v0, p1}, Lcom/lgb/canmodule/CanJni;->GolfSendCmd(II)V

    .line 536
    return-void
.end method
