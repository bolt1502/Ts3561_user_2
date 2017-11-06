.class Lcom/txznet/sdk/TXZSysManager$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZSysManager;->setAppMgrTool(Lcom/txznet/sdk/TXZSysManager$AppMgrTool;)V
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
    .line 367
    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager$4;->T:Lcom/txznet/sdk/TXZSysManager;

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
    .line 371
    const-string v2, "closeApp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, "doc":Lorg/json/JSONObject;
    const-string v2, "pkgName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/txznet/sdk/TXZSysManager$4;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZSysManager;->TN(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/txznet/sdk/TXZSysManager$AppMgrTool;->closeApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    .end local v0    # "doc":Lorg/json/JSONObject;
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 378
    :cond_1
    const-string v2, "openApp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 381
    .restart local v0    # "doc":Lorg/json/JSONObject;
    const-string v2, "pkgName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .restart local v1    # "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/txznet/sdk/TXZSysManager$4;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZSysManager;->TN(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$AppMgrTool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/txznet/sdk/TXZSysManager$AppMgrTool;->openApp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 383
    .end local v0    # "doc":Lorg/json/JSONObject;
    .end local v1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 376
    :catch_1
    move-exception v2

    goto :goto_0
.end method
