.class Lcom/txznet/sdk/TXZSceneManager$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZSceneManager;->T(Lcom/txznet/sdk/TXZSceneManager$SceneType;Lcom/txznet/sdk/TXZSceneManager$SceneTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZSceneManager$SceneTool;

.field final synthetic T2:Lcom/txznet/sdk/TXZSceneManager;

.field final synthetic T3:Lcom/txznet/sdk/TXZSceneManager$SceneType;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZSceneManager;Lcom/txznet/sdk/TXZSceneManager$SceneTool;Lcom/txznet/sdk/TXZSceneManager$SceneType;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/txznet/sdk/TXZSceneManager$2;->T2:Lcom/txznet/sdk/TXZSceneManager;

    iput-object p2, p0, Lcom/txznet/sdk/TXZSceneManager$2;->T:Lcom/txznet/sdk/TXZSceneManager$SceneTool;

    iput-object p3, p0, Lcom/txznet/sdk/TXZSceneManager$2;->T3:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZSceneManager$2;->T:Lcom/txznet/sdk/TXZSceneManager$SceneTool;

    iget-object v2, p0, Lcom/txznet/sdk/TXZSceneManager$2;->T3:Lcom/txznet/sdk/TXZSceneManager$SceneType;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2, v3}, Lcom/txznet/sdk/TXZSceneManager$SceneTool;->process(Lcom/txznet/sdk/TXZSceneManager$SceneType;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
