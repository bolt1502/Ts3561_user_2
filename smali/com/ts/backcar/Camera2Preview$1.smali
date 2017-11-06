.class Lcom/ts/backcar/Camera2Preview$1;
.super Ljava/lang/Object;
.source "Camera2Preview.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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
    iput-object p1, p0, Lcom/ts/backcar/Camera2Preview$1;->this$0:Lcom/ts/backcar/Camera2Preview;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 81
    const-string v0, "Camera2Preview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview$1;->this$0:Lcom/ts/backcar/Camera2Preview;

    # invokes: Lcom/ts/backcar/Camera2Preview;->setUpCameraOutputs(II)V
    invoke-static {v0, p2, p3}, Lcom/ts/backcar/Camera2Preview;->access$0(Lcom/ts/backcar/Camera2Preview;II)V

    .line 83
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview$1;->this$0:Lcom/ts/backcar/Camera2Preview;

    # invokes: Lcom/ts/backcar/Camera2Preview;->configureTransform(II)V
    invoke-static {v0, p2, p3}, Lcom/ts/backcar/Camera2Preview;->access$1(Lcom/ts/backcar/Camera2Preview;II)V

    .line 84
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview$1;->this$0:Lcom/ts/backcar/Camera2Preview;

    # invokes: Lcom/ts/backcar/Camera2Preview;->openCamera()V
    invoke-static {v0}, Lcom/ts/backcar/Camera2Preview;->access$2(Lcom/ts/backcar/Camera2Preview;)V

    .line 85
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview$1;->this$0:Lcom/ts/backcar/Camera2Preview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ts/backcar/Camera2Preview;->access$3(Lcom/ts/backcar/Camera2Preview;Z)V

    .line 86
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview$1;->this$0:Lcom/ts/backcar/Camera2Preview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ts/backcar/Camera2Preview;->access$3(Lcom/ts/backcar/Camera2Preview;Z)V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 90
    const-string v0, "Camera2Preview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/ts/backcar/Camera2Preview$1;->this$0:Lcom/ts/backcar/Camera2Preview;

    # invokes: Lcom/ts/backcar/Camera2Preview;->configureTransform(II)V
    invoke-static {v0, p2, p3}, Lcom/ts/backcar/Camera2Preview;->access$1(Lcom/ts/backcar/Camera2Preview;II)V

    .line 92
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 103
    return-void
.end method
