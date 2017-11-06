.class Lcom/ts/bt/BtCallMsgbox$1;
.super Ljava/lang/Object;
.source "BtCallMsgbox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtCallMsgbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtCallMsgbox;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtCallMsgbox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v8, 0x4

    const-wide/16 v13, 0x3c

    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 102
    const/16 v5, 0x10

    invoke-static {v5}, Lcom/ts/bt/BtExe;->getProfile(I)Lcom/autochips/bluetooth/LocalBluetoothProfile;

    move-result-object v3

    .line 101
    check-cast v3, Lcom/autochips/bluetooth/HeadsetClientProfile;

    .line 103
    .local v3, "hfProfile":Lcom/autochips/bluetooth/HeadsetClientProfile;
    if-nez v3, :cond_0

    .line 104
    const-string v5, "BtCallMsgbox"

    const-string v6, "get hf profile fail!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    invoke-virtual {v5}, Lcom/ts/bt/BtCallMsgbox;->Destroy()V

    .line 178
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {v3}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 111
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 112
    :cond_1
    const-string v5, "BtCallMsgbox"

    const-string v6, "hf client is not connected!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    invoke-virtual {v5}, Lcom/ts/bt/BtCallMsgbox;->Destroy()V

    goto :goto_0

    .line 118
    :cond_2
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v5}, Lcom/autochips/bluetooth/HeadsetClientProfile;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "callList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 121
    :cond_3
    const-string v5, "BtCallMsgbox"

    const-string v6, "Call had been ended before this activity create!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    invoke-virtual {v5}, Lcom/ts/bt/BtCallMsgbox;->Destroy()V

    goto :goto_0

    .line 126
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v12, :cond_7

    .line 127
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    invoke-static {v5, v12}, Lcom/ts/bt/BtCallMsgbox;->access$0(Lcom/ts/bt/BtCallMsgbox;Z)V

    .line 132
    :goto_1
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    iget-object v5, v5, Lcom/ts/bt/BtCallMsgbox;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 133
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->isHaveTwoCall:Z
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$1(Lcom/ts/bt/BtCallMsgbox;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 134
    sget v5, Lcom/ts/bt/BtExe;->mCallSta:I

    if-ne v8, v5, :cond_6

    .line 136
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 137
    .local v1, "callStatus":Landroid/bluetooth/BluetoothHeadsetClientCall;
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$2(Lcom/ts/bt/BtCallMsgbox;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "missed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 138
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    const-string v6, "incoming"

    invoke-static {v5, v6}, Lcom/ts/bt/BtCallMsgbox;->access$3(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V

    .line 140
    :cond_5
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ts/bt/BtCallMsgbox;->access$4(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V

    .line 141
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->mCallType:Ljava/lang/String;
    invoke-static {v7}, Lcom/ts/bt/BtCallMsgbox;->access$2(Lcom/ts/bt/BtCallMsgbox;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/ts/bt/BtCallMsgbox;->access$5(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V

    .line 142
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/ts/bt/BtCallMsgbox;->access$6(Lcom/ts/bt/BtCallMsgbox;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/ts/bt/BtCallMsgbox;->access$7(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V

    .line 146
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    const-string v6, "%s, %02d:%02d:%02d"

    new-array v7, v8, [Ljava/lang/Object;

    sget v8, Lcom/ts/MainUI/R$string;->str_bt_call_active:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    sget-wide v8, Lcom/ts/bt/BtExe;->mActiveSecond:J

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    const/4 v8, 0x2

    sget-wide v9, Lcom/ts/bt/BtExe;->mActiveSecond:J

    div-long/2addr v9, v13

    rem-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-wide v9, Lcom/ts/bt/BtExe;->mActiveSecond:J

    rem-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ts/bt/BtCallMsgbox;->mStrSta:Ljava/lang/String;

    .line 147
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->callStateView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$8(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    iget-object v6, v6, Lcom/ts/bt/BtCallMsgbox;->mStrSta:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .end local v1    # "callStatus":Landroid/bluetooth/BluetoothHeadsetClientCall;
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    iget-object v5, v5, Lcom/ts/bt/BtCallMsgbox;->h:Landroid/os/Handler;

    iget-object v6, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    iget-object v6, v6, Lcom/ts/bt/BtCallMsgbox;->r:Ljava/lang/Runnable;

    const-wide/16 v7, 0x12c

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 129
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_7
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    invoke-static {v5, v9}, Lcom/ts/bt/BtCallMsgbox;->access$0(Lcom/ts/bt/BtCallMsgbox;Z)V

    goto/16 :goto_1

    .line 151
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_8
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 153
    .restart local v1    # "callStatus":Landroid/bluetooth/BluetoothHeadsetClientCall;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 154
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    const-string v6, "missed"

    invoke-static {v5, v6}, Lcom/ts/bt/BtCallMsgbox;->access$3(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V

    .line 155
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ts/bt/BtCallMsgbox;->access$4(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V

    .line 156
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    iget-object v6, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    iget-object v6, v6, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ts/bt/BtExe;->getContactByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ts/bt/BtCallMsgbox;->access$9(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V

    .line 157
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$10(Lcom/ts/bt/BtCallMsgbox;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$10(Lcom/ts/bt/BtCallMsgbox;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 158
    :cond_9
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$6(Lcom/ts/bt/BtCallMsgbox;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/ts/bt/BtExe;->mStrPhoneNo:Ljava/lang/String;

    .line 159
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    iget-object v5, v5, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v5}, Lcom/ts/bt/BtExe;->UpdateCallName()V

    .line 160
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    iget-object v6, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    iget-object v6, v6, Lcom/ts/bt/BtCallMsgbox;->bt:Lcom/ts/bt/BtExe;

    invoke-virtual {v6}, Lcom/ts/bt/BtExe;->GetCallName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ts/bt/BtCallMsgbox;->access$9(Lcom/ts/bt/BtCallMsgbox;Ljava/lang/String;)V

    .line 162
    :cond_a
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->callStateView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$8(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 163
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->callStateView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$8(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/TextView;

    move-result-object v5

    sget v6, Lcom/ts/MainUI/R$string;->str_bt_call_in:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 165
    :cond_b
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->callNameView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$11(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 166
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->callNameView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$11(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->mCallName:Ljava/lang/String;
    invoke-static {v6}, Lcom/ts/bt/BtCallMsgbox;->access$10(Lcom/ts/bt/BtCallMsgbox;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->callNoView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$12(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->mCallNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/ts/bt/BtCallMsgbox;->access$6(Lcom/ts/bt/BtCallMsgbox;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_c
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->answerButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$13(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_6

    .line 170
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->answerButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$13(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v5, p0, Lcom/ts/bt/BtCallMsgbox$1;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # getter for: Lcom/ts/bt/BtCallMsgbox;->kbButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/ts/bt/BtCallMsgbox;->access$14(Lcom/ts/bt/BtCallMsgbox;)Landroid/widget/Button;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2
.end method
