.class Lcom/ts/can/btobd/CanBtOBDActivity$2;
.super Ljava/lang/Object;
.source "CanBtOBDActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/btobd/CanBtOBDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/btobd/CanBtOBDActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/btobd/CanBtOBDActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$2;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity$2;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    # getter for: Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;
    invoke-static {v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$7(Lcom/ts/can/btobd/CanBtOBDActivity;)Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->setSelect(I)V

    .line 360
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity$2;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    # getter for: Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothUnpairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;
    invoke-static {v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$7(Lcom/ts/can/btobd/CanBtOBDActivity;)Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->notifyDataSetChanged()V

    .line 361
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity$2;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    # getter for: Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;
    invoke-static {v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$8(Lcom/ts/can/btobd/CanBtOBDActivity;)Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->setSelect(I)V

    .line 362
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity$2;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    # getter for: Lcom/ts/can/btobd/CanBtOBDActivity;->mBluetoothPairedDevicesAdapter:Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;
    invoke-static {v0}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$8(Lcom/ts/can/btobd/CanBtOBDActivity;)Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->notifyDataSetChanged()V

    .line 364
    iget-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity$2;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    # invokes: Lcom/ts/can/btobd/CanBtOBDActivity;->onClickSelect(Landroid/widget/ListView;I)V
    invoke-static {v0, p1, p3}, Lcom/ts/can/btobd/CanBtOBDActivity;->access$9(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/widget/ListView;I)V

    .line 365
    return-void
.end method
