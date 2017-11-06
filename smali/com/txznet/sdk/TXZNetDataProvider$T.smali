.class Lcom/txznet/sdk/TXZNetDataProvider$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZNetDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "T"
.end annotation


# instance fields
.field T:I

.field T3:Lcom/txznet/sdk/TXZNetDataProvider$NetDataCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/txznet/sdk/TXZNetDataProvider$T;->T:I

    return-void
.end method
