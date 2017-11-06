.class Lcom/ts/MainUI/MainService$MainRunnable;
.super Ljava/lang/Object;
.source "MainService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/MainService;


# direct methods
.method private constructor <init>(Lcom/ts/MainUI/MainService;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ts/MainUI/MainService$MainRunnable;->this$0:Lcom/ts/MainUI/MainService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ts/MainUI/MainService;Lcom/ts/MainUI/MainService$MainRunnable;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/ts/MainUI/MainService$MainRunnable;-><init>(Lcom/ts/MainUI/MainService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ts/MainUI/MainService$MainRunnable;->this$0:Lcom/ts/MainUI/MainService;

    # getter for: Lcom/ts/MainUI/MainService;->mMainTask:Lcom/ts/MainUI/MainTask;
    invoke-static {v0}, Lcom/ts/MainUI/MainService;->access$0(Lcom/ts/MainUI/MainService;)Lcom/ts/MainUI/MainTask;

    move-result-object v0

    iget-object v0, v0, Lcom/ts/MainUI/MainTask;->mTaskCallBack:Lcom/ts/MainUI/TaskCallBack;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/ts/MainUI/MainService$MainRunnable;->this$0:Lcom/ts/MainUI/MainService;

    # getter for: Lcom/ts/MainUI/MainService;->mMainTask:Lcom/ts/MainUI/MainTask;
    invoke-static {v0}, Lcom/ts/MainUI/MainService;->access$0(Lcom/ts/MainUI/MainService;)Lcom/ts/MainUI/MainTask;

    move-result-object v0

    iget-object v0, v0, Lcom/ts/MainUI/MainTask;->mTaskCallBack:Lcom/ts/MainUI/TaskCallBack;

    invoke-interface {v0}, Lcom/ts/MainUI/TaskCallBack;->DealTask()V

    .line 23
    iget-object v0, p0, Lcom/ts/MainUI/MainService$MainRunnable;->this$0:Lcom/ts/MainUI/MainService;

    # getter for: Lcom/ts/MainUI/MainService;->mMainTask:Lcom/ts/MainUI/MainTask;
    invoke-static {v0}, Lcom/ts/MainUI/MainService;->access$0(Lcom/ts/MainUI/MainService;)Lcom/ts/MainUI/MainTask;

    move-result-object v0

    iget-object v0, v0, Lcom/ts/MainUI/MainTask;->mTaskCallBack:Lcom/ts/MainUI/TaskCallBack;

    invoke-interface {v0}, Lcom/ts/MainUI/TaskCallBack;->DealKey()V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/ts/MainUI/MainService$MainRunnable;->this$0:Lcom/ts/MainUI/MainService;

    # getter for: Lcom/ts/MainUI/MainService;->mMainTask:Lcom/ts/MainUI/MainTask;
    invoke-static {v0}, Lcom/ts/MainUI/MainService;->access$0(Lcom/ts/MainUI/MainService;)Lcom/ts/MainUI/MainTask;

    move-result-object v0

    iget-object v0, v0, Lcom/ts/MainUI/MainTask;->mUserCallBack:Lcom/ts/MainUI/UserCallBack;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/ts/MainUI/MainService$MainRunnable;->this$0:Lcom/ts/MainUI/MainService;

    # getter for: Lcom/ts/MainUI/MainService;->mMainTask:Lcom/ts/MainUI/MainTask;
    invoke-static {v0}, Lcom/ts/MainUI/MainService;->access$0(Lcom/ts/MainUI/MainService;)Lcom/ts/MainUI/MainTask;

    move-result-object v0

    iget-object v0, v0, Lcom/ts/MainUI/MainTask;->mUserCallBack:Lcom/ts/MainUI/UserCallBack;

    invoke-interface {v0}, Lcom/ts/MainUI/UserCallBack;->UserAll()V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/ts/MainUI/MainService$MainRunnable;->this$0:Lcom/ts/MainUI/MainService;

    # getter for: Lcom/ts/MainUI/MainService;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ts/MainUI/MainService;->access$1(Lcom/ts/MainUI/MainService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method
