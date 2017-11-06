.class Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;
.super Landroid/widget/SimpleAdapter;
.source "CanBtOBDActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/btobd/CanBtOBDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothPairedDevicesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectIdx:I

.field final synthetic this$0:Lcom/ts/can/btobd/CanBtOBDActivity;


# direct methods
.method public constructor <init>(Lcom/ts/can/btobd/CanBtOBDActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "resource"    # I
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, -0x1

    .line 375
    iput-object p1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 376
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 370
    iput v6, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mSelectIdx:I

    .line 378
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 379
    iput v6, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mSelectIdx:I

    .line 380
    iput-object p3, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mDeviceList:Ljava/util/List;

    .line 381
    return-void
.end method


# virtual methods
.method public getSelect()I
    .locals 2

    .prologue
    .line 388
    iget v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mSelectIdx:I

    iget-object v1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 389
    iget v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mSelectIdx:I

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "holder":Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 399
    new-instance v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;-><init>(Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;)V

    .line 400
    .restart local v0    # "holder":Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/ts/MainUI/R$layout;->obd_listitem:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 401
    sget v2, Lcom/ts/MainUI/R$id;->item_remote_device_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 402
    sget v2, Lcom/ts/MainUI/R$id;->item_remote_connect_status:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 403
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 408
    :goto_0
    const-string v1, ""

    .line 410
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "remote_device_name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 413
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v2, v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mSelectIdx:I

    if-ne p1, v2, :cond_2

    .line 415
    sget v2, Lcom/ts/MainUI/R$drawable;->obd_line_dn:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 419
    :goto_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/16 v3, 0x1cc

    const/16 v4, 0x4e

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    return-object p2

    .line 405
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;
    check-cast v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter$ViewHolder;
    goto :goto_0

    .line 417
    .restart local v1    # "name":Ljava/lang/String;
    :cond_2
    const v2, 0x106000d

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setSelect(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothPairedDevicesAdapter;->mSelectIdx:I

    .line 385
    return-void
.end method
