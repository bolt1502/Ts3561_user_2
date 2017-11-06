.class Lcom/ts/can/btobd/CanBtOBDActivity$3;
.super Ljava/lang/Object;
.source "CanBtOBDActivity.java"

# interfaces
.implements Lcom/autochips/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/btobd/CanBtOBDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/btobd/CanBtOBDActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/btobd/CanBtOBDActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$3;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAttributesChanged(Lcom/autochips/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/autochips/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 825
    iget-object v1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$3;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    # getter for: Lcom/ts/can/btobd/CanBtOBDActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$10(Lcom/ts/can/btobd/CanBtOBDActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 826
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 827
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 828
    iget-object v1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$3;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    # getter for: Lcom/ts/can/btobd/CanBtOBDActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$10(Lcom/ts/can/btobd/CanBtOBDActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 829
    return-void
.end method
