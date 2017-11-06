.class public Lcom/txznet/sdk/bean/TrafficControlData$TrafficControlInfo;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/bean/TrafficControlData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficControlInfo"
.end annotation


# instance fields
.field public forbiddenDate:Ljava/util/Date;

.field public forbiddenTailNumber:[Ljava/lang/String;

.field public week:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
