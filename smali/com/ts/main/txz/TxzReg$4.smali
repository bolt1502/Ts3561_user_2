.class Lcom/ts/main/txz/TxzReg$4;
.super Ljava/lang/Object;
.source "TxzReg.java"

# interfaces
.implements Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/txz/TxzReg;->GetWeatherData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback",
        "<",
        "Lcom/txznet/sdk/bean/WeatherData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/txz/TxzReg;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/TxzReg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg$4;->this$0:Lcom/ts/main/txz/TxzReg;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 474
    const-string v0, "TxzReg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void
.end method

.method public onResult(Lcom/txznet/sdk/bean/WeatherData;)V
    .locals 6
    .param p1, "data"    # Lcom/txznet/sdk/bean/WeatherData;

    .prologue
    .line 457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lcom/txznet/sdk/bean/WeatherData;->weatherDays:[Lcom/txznet/sdk/bean/WeatherData$WeatherDay;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 462
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 463
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 464
    .local v0, "bdBundle":Landroid/os/Bundle;
    const-string v3, "weather"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 465
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 466
    const-string v3, "txz_send_weather_data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    iget-object v3, p0, Lcom/ts/main/txz/TxzReg$4;->this$0:Lcom/ts/main/txz/TxzReg;

    # getter for: Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/ts/main/txz/TxzReg;->access$0(Lcom/ts/main/txz/TxzReg;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    return-void

    .line 458
    .end local v0    # "bdBundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "TxzReg"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Weather=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/txznet/sdk/bean/WeatherData;->weatherDays:[Lcom/txznet/sdk/bean/WeatherData$WeatherDay;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/txznet/sdk/bean/WeatherData$WeatherDay;->weather:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/txznet/sdk/bean/WeatherData;

    invoke-virtual {p0, p1}, Lcom/ts/main/txz/TxzReg$4;->onResult(Lcom/txznet/sdk/bean/WeatherData;)V

    return-void
.end method
