.class final Lcom/ts/bt/BtBaseActivity$HistoryObserver;
.super Landroid/database/ContentObserver;
.source "BtBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoryObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/bt/BtBaseActivity;


# direct methods
.method public constructor <init>(Lcom/ts/bt/BtBaseActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/ts/bt/BtBaseActivity$HistoryObserver;->this$0:Lcom/ts/bt/BtBaseActivity;

    .line 745
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 747
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    const/16 v1, 0x5a

    .line 750
    if-nez p1, :cond_0

    .line 751
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity$HistoryObserver;->this$0:Lcom/ts/bt/BtBaseActivity;

    iget-object v0, v0, Lcom/ts/bt/BtBaseActivity;->mHistoryLoaderHandle:Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;

    invoke-virtual {v0, v1}, Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/ts/bt/BtBaseActivity$HistoryObserver;->this$0:Lcom/ts/bt/BtBaseActivity;

    iget-object v0, v0, Lcom/ts/bt/BtBaseActivity;->mHistoryLoaderHandle:Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;

    .line 753
    invoke-virtual {v0, v1}, Lcom/ts/bt/BtBaseActivity$HistoryLoaderHandle;->sendEmptyMessage(I)Z

    .line 756
    :cond_0
    return-void
.end method
