.class public Lcom/ts/backcar/Camera2Preview;
.super Ljava/lang/Object;
.source "Camera2Preview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/backcar/Camera2Preview$CompareSizesByArea;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final STATE_PREVIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Camera2Preview"


# instance fields
.field public CameraNum:I

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field mCameraServiceDetector:Lcom/mediatek/serviceMonitor/CameraServiceDetector;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mImageReader:Landroid/media/ImageReader;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSize:Landroid/util/Size;

.field private mRotation:I

.field private mState:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Lcom/ts/backcar/AutoFitTextureView;

.field private mbExit:Z

.field private mbSurfaceAvailable:Z

.field private trueRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/ts/backcar/Camera2Preview;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ts/backcar/Camera2Preview;->$assertionsDisabled:Z

    .line 69
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/ts/backcar/AutoFitTextureView;Landroid/hardware/camera2/CameraManager;I)V
    .locals 5
    .param p1, "autofittextureview"    # Lcom/ts/backcar/AutoFitTextureView;
    .param p2, "cm"    # Landroid/hardware/camera2/CameraManager;
    .param p3, "rotation"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v1, 0xff

    iput v1, p0, Lcom/ts/backcar/Camera2Preview;->CameraNum:I

    .line 77
    new-instance v1, Lcom/ts/backcar/Camera2Preview$1;

    invoke-direct {v1, p0}, Lcom/ts/backcar/Camera2Preview$1;-><init>(Lcom/ts/backcar/Camera2Preview;)V

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 148
    new-instance v1, Lcom/ts/backcar/Camera2Preview$2;

    invoke-direct {v1, p0}, Lcom/ts/backcar/Camera2Preview$2;-><init>(Lcom/ts/backcar/Camera2Preview;)V

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 226
    iput v3, p0, Lcom/ts/backcar/Camera2Preview;->mState:I

    .line 231
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 232
    new-instance v1, Lcom/mediatek/serviceMonitor/CameraServiceDetector;

    invoke-direct {v1}, Lcom/mediatek/serviceMonitor/CameraServiceDetector;-><init>()V

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraServiceDetector:Lcom/mediatek/serviceMonitor/CameraServiceDetector;

    .line 238
    new-instance v1, Lcom/ts/backcar/Camera2Preview$3;

    invoke-direct {v1, p0}, Lcom/ts/backcar/Camera2Preview$3;-><init>(Lcom/ts/backcar/Camera2Preview;)V

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 299
    const-string v1, "Camera2Preview"

    const-string v2, "Camera2Preview"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iput-object p1, p0, Lcom/ts/backcar/Camera2Preview;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    .line 301
    iput-object p2, p0, Lcom/ts/backcar/Camera2Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 302
    iput p3, p0, Lcom/ts/backcar/Camera2Preview;->trueRotation:I

    .line 303
    iput p3, p0, Lcom/ts/backcar/Camera2Preview;->mRotation:I

    .line 304
    iput-boolean v3, p0, Lcom/ts/backcar/Camera2Preview;->mbSurfaceAvailable:Z

    .line 305
    iput-boolean v3, p0, Lcom/ts/backcar/Camera2Preview;->mbExit:Z

    .line 306
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraServiceDetector:Lcom/mediatek/serviceMonitor/CameraServiceDetector;

    invoke-virtual {v1}, Lcom/mediatek/serviceMonitor/CameraServiceDetector;->atc_cameraServiceDetect()I

    move-result v0

    .line 307
    .local v0, "cameraNums":I
    iput v0, p0, Lcom/ts/backcar/Camera2Preview;->CameraNum:I

    .line 308
    const-string v1, "Camera2Preview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CameraNum"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ts/backcar/Camera2Preview;->CameraNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 310
    const-string v1, "1"

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraId:Ljava/lang/String;

    .line 316
    :goto_0
    invoke-direct {p0}, Lcom/ts/backcar/Camera2Preview;->init()V

    .line 317
    return-void

    .line 311
    :cond_0
    if-ne v0, v4, :cond_1

    .line 312
    const-string v1, "0"

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .line 314
    :cond_1
    const-string v1, "0"

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraId:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ts/backcar/Camera2Preview;II)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Lcom/ts/backcar/Camera2Preview;->setUpCameraOutputs(II)V

    return-void
.end method

.method static synthetic access$1(Lcom/ts/backcar/Camera2Preview;II)V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0, p1, p2}, Lcom/ts/backcar/Camera2Preview;->configureTransform(II)V

    return-void
.end method

