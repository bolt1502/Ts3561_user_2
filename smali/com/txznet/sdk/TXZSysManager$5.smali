.class Lcom/txznet/sdk/TXZSysManager$5;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZSysManager;->setScreenSleepTool(Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;)V
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
    .line 466
    iput-object p1, p0, Lcom/txznet/sdk/TXZSysManager$5;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 470
    const-string v0, "goToSleep"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/txznet/sdk/TXZSysManager$5;->T:Lcom/txznet/sdk/TXZSysManager;

    invoke-static {v0}, Lcom/txznet/sdk/TXZSysManager;->Te(Lcom/txznet/sdk/TXZSysManager;)Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;

    move-result-object v0

    invoke-interface {v0}, Lcom/txznet/sdk/TXZSysManager$ScreenSleepTool;->goToSleep()V

    .line 473
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
