.class public Lcom/txznet/sdk/TXZCameraManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZCameraManager$CameraTool;,
        Lcom/txznet/sdk/TXZCameraManager$CaptureVideoListener;,
        Lcom/txznet/sdk/TXZCameraManager$CapturePictureListener;
    }
.end annotation


# static fields
.field public static final CAMERA_BACK:I = 0x2

.field public static final CAMERA_FRONT:I = 0x1

.field public static final CAPTURE_ERROR_IO_ERROR:I = 0x1bc0

.field public static final CAPTURE_ERROR_NOT_FOUND:I = 0x1bc1

.field public static final CAPTURE_ERROR_NO_CAMERA:I = 0x1bbe

.field public static final CAPTURE_ERROR_NO_SUPPORT:I = 0x1bbf

.field public static final CAPTURE_ERROR_UNKNOW:I = 0x1bbd

.field public static final REMOTE_NAME_CAMERA_POSITION:Ljava/lang/String; = "position"

.field public static final REMOTE_NAME_ERROR_CODE:Ljava/lang/String; = "errCode"

.field public static final REMOTE_NAME_ERROR_MESSAGE:Ljava/lang/String; = "errMessage"

.field public static final REMOTE_NAME_TASK_ID:Ljava/lang/String; = "taskId"

.field public static final REMOTE_NAME_VIDEO_PATH:Ljava/lang/String; = "path"

.field public static final REMOTE_NAME_VIDEO_THUMBNAIL_PATH:Ljava/lang/String; = "thumbnail"

.field private static T3:Lcom/txznet/sdk/TXZCameraManager;


# instance fields
.field T:Ljava/lang/Boolean;

.field private T2:Z

.field private TN:Lcom/txznet/sdk/TXZCameraManager$CameraTool;

.field public mTimeout:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/txznet/sdk/TXZCameraManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZCameraManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZCameraManager;->T3:Lcom/txznet/sdk/TXZCameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZCameraManager;->T2:Z

    .line 134
    iput-object v1, p0, Lcom/txznet/sdk/TXZCameraManager;->TN:Lcom/txznet/sdk/TXZCameraManager$CameraTool;

    .line 287
    iput-object v1, p0, Lcom/txznet/sdk/TXZCameraManager;->T:Ljava/lang/Boolean;

    .line 310
    iput-object v1, p0, Lcom/txznet/sdk/TXZCameraManager;->mTimeout:Ljava/lang/Long;

    .line 28
    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZCameraManager;)Lcom/txznet/sdk/TXZCameraManager$CameraTool;
    .locals 1
    .param p0, "x0"    # Lcom/txznet/sdk/TXZCameraManager;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/txznet/sdk/TXZCameraManager;->TN:Lcom/txznet/sdk/TXZCameraManager$CameraTool;

    return-object v0
.end method

.method private T(JIILjava/lang/String;)V
    .locals 6
    .param p1, "taskId"    # J
    .param p3, "position"    # I
    .param p4, "errCode"    # I
    .param p5, "errDesc"    # Ljava/lang/String;

    .prologue
    .line 272
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 273
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "taskId"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 274
    const-string v1, "errCode"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 275
    const-string v1, "errMessage"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.camera.captureVideo.onError"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private T(JILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "taskId"    # J
    .param p3, "position"    # I
    .param p4, "videoPath"    # Ljava/lang/String;
    .param p5, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 254
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 255
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "taskId"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 257
    const-string v1, "path"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.camera.captureVideo.onSave"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v0    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZCameraManager;JIILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/sdk/TXZCameraManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/txznet/sdk/TXZCameraManager;->T(JIILjava/lang/String;)V

    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZCameraManager;JILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/txznet/sdk/TXZCameraManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/txznet/sdk/TXZCameraManager;->T(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZCameraManager;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/txznet/sdk/TXZCameraManager;->T3:Lcom/txznet/sdk/TXZCameraManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZCameraManager;->T2:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/txznet/sdk/TXZCameraManager;->TN:Lcom/txznet/sdk/TXZCameraManager$CameraTool;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZCameraManager;->setCameraTool(Lcom/txznet/sdk/TXZCameraManager$CameraTool;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZCameraManager;->T:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/txznet/sdk/TXZCameraManager;->T:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZCameraManager;->useWakeupCapturePhoto(Z)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZCameraManager;->mTimeout:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/txznet/sdk/TXZCameraManager;->mTimeout:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZCameraManager;->setCapturePhotoTimeout(J)V

    .line 50
    :cond_2
    return-void
.end method

.method public capturePhoto()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 305
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.camera.capturePhoto"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 307
    return-void
.end method

.method public setCameraTool(Lcom/txznet/sdk/TXZCameraManager$CameraTool;)V
    .locals 4
    .param p1, "tool"    # Lcom/txznet/sdk/TXZCameraManager$CameraTool;

    .prologue
    const/4 v3, 0x0

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZCameraManager;->T2:Z

    .line 143
    iput-object p1, p0, Lcom/txznet/sdk/TXZCameraManager;->TN:Lcom/txznet/sdk/TXZCameraManager$CameraTool;

    .line 145
    if-nez p1, :cond_0

    .line 146
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.camera.cleartool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 249
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.camera.settool"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 152
    const-string v0, "tool.camera."

    new-instance v1, Lcom/txznet/sdk/TXZCameraManager$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZCameraManager$1;-><init>(Lcom/txznet/sdk/TXZCameraManager;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    goto :goto_0
.end method

.method public setCapturePhotoTimeout(J)V
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 316
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZCameraManager;->mTimeout:Ljava/lang/Long;

    .line 317
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.camera.setCameraTimeout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/txznet/sdk/TXZCameraManager;->mTimeout:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 319
    return-void
.end method

.method public useWakeupCapturePhoto(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 295
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZCameraManager;->T:Ljava/lang/Boolean;

    .line 296
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.camera.useWakeupCapturePhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 299
    return-void
.end method
