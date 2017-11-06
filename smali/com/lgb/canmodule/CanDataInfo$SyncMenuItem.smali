.class public Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncMenuItem"
.end annotation


# instance fields
.field public CanSelect:I

.field public LeftIco:I

.field public LineAttrib:I

.field public RightIco:I

.field public Update:I

.field public UpdateOnce:I

.field public szText:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1572
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$SyncMenuItem;->szText:[B

    .line 1564
    return-void
.end method