.method static synthetic access$10(Lcom/ts/backcar/Camera2Preview;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$11(Lcom/ts/backcar/Camera2Preview;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/ts/backcar/Camera2Preview;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static synthetic access$12(Lcom/ts/backcar/Camera2Preview;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$13(Lcom/ts/backcar/Camera2Preview;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method

.method static synthetic access$14(Lcom/ts/backcar/Camera2Preview;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$15(Lcom/ts/backcar/Camera2Preview;)Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method static synthetic access$16(Lcom/ts/backcar/Camera2Preview;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$17(Lcom/ts/backcar/Camera2Preview;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/backcar/Camera2Preview;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/ts/backcar/Camera2Preview;->openCamera()V

    return-void
.end method

.method static synthetic access$3(Lcom/ts/backcar/Camera2Preview;Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/ts/backcar/Camera2Preview;->mbSurfaceAvailable:Z

    return-void
.end method

.method static synthetic access$4(Lcom/ts/backcar/Camera2Preview;)Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/ts/backcar/Camera2Preview;->mbSurfaceAvailable:Z

    return v0
.end method

.method static synthetic access$5(Lcom/ts/backcar/Camera2Preview;)Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/ts/backcar/Camera2Preview;->mbExit:Z

    return v0
.end method

.method static synthetic access$6(Lcom/ts/backcar/Camera2Preview;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static synthetic access$7(Lcom/ts/backcar/Camera2Preview;)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/ts/backcar/Camera2Preview;->createCameraPreviewSession()V

    return-void
.end method

.method static synthetic access$8(Lcom/ts/backcar/Camera2Preview;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ts/backcar/Camera2Preview;)I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/ts/backcar/Camera2Preview;->mState:I

    return v0
.end method

.method private static chooseOptimalSize([Landroid/util/Size;IILandroid/util/Size;)Landroid/util/Size;
    .locals 10
    .param p0, "choices"    # [Landroid/util/Size;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "aspectRatio"    # Landroid/util/Size;

    .prologue
    const/4 v5, 0x0

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v0, "bigEnough":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 272
    .local v3, "w":I
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 274
    .local v1, "h":I
    const-string v4, "Camera2Preview"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " w:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ,h:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v4, "Camera2Preview"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " width:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ,height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    array-length v6, p0

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_0

    .line 283
    const-string v4, "Camera2Preview"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " bigEnough.size:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 287
    new-instance v4, Lcom/ts/backcar/Camera2Preview$CompareSizesByArea;

    invoke-direct {v4}, Lcom/ts/backcar/Camera2Preview$CompareSizesByArea;-><init>()V

    invoke-static {v0, v4}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 290
    :goto_1
    return-object v4

    .line 276
    :cond_0
    aget-object v2, p0, v4

    .line 277
    .local v2, "option":Landroid/util/Size;
    const-string v7, "Camera2Preview"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " choices.height:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", choices.width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v8, v1

    div-int/2addr v8, v3

    if-ne v7, v8, :cond_1

    .line 279
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v7, p1, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v7, p2, :cond_1

    .line 280
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 289
    .end local v2    # "option":Landroid/util/Size;
    :cond_2
    const-string v4, "Camera2Preview"

    const-string v6, "Couldn\'t find any suitable preview size"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    aget-object v4, p0, v5

    goto :goto_1
.end method

.method private configureTransform(II)V
    .locals 11
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 608
    const-string v7, "Camera2Preview"

    const-string v8, "configureTransform"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v7, p0, Lcom/ts/backcar/Camera2Preview;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewSize:Landroid/util/Size;

    if-nez v7, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 614
    .local v3, "matrix":Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, p1

    int-to-float v8, p2

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 615
    .local v6, "viewRect":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v0, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 616
    .local v0, "bufferRect":Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 617
    .local v1, "centerX":F
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 619
    .local v2, "centerY":F
    const-string v7, "Camera2Preview"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "rotation = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/ts/backcar/Camera2Preview;->mRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iput v10, p0, Lcom/ts/backcar/Camera2Preview;->mRotation:I

    .line 621
    const-string v7, "Camera2Preview"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "fix the rotation. rotation = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/ts/backcar/Camera2Preview;->mRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget v7, p0, Lcom/ts/backcar/Camera2Preview;->mRotation:I

    if-eq v10, v7, :cond_2

    const/4 v7, 0x3

    iget v8, p0, Lcom/ts/backcar/Camera2Preview;->mRotation:I

    if-ne v7, v8, :cond_4

    .line 626
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float v7, v1, v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v8, v2, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 627
    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v6, v0, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 629
    int-to-float v7, p2

    iget-object v8, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 631
    .local v4, "scale1":F
    int-to-float v7, p1

    iget-object v8, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 633
    .local v5, "scale2":F
    const-string v7, "Camera2Preview"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "scale1= "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", scale2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 636
    iget v7, p0, Lcom/ts/backcar/Camera2Preview;->mRotation:I

    add-int/lit8 v7, v7, -0x2

    mul-int/lit8 v7, v7, 0x5a

    int-to-float v7, v7

    invoke-virtual {v3, v7, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 640
    .end local v4    # "scale1":F
    .end local v5    # "scale2":F
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/ts/backcar/Camera2Preview;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v7, v3}, Lcom/ts/backcar/AutoFitTextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 637
    :cond_4
    const/4 v7, 0x2

    iget v8, p0, Lcom/ts/backcar/Camera2Preview;->mRotation:I

    if-ne v7, v8, :cond_3

    .line 638
    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v3, v7, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1
.end method

.method private createCameraPreviewSession()V
    .locals 7

    .prologue
    .line 524
    const-string v3, "Camera2Preview"

    const-string v4, "CreateCameraPreviewSession"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :try_start_0
    iget-object v3, p0, Lcom/ts/backcar/Camera2Preview;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v3}, Lcom/ts/backcar/AutoFitTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 527
    .local v2, "texture":Landroid/graphics/SurfaceTexture;
    sget-boolean v3, Lcom/ts/backcar/Camera2Preview;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 586
    .end local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 596
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    const-string v3, "Camera2Preview"

    const-string v4, "mCameraDevice.createCaptureSession leave"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-void

    .line 530
    .restart local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 533
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 537
    .local v1, "surface":Landroid/view/Surface;
    iget-object v3, p0, Lcom/ts/backcar/Camera2Preview;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 536
    iput-object v3, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 538
    iget-object v3, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 539
    const-string v3, "Camera2Preview"

    const-string v4, "mCameraDevice.createCaptureSession enter"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v3, p0, Lcom/ts/backcar/Camera2Preview;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/Surface;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/ts/backcar/Camera2Preview;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 543
    new-instance v5, Lcom/ts/backcar/Camera2Preview$4;

    invoke-direct {v5, p0}, Lcom/ts/backcar/Camera2Preview$4;-><init>(Lcom/ts/backcar/Camera2Preview;)V

    .line 584
    const/4 v6, 0x0

    .line 542
    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 588
    .end local v1    # "surface":Landroid/view/Surface;
    .end local v2    # "texture":Landroid/graphics/SurfaceTexture;
    :catch_1
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "Camera2Preview"

    const-string v4, "NullPointerException!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 591
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Camera2Preview"

    const-string v4, "IllegalStateException!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 320
    const-string v0, "Camera2Preview"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-direct {p0}, Lcom/ts/backcar/Camera2Preview;->startBackgroundThread()V

    .line 322
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v0}, Lcom/ts/backcar/AutoFitTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ts/backcar/Camera2Preview;->mbSurfaceAvailable:Z

    .line 324
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v0}, Lcom/ts/backcar/AutoFitTextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v1}, Lcom/ts/backcar/AutoFitTextureView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ts/backcar/Camera2Preview;->setUpCameraOutputs(II)V

    .line 325
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v0}, Lcom/ts/backcar/AutoFitTextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v1}, Lcom/ts/backcar/AutoFitTextureView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ts/backcar/Camera2Preview;->configureTransform(II)V

    .line 326
    invoke-direct {p0}, Lcom/ts/backcar/Camera2Preview;->openCamera()V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Lcom/ts/backcar/AutoFitTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method public static newInstance(Lcom/ts/backcar/AutoFitTextureView;Landroid/hardware/camera2/CameraManager;I)Lcom/ts/backcar/Camera2Preview;
    .locals 1
    .param p0, "autofittextureview"    # Lcom/ts/backcar/AutoFitTextureView;
    .param p1, "cm"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "rotation"    # I

    .prologue
    .line 295
    new-instance v0, Lcom/ts/backcar/Camera2Preview;

    invoke-direct {v0, p0, p1, p2}, Lcom/ts/backcar/Camera2Preview;-><init>(Lcom/ts/backcar/AutoFitTextureView;Landroid/hardware/camera2/CameraManager;I)V

    return-object v0
.end method

.method private openCamera()V
    .locals 6

    .prologue
    .line 427
    const-string v2, "Camera2Preview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "openCamera==CameraNum=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ts/backcar/Camera2Preview;->CameraNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget v2, p0, Lcom/ts/backcar/Camera2Preview;->CameraNum:I

    if-nez v2, :cond_0

    .line 452
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 439
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    const-string v2, "Camera2Preview"

    const-string v3, "openCamera try enter going to acquire lock mCameraOpenCloseLock"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v2, p0, Lcom/ts/backcar/Camera2Preview;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 441
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Time out waiting to lock camera opening."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 443
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    :try_start_1
    const-string v2, "Camera2Preview"

    const-string v3, "openCamera try leave mCameraOpenCloseLock get"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v2, p0, Lcom/ts/backcar/Camera2Preview;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ts/backcar/Camera2Preview;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/ts/backcar/Camera2Preview;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 447
    :catch_1
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while trying to lock camera opening."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 449
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "Camera2Preview"

    const-string v3, "IllegalArgumentException: No camera!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUpCameraOutputs(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 339
    const-string v6, "Camera2Preview"

    const-string v7, "setUpCameraOutputs"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v5, 0x0

    .line 344
    .local v5, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    iget-object v4, p0, Lcom/ts/backcar/Camera2Preview;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 375
    .local v4, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    iget-object v6, p0, Lcom/ts/backcar/Camera2Preview;->mCameraId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 377
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 376
    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object v5, v0

    .line 379
    const/16 v6, 0x100

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 380
    new-instance v7, Lcom/ts/backcar/Camera2Preview$CompareSizesByArea;

    invoke-direct {v7}, Lcom/ts/backcar/Camera2Preview$CompareSizesByArea;-><init>()V

    .line 378
    invoke-static {v6, v7}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 382
    .local v3, "largest":Landroid/util/Size;
    const-string v6, "Camera2Preview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "largest.width:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,largest.hight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 385
    const/16 v8, 0x100

    const/4 v9, 0x7

    .line 384
    invoke-static {v6, v7, v8, v9}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v6

    iput-object v6, p0, Lcom/ts/backcar/Camera2Preview;->mImageReader:Landroid/media/ImageReader;

    .line 389
    const-class v6, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v6

    invoke-static {v6, p1, p2, v3}, Lcom/ts/backcar/Camera2Preview;->chooseOptimalSize([Landroid/util/Size;IILandroid/util/Size;)Landroid/util/Size;

    move-result-object v6

    iput-object v6, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewSize:Landroid/util/Size;

    .line 392
    const-string v6, "Camera2Preview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PreviewSize.width:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,PreviewSize.hight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/backcar/Camera2Preview;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v6, "Camera2Preview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mCameraId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ts/backcar/Camera2Preview;->mCameraId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 421
    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "largest":Landroid/util/Size;
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v6, "Camera2Preview"

    const-string v7, "CameraAccessException:No camera!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v2

    .line 415
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 416
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 417
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "Camera2Preview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IllegalArgumentException : mCameraId  = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ts/backcar/Camera2Preview;->mCameraId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private startBackgroundThread()V
    .locals 2

    .prologue
    .line 497
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 498
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 499
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ts/backcar/Camera2Preview;->mBackgroundHandler:Landroid/os/Handler;

    .line 500
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 510
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 511
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 516
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "Camera2Preview"

    const-string v2, "mBackgroundThread is null ???"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 458
    const-string v1, "Camera2Preview"

    const-string v2, "closeCamera"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mTextureView:Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v1, v3}, Lcom/ts/backcar/AutoFitTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 460
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ts/backcar/Camera2Preview;->mbExit:Z

    .line 461
    const-string v1, "Camera2Preview"

    const-string v2, "set SurfaceTextureLostener null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 464
    const-string v1, "Camera2Preview"

    const-string v2, "closeCamera get lock mCameraOpenCloseLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v1, "Camera2Preview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeCamera 111 mCaptureSession="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/backcar/Camera2Preview;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 470
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 472
    :cond_0
    const-string v1, "Camera2Preview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeCamera 222 mCameraDevice="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/backcar/Camera2Preview;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 475
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 477
    :cond_1
    const-string v1, "Camera2Preview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeCamera 333 mImageReader="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ts/backcar/Camera2Preview;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 480
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_2
    const-string v1, "Camera2Preview"

    const-string v2, "closeCamera release lock mCameraOpenCloseLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Lcom/ts/backcar/Camera2Preview;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 488
    const-string v1, "Camera2Preview"

    const-string v2, "closeCamera sucessful!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-direct {p0}, Lcom/ts/backcar/Camera2Preview;->stopBackgroundThread()V

    .line 491
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to lock camera closing."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 486
    const-string v2, "Camera2Preview"

    const-string v3, "closeCamera release lock mCameraOpenCloseLock"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v2, p0, Lcom/ts/backcar/Camera2Preview;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 488
    const-string v2, "Camera2Preview"

    const-string v3, "closeCamera sucessful!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    throw v1
.end method
