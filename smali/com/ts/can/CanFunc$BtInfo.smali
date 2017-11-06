.class public Lcom/ts/can/CanFunc$BtInfo;
.super Ljava/lang/Object;
.source "CanFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtInfo"
.end annotation


# instance fields
.field ActiveTime:I

.field Hour:I

.field Min:I

.field Sec:I

.field State:I

.field szNo:Ljava/lang/String;

.field szPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
