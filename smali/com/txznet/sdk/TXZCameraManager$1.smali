.class Lcom/txznet/sdk/TXZCameraManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZCameraManager;->setCameraTool(Lcom/txznet/sdk/TXZCameraManager$CameraTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZCameraManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZCameraManager;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/txznet/sdk/TXZCameraManager$1;->T:Lcom/txznet/sdk/TXZCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 156
    const-string v3, "capturePicture"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "json":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/txznet/sdk/TXZCameraManager$1;->T:Lcom/txznet/sdk/TXZCameraManager;

    invoke-static {v3}, Lcom/txznet/sdk/TXZCameraManager;->T(Lcom/txznet/sdk/TXZCameraManager;)Lcom/txznet/sdk/TXZCameraManager$CameraTool;

    move-result-object v3

    const-string v4, "time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v6, Lcom/txznet/sdk/TXZCameraManager$1$1;

    invoke-direct {v6, p0, v0}, Lcom/txznet/sdk/TXZCameraManager$1$1;-><init>(Lcom/txznet/sdk/TXZCameraManager$1;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4, v5, v6}, Lcom/txznet/sdk/TXZCameraManager$CameraTool;->capturePicure(JLcom/txznet/sdk/TXZCameraManager$CapturePictureListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    .end local v0    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-string v3, "captureVideo"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v0    # "json":Lorg/json/JSONObject;
    const-string v3, "taskId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 208
    .local v1, "taskId":J
    iget-object v3, p0, Lcom/txznet/sdk/TXZCameraManager$1;->T:Lcom/txznet/sdk/TXZCameraManager;

    invoke-static {v3}, Lcom/txznet/sdk/TXZCameraManager;->T(Lcom/txznet/sdk/TXZCameraManager;)Lcom/txznet/sdk/TXZCameraManager$CameraTool;

    move-result-object v3

    new-instance v4, Lcom/txznet/sdk/TXZCameraManager$1$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/txznet/sdk/TXZCameraManager$1$2;-><init>(Lcom/txznet/sdk/TXZCameraManager$1;J)V

    new-instance v5, Lcom/txznet/sdk/TXZCameraManager$1$3;

    invoke-direct {v5, p0, v1, v2}, Lcom/txznet/sdk/TXZCameraManager$1$3;-><init>(Lcom/txznet/sdk/TXZCameraManager$1;J)V

    invoke-interface {v3, v4, v5}, Lcom/txznet/sdk/TXZCameraManager$CameraTool;->captureVideo(Lcom/txznet/sdk/TXZCameraManager$CaptureVideoListener;Lcom/txznet/sdk/TXZCameraManager$CaptureVideoListener;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "taskId":J
    :cond_1
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 241
    :catch_0
    move-exception v3

    goto :goto_1

    .line 199
    :catch_1
    move-exception v3

    goto :goto_0
.end method
