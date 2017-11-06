.class public Lcom/ts/backcar/BackcarService;
.super Ljava/lang/Object;
.source "BackcarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/backcar/BackcarService$Arm2CommunicationRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_BACKCAR_FINISH:Ljava/lang/String; = "android.backcar.action.FINISH"

.field public static final ACTION_BACKCAR_PREPARE_START:Ljava/lang/String; = "android.backcar.action.PREPARE_START"

.field public static final ACTION_BACKCAR_STARTED:Ljava/lang/String; = "android.backcar.action.STARTED"

.field public static final BACK_CAR_INIT:Ljava/lang/String; = "forfan.ps.backinint"

.field private static final TAG:Ljava/lang/String; = "BackcarService"

.field private static gInst:Lcom/ts/backcar/BackcarService;

.field public static nStep:I


# instance fields
.field private bHasQuickBc:Z

.field public bIninOK:Z

.field private mActivity:Landroid/app/Activity;

.field private mCM:Landroid/hardware/camera2/CameraManager;

.field private mCamera2Preview:Lcom/ts/backcar/Camera2Preview;

.field mCameraServiceDetector:Lcom/mediatek/serviceMonitor/CameraServiceDetector;

.field public mContext:Landroid/content/Context;

.field private mTextureView:Lcom/ts/backcar/AutoFitTextureView;

.field public mView:Landroid/widget/ImageView;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/backcar/BackcarService;->gInst:Lcom/ts/backcar/BackcarService;

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/ts/backcar/BackcarService;->nStep:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/ts/backcar/BackcarService;->mContext:Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ts/backcar/BackcarService;->bIninOK:Z

    .line 35
    iput-object v1, p0, Lcom/ts/backcar/BackcarService;->mWM:Landroid/view/WindowManager;

    .line 36
    iput-object v1, p0, Lcom/ts/backcar/BackcarService;->mCM:Landroid/hardware/camera2/CameraManager;

    .line 37
    iput-object v1, p0, Lcom/ts/backcar/BackcarService;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    .line 38
    iput-object v1, p0, Lcom/ts/backcar/BackcarService;->mCamera2Preview:Lcom/ts/backcar/Camera2Preview;

    .line 40
    iput-object v1, p0, Lcom/ts/backcar/BackcarService;->mActivity:Landroid/app/Activity;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/backcar/BackcarService;->bHasQuickBc:Z

    .line 45
    new-instance v0, Lcom/mediatek/serviceMonitor/CameraServiceDetector;

    invoke-direct {v0}, Lcom/mediatek/serviceMonitor/CameraServiceDetector;-><init>()V

    iput-object v0, p0, Lcom/ts/backcar/BackcarService;->mCameraServiceDetector:Lcom/mediatek/serviceMonitor/CameraServiceDetector;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/ts/backcar/BackcarService;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ts/backcar/BackcarService;->mCM:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method public static getInstance()Lcom/ts/backcar/BackcarService;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/ts/backcar/BackcarService;->gInst:Lcom/ts/backcar/BackcarService;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/ts/backcar/BackcarService;

    invoke-direct {v0}, Lcom/ts/backcar/BackcarService;-><init>()V

    sput-object v0, Lcom/ts/backcar/BackcarService;->gInst:Lcom/ts/backcar/BackcarService;

    .line 223
    :cond_0
    sget-object v0, Lcom/ts/backcar/BackcarService;->gInst:Lcom/ts/backcar/BackcarService;

    return-object v0
.end method


