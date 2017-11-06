.class public Lcom/txznet/sdk/bean/WeatherData;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/bean/WeatherData$WeatherDay;
    }
.end annotation


# instance fields
.field public cityCode:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public updateTime:Ljava/util/Date;

.field public weatherDays:[Lcom/txznet/sdk/bean/WeatherData$WeatherDay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method
