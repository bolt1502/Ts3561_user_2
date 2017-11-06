.class public Lnet/easyconn/platform/wrc/core/b;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothReceiver.java"


# instance fields
.field private a:Lnet/easyconn/platform/wrc/core/j;


# direct methods
.method public constructor <init>(Lnet/easyconn/platform/wrc/core/j;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/b;->a:Lnet/easyconn/platform/wrc/core/j;

    .line 17
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 21
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 37
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 29
    :pswitch_1
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/b;->a:Lnet/easyconn/platform/wrc/core/j;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/b;->a:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/j;->e()V

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
