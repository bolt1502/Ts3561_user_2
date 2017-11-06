.class Lcom/ts/factoryset/FsOtherActivity$1;
.super Landroid/os/Handler;
.source "FsOtherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsOtherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/factoryset/FsOtherActivity;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsOtherActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsOtherActivity$1;->this$0:Lcom/ts/factoryset/FsOtherActivity;

    .line 408
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 411
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 418
    :goto_0
    return-void

    .line 413
    :pswitch_0
    iget-object v0, p0, Lcom/ts/factoryset/FsOtherActivity$1;->this$0:Lcom/ts/factoryset/FsOtherActivity;

    # invokes: Lcom/ts/factoryset/FsOtherActivity;->updateUsbMode()V
    invoke-static {v0}, Lcom/ts/factoryset/FsOtherActivity;->access$0(Lcom/ts/factoryset/FsOtherActivity;)V

    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
