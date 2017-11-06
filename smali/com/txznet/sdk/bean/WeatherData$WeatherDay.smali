.class public Lcom/txznet/sdk/bean/WeatherData$WeatherDay;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/bean/WeatherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherDay"
.end annotation


# instance fields
.field public carWashIndex:Ljava/lang/String;

.field public carWashIndexDesc:Ljava/lang/String;

.field public coldIndex:Ljava/lang/String;

.field public coldIndexDesc:Ljava/lang/String;

.field public comfortIndex:Ljava/lang/String;

.field public comfortIndexDesc:Ljava/lang/String;

.field public currentTemperature:I

.field public datingIndex:Ljava/lang/String;

.field public datingIndexDesc:Ljava/lang/String;

.field public day:I

.field public dayOfWeek:I

.field public dressIndex:Ljava/lang/String;

.field public dressIndexDesc:Ljava/lang/String;

.field public dryingIndex:Ljava/lang/String;

.field public dryingIndexDesc:Ljava/lang/String;

.field public highestTemperature:I

.field public lowestTemperature:I

.field public month:I

.field public morningExerciseIndex:Ljava/lang/String;

.field public morningExerciseIndexDesc:Ljava/lang/String;

.field public pm2_5:I

.field public quality:Ljava/lang/String;

.field public sportIndex:Ljava/lang/String;

.field public sportIndexDesc:Ljava/lang/String;

.field public suggest:Ljava/lang/String;

.field public sunBlockIndex:Ljava/lang/String;

.field public sunBlockIndexDesc:Ljava/lang/String;

.field public travelIndex:Ljava/lang/String;

.field public travelIndexDesc:Ljava/lang/String;

.field public umbrellaIndex:Ljava/lang/String;

.field public umbrellaIndexDesc:Ljava/lang/String;

.field public weather:Ljava/lang/String;

.field public wind:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
