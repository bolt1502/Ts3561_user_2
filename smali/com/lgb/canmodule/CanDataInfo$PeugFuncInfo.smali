.class public Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeugFuncInfo"
.end annotation


# instance fields
.field public CurInfo:I

.field public Info:[I

.field public Num:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$PeugFuncInfo;->Info:[I

    .line 1400
    return-void
.end method
