.class Lcom/txznet/sdk/TXZLocationManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZService$T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZLocationManager;->setLocationListener(Lcom/txznet/sdk/TXZLocationManager$OnLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZLocationManager;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZLocationManager;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/txznet/sdk/TXZLocationManager$1;->T:Lcom/txznet/sdk/TXZLocationManager;

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
    .line 107
    const-string v2, "updateLoc"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager$1;->T:Lcom/txznet/sdk/TXZLocationManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZLocationManager;->T(Lcom/txznet/sdk/TXZLocationManager;)Lcom/txznet/sdk/TXZLocationManager$OnLocationListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 111
    :try_start_0
    invoke-static {p3}, Lcom/TN/T/Te/T$T2;->T([B)Lcom/TN/T/Te/T$T2;

    move-result-object v1

    .line 112
    .local v1, "locationInfo":Lcom/TN/T/Te/T$T2;
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager$1;->T:Lcom/txznet/sdk/TXZLocationManager;

    invoke-static {v2, v1}, Lcom/txznet/sdk/TXZLocationManager;->T(Lcom/txznet/sdk/TXZLocationManager;Lcom/TN/T/Te/T$T2;)V

    .line 113
    iget-object v2, p0, Lcom/txznet/sdk/TXZLocationManager$1;->T:Lcom/txznet/sdk/TXZLocationManager;

    invoke-static {v2}, Lcom/txznet/sdk/TXZLocationManager;->T(Lcom/txznet/sdk/TXZLocationManager;)Lcom/txznet/sdk/TXZLocationManager$OnLocationListener;

    move-result-object v2

    iget-object v3, p0, Lcom/txznet/sdk/TXZLocationManager$1;->T:Lcom/txznet/sdk/TXZLocationManager;

    invoke-static {v3}, Lcom/txznet/sdk/TXZLocationManager;->T3(Lcom/txznet/sdk/TXZLocationManager;)Lcom/txznet/sdk/bean/LocationData;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/txznet/sdk/TXZLocationManager$OnLocationListener;->onLocationUpdate(Lcom/txznet/sdk/bean/LocationData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "locationInfo":Lcom/TN/T/Te/T$T2;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
