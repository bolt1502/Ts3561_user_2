.class Lcom/ts/MainUI/AuthServer$1;
.super Ljava/lang/Object;
.source "AuthServer.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/AuthServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/AuthServer;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/AuthServer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/MainUI/AuthServer$1;->this$0:Lcom/ts/MainUI/AuthServer;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 206
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 207
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 209
    .local v1, "y":I
    iget-object v2, p0, Lcom/ts/MainUI/AuthServer$1;->this$0:Lcom/ts/MainUI/AuthServer;

    iget v2, v2, Lcom/ts/MainUI/AuthServer;->nSendXy:I

    if-nez v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/ts/MainUI/AuthServer$1;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v3, p0, Lcom/ts/MainUI/AuthServer$1;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v3, v3, Lcom/ts/MainUI/AuthServer;->mcontext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/ts/MainUI/AuthServer;->IsNetOk(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/ts/MainUI/AuthServer$1;->this$0:Lcom/ts/MainUI/AuthServer;

    const/4 v3, 0x1

    iput v3, v2, Lcom/ts/MainUI/AuthServer;->nSendXy:I

    .line 214
    new-instance v2, Lcom/ts/MainUI/AuthServer$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/ts/MainUI/AuthServer$1$1;-><init>(Lcom/ts/MainUI/AuthServer$1;II)V

    .line 226
    invoke-virtual {v2}, Lcom/ts/MainUI/AuthServer$1$1;->start()V

    .line 229
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 235
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 241
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 247
    return-void
.end method
