.class Lcom/ts/main/common/MainUI$DvpServiceConnection;
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
    name = "DvpServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/MainUI;


# direct methods
.method constructor <init>(Lcom/ts/main/common/MainUI;)V
    .locals 0

    .prologue
    .line 3355
    iput-object p1, p0, Lcom/ts/main/common/MainUI$DvpServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3360
    iget-object v1, p0, Lcom/ts/main/common/MainUI$DvpServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    invoke-static {p2}, Lcom/ts/dvdplayer/ITsPlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ts/dvdplayer/ITsPlayerService;

    move-result-object v2

    iput-object v2, v1, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 3361
    iget-object v1, p0, Lcom/ts/main/common/MainUI$DvpServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    iget v1, v1, Lcom/ts/main/common/MainUI;->nBatFirst:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3363
    :try_start_0
    iget-object v1, p0, Lcom/ts/main/common/MainUI$DvpServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    iget-object v1, v1, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    iget-object v2, p0, Lcom/ts/main/common/MainUI$DvpServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    iget v2, v2, Lcom/ts/main/common/MainUI;->nBatFirst:I

    invoke-interface {v1, v2}, Lcom/ts/dvdplayer/ITsPlayerService;->mediaTask(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3369
    :cond_0
    :goto_0
    return-void

    .line 3364
    :catch_0
    move-exception v0

    .line 3366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 3374
    iget-object v0, p0, Lcom/ts/main/common/MainUI$DvpServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    .line 3375
    iget-object v0, p0, Lcom/ts/main/common/MainUI$DvpServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    # getter for: Lcom/ts/main/common/MainUI;->nPowerMode:I
    invoke-static {v0}, Lcom/ts/main/common/MainUI;->access$11(Lcom/ts/main/common/MainUI;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3377
    iget-object v0, p0, Lcom/ts/main/common/MainUI$DvpServiceConnection;->this$0:Lcom/ts/main/common/MainUI;

    invoke-virtual {v0}, Lcom/ts/main/common/MainUI;->InintDvpInterface()V

    .line 3380
    :cond_0
    return-void
.end method
