.class Lcom/ts/main/txz/TxzReg$2;
.super Ljava/lang/Object;
.source "TxzReg.java"

# interfaces
.implements Lcom/txznet/sdk/TXZSenceManager$SenceTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/txz/TxzReg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/txz/TxzReg;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/TxzReg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg$2;->this$0:Lcom/ts/main/txz/TxzReg;

    .line 1823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ts/main/txz/TxzReg$2;)Lcom/ts/main/txz/TxzReg;
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$2;->this$0:Lcom/ts/main/txz/TxzReg;

    return-object v0
.end method


# virtual methods
.method public process(Lcom/txznet/sdk/TXZSenceManager$SenceType;Ljava/lang/String;)Z
    .locals 9
    .param p1, "type"    # Lcom/txznet/sdk/TXZSenceManager$SenceType;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1827
    const-string v5, "TxzReg"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "data : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    sget-object v5, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_APP:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {p1, v5}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1832
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1833
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "action"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1834
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1835
    const-string v5, "close"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1836
    const-string v5, "TxzReg"

    const-string v6, "close"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1839
    .local v3, "nameString":Ljava/lang/String;
    const-string v5, "\u540c\u542c"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1841
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    const-string v5, "com.txznet.music.close.app"

    invoke-static {v5}, Lcom/ts/main/common/MainSet;->SendIntent(Ljava/lang/String;)V

    .line 1845
    :cond_0
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v5

    .line 1846
    const-string v6, "\u5c06\u4e3a\u60a8\u6267\u884c\u8be5\u64cd\u4f5c"

    const/4 v7, 0x1

    new-instance v8, Lcom/ts/main/txz/TxzReg$2$1;

    invoke-direct {v8, p0}, Lcom/ts/main/txz/TxzReg$2$1;-><init>(Lcom/ts/main/txz/TxzReg$2;)V

    .line 1845
    invoke-virtual {v5, v6, v7, v8}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1868
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "nameString":Ljava/lang/String;
    :goto_0
    return v4

    .line 1857
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "open"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1858
    const-string v4, "TxzReg"

    const-string v5, "open"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1861
    :catch_0
    move-exception v1

    .line 1863
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
