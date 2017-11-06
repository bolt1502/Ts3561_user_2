.class final Lcom/hongfans/carmedia/MediaAPI$3;
.super Ljava/lang/Object;
.source "MediaAPI.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hongfans/carmedia/MediaAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 152
    const/4 v1, 0x1

    # setter for: Lcom/hongfans/carmedia/MediaAPI;->mIsBind:Z
    invoke-static {v1}, Lcom/hongfans/carmedia/MediaAPI;->access$002(Z)Z

    .line 153
    const-string v1, "\u670d\u52a1\u7ed1\u5b9a\u6210\u529f"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 155
    :try_start_0
    invoke-static {p2}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IPlayManager;

    move-result-object v1

    # setter for: Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;
    invoke-static {v1}, Lcom/hongfans/carmedia/MediaAPI;->access$402(Lcom/hongfans/rearview/services/api/IPlayManager;)Lcom/hongfans/rearview/services/api/IPlayManager;

    .line 156
    # getter for: Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;
    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$400()Lcom/hongfans/rearview/services/api/IPlayManager;

    move-result-object v1

    # getter for: Lcom/hongfans/carmedia/MediaAPI;->mListener:Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;
    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$100()Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/hongfans/rearview/services/api/IPlayManager;->registerPlayChangedListener(Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 159
    const-string v1, "onServiceConnected \u53d1\u751f\u9519\u8bef"

    invoke-static {v1}, Lcom/hongfans/carmedia/Util;->printE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 165
    const/4 v1, 0x0

    # setter for: Lcom/hongfans/carmedia/MediaAPI;->mIsBind:Z
    invoke-static {v1}, Lcom/hongfans/carmedia/MediaAPI;->access$002(Z)Z

    .line 166
    const-string v1, "onServiceDisconnected \u53d1\u9001\u9000\u51fa\u5e7f\u64ad"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;Z)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hongfans.action.exit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    # getter for: Lcom/hongfans/carmedia/MediaAPI;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 169
    const/4 v1, 0x0

    # setter for: Lcom/hongfans/carmedia/MediaAPI;->ipm:Lcom/hongfans/rearview/services/api/IPlayManager;
    invoke-static {v1}, Lcom/hongfans/carmedia/MediaAPI;->access$402(Lcom/hongfans/rearview/services/api/IPlayManager;)Lcom/hongfans/rearview/services/api/IPlayManager;

    .line 170
    return-void
.end method
