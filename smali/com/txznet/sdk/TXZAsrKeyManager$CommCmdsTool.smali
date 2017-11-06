.class public abstract Lcom/txznet/sdk/TXZAsrKeyManager$CommCmdsTool;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAsrKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CommCmdsTool"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backHome()Z
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public backNavi()Z
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method public abstract handleBackCamera(Z)Z
.end method

.method public abstract handleFrontCamera(Z)Z
.end method

.method public abstract handleScreen(Z)Z
.end method

.method public procCmd(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method
