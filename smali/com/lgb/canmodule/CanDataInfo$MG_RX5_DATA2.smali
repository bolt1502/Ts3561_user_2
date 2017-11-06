.class public Lcom/lgb/canmodule/CanDataInfo$MG_RX5_DATA2;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MG_RX5_DATA2"
.end annotation


# instance fields
.field public FindIndicator:I

.field public SmartUnlock:I

.field public TpmsRst:I

.field public UnlockMode:I

.field public Update:I

.field public UpdateOnce:I

.field public fgHomeRevLight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
