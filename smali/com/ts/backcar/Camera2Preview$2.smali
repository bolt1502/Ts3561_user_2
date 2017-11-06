.class Lcom/ts/backcar/Camera2Preview$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera2Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/backcar/Camera2Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/backcar/Camera2Preview;


# direct methods
.method constructor <init>(Lcom/ts/backcar/Camera2Preview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/backcar/Camera2Preview$2;->this$0:Lcom/ts/backcar/Camera2Preview;

    .line 148
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 174
    const-string v0, "Camera2Preview"

    const-string v1, "onDisconnected mCameraOpenCloseLock release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview$2;->this$0:Lcom/ts/backcar/Camera2Preview;

    # getter for: Lcom/ts/backcar/Camera2Preview;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/ts/backcar/Camera2Preview;->access$8(Lcom/ts/backcar/Camera2Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 176
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 177
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview$2;->this$0:Lcom/ts/backcar/Camera2Preview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ts/backcar/Camera2Preview;->access$6(Lcom/ts/backcar/Camera2Preview;Landroid/hardware/camera2/CameraDevice;)V

    .line 178
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "error"    # I

    .prologue
    .line 182
    const-string v0, "Camera2Preview"

    const-string v1, "onError mCameraOpenCloseLock release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview$2;->this$0:Lcom/ts/backcar/Camera2Preview;

    # getter for: Lcom/ts/backcar/Camera2Preview;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/ts/backcar/Camera2Preview;->access$8(Lcom/ts/backcar/Camera2Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 184
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 185
    const-string v0, "Camera2Preview"

    const-string v1, "onError camera close"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview$2;->this$0:Lcom/ts/backcar/Camera2Preview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ts/backcar/Camera2Preview;->access$6(Lcom/ts/backcar/Camera2Preview;Landroid/hardware/camera2/CameraDevice;)V

    .line 188
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    .line 191
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    const-string v1, "Camera2Preview"

    const-string v2, "onOpened mCameraOpenCloseLock before release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview$2;->this$0:Lcom/ts/backcar/Camera2Preview;

    # getter for: Lcom/ts/backcar/Camera2Preview;->mbSurfaceAvailable:Z
    invoke-static {v1}, Lcom/ts/backcar/Camera2Preview;->access$4(Lcom/ts/backcar/Camera2Preview;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview$2;->this$0:Lcom/ts/backcar/Camera2Preview;

    # getter for: Lcom/ts/backcar/Camera2Preview;->mbExit:Z
    invoke-static {v1}, Lcom/ts/backcar/Camera2Preview;->access$5(Lcom/ts/backcar/Camera2Preview;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview$2;->this$0:Lcom/ts/backcar/Camera2Preview;

    # getter for: Lcom/ts/backcar/Camera2Preview;->mbExit:Z
    invoke-static {v1}, Lcom/ts/backcar/Camera2Preview;->access$5(Lcom/ts/backcar/Camera2Preview;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview$2;->this$0:Lcom/ts/backcar/Camera2Preview;

    invoke-static {v1, p1}, Lcom/ts/backcar/Camera2Preview;->access$6(Lcom/ts/backcar/Camera2Preview;Landroid/hardware/camera2/CameraDevice;)V

    .line 165
    const-string v1, "Camera2Preview"

    const-string v2, "mCameraDevice get"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview$2;->this$0:Lcom/ts/backcar/Camera2Preview;

    # invokes: Lcom/ts/backcar/Camera2Preview;->createCameraPreviewSession()V
    invoke-static {v1}, Lcom/ts/backcar/Camera2Preview;->access$7(Lcom/ts/backcar/Camera2Preview;)V

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview$2;->this$0:Lcom/ts/backcar/Camera2Preview;

    # getter for: Lcom/ts/backcar/Camera2Preview;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v1}, Lcom/ts/backcar/Camera2Preview;->access$8(Lcom/ts/backcar/Camera2Preview;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 169
    const-string v1, "Camera2Preview"

    const-string v2, "onOpened mCameraOpenCloseLock after release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 156
    :cond_2
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 157
    const-string v1, "Camera2Preview"

    const-string v2, "wait surface available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Camera2Preview"

    const-string v2, "sleep Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
