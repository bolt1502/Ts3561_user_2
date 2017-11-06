.class Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$1;
.super Ljava/lang/Object;
.source "CanCadillacXt5UpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$1;->this$0:Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$1;->this$0:Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;

    invoke-virtual {v0}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->onTimer()V

    .line 101
    # getter for: Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->access$0()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity$1;->this$0:Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;

    # getter for: Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->runnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;->access$1(Lcom/ts/can/gm/xt5/CanCadillacXt5UpdateActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method
