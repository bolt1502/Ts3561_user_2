.class Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;
.super Landroid/widget/SimpleAdapter;
.source "CanBtOBDActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/btobd/CanBtOBDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothUnpairedDevicesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;
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

    .line 436
    iput-object p1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->this$0:Lcom/ts/can/btobd/CanBtOBDActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 437
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 431
    iput v6, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mSelectIdx:I

    .line 439
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 440
    iput v6, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mSelectIdx:I

    .line 441
    iput-object p3, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mDeviceList:Ljava/util/List;

    .line 442
    return-void
.end method


# virtual methods
.method public getSelect()I
    .locals 2

    .prologue
    .line 449
    iget v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mSelectIdx:I

    iget-object v1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 450
    iget v0, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mSelectIdx:I

    .line 452
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
    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "holder":Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 460
    new-instance v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;-><init>(Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;)V

    .line 461
    .restart local v0    # "holder":Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/ts/MainUI/R$layout;->obd_listitem:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 462
    sget v2, Lcom/ts/MainUI/R$id;->item_remote_device_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 463
    sget v2, Lcom/ts/MainUI/R$id;->item_remote_connect_status:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 464
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 469
    :goto_0
    const-string v1, ""

    .line 471
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "remote_device_name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 473
    .restart local v1    # "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    :cond_0
    iget-object v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "remote_device_macaddr"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 477
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v2, v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget v2, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mSelectIdx:I

    if-ne v2, p1, :cond_3

    .line 479
    iget-object v2, v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    const-string v3, "\u914d\u5bf9\u4e2d..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :goto_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/16 v3, 0x1cc

    const/16 v4, 0x4e

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    return-object p2

    .line 466
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;
    check-cast v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;
    goto :goto_0

    .line 481
    .restart local v1    # "name":Ljava/lang/String;
    :cond_3
    iget-object v2, v0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setSelect(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 445
    iput p1, p0, Lcom/ts/can/btobd/CanBtOBDActivity$BluetoothUnpairedDevicesAdapter;->mSelectIdx:I

    .line 446
    return-void
.end method
