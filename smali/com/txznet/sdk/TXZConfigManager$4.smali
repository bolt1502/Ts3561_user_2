.class Lcom/txznet/sdk/TXZConfigManager$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZConfigManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZConfigManager;)V
    .locals 0

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

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
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1214
    const-string v0, "actived"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZConfigManager;->T(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$ActiveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZConfigManager;->T(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$ActiveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/txznet/sdk/TXZConfigManager$ActiveListener;->onFirstActived()V

    .line 1254
    :cond_0
    :goto_0
    return-object v3

    .line 1220
    :cond_1
    const-string v0, "success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1221
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->T(Lcom/txznet/sdk/TXZConfigManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1222
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZConfigManager;->T()V

    .line 1223
    invoke-static {}, Lcom/txznet/sdk/TXZPowerManager;->getInstance()Lcom/txznet/sdk/TXZPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZPowerManager;->T3()V

    .line 1224
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-boolean v0, v0, Lcom/txznet/sdk/TXZConfigManager;->T2:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZConfigManager;->T3(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$InitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    iput-boolean v2, v0, Lcom/txznet/sdk/TXZConfigManager;->T2:Z

    .line 1226
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZConfigManager;->T3(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$InitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/txznet/sdk/TXZConfigManager$InitListener;->onSuccess()V

    goto :goto_0

    .line 1230
    :cond_2
    const-string v0, "error.asr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1231
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->T(Lcom/txznet/sdk/TXZConfigManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1232
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-boolean v0, v0, Lcom/txznet/sdk/TXZConfigManager;->T2:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZConfigManager;->T3(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$InitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    iput-boolean v2, v0, Lcom/txznet/sdk/TXZConfigManager;->T2:Z

    .line 1234
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZConfigManager;->T3(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$InitListener;

    move-result-object v0

    const/16 v1, 0x2711

    const-string v2, "\u8bed\u97f3\u8bc6\u522b\u521d\u59cb\u5316\u53d1\u751f\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager$InitListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 1238
    :cond_3
    const-string v0, "error.tts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1239
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->T(Lcom/txznet/sdk/TXZConfigManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1240
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-boolean v0, v0, Lcom/txznet/sdk/TXZConfigManager;->T2:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZConfigManager;->T3(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$InitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    iput-boolean v2, v0, Lcom/txznet/sdk/TXZConfigManager;->T2:Z

    .line 1242
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZConfigManager;->T3(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$InitListener;

    move-result-object v0

    const/16 v1, 0x2712

    const-string v2, "\u8bed\u97f3\u64ad\u62a5\u521d\u59cb\u5316\u53d1\u751f\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager$InitListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1246
    :cond_4
    const-string v0, "error.wakeup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->T(Lcom/txznet/sdk/TXZConfigManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1248
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    iget-boolean v0, v0, Lcom/txznet/sdk/TXZConfigManager;->T2:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZConfigManager;->T3(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$InitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    iput-boolean v2, v0, Lcom/txznet/sdk/TXZConfigManager;->T2:Z

    .line 1250
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager$4;->T:Lcom/txznet/sdk/TXZConfigManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZConfigManager;->T3(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$InitListener;

    move-result-object v0

    const/16 v1, 0x2713

    const-string v2, "\u8bed\u97f3\u5524\u9192\u521d\u59cb\u5316\u53d1\u751f\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Lcom/txznet/sdk/TXZConfigManager$InitListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
