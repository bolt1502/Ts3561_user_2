.class public Lcom/txznet/sdk/bean/TrafficControlData;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/bean/TrafficControlData$TrafficControlInfo;
    }
.end annotation


# instance fields
.field public city:Ljava/lang/String;

.field public local:Ljava/lang/String;

.field public nonlocal:Ljava/lang/String;

.field public trafficControlInfos:[Lcom/txznet/sdk/bean/TrafficControlData$TrafficControlInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method
