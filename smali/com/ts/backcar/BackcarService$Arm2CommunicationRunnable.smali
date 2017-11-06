.class public Lcom/ts/backcar/BackcarService$Arm2CommunicationRunnable;
.super Ljava/lang/Object;
.source "BackcarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/backcar/BackcarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Arm2CommunicationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/backcar/BackcarService;


# direct methods
.method public constructor <init>(Lcom/ts/backcar/BackcarService;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ts/backcar/BackcarService$Arm2CommunicationRunnable;->this$0:Lcom/ts/backcar/BackcarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 122
    const-string v6, "BackcarService"

    const-string v7, "inform arm2 android system is ready"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v5, 0x0

    .line 124
    .local v5, "nNUm":I
    const-string v6, "sys.boot_completed"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "bCompelte":Ljava/lang/String;
    sput v9, Lcom/ts/backcar/BackcarService;->nStep:I

    .line 126
    :goto_0
    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    sput v10, Lcom/ts/backcar/BackcarService;->nStep:I

    .line 141
    invoke-static {}, Lcom/autochips/android/backcar/Backcar_GPIO;->takeoverfromArm2()V

    .line 142
    const/4 v6, 0x3

    sput v6, Lcom/ts/backcar/BackcarService;->nStep:I

    .line 143
    const-string v6, "BackcarService"

    const-string v7, "arm2 backcar is exit, so arm1 start backcarservice and take over the backcar"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v6, 0x4

    sput v6, Lcom/ts/backcar/BackcarService;->nStep:I

    .line 147
    const/4 v5, 0x0

    .line 148
    iget-object v6, p0, Lcom/ts/backcar/BackcarService$Arm2CommunicationRunnable;->this$0:Lcom/ts/backcar/BackcarService;

    iget-object v6, v6, Lcom/ts/backcar/BackcarService;->mCameraServiceDetector:Lcom/mediatek/serviceMonitor/CameraServiceDetector;

    invoke-virtual {v6}, Lcom/mediatek/serviceMonitor/CameraServiceDetector;->atc_cameraServiceDetect()I

    move-result v2

    .line 149
    .local v2, "cameraNums":I
    const-string v6, "BackcarService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cameraNums===="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_1
    if-gtz v2, :cond_0

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_3

    .line 160
    :cond_0
    const-string v6, "BackcarService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "found cameras: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v6, p0, Lcom/ts/backcar/BackcarService$Arm2CommunicationRunnable;->this$0:Lcom/ts/backcar/BackcarService;

    iput-boolean v9, v6, Lcom/ts/backcar/BackcarService;->bIninOK:Z

    .line 162
    const/4 v6, 0x5

    sput v6, Lcom/ts/backcar/BackcarService;->nStep:I

    .line 164
    const-string v6, "BackcarService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SystemProperties.get(BACK_CAR_INIT) "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "forfan.ps.backinint"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-ne v2, v10, :cond_4

    .line 170
    :try_start_0
    const-string v0, "1"

    .line 171
    .local v0, "CameraId":Ljava/lang/String;
    const-string v6, "BackcarService"

    const-string v7, "get parameters start"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v6, p0, Lcom/ts/backcar/BackcarService$Arm2CommunicationRunnable;->this$0:Lcom/ts/backcar/BackcarService;

    # getter for: Lcom/ts/backcar/BackcarService;->mCM:Landroid/hardware/camera2/CameraManager;
    invoke-static {v6}, Lcom/ts/backcar/BackcarService;->access$0(Lcom/ts/backcar/BackcarService;)Landroid/hardware/camera2/CameraManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 174
    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const-string v0, "0"

    .line 175
    iget-object v6, p0, Lcom/ts/backcar/BackcarService$Arm2CommunicationRunnable;->this$0:Lcom/ts/backcar/BackcarService;

    # getter for: Lcom/ts/backcar/BackcarService;->mCM:Landroid/hardware/camera2/CameraManager;
    invoke-static {v6}, Lcom/ts/backcar/BackcarService;->access$0(Lcom/ts/backcar/BackcarService;)Landroid/hardware/camera2/CameraManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 177
    const-string v6, "BackcarService"

    const-string v7, "get parameters end"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 185
    .end local v0    # "CameraId":Ljava/lang/String;
    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_1
    :goto_2
    return-void

    .line 130
    .end local v2    # "cameraNums":I
    :cond_2
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :goto_3
    const-string v6, "sys.boot_completed"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    add-int/lit8 v5, v5, 0x1

    .line 138
    const-string v6, "BackcarService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "AutoBootUp.bBootComplete "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 131
    :catch_0
    move-exception v4

    .line 134
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 152
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "cameraNums":I
    :cond_3
    const-wide/16 v6, 0xa

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 153
    add-int/lit8 v5, v5, 0x1

    .line 154
    const-string v6, "BackcarService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "atc_cameraServiceDetect"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 158
    :goto_4
    iget-object v6, p0, Lcom/ts/backcar/BackcarService$Arm2CommunicationRunnable;->this$0:Lcom/ts/backcar/BackcarService;

    iget-object v6, v6, Lcom/ts/backcar/BackcarService;->mCameraServiceDetector:Lcom/mediatek/serviceMonitor/CameraServiceDetector;

    invoke-virtual {v6}, Lcom/mediatek/serviceMonitor/CameraServiceDetector;->atc_cameraServiceDetect()I

    move-result v2

    goto/16 :goto_1

    .line 155
    :catch_1
    move-exception v4

    .line 156
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "BackcarService"

    const-string v7, "sleep Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 179
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    if-ne v2, v9, :cond_1

    .line 180
    :try_start_3
    iget-object v6, p0, Lcom/ts/backcar/BackcarService$Arm2CommunicationRunnable;->this$0:Lcom/ts/backcar/BackcarService;

    # getter for: Lcom/ts/backcar/BackcarService;->mCM:Landroid/hardware/camera2/CameraManager;
    invoke-static {v6}, Lcom/ts/backcar/BackcarService;->access$0(Lcom/ts/backcar/BackcarService;)Landroid/hardware/camera2/CameraManager;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 181
    :catch_2
    move-exception v4

    .line 182
    .local v4, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v6, "BackcarService"

    const-string v7, "get info  Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_2
.end method
