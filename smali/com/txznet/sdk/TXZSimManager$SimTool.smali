.class public interface abstract Lcom/txznet/sdk/TXZSimManager$SimTool;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SimTool"
.end annotation


# virtual methods
.method public abstract onSimAlarmHandle(Ljava/lang/String;)V
.end method

.method public abstract onSimRechargeQrHandle(Ljava/lang/String;)V
.end method

.method public abstract onSimRechargeResultHandle(Ljava/lang/String;)V
.end method
