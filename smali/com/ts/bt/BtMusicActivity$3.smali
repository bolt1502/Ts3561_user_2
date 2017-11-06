.class Lcom/ts/bt/BtMusicActivity$3;
.super Ljava/lang/Object;
.source "BtMusicActivity.java"

# interfaces
.implements Lcom/autochips/bluetooth/AvrcpControllerProfile$MetadataCallback;


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
    iput-object p1, p0, Lcom/ts/bt/BtMusicActivity$3;->this$0:Lcom/ts/bt/BtMusicActivity;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v2, p0, Lcom/ts/bt/BtMusicActivity$3;->this$0:Lcom/ts/bt/BtMusicActivity;

    # getter for: Lcom/ts/bt/BtMusicActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ts/bt/BtMusicActivity;->access$5(Lcom/ts/bt/BtMusicActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 403
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "BtMusicActivity"

    const-string v3, "onMetadataChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v2, "artist"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v2, "album"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 409
    iget-object v2, p0, Lcom/ts/bt/BtMusicActivity$3;->this$0:Lcom/ts/bt/BtMusicActivity;

    # getter for: Lcom/ts/bt/BtMusicActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ts/bt/BtMusicActivity;->access$5(Lcom/ts/bt/BtMusicActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    return-void
.end method

.method public onPlayStatusChanged(BII)V
    .locals 5
    .param p1, "play_status"    # B
    .param p2, "song_len"    # I
    .param p3, "song_pos"    # I

    .prologue
    .line 414
    iget-object v2, p0, Lcom/ts/bt/BtMusicActivity$3;->this$0:Lcom/ts/bt/BtMusicActivity;

    iget-object v2, v2, Lcom/ts/bt/BtMusicActivity;->D:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BtMusicActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPlayStatusChanged play_status="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 415
    const-string v4, ",song_len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",song_pos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 414
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/ts/bt/BtMusicActivity$3;->this$0:Lcom/ts/bt/BtMusicActivity;

    # getter for: Lcom/ts/bt/BtMusicActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ts/bt/BtMusicActivity;->access$5(Lcom/ts/bt/BtMusicActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 417
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 418
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "BtMusicActivity"

    const-string v3, "onPlayStatusChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v2, "play_status"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 420
    const-string v2, "song_len"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    const-string v2, "song_pos"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 423
    iget-object v2, p0, Lcom/ts/bt/BtMusicActivity$3;->this$0:Lcom/ts/bt/BtMusicActivity;

    # getter for: Lcom/ts/bt/BtMusicActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ts/bt/BtMusicActivity;->access$5(Lcom/ts/bt/BtMusicActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 424
    return-void
.end method
