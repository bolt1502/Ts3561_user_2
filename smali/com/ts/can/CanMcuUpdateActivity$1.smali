.class Lcom/ts/can/CanMcuUpdateActivity$1;
.super Ljava/lang/Object;
.source "CanMcuUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanMcuUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanMcuUpdateActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanMcuUpdateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanMcuUpdateActivity$1;->this$0:Lcom/ts/can/CanMcuUpdateActivity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ts/can/CanMcuUpdateActivity$1;->this$0:Lcom/ts/can/CanMcuUpdateActivity;

    invoke-virtual {v0}, Lcom/ts/can/CanMcuUpdateActivity;->onTimer()V

    .line 49
    # getter for: Lcom/ts/can/CanMcuUpdateActivity;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/ts/can/CanMcuUpdateActivity;->access$0()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/can/CanMcuUpdateActivity$1;->this$0:Lcom/ts/can/CanMcuUpdateActivity;

    # getter for: Lcom/ts/can/CanMcuUpdateActivity;->runnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/ts/can/CanMcuUpdateActivity;->access$1(Lcom/ts/can/CanMcuUpdateActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method
