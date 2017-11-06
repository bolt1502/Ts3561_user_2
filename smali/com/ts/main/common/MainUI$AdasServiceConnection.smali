.class Lcom/ts/main/common/MainUI$AdasServiceConnection;
.super Ljava/lang/Object;
.source "MainUI.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/common/MainUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdasServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/MainUI;


# direct methods
.method constructor <init>(Lcom/ts/main/common/MainUI;)V
    .locals 0

    .prologue
    .line 3314
    iput-object p1, p0, Lcom/ts/main/common/MainUI$AdasServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3320
    iget-object v1, p0, Lcom/ts/main/common/MainUI$AdasServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    invoke-static {p2}, Lcom/adasplus/ts/IAdasBinderInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/adasplus/ts/IAdasBinderInterface;

    move-result-object v2

    iput-object v2, v1, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    .line 3322
    const-string v1, "adas"

    const-string v2, "AdasServiceConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    invoke-static {}, Lcom/ts/main/common/MainUI;->IsCameraMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 3325
    iget-object v1, p0, Lcom/ts/main/common/MainUI$AdasServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    iget-object v1, v1, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    if-eqz v1, :cond_0

    .line 3329
    :try_start_0
    iget-object v1, p0, Lcom/ts/main/common/MainUI$AdasServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    iget-object v1, v1, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/adasplus/ts/IAdasBinderInterface;->setBackSignal(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3339
    :cond_0
    :goto_0
    return-void

    .line 3330
    :catch_0
    move-exception v0

    .line 3333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 3345
    iget-object v0, p0, Lcom/ts/main/common/MainUI$AdasServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ts/main/common/MainUI;->mIAdasBinderInterface:Lcom/adasplus/ts/IAdasBinderInterface;

    .line 3347
    return-void
.end method
