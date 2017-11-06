.class public Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axela_Cd_Id3"
.end annotation


# instance fields
.field public Artist:[B

.field public Title:[B

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x50

    .line 2497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2501
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;->Title:[B

    .line 2502
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$Axela_Cd_Id3;->Artist:[B

    .line 2497
    return-void
.end method
