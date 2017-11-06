.class Lcom/txznet/sdk/TXZSysManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZSysManager;->setVolumeMgrTool(Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZSysManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZSysManager;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager$1;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 152
    const-string v2, "decVolume"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/txznet/sdk/TXZSysManager$1;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZSysManager;->T(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    move-result-object v2

    invoke-interface {v2}, Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;->decVolume()V

    .line 168
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 154
    :cond_1
    const-string v2, "incVolume"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/txznet/sdk/TXZSysManager$1;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZSysManager;->T(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    move-result-object v2

    invoke-interface {v2}, Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;->incVolume()V

    goto :goto_0

    .line 156
    :cond_2
    const-string v2, "maxVolume"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    iget-object v2, p0, Lcom/txznet/sdk/TXZSysManager$1;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZSysManager;->T(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    move-result-object v2

    invoke-interface {v2}, Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;->maxVolume()V

    goto :goto_0

    .line 158
    :cond_3
    const-string v2, "minVolume"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    iget-object v2, p0, Lcom/txznet/sdk/TXZSysManager$1;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZSysManager;->T(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    move-result-object v2

    invoke-interface {v2}, Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;->minVolume()V

    goto :goto_0

    .line 160
    :cond_4
    const-string v2, "mute"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "doc":Lorg/json/JSONObject;
    const-string v2, "enable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 164
    .local v1, "enable":Z
    iget-object v2, p0, Lcom/txznet/sdk/TXZSysManager$1;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZSysManager;->T(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/txznet/sdk/TXZSysManager$VolumeMgrTool;->mute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v0    # "doc":Lorg/json/JSONObject;
    .end local v1    # "enable":Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method
