.class Lcom/ts/can/CanMainActivity$1;
.super Ljava/lang/Object;
.source "CanMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/CanMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/CanMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/CanMainActivity$1;->this$0:Lcom/ts/can/CanMainActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/ts/can/CanMainActivity$1;->this$0:Lcom/ts/can/CanMainActivity;

    # getter for: Lcom/ts/can/CanMainActivity;->mTaskCount:I
    invoke-static {v0}, Lcom/ts/can/CanMainActivity;->access$0(Lcom/ts/can/CanMainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ts/can/CanMainActivity;->access$1(Lcom/ts/can/CanMainActivity;I)V

    .line 108
    invoke-static {}, Lcom/yyw/ts70xhw/Mcu;->mcutask()I

    move-result v0

    invoke-static {v0}, Lcom/ts/can/CanMainActivity;->access$2(I)V

    .line 109
    # getter for: Lcom/ts/can/CanMainActivity;->mCurSyncSta:I
    invoke-static {}, Lcom/ts/can/CanMainActivity;->access$3()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 110
    # getter for: Lcom/ts/can/CanMainActivity;->mLastSyncSta:I
    invoke-static {}, Lcom/ts/can/CanMainActivity;->access$4()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "CanMainActivity"

    const-string v1, "1 == Mcu.mcutask()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {v2}, Lcom/ts/can/CanMainActivity;->access$5(I)V

    .line 114
    iget-object v0, p0, Lcom/ts/can/CanMainActivity$1;->this$0:Lcom/ts/can/CanMainActivity;

    # getter for: Lcom/ts/can/CanMainActivity;->mBtnUpdate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ts/can/CanMainActivity;->access$6(Lcom/ts/can/CanMainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    :cond_0
    # getter for: Lcom/ts/can/CanMainActivity;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/ts/can/CanMainActivity;->access$7()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    # getter for: Lcom/ts/can/CanMainActivity;->mLastSyncSta:I
    invoke-static {}, Lcom/ts/can/CanMainActivity;->access$4()I

    move-result v0

    if-lez v0, :cond_1

    .line 146
    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->CanMain(I)I

    .line 154
    :cond_1
    return-void
.end method
