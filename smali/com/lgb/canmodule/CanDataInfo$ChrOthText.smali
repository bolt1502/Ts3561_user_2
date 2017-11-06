.class public Lcom/lgb/canmodule/CanDataInfo$ChrOthText;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChrOthText"
.end annotation


# instance fields
.field public CurIndex:I

.field public Update:I

.field public UpdateOnce:I

.field public szData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2264
    const/16 v0, 0x50

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;->szData:[B

    .line 2259
    return-void
.end method
