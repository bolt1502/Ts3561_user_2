.class Lcom/txznet/sdk/TXZNetDataProvider$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/TXZNetDataProvider;->notifyCallback(Ljava/lang/String;[B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/sdk/TXZNetDataProvider$T;

.field final synthetic T2:Lcom/txznet/sdk/TXZNetDataProvider;

.field final synthetic T3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/TXZNetDataProvider;Lcom/txznet/sdk/TXZNetDataProvider$T;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/txznet/sdk/TXZNetDataProvider$3;->T2:Lcom/txznet/sdk/TXZNetDataProvider;

    iput-object p2, p0, Lcom/txznet/sdk/TXZNetDataProvider$3;->T:Lcom/txznet/sdk/TXZNetDataProvider$T;

    iput-object p3, p0, Lcom/txznet/sdk/TXZNetDataProvider$3;->T3:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/txznet/sdk/TXZNetDataProvider$3;->T:Lcom/txznet/sdk/TXZNetDataProvider$T;

    iget-object v0, v0, Lcom/txznet/sdk/TXZNetDataProvider$T;->T3:Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;

    iget-object v1, p0, Lcom/txznet/sdk/TXZNetDataProvider$3;->T3:Ljava/lang/String;

    const-class v2, Lcom/txznet/sdk/bean/WeatherData;

    invoke-static {v1, v2}, Lcom/T/T/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;->onResult(Ljava/lang/Object;)V

    .line 163
    return-void
.end method
