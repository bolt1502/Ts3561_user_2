.class public Lcom/lgb/canmodule/CanDataInfo$GolfOutTemp;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GolfOutTemp"
.end annotation


# instance fields
.field public Avalid:I

.field public TempDW:I

.field public Update:I

.field public UpdateOnce:I

.field public Value:I

.field public szData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
