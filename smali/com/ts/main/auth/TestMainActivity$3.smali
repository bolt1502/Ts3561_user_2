.class Lcom/ts/main/auth/TestMainActivity$3;
.super Ljava/lang/Object;
.source "TestMainActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/auth/TestMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/TestMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/TestMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/TestMainActivity$3;->this$0:Lcom/ts/main/auth/TestMainActivity;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x2

    .line 384
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 385
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 386
    const-string v3, "satellites"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 387
    .local v1, "fixedsatellite":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 389
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x3

    if-le v1, v3, :cond_0

    .line 390
    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity$3;->this$0:Lcom/ts/main/auth/TestMainActivity;

    iget v3, v3, Lcom/ts/main/auth/TestMainActivity;->nTestMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 392
    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity$3;->this$0:Lcom/ts/main/auth/TestMainActivity;

    iget-object v3, v3, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    aget v3, v3, v5

    if-nez v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/ts/main/auth/TestMainActivity$3;->this$0:Lcom/ts/main/auth/TestMainActivity;

    iget-object v3, v3, Lcom/ts/main/auth/TestMainActivity;->nData:[I

    iget-object v4, p0, Lcom/ts/main/auth/TestMainActivity$3;->this$0:Lcom/ts/main/auth/TestMainActivity;

    iget v4, v4, Lcom/ts/main/auth/TestMainActivity;->Time:I

    aput v4, v3, v5

    .line 401
    .end local v1    # "fixedsatellite":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 379
    const-string v0, "[scj:]Test"

    const-string v1, "onProviderDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string v0, "[scj:]Test"

    const-string v1, "onProviderEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 367
    const-string v1, "[scj:]Test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStatusChanged ! provider ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v1, "satellites"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 369
    .local v0, "fixedsatellite":I
    const-string v1, "[scj:]Test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the number of satellites used to derive the fix is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method
