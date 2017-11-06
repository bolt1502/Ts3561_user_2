.class public Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeugCheckInfo"
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
    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1415
    const/16 v0, 0xc8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$PeugCheckInfo;->Info:[I

    .line 1409
    return-void
.end method
