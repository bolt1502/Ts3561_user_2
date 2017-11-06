.class Lcom/txznet/comm/ui/T2/T2$8;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZWheelControlManager$OnTXZWheelControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/ui/T2/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/comm/ui/T2/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/ui/T2/T2;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/txznet/comm/ui/T2/T2$8;->T:Lcom/txznet/comm/ui/T2/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(I)V
    .locals 7
    .param p1, "eventId"    # I

    .prologue
    const/16 v6, 0x17

    const/16 v5, 0x16

    const/16 v4, 0x15

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 394
    sparse-switch p1, :sswitch_data_0

    .line 411
    :goto_0
    return-void

    .line 397
    :sswitch_0
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$8;->T:Lcom/txznet/comm/ui/T2/T2;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v4, v1}, Lcom/txznet/comm/ui/T2/T2;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 401
    :sswitch_1
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$8;->T:Lcom/txznet/comm/ui/T2/T2;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v5, v1}, Lcom/txznet/comm/ui/T2/T2;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 404
    :sswitch_2
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$8;->T:Lcom/txznet/comm/ui/T2/T2;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v6, v1}, Lcom/txznet/comm/ui/T2/T2;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 407
    :sswitch_3
    iget-object v0, p0, Lcom/txznet/comm/ui/T2/T2$8;->T:Lcom/txznet/comm/ui/T2/T2;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/txznet/comm/ui/T2/T2;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 394
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x69 -> :sswitch_0
        0x6a -> :sswitch_1
    .end sparse-switch
.end method
