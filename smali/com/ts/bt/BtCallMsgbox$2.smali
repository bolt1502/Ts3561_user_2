.class Lcom/ts/bt/BtCallMsgbox$2;
.super Landroid/content/BroadcastReceiver;
.source "BtCallMsgbox.java"


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
    iput-object p1, p0, Lcom/ts/bt/BtCallMsgbox$2;->this$0:Lcom/ts/bt/BtCallMsgbox;

    .line 196
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "actionString":Ljava/lang/String;
    const-string v1, "BtCallMsgbox"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceiver: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox$2;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # invokes: Lcom/ts/bt/BtCallMsgbox;->onActionCallStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, p1, p2}, Lcom/ts/bt/BtCallMsgbox;->access$15(Lcom/ts/bt/BtCallMsgbox;Landroid/content/Context;Landroid/content/Intent;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox$2;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # invokes: Lcom/ts/bt/BtCallMsgbox;->onActionHFPConnectStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, p1, p2}, Lcom/ts/bt/BtCallMsgbox;->access$16(Lcom/ts/bt/BtCallMsgbox;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    :cond_2
    const-string v1, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/ts/bt/BtCallMsgbox$2;->this$0:Lcom/ts/bt/BtCallMsgbox;

    # invokes: Lcom/ts/bt/BtCallMsgbox;->onActionSCOStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, p1, p2}, Lcom/ts/bt/BtCallMsgbox;->access$17(Lcom/ts/bt/BtCallMsgbox;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