# virtual methods
.method public InintCamera(Landroid/content/Context;)V
    .locals 5
    .param p1, "MyContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 189
    iget-object v1, p0, Lcom/ts/backcar/BackcarService;->mWM:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 191
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/ts/backcar/BackcarService;->mWM:Landroid/view/WindowManager;

    .line 192
    const-string v1, "camera"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lcom/ts/backcar/BackcarService;->mCM:Landroid/hardware/camera2/CameraManager;

    .line 193
    const-string v1, "BackcarService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InintCamera mWM=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/backcar/BackcarService;->mWM:Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v1, "BackcarService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InintCamera mCM=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/backcar/BackcarService;->mCM:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iput-object p1, p0, Lcom/ts/backcar/BackcarService;->mContext:Landroid/content/Context;

    .line 197
    iget-boolean v1, p0, Lcom/ts/backcar/BackcarService;->bHasQuickBc:Z

    if-eqz v1, :cond_2

    .line 199
    const-string v1, "forfan.ps.backinint"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    const-string v1, "forfan.ps.backinint"

    const-string v2, "11"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ts/backcar/BackcarService$Arm2CommunicationRunnable;

    invoke-direct {v1, p0}, Lcom/ts/backcar/BackcarService$Arm2CommunicationRunnable;-><init>(Lcom/ts/backcar/BackcarService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 203
    .local v0, "Arm2CommunicationThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 215
    .end local v0    # "Arm2CommunicationThread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iput-boolean v4, p0, Lcom/ts/backcar/BackcarService;->bIninOK:Z

    goto :goto_0

    .line 211
    :cond_2
    iput-boolean v4, p0, Lcom/ts/backcar/BackcarService;->bIninOK:Z

    goto :goto_0
.end method

.method public StartCamera(Lcom/ts/backcar/AutoFitTextureView;)V
    .locals 4
    .param p1, "tex"    # Lcom/ts/backcar/AutoFitTextureView;

    .prologue
    .line 57
    iget-boolean v1, p0, Lcom/ts/backcar/BackcarService;->bIninOK:Z

    if-nez v1, :cond_0

    .line 59
    const-string v1, "BackcarService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartCamera arm2 is run ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 62
    :cond_0
    if-nez p1, :cond_1

    .line 64
    const-string v1, "BackcarService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartCamera tex="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/ts/backcar/BackcarService;->mCamera2Preview:Lcom/ts/backcar/Camera2Preview;

    if-eqz v1, :cond_2

    .line 68
    const-string v1, "BackcarService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartCamera mCamera2Preview="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/backcar/BackcarService;->mCamera2Preview:Lcom/ts/backcar/Camera2Preview;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/ts/backcar/BackcarService;->StopCamera()V

    .line 75
    :cond_2
    iput-object p1, p0, Lcom/ts/backcar/BackcarService;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    .line 76
    const-string v1, "BackcarService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartCamera 1 tex="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/ts/backcar/BackcarService;->mCamera2Preview:Lcom/ts/backcar/Camera2Preview;

    if-nez v1, :cond_3

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "rotation":I
    const-string v1, "BackcarService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartCamera 2=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/ts/backcar/BackcarService;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    iget-object v2, p0, Lcom/ts/backcar/BackcarService;->mCM:Landroid/hardware/camera2/CameraManager;

    invoke-static {v1, v2, v0}, Lcom/ts/backcar/Camera2Preview;->newInstance(Lcom/ts/backcar/AutoFitTextureView;Landroid/hardware/camera2/CameraManager;I)Lcom/ts/backcar/Camera2Preview;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/backcar/BackcarService;->mCamera2Preview:Lcom/ts/backcar/Camera2Preview;

    goto :goto_0

    .line 83
    .end local v0    # "rotation":I
    :cond_3
    const-string v1, "BackcarService"

    const-string v2, "BackCarRunnable BACKCAR_START mCamera2Preview is not null L_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public StopActivity()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ts/backcar/BackcarService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "BackcarService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mActivity finish"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/backcar/BackcarService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/ts/backcar/BackcarService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/backcar/BackcarService;->mActivity:Landroid/app/Activity;

    .line 96
    :cond_0
    return-void
.end method

.method public StopCamera()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ts/backcar/BackcarService;->mCamera2Preview:Lcom/ts/backcar/Camera2Preview;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "BackcarService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StopCamera=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/backcar/BackcarService;->mCamera2Preview:Lcom/ts/backcar/Camera2Preview;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/ts/backcar/BackcarService;->mCamera2Preview:Lcom/ts/backcar/Camera2Preview;

    invoke-virtual {v0}, Lcom/ts/backcar/Camera2Preview;->closeCamera()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/backcar/BackcarService;->mCamera2Preview:Lcom/ts/backcar/Camera2Preview;

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v0, "BackcarService"

    const-string v1, "mCamera2Preview== null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    const-string v0, "BackcarService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setActivity mActivity= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/backcar/BackcarService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/ts/backcar/BackcarService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ts/backcar/BackcarService;->mActivity:Landroid/app/Activity;

    if-eq v0, p1, :cond_0

    .line 50
    const-string v0, "BackcarService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setActivity mActivity= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/backcar/BackcarService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/ts/backcar/BackcarService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/ts/backcar/BackcarService;->mActivity:Landroid/app/Activity;

    .line 54
    return-void
.end method
