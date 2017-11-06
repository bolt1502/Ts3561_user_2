.class Lcom/txznet/sdk/TXZSceneManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZSceneManager$SceneTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZSceneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZSceneManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZSceneManager;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/txznet/sdk/TXZSceneManager$1;->T:Lcom/txznet/sdk/TXZSceneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/txznet/sdk/TXZSceneManager$SceneType;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Lcom/txznet/sdk/TXZSceneManager$SceneType;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method
