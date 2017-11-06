.class public Lcom/lgb/canmodule/CanDataInfo$SyncStr;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncStr"
.end annotation


# instance fields
.field public Update:I

.field public UpdateOnce:I

.field public szText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1642
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$SyncStr;->szText:Ljava/lang/String;

    .line 1638
    return-void
.end method
