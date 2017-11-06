.class Lcom/ts/bt/BtMusicActivity$2;
.super Landroid/os/Handler;
.source "BtMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtMusicActivity;


# direct methods
.method constructor <init>(Lcom/ts/bt/BtMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/bt/BtMusicActivity$2;->this$0:Lcom/ts/bt/BtMusicActivity;

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 135
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 136
    return-void

    .line 79
    :sswitch_0
    iget-object v10, p0, Lcom/ts/bt/BtMusicActivity$2;->this$0:Lcom/ts/bt/BtMusicActivity;

    invoke-virtual {v10}, Lcom/ts/bt/BtMusicActivity;->regMetadataCallback()V

    goto :goto_0

    .line 85
    :sswitch_1
    iget-object v10, p0, Lcom/ts/bt/BtMusicActivity$2;->this$0:Lcom/ts/bt/BtMusicActivity;

    iget v11, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/ts/bt/BtMusicActivity;->handleBtStateChanged(I)V
    invoke-static {v10, v11}, Lcom/ts/bt/BtMusicActivity;->access$0(Lcom/ts/bt/BtMusicActivity;I)V

    goto :goto_0

    .line 90
    :sswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 91
    .local v5, "profile_id":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 92
    .local v6, "profile_state":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 94
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    const/16 v10, 0xb

    if-ne v10, v5, :cond_1

    .line 95
    iget-object v10, p0, Lcom/ts/bt/BtMusicActivity$2;->this$0:Lcom/ts/bt/BtMusicActivity;

    # invokes: Lcom/ts/bt/BtMusicActivity;->handleA2dpSinkStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v10, v3, v6}, Lcom/ts/bt/BtMusicActivity;->access$1(Lcom/ts/bt/BtMusicActivity;Landroid/bluetooth/BluetoothDevice;I)V

    .line 99
    :cond_0
    :goto_1
    const-string v10, "BtMusicActivity"

    const-string v11, "MSG_PROFILE_STATE_CHANGED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_1
    const/16 v10, 0xc

    if-ne v10, v5, :cond_0

    .line 97
    iget-object v10, p0, Lcom/ts/bt/BtMusicActivity$2;->this$0:Lcom/ts/bt/BtMusicActivity;

    # invokes: Lcom/ts/bt/BtMusicActivity;->handleAvrcpCtStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v10, v3, v6}, Lcom/ts/bt/BtMusicActivity;->access$2(Lcom/ts/bt/BtMusicActivity;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 105
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "profile_id":I
    .end local v6    # "profile_state":I
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 106
    .local v2, "b":Landroid/os/Bundle;
    const-string v10, "play_status"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v4

    .line 107
    .local v4, "play_status":B
    const-string v10, "song_len"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 108
    .local v7, "song_len":I
    const-string v10, "song_pos"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 110
    .local v8, "song_pos":I
    iget-object v10, p0, Lcom/ts/bt/BtMusicActivity$2;->this$0:Lcom/ts/bt/BtMusicActivity;

    # getter for: Lcom/ts/bt/BtMusicActivity;->bt:Lcom/ts/bt/BtExe;
    invoke-static {v10}, Lcom/ts/bt/BtMusicActivity;->access$3(Lcom/ts/bt/BtMusicActivity;)Lcom/ts/bt/BtExe;

    move-result-object v10

    invoke-virtual {v10, v4, v7, v8}, Lcom/ts/bt/BtExe;->updatePlaybackStatus(BII)V

    .line 111
    const-string v10, "lh"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "play_status"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v10, "BtMusicActivity"

    const-string v11, "MSG_PLAY_STATE_CHANGED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v4    # "play_status":B
    .end local v7    # "song_len":I
    .end local v8    # "song_pos":I
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 119
    .restart local v2    # "b":Landroid/os/Bundle;
    const-string v10, "title"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, "title":Ljava/lang/String;
    const-string v10, "artist"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "artist":Ljava/lang/String;
    const-string v10, "album"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "album":Ljava/lang/String;
    sput-object v9, Lcom/ts/bt/BtExe;->mStrId3Name:Ljava/lang/String;

    .line 124
    sput-object v0, Lcom/ts/bt/BtExe;->mStrId3Album:Ljava/lang/String;

    .line 125
    sput-object v1, Lcom/ts/bt/BtExe;->mStrId3Artist:Ljava/lang/String;

    .line 126
    iget-object v10, p0, Lcom/ts/bt/BtMusicActivity$2;->this$0:Lcom/ts/bt/BtMusicActivity;

    # invokes: Lcom/ts/bt/BtMusicActivity;->UpdateUI()V
    invoke-static {v10}, Lcom/ts/bt/BtMusicActivity;->access$4(Lcom/ts/bt/BtMusicActivity;)V

    goto/16 :goto_0

    .line 76
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x1e -> :sswitch_3
        0x1f -> :sswitch_4
    .end sparse-switch
.end method
